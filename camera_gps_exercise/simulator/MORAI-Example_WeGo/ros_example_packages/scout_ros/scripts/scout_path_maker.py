#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import sys
import rospy
import rospkg
from morai_msgs.msg  import GPSMessage
from math import pi,cos,sin,pi,sqrt,pow
from nav_msgs.msg import Path
import tf
from geometry_msgs.msg import PoseStamped
import pyproj

class test :

    def __init__(self):
        rospy.init_node('path_maker', anonymous=True)

        arg = rospy.myargv(argv=sys.argv)
        # launch 파일로 실행할 경우 그 파일(path_maker.launch)의 args부분을 긁어옴
        # args="path changmin 302459.942 4122635.537"
        self.path_folder_name=arg[1]    # path
        self.make_path_name=arg[2]  #changmin
        self.x_offset=float(arg[3]) # 302459.942
        self.y_offset=float(arg[4]) # 4122635.537

        rospy.Subscriber("/gps", GPSMessage, self.gpsCB)

        self.is_gps = False
        self.prev_x = 0
        self.prev_y = 0

        self.proj_UTM = pyproj.Proj(proj='utm', zone=52, ellps='WGS84', preserve_units=False)
        rospack=rospkg.RosPack()    # 밑의 get_path에서 scout_ros pkg의 절대경로를 저장
        pkg_path=rospack.get_path('scout_ros')  # 타 pc에서 경로가 바뀌어도 그 경로를 가져옴
        full_path=pkg_path +'/'+ self.path_folder_name+'/'+self.make_path_name+'.txt'
        self.f=open(full_path, 'w')

        rate=rospy.Rate(30)
        while not rospy.is_shutdown():
            if self.is_gps == True :
                self.path_make()
            rate.sleep()    

        self.f.close()  # open한 path를 close(끔)
        

    def path_make(self):
        x=self.xy_zone[0]- self.x_offset
        y=self.xy_zone[1]- self.y_offset
        z=0
        distance=sqrt(pow(x-self.prev_x,2)+pow(y-self.prev_y,2))
        
        if distance > 0.5:
            data='{0}\t{1}\t{2}\n'.format(x,y,z)
            self.f.write(data)
            self.prev_x=x
            self.prev_y=y
            print(x,y)


    def gpsCB(self, data):
        self.xy_zone = self.proj_UTM(data.longitude, data.latitude)
        self.is_gps = True
        

if __name__ == '__main__':
    try:
        test_track=test()
    except rospy.ROSInterruptException:
        pass
