#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import sys
import rospy
from math import pi,sin,cos
from scout_msgs.msg  import ScoutStatus
from nav_msgs.msg import Odometry
import tf

class scout_odom :

    def __init__(self):
        rospy.init_node('scout_odom', anonymous=True)
        self.prev_time=rospy.get_rostime()
        self.is_status=False
        self.odom_pub = rospy.Publisher('/odom',Odometry, queue_size=1)
        rospy.Subscriber('/scout_status', ScoutStatus, self.status_callback)
        odom_msg=Odometry()
        odom_msg.header.frame_id='/odom'
        odom_msg.child_frame_id='/base_link'
        x=0
        y=0
        z=0
        heading_rad=0
        rate = rospy.Rate(30) # 30hz
        while not rospy.is_shutdown():
            if self.is_status :
                current_time = rospy.get_rostime()
                interval_time=(current_time-self.prev_time).to_sec()
                linear_x=self.status_msg.linear_velocity
                angular_z=self.status_msg.angular_velocity

                x+=linear_x*cos(heading_rad)*interval_time
                y+=linear_x*sin(heading_rad)*interval_time
                heading_rad+=angular_z*interval_time
                q= tf.transformations.quaternion_from_euler(0, 0,heading_rad)
                br = tf.TransformBroadcaster()
                br.sendTransform((x,y,z),
                                q,
                                current_time,
                                "base_link",
                                "odom")
                print(linear_x,angular_z)
                odom_msg.header.stamp=current_time
                odom_msg.pose.pose.position.x=x
                odom_msg.pose.pose.position.y=y
                odom_msg.pose.pose.position.z=z
                odom_msg.twist.twist.linear.x=linear_x
                odom_msg.twist.twist.angular.z=angular_z
                odom_msg.pose.pose.orientation.x=q[0]
                odom_msg.pose.pose.orientation.y=q[1]
                odom_msg.pose.pose.orientation.z=q[2]
                odom_msg.pose.pose.orientation.w=q[3]
                self.odom_pub.publish(odom_msg)


                self.prev_time=current_time
            rate.sleep()



    def status_callback(self,msg):
        self.status_msg=msg
        self.is_status=True
        
    

        

if __name__ == '__main__':
    
    test=scout_odom()



