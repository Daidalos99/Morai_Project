#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import sys
import rospy
from scout_msgs.msg  import ScoutStatus
from geometry_msgs.msg import Twist

class scout_controller :

    def __init__(self):
        rospy.init_node('scout_controller', anonymous=True)
        self.cmd_vel_pub = rospy.Publisher('/cmd_vel',Twist, queue_size=1)
        rospy.Subscriber('/scout_status', ScoutStatus, self.status_callback)
        scout_cmd_vel_msg=Twist()

        rate = rospy.Rate(20) 
        while not rospy.is_shutdown():

            # # 직진
            scout_cmd_vel_msg.angular.z=0.0
            scout_cmd_vel_msg.linear.x=1.0
            
            # # 후진
            # scout_cmd_vel_msg.angular.z=0.0
            # scout_cmd_vel_msg.linear.x=-1.0

            # # 좌회전
            # scout_cmd_vel_msg.angular.z=0.3
            # scout_cmd_vel_msg.linear.x=1.0
           
            # # 우회전
            # scout_cmd_vel_msg.angular.z=-0.3
            # scout_cmd_vel_msg.linear.x=1.0

            # # 제자리 회전
            # scout_cmd_vel_msg.angular.z=1.0
            # scout_cmd_vel_msg.linear.x=0.0
            self.cmd_vel_pub.publish(scout_cmd_vel_msg)


            rate.sleep()



    def status_callback(self,msg):
        #선속도, 각속도
        print(msg.linear_velocity, msg.angular_velocity)
 
        

 
        


        

if __name__ == '__main__':
    
    test=scout_controller()



