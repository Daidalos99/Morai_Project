# -*- coding: utf-8 -*-
import rospy
import rospkg
from nav_msgs.msg import Path,Odometry
from geometry_msgs.msg import PoseStamped,Point
from std_msgs.msg import Float64,Int16,Float32MultiArray
import numpy as np
from math import cos,sin,sqrt,pow,atan2,pi
import tf


class pathReader :  ## 텍스트 파일에서 경로를 출력 ##
    def __init__(self,pkg_name):
        rospack=rospkg.RosPack()
        self.file_path=rospack.get_path(pkg_name)



    def read_txt(self,file_name):
        full_file_name=self.file_path+"/path/"+file_name
        openFile = open(full_file_name, 'r')
        out_path=Path()
        
        out_path.header.frame_id='/map'
        line=openFile.readlines()
        for i in line :
            tmp=i.split()
            read_pose=PoseStamped()
            read_pose.pose.position.x=float(tmp[0])
            read_pose.pose.position.y=float(tmp[1])
            read_pose.pose.position.z=float(tmp[2])
            read_pose.pose.orientation.x=0
            read_pose.pose.orientation.y=0
            read_pose.pose.orientation.z=0
            read_pose.pose.orientation.w=1
            out_path.poses.append(read_pose)
        
        
        openFile.close()
        return out_path ## 읽어온 경로를 global_path로 반환 ##
      





def findLocalPath(ref_path,status_msg): ## global_path와 차량의 status_msg를 이용해 현재waypoint와 local_path를 생성 ##
    out_path=Path()
    current_x=status_msg.position.x
    current_y=status_msg.position.y
    current_waypoint=0
    min_dis=float('inf')

    for i in range(len(ref_path.poses)) :
        dx=current_x - ref_path.poses[i].pose.position.x
        dy=current_y - ref_path.poses[i].pose.position.y
        dis=sqrt(dx*dx + dy*dy)
        if dis < min_dis :
            min_dis=dis
            current_waypoint=i


    if current_waypoint+50 > len(ref_path.poses) :
        last_local_waypoint= len(ref_path.poses)
    else :
        last_local_waypoint=current_waypoint+50



    out_path.header.frame_id='map'
    for i in range(current_waypoint,last_local_waypoint) :
        tmp_pose=PoseStamped()
        tmp_pose.pose.position.x=ref_path.poses[i].pose.position.x
        tmp_pose.pose.position.y=ref_path.poses[i].pose.position.y
        tmp_pose.pose.position.z=ref_path.poses[i].pose.position.z
        tmp_pose.pose.orientation.x=0
        tmp_pose.pose.orientation.y=0
        tmp_pose.pose.orientation.z=0
        tmp_pose.pose.orientation.w=1
        out_path.poses.append(tmp_pose)

    return out_path,current_waypoint ## local_path와 waypoint를 반환 ##



class velocityPlanning :
    def __init__(self,car_max_speed,road_friction):
        self.car_max_speed=car_max_speed
        self.road_friction=road_friction
 
    def curveBasedVelocity(self,global_path,point_num):
        out_vel_plan=[]
        for i in range(0,point_num):
            out_vel_plan.append(self.car_max_speed)

        for i in range(point_num,len(global_path.poses)-point_num):
            x_list=[]
            y_list=[]
            for box in  range(-point_num,point_num):
                x=global_path.poses[i+box].pose.position.x
                y=global_path.poses[i+box].pose.position.y
                x_list.append([-2*x,-2*y,1])
                y_list.append(-(x*x)-(y*y))
            
            x_matrix=np.array(x_list)
            y_matrix=np.array(y_list)
            x_trans=x_matrix.T
            

            a_matrix=np.linalg.inv(x_trans.dot(x_matrix)).dot(x_trans).dot(y_matrix)
            a=a_matrix[0]
            b=a_matrix[1]
            c=a_matrix[2]
            r=sqrt(a*a+b*b-c)
            v_max=sqrt(r*9.8*self.road_friction)  #0.7
            if v_max>self.car_max_speed :
                v_max=self.car_max_speed
            out_vel_plan.append(v_max)

        for i in range(len(global_path.poses)-point_num,len(global_path.poses)):
            out_vel_plan.append(self.car_max_speed)
        
        return out_vel_plan


