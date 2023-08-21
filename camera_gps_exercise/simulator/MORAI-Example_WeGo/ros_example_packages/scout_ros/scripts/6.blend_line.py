#!/usr/bin/env python3
import rospy
from sensor_msgs.msg import CompressedImage, Image
from cv_bridge import CvBridge
import numpy as np
import cv2

# detect both white and yellow lines
class Blend_Line_detect:
    def __init__(self):
        self.bridge = CvBridge()
        rospy.init_node("blend_line_node")
        self.pub = rospy.Publisher("/blend/compressed", CompressedImage, queue_size=10)
        rospy.Subscriber(
            "/image_jpeg/compressed", CompressedImage, self.img_CB
        )

    def detect_color(self, img):
        # Convert to HSV color space
        hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)

        # Define range of yellow color in HSV
        yellow_lower = np.array([15, 80, 0])
        yellow_upper = np.array([45, 255, 255])

        # Define range of blend color in HSV
        white_lower = np.array([0, 0, 150])
        white_upper = np.array([255, 10, 255])
        # Threshold the HSV image to get only yellow colors
        yellow_mask = cv2.inRange(hsv, yellow_lower, yellow_upper)

        # Threshold the HSV image to get only white colors
        white_mask = cv2.inRange(hsv, white_lower, white_upper)

        # Threshold the HSV image to get blend colors
        blend_mask = cv2.bitwise_or(yellow_mask, white_mask)
        blend_color = cv2.bitwise_and(img, img, mask=blend_mask)
        return blend_color

    # same with image_warp function in 3.bird_eye_view
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

    def img_CB(self, data):
        img = self.bridge.compressed_imgmsg_to_cv2(data)
        warp_img = self.img_warp(img)
        warp_blend_line = self.detect_color(warp_img)
        blend_line_msg = self.bridge.cv2_to_compressed_imgmsg(warp_blend_line)
        self.pub.publish(blend_line_msg)

        cv2.namedWindow("img", cv2.WINDOW_NORMAL)
        cv2.namedWindow("warp_blend_line", cv2.WINDOW_NORMAL)
        cv2.imshow("img", img)
        cv2.imshow("warp_blend_line", warp_blend_line)
        cv2.waitKey(1)


if __name__ == "__main__":
    blend_line_detect = Blend_Line_detect()
    rospy.spin()