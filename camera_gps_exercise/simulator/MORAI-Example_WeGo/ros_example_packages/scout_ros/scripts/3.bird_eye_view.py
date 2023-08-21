#!/usr/bin/env python3
  
import rospy
import cv2
import numpy as np
from sensor_msgs.msg import Image, CompressedImage
from cv_bridge import CvBridge

class BirdEyeView:
    def __init__(self):
        rospy.init_node('bird_eye_view', anonymous=True)
        self.bridge=CvBridge()
        self.image_sub = rospy.Subscriber("/image_jpeg/compressed", CompressedImage, self.callback)
        self.pub = rospy.Publisher("/bird_eye/compressed", CompressedImage, queue_size=10)
        rospy.spin()

    def img_warp(self, img):
        self.img_x, self.img_y = img.shape[1], img.shape[0] # col, row
        # print(f'self.img_x:{self.img_x}, self.img_y:{self.img_y}')

        img_size = [640, 480]

        # points of the road(ROI)
        # src_side_offset = [0, 240]
        src_center_offset = [200, 315]  # left top point of the road
        src = np.float32(
            [
                [0, 479],                                               # left bottom
                [src_center_offset[0], src_center_offset[1]],           # left top
                [640 - src_center_offset[0], src_center_offset[1]],     # right top
                [639, 479],                                             # right bottom
            ]
        )
        
        # points of the projected rectangle
        dst_offset = [round(self.img_x * 0.125), 0]     # 640*(1/8)
        # offset x 값이 작아질 수록 dst box width 증가합니다.
        # dst box width increases, when offset x decreases
        dst = np.float32(
            [
                [dst_offset[0], self.img_y],                            # left bottom
                [dst_offset[0], 0],                                     # left top
                [self.img_x - dst_offset[0], 0],                        # right top
                [self.img_x - dst_offset[0], self.img_y],               # right bottom
            ]
        )

        # find perspective matrix
        matrix = cv2.getPerspectiveTransform(src, dst)
        # matrix_inv = cv2.getPerspectiveTransform(dst, src)
        warped_img = cv2.warpPerspective(img, matrix, (self.img_x, self.img_y))

        return warped_img

    def callback(self, data):
        img = self.bridge.compressed_imgmsg_to_cv2(data)    # convert ROS imgmsg to OpenCV img 
        warped_img = self.img_warp(img)
        warped_img_msg = self.bridge.cv2_to_compressed_imgmsg(warped_img) # convert OpenCV img to ROS imgmsg
        self.pub.publish(warped_img_msg)
        
        cv2.namedWindow("img", cv2.WINDOW_NORMAL)   # cv2.WINDOW_NORMAL: window size configuration
        cv2.namedWindow("img_warp", cv2.WINDOW_NORMAL)
        cv2.imshow("img", img)
        cv2.imshow("img_warp", warped_img)
        cv2.waitKey(1)

      
if __name__ == '__main__':
    try:
        image_parser = BirdEyeView()
    except rospy.ROSInterruptException:
        pass