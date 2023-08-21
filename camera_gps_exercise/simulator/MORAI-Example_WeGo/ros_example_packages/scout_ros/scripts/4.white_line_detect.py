#!/usr/bin/env python3
import rospy
from sensor_msgs.msg import CompressedImage, Image
from cv_bridge import CvBridge
import numpy as np
import cv2

# birdeye -> white color detection(not just white lines)
class White_line_Detect:
    def __init__(self):
        self.bridge = CvBridge()
        rospy.init_node("white_line_node")
        rospy.Subscriber("/image_jpeg/compressed", CompressedImage, self.img_CB)
        self.pub = rospy.Publisher("/white/compressed", CompressedImage, queue_size=10)

    def detect_color(self, img):
        # Convert to HSV color space
        hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)

        # Define range of white color in HSV
        white_lower = np.array([0, 0, 150])
        white_upper = np.array([255, 10, 255])

        # Threshold the HSV image to get only white colors
        white_mask = cv2.inRange(hsv, white_lower, white_upper)
        cv2.imshow("white_mask", white_mask)

        # compare 2 images(src1, src2) and conduct and operation within mask area
        white_color = cv2.bitwise_and(img, img, mask=white_mask)    # src1, src2, mask
        cv2.imshow("white_color", white_color)
        return white_color

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
        img = self.bridge.compressed_imgmsg_to_cv2(data)    # convert ROS imgmsg to OpenCV img
        warped_image = self.img_warp(img)
        white_color = self.detect_color(warped_image)   # extract white color and masking operation with origin warped_image
        white_line_img_msg = self.bridge.cv2_to_compressed_imgmsg(white_color)  # convert OpenCV image to ROS imgmsg
        self.pub.publish(white_line_img_msg)

        cv2.namedWindow("img", cv2.WINDOW_NORMAL)
        cv2.namedWindow("white_color", cv2.WINDOW_NORMAL)
        cv2.imshow("img", img)
        cv2.imshow("white_color", white_color)
        cv2.waitKey(1)


if __name__ == "__main__":
    white_line_detect = White_line_Detect()
    try:
        rospy.spin()
    except rospy.ROSInterruptException:
        pass