class purePursuit : ## purePursuit 알고리즘 적용 ##
    def __init__(self):
        self.forward_point=Point()
        self.current_postion=Point()
        self.is_look_forward_point=False
        self.vehicle_length=2.8
        self.lfd=5
        self.min_lfd=2
        self.max_lfd=30
        self.steering=0
        
    def getPath(self,msg):
        self.path=msg  #nav_msgs/Path 
    
    
    def getEgoStatus(self,msg):

        self.current_vel=msg.velocity  #kph
        self.vehicle_yaw=(msg.heading)/180*pi   # rad
        self.current_postion.x=msg.position.x ## 차량의 현재x 좌표 ##
        self.current_postion.y=msg.position.y ## 차량의 현재y 좌표 ##
        self.current_postion.z=msg.position.z ## 차량의 현재z 좌표 ##



    def steering_angle(self): ## purePursuit 알고리즘을 이용한 Steering 계산 ## 
        vehicle_position=self.current_postion
        rotated_point=Point()
        self.is_look_forward_point= False

        

        for i in self.path.poses :
            path_point=i.pose.position
            dx= path_point.x - vehicle_position.x
            dy= path_point.y - vehicle_position.y
            rotated_point.x=cos(self.vehicle_yaw)*dx +sin(self.vehicle_yaw)*dy
            rotated_point.y=sin(self.vehicle_yaw)*dx - cos(self.vehicle_yaw)*dy
 
            
            if rotated_point.x>0 :
                dis=sqrt(pow(rotated_point.x,2)+pow(rotated_point.y,2))
                
                if dis>= self.lfd :
                    
                    self.lfd=self.current_vel.x * 0.65
                    # print("lfd : ", self.lfd)
                    if self.lfd < self.min_lfd : 
                        self.lfd=self.min_lfd
                    elif self.lfd > self.max_lfd :
                        self.lfd=self.max_lfd
                    self.forward_point=path_point
                    self.is_look_forward_point=True
                    
                    break
        
        theta=atan2(rotated_point.y,rotated_point.x)

        if self.is_look_forward_point :
            self.steering=atan2((2*self.vehicle_length*sin(theta)),self.lfd)*180/pi #deg
            return self.steering ## Steering 반환 ##
        else : 
            print("no found forward point")
            return 0

