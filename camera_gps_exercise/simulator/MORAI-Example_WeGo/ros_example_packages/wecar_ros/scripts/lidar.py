#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
from std_msgs.msg import Float64
from sensor_msgs.msg import LaserScan,PointCloud
from math import cos,sin,pi
from geometry_msgs.msg import Point32

class lidarParser :

    def __init__(self):
        rospy.init_node('lidar_parser', anonymous=True)
        rospy.Subscriber("/lidar2D", LaserScan, self.laser_callback)

        self.pcd_pub = rospy.Publisher('laser2pcd',PointCloud, queue_size=1)

        rospy.spin()


    def laser_callback(self,msg):
        pcd=PointCloud()
        motor_msg=Float64()
        pcd.header.frame_id=msg.header.frame_id
        angle=0

        for r in msg.ranges :

            tmp_point=Point32()
            tmp_point.x=r*cos(angle)
            tmp_point.y=r*sin(angle)
            print(angle,tmp_point.x,tmp_point.y)
            angle=angle+(1.0/180*pi)
            if r<12  :
                pcd.points.append(tmp_point)
                
        self.pcd_pub.publish(pcd)


if __name__ == '__main__':
    try:
        test=lidarParser()
    except rospy.ROSInterruptException:
        pass
