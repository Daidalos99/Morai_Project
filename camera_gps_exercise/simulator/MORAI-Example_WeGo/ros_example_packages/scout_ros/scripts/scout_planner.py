#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import sys,os
import rospy
import rospkg
import numpy as np
from nav_msgs.msg import Path,Odometry
from std_msgs.msg import Float64,Int16,Float32MultiArray
from geometry_msgs.msg import Vector3
from geometry_msgs.msg import PoseStamped,Point,Twist
from morai_msgs.msg import EgoVehicleStatus,ObjectStatusList
from scout_ros.utils import pathReader, findLocalPath,purePursuit,cruiseControl,vaildObject ,velocityPlanning ,latticePlanner
import tf
from scout_msgs.msg import ScoutStatus
from math import cos,sin,sqrt,pow,atan2,pi
from morai_msgs.msg import GPSMessage
import pyproj
from sensor_msgs.msg import Imu

class scout_status:
    def __init__(self):
        self.position = Vector3()
        self.heading = 0.0
        self.velocity = Vector3()

# global path는 txt로 불러온 path
# local_path는 findLocalPath에 global_path와 scout_status를 매개변수로 넣고 설정
# lattice에 local_path, global_obj, vehicle_status, lattice_current_lane 등을 매개변수로 넣고 그 반환값을 다시 local_path로 설정
# 즉, lattice path는 기본 local_path를 다듬어주는 역할..?
class gen_planner():
    def __init__(self):
        rospy.init_node('gen_planner', anonymous=True)

        arg = rospy.myargv(argv=sys.argv)
        self.path_name = arg[1]   # 경로 이름
        self.x_offset = float(arg[2]) # x offset
        self.y_offset = float(arg[3]) # y offset
        
        path_reader = pathReader('scout_ros') # 경로 파일의 위치

        # path publisher
        global_path_pub = rospy.Publisher('/global_path',Path, queue_size=1) # global_path publisher
        local_path_pub = rospy.Publisher('/local_path',Path, queue_size=1) # local_path publisher

        # cmd_vel publisher
        ctrl_pub = rospy.Publisher('/cmd_vel',Twist, queue_size=1) # Vehicl Control
        ctrl_msg = Twist()

        # odometry publisher
        odom_pub = rospy.Publisher('odom',Odometry, queue_size=1)
        self.status_msg = scout_status()
        

        ########################  lattice  ########################
        for i in range(1,8):            
            # globals 함수를 사용하여 현재 모듈의 전역 범위에 있는 변수 및 객체의 딕셔너리를 가져옴
            globals()['lattice_path_{}_pub'.format(i)] = rospy.Publisher('lattice_path_{}'.format(i),Path,queue_size=1)  

        # subscriber
        # objectInfoCB 실행으로 각 npc, obstacle, pedestrian 객체별 타입, x/y 위치, 속도 추출, is_obj = True
        rospy.Subscriber("/Object_topic", ObjectStatusList, self.objectInfoCB)
        # gpsCB 실행으로 UTM x, y 좌표 추출, self.is_gps = True
        rospy.Subscriber("/gps", GPSMessage, self.gpsCB)
        # imuCB 실행으로 오일럭각 추출, self.is_imu = True
        rospy.Subscriber("/imu", Imu, self.imuCB)
        # statusCB 실행으로 scout 속도 추출, self.is_status = True
        rospy.Subscriber("/scout_status",ScoutStatus, self.statusCB)

        # flags
        self.is_status = False # scout의 정보 수신여부
        self.is_obj = False # 장애물 존재여부
        self.is_gps = False # gps 수신여부
        self.is_imu = False # imu 수신여부
        
        # path tracker
        pure_pursuit = purePursuit()
        self.cc = cruiseControl(0.5,1.0) # (object_vel_gain, object_dis_gain)
        self.vo = vaildObject() # 장애물 유무 확인 (TrafficLight)
        self.proj_UTM = pyproj.Proj(proj='utm', zone=52, ellps='WGS84', preserve_units=False) # GPS(위도, 경도)를 UTM 좌표계로 바꿔주는 코드

        # read path txt file
        self.global_path = path_reader.read_txt(self.path_name)

        # velocity planner
        normal_velocity = 11/3.6    # km/h to m/sec
        vel_planner = velocityPlanning(normal_velocity,0.15) ## 속도 계획
        vel_profile = vel_planner.curveBasedVelocity(self.global_path,100)

        lattice_current_lane = 3

    
        #time var
        count = 0
        rate = rospy.Rate(30) # 30hz

        while not rospy.is_shutdown():
            print(self.is_status , self.is_imu ,self.is_gps ,self.is_obj)

            # if all flag is true
            if self.is_status == True and self.is_imu == True and self.is_gps == True and self.is_obj == True:
                # make scout's tf based on its relative position(UTM x, y), velocity, heading angle etc.
                self.getScoutStatus()

                # global_path와 차량의 status_msg를 이용해 현제 waypoint와 local_path를 생성
                local_path, self.current_waypoint = findLocalPath(self.global_path, self.status_msg) 
                
                # 장애물의 숫자와 Type 위치 속도 (object_num, object type, object pose_x, object pose_y, object velocity)
                self.vo.get_object(self.object_num, self.object_info_msg[0], self.object_info_msg[1], self.object_info_msg[2], self.object_info_msg[3])
                global_obj, local_obj = self.vo.calc_vaild_obj([self.status_msg.position.x, self.status_msg.position.y, (self.status_msg.heading)/180*pi])

                ########################  lattice  ########################
                # x, y, heading, vel
                vehicle_status = [self.status_msg.position.x, self.status_msg.position.y, (self.status_msg.heading)/180*pi, self.status_msg.velocity.x]
                lattice_path, selected_lane = latticePlanner(local_path, global_obj, vehicle_status, lattice_current_lane)
                lattice_current_lane = selected_lane
                                
                if selected_lane != -1: 
                    local_path = lattice_path[selected_lane]                
                
                if len(lattice_path) == 7:                    
                    for i in range(1,8):
                        globals()['lattice_path_{}_pub'.format(i)].publish(lattice_path[i-1])
                ########################  lattice  ########################

                # cruise control
                self.cc.checkObject(local_path, global_obj, local_obj)

                pure_pursuit.getPath(local_path) # pure_pursuit 알고리즘에 Local path(from lattice planner) 적용
                pure_pursuit.getEgoStatus(self.status_msg) # pure_pursuit 알고리즘에 차량의 status 적용
                ctrl_msg.angular.z = -pure_pursuit.steering_angle()
                cc_vel = self.cc.acc(local_obj,self.status_msg.velocity.x,vel_profile[self.current_waypoint],self.status_msg) # advanced cruise control 적용한 속도 계획
                target_velocity = cc_vel

                ctrl_msg.linear.x = max(target_velocity,0)

                local_path_pub.publish(local_path) # Local Path 출력
                ctrl_pub.publish(ctrl_msg) # Vehicl Control msg(x vel) 출력
                odom_pub.publish(self.makeOdomMsg())
                self.print_info()
            
                if count == 30 : # global path 출력
                    global_path_pub.publish(self.global_path)
                    count = 0
                count += 1
                rate.sleep()

    def getScoutStatus(self): # Vehicl Status Subscriber (Scout의 위치 값을 저장)
        self.status_msg.position.x = self.xy_zone[0] - self.x_offset    # UTM x좌표 - x오프셋, 즉 x의 상대위치
        self.status_msg.position.y = self.xy_zone[1] - self.y_offset    # UTM y좌표 - y오프셋, 즉 y의 상대위치
        self.status_msg.heading = self.euler_data[2] * 180 / pi     # imu에서 받아온 yaw 각 to radian
        self.status_msg.velocity.x = self.velocity
        br = tf.TransformBroadcaster()
        br.sendTransform((self.status_msg.position.x, self.status_msg.position.y, self.status_msg.position.z),
                        tf.transformations.quaternion_from_euler(0, 0, (self.status_msg.heading)/180*pi),
                        rospy.Time.now(),
                        "gps",
                        "map")
        self.is_status=True

    def statusCB(self, data):
        self.velocity = data.linear_velocity
        self.is_status = True

    # change /gps(longitude, latitude) to UTM Coordinates
    def gpsCB(self, data):
        self.xy_zone = self.proj_UTM(data.longitude, data.latitude)
        self.is_gps = True

    def imuCB(self, data):
        self.euler_data = tf.transformations.euler_from_quaternion((data.orientation.x, data.orientation.y, data.orientation.z, data.orientation.w))
        self.is_imu = True

    def objectInfoCB(self,data):
        self.object_num = data.num_of_npcs+data.num_of_obstacle+data.num_of_pedestrian
        object_type = []
        object_pose_x = []
        object_pose_y = []
        object_velocity = []

        for num in range(data.num_of_npcs) :
            object_type.append(data.npc_list[num].type)
            object_pose_x.append(data.npc_list[num].position.x)
            object_pose_y.append(data.npc_list[num].position.y)
            object_velocity.append(data.npc_list[num].velocity.x)

        for num in range(data.num_of_obstacle) :
            object_type.append(data.obstacle_list[num].type)
            object_pose_x.append(data.obstacle_list[num].position.x)
            object_pose_y.append(data.obstacle_list[num].position.y)
            object_velocity.append(data.obstacle_list[num].velocity.x)

        for num in range(data.num_of_pedestrian) :
            object_type.append(data.pedestrian_list[num].type)
            object_pose_x.append(data.pedestrian_list[num].position.x)
            object_pose_y.append(data.pedestrian_list[num].position.y)
            object_velocity.append(data.pedestrian_list[num].velocity.x)

        self.object_info_msg = [object_type, object_pose_x, object_pose_y, object_velocity]
        self.is_obj = True

    def makeOdomMsg(self):
        # Odometry 채워넣기 - map to gps
        odom = Odometry()
        odom.header.frame_id = 'map'
        odom.child_frame_id = 'gps'   # not 'map to odom', it's 'map to gps'

        quaternion = tf.transformations.quaternion_from_euler(0, 0, np.deg2rad(self.status_msg.heading))

        odom.pose.pose.position.x = self.status_msg.position.x
        odom.pose.pose.position.y = self.status_msg.position.y
        odom.pose.pose.position.z = self.status_msg.position.z
        odom.pose.pose.orientation.x = quaternion[0]
        odom.pose.pose.orientation.y = quaternion[1]
        odom.pose.pose.orientation.z = quaternion[2]
        odom.pose.pose.orientation.w = quaternion[3]

        return odom

    def print_info(self):

        os.system('clear')
        print('--------------------status-------------------------')
        print('position :{0} ,{1}, {2}'.format(self.status_msg.position.x, self.status_msg.position.y, self.status_msg.position.z))
        print('velocity :{} km/h'.format(self.status_msg.velocity.x))
        print('heading :{} deg'.format(self.status_msg.heading))
        
        print('--------------------object-------------------------')
        print('object num :{}'.format(self.object_num))
        for i in range(0,self.object_num) :
            print('{0} : type = {1}, x = {2}, y = {3}, z = {4} '.format(i,self.object_info_msg[0][i], self.object_info_msg[1][i], self.object_info_msg[2][i], self.object_info_msg[3][i]))

        print('--------------------localization-------------------------')
        print('all waypoint size: {} '.format(len(self.global_path.poses)))
        print('current waypoint : {} '.format(self.current_waypoint))
    

if __name__ == '__main__':
    try:
        kcity_pathtracking=gen_planner()
    except rospy.ROSInterruptException:
        pass