class cruiseControl:
    def __init__(self,object_vel_gain,object_dis_gain):
        self.object=[False,0]
        self.traffic=[False,0]
        self.Person=[False,0]
        self.object_vel_gain=object_vel_gain
        self.object_dis_gain=object_dis_gain


    def checkObject(self,ref_path,global_vaild_object,local_vaild_object,tl=[]):
        self.object=[False,0]
        self.traffic=[False,0]
        self.Person=[False,0]
        if len(global_vaild_object) >0  :
            min_rel_distance=float('inf')
            for i in range(len(global_vaild_object)):
                for path in ref_path.poses :

                    if global_vaild_object[i][0]==0 :
                    
                        dis=sqrt(pow(path.pose.position.x-global_vaild_object[i][1],2)+pow(path.pose.position.y-global_vaild_object[i][2],2))

                        if dis<3:
                            
                            rel_distance= sqrt(pow(local_vaild_object[i][1],2)+pow(local_vaild_object[i][2],2))
                            if rel_distance < min_rel_distance:
                                min_rel_distance=rel_distance
                                self.Person=[True,i]


                    if global_vaild_object[i][0]==3 :
                        traffic_sign='STOP'

                        if len(tl)!=0  and  global_vaild_object[i][3] == tl[0] :
                            if tl[1] == 48 or tl[1]==16   :   #
                                traffic_sign ='GO'
                        # print(traffic_sign)
                        if traffic_sign =='STOP':
                            dis=sqrt(pow(path.pose.position.x-global_vaild_object[i][1],2)+pow(path.pose.position.y-global_vaild_object[i][2],2))
                            
                            if dis<2.5 :
                                rel_distance= sqrt(pow(local_vaild_object[i][1],2)+pow(local_vaild_object[i][2],2))
                                if rel_distance < min_rel_distance:
                                    min_rel_distance=rel_distance
                                    self.traffic=[True,i]

    def acc(self,local_vaild_object,ego_vel,target_vel,status_msg):
        out_vel=target_vel
        pre_out_vel = out_vel

        if self.Person[0]==True:
            print("ACC ON_person")
            Pedestrian=[local_vaild_object[self.Person[1]][1],local_vaild_object[self.Person[1]][2],local_vaild_object[self.Person[1]][3]]
            time_gap=0.6
            default_space=1
            dis_safe=ego_vel* time_gap+default_space
            dis_rel=sqrt(pow(Pedestrian[0],2)+pow(Pedestrian[1],2))-3
            
            vel_rel=(Pedestrian[2]-ego_vel)  
            
            v_gain=self.object_vel_gain
            x_errgain=self.object_dis_gain
            acceleration=vel_rel*v_gain - x_errgain*(dis_safe-dis_rel)    

            acc_based_vel=ego_vel+acceleration
            
            if acc_based_vel > target_vel : 
                acc_based_vel=target_vel
            
            if dis_safe-dis_rel >0 :
                out_vel=acc_based_vel
            else :
                if acc_based_vel<target_vel :
                    out_vel=acc_based_vel


        if self.traffic[0] == True :
            print("Traffic_ON")   
            front_vehicle=[local_vaild_object[self.traffic[1]][1],local_vaild_object[self.traffic[1]][2],local_vaild_object[self.traffic[1]][3]]
            time_gap=0.3
            default_space=0.1
            dis_safe=ego_vel* time_gap+default_space
            dis_rel=sqrt(pow(front_vehicle[0],2)+pow(front_vehicle[1],2))-1
            
            vel_rel=(0-ego_vel)  
            
            v_gain=self.object_vel_gain
            x_errgain=self.object_dis_gain
            acceleration=vel_rel*v_gain - x_errgain*(dis_safe-dis_rel)    

            acc_based_vel=ego_vel+acceleration
            
            if acc_based_vel > target_vel : 
                acc_based_vel=target_vel
            
            if dis_safe-dis_rel >0 :
                out_vel=acc_based_vel
            else :
                if acc_based_vel<target_vel :
                    out_vel=acc_based_vel
            # print(dis_safe,dis_rel,- x_errgain*(dis_safe-dis_rel),out_vel)

            if dis_rel < 1 :
                out_vel = 0

        print("out_vel", out_vel)
        return out_vel

class mgko_obj :
    def __init__(self):
        self.num_of_objects=0
        self.pose_x=[]
        self.pose_y=[]
        self.velocity=[]
        self.object_type=[]
        
        


