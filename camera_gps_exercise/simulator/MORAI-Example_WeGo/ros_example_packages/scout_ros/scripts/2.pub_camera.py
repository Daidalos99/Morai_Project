#!/usr/bin/env python3
  
import rospy
import cv2
import numpy as np
from sensor_msgs.msg import Image, CompressedImage
from cv_bridge import CvBridge

class IMGParser:
    def __init__(self):
        rospy.init_node('pub_camera', anonymous=False)
        self.bridge=CvBridge()
        self.image_sub = rospy.Subscriber("/image_jpeg/compressed", CompressedImage, self.callback)
        self.rgb_pub = rospy.Publisher("/camera_rgb_image", Image, queue_size=10)
        self.gray_pub = rospy.Publisher("/camera_gray_img", Image, queue_size=10)
        rospy.spin()

    def callback(self, data):
        img_bgr = self.bridge.compressed_imgmsg_to_cv2(data)
        
        gray_img = cv2.cvtColor(img_bgr, cv2.COLOR_BGR2GRAY)

        # convert OpenCV image to ROS image msg
        rgb_img_msg=self.bridge.cv2_to_imgmsg(img_bgr, 'bgr8')  # format img to bgr8 format
        gray_img_msg =self.bridge.cv2_to_imgmsg(gray_img)
        
        self.rgb_pub.publish(rgb_img_msg)
        self.gray_pub.publish(gray_img_msg)
      

if __name__ == '__main__':
    try:
        image_parser = IMGParser()
    except rospy.ROSInterruptException:
        pass