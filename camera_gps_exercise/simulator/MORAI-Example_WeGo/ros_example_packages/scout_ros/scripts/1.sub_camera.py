#!/usr/bin/env python3
  
import rospy
import cv2
from sensor_msgs.msg import Image, CompressedImage
from cv_bridge import CvBridge


class IMGParser:
    def __init__(self):
        rospy.init_node('sub_camera', anonymous=False)
        self.bridge=CvBridge()

        self.image_sub = rospy.Subscriber("/camera_gray_img", Image, self.callback)
        rospy.spin()

    def callback(self, data):
        # convert ROS image msg to OpenCV image
        comp_img = self.bridge.imgmsg_to_cv2(data)
        cv2.imshow("Image window", comp_img)
        cv2.waitKey(1)
      

if __name__ == '__main__':
    try:
        image_parser = IMGParser()
    except rospy.ROSInterruptException:
        pass