class vaildObject : ## 장애물 유무 확인 (차량, 사람, 정지선 신호) ##

    def __init__(self,stop_line=[]):
        self.stop_line=stop_line
    def get_object(self,num_of_objects,object_type,pose_x,pose_y,velocity):
        self.all_object=mgko_obj()
        self.all_object.num_of_objects=num_of_objects
        self.all_object.object_type=object_type
        self.all_object.pose_x=pose_x
        self.all_object.pose_y=pose_y
        self.all_object.velocity=velocity


    def calc_vaild_obj(self,ego_pose):  # x, y, heading
        global_object_info=[]
        loal_object_info=[]
        
        # if self.all_object.num_of_objects > 0:

        tmp_theta=ego_pose[2]
        tmp_translation=[ego_pose[0],ego_pose[1]]
        tmp_t=np.array([[cos(tmp_theta), -sin(tmp_theta),tmp_translation[0]],
                        [sin(tmp_theta),cos(tmp_theta),tmp_translation[1]],
                        [0,0,1]])
        tmp_det_t=np.array([[tmp_t[0][0],tmp_t[1][0],-(tmp_t[0][0]*tmp_translation[0]+tmp_t[1][0]*tmp_translation[1])   ],
                            [tmp_t[0][1],tmp_t[1][1],-(tmp_t[0][1]*tmp_translation[0]+tmp_t[1][1]*tmp_translation[1])   ],
                            [0,0,1]])

        for num in range(self.all_object.num_of_objects):
            global_result=np.array([[self.all_object.pose_x[num]],[self.all_object.pose_y[num]],[1]])
            local_result=tmp_det_t.dot(global_result)
            if local_result[0][0]> 0 :
                global_object_info.append([self.all_object.object_type[num],self.all_object.pose_x[num],self.all_object.pose_y[num],self.all_object.velocity[num]])
                loal_object_info.append([self.all_object.object_type[num],local_result[0][0],local_result[1][0],self.all_object.velocity[num]])
        
        
        for line in self.stop_line:
            global_result=np.array([[line[0]],[line[1]],[1]])
            local_result=tmp_det_t.dot(global_result)
            if local_result[0][0]> 0 :
                global_object_info.append([3,line[0],line[1],line[2]])
                loal_object_info.append([3,local_result[0][0],local_result[1][0],line[2]])
        

        return global_object_info,loal_object_info

class pidController : ## 속도 제어를 위한 PID 적용 ##
    def __init__(self):
        self.p_gain=0.1
        self.i_gain=0.0
        self.d_gain=0.05
        self.controlTime=0.033
        self.prev_error=0
        self.i_control=0


    def pid(self,target_vel,current_vel):
        error= target_vel-current_vel.x
        
        p_control=self.p_gain*error
        self.i_control+=self.i_gain*error*self.controlTime
        d_control=self.d_gain*(error-self.prev_error)/self.controlTime

        output=p_control+self.i_control+d_control
        self.prev_error=error
        return output

########################  lattice  ########################

def latticePlanner(ref_path,global_vaild_object,vehicle_status,current_lane):
    out_path=[]
    selected_lane=-1
    lattic_current_lane=current_lane
    look_distance=int(vehicle_status[3]*3.6*0.8*2)
    if look_distance < 5 :
        look_distance=5     #min 5m
    if look_distance > 9 :
        look_distance=9  
    if len(ref_path.poses)>look_distance :
        global_ref_start_point=(ref_path.poses[0].pose.position.x,ref_path.poses[0].pose.position.y)
        global_ref_start_next_point=(ref_path.poses[1].pose.position.x,ref_path.poses[1].pose.position.y)
        global_ref_end_point=(ref_path.poses[look_distance].pose.position.x,ref_path.poses[look_distance].pose.position.y)
        
        theta=atan2(global_ref_start_next_point[1]-global_ref_start_point[1],global_ref_start_next_point[0]-global_ref_start_point[0])
        translation=[global_ref_start_point[0],global_ref_start_point[1]]

        t=np.array([[cos(theta), -sin(theta),translation[0]],[sin(theta),cos(theta),translation[1]],[0,0,1]])
        det_t=np.array([[t[0][0],t[1][0],-(t[0][0]*translation[0]+t[1][0]*translation[1])   ],[t[0][1],t[1][1],-(t[0][1]*translation[0]+t[1][1]*translation[1])   ],[0,0,1]])



        world_end_point=np.array([[global_ref_end_point[0]],[global_ref_end_point[1]],[1]])
        local_end_point=det_t.dot(world_end_point)
        world_ego_vehicle_position=np.array([[vehicle_status[0]],[vehicle_status[1]],[1]])
        local_ego_vehicle_position=det_t.dot(world_ego_vehicle_position)
        lane_off_set=[3.6,2.4,1.2,0,-1.2,-2.4,-3.6]
        local_lattice_points=[]
        for i in range(len(lane_off_set)):
            local_lattice_points.append([local_end_point[0][0],local_end_point[1][0]+lane_off_set[i],1])
            


        for end_point in local_lattice_points :
            lattice_path=Path()
            lattice_path.header.frame_id='map'
            x=[]
            y=[]
            x_interval=0.5
            xs=0
            xf=end_point[0]
            ps=local_ego_vehicle_position[1][0]

            pf=end_point[1]
            x_num=xf/x_interval

            for i in range(xs,int(x_num)) : 
                x.append(i*x_interval)
            
            a=[0.0,0.0,0.0,0.0]
            a[0]=ps
            a[1]=0
            a[2]=3.0*(pf-ps)/(xf*xf)
            a[3]=-2.0*(pf-ps)/(xf*xf*xf)

            for i in x:
                result=a[3]*i*i*i+a[2]*i*i+a[1]*i+a[0]
                y.append(result)


            for i in range(0,len(y)) :
                local_result=np.array([[x[i]],[y[i]],[1]])
                global_result=t.dot(local_result)

                read_pose=PoseStamped()
                read_pose.pose.position.x=global_result[0][0]
                read_pose.pose.position.y=global_result[1][0]
                read_pose.pose.position.z=0
                read_pose.pose.orientation.x=0
                read_pose.pose.orientation.y=0
                read_pose.pose.orientation.z=0
                read_pose.pose.orientation.w=1
                lattice_path.poses.append(read_pose)

            out_path.append(lattice_path)
        
        add_point_size=int(vehicle_status[3]*2*3.6)
        print('add point',add_point_size)
        if add_point_size>len(ref_path.poses)-2:
            add_point_size=len(ref_path.poses)
        elif add_point_size<10 :
            add_point_size=10
        
        
         
        for i in range(look_distance,add_point_size):
            if i+1 < len(ref_path.poses):
                tmp_theta=atan2(ref_path.poses[i+1].pose.position.y-ref_path.poses[i].pose.position.y,ref_path.poses[i+1].pose.position.x-ref_path.poses[i].pose.position.x)
                
                tmp_translation=[ref_path.poses[i].pose.position.x,ref_path.poses[i].pose.position.y]
                tmp_t=np.array([[cos(tmp_theta), -sin(tmp_theta),tmp_translation[0]],[sin(tmp_theta),cos(tmp_theta),tmp_translation[1]],[0,0,1]])
                tmp_det_t=np.array([[tmp_t[0][0],tmp_t[1][0],-(tmp_t[0][0]*tmp_translation[0]+tmp_t[1][0]*tmp_translation[1])   ],[tmp_t[0][1],tmp_t[1][1],-(tmp_t[0][1]*tmp_translation[0]+tmp_t[1][1]*tmp_translation[1])   ],[0,0,1]])

                for lane_num in range(len(lane_off_set)) :
                    local_result=np.array([[0],[lane_off_set[lane_num]],[1]])
                    global_result=tmp_t.dot(local_result)

                    read_pose=PoseStamped()
                    read_pose.pose.position.x=global_result[0][0]
                    read_pose.pose.position.y=global_result[1][0]
                    read_pose.pose.position.z=0
                    read_pose.pose.orientation.x=0
                    read_pose.pose.orientation.y=0
                    read_pose.pose.orientation.z=0
                    read_pose.pose.orientation.w=1
                    out_path[lane_num].poses.append(read_pose)

        lane_weight=[5,3,1,0,1,3,5] #reference path 
        collision_bool=[False,False,False,False,False,False,False]

        if len(global_vaild_object)>0:

            for obj in global_vaild_object :
                if  obj[0]==2 or obj[0]==1 : 
                    for path_num in range(len(out_path)) :
                        
                        for path_pos in out_path[path_num].poses :
                            
                            dis= sqrt(pow(obj[1]-path_pos.pose.position.x,2)+pow(obj[2]-path_pos.pose.position.y,2))
   
                            if dis<1.5:
                                collision_bool[path_num]=True
                                lane_weight[path_num]=lane_weight[path_num]+100
                                break
        else :
            print("No Obstacle")
    
        selected_lane=lane_weight.index(min(lane_weight))
        print(lane_weight,selected_lane)
        all_lane_collision=True
        
    else :
        print("NO Reference Path")
        selected_lane=-1    

    return out_path,selected_lane

########################  lattice  ########################
