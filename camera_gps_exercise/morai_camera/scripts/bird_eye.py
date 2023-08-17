#! /usr/bin/env python3
import rospy
from sensor_msgs.msg import CompressedImage, Image
from cv_bridge import CvBridge
import cv2
import numpy as np

class Lkas:
    def __init__(self):
        self.bridge = CvBridge()
        self.pub = rospy.Publisher('/modified_compressed_jpg', Image, queue_size=10)
        self.sub = rospy.Subscriber('/image_jpeg/compressed', CompressedImage, self.imgCB)

    def image_wrap(self, img):
        self.img_x, self.img_y = img.shape[1], img.shape[0] # 640, 480
        src_center_offset = [200, 315]
        src = np.float32(
            [
                (0, 479),
                (src_center_offset[0], src_center_offset[1]),
                (640 - src_center_offset[0], src_center_offset[1]),
                (639, 479),
            ]
        )

        cv2.circle(img, (0, 479), 10, 255, 10)
        cv2.circle(img, (src_center_offset[0], src_center_offset[1]), 10, 255, 10)
        cv2.circle(img, (640 - src_center_offset[0], src_center_offset[1]), 10, 255, 10)
        cv2.circle(img, (639, 479), 10, 255, 10)

        dst_offset = [round(self.img_x * 0.125), 0]
        # offset: x값이 작아질 수록 dst bo width 증가합니다.
        dst = np.float32(
            [
                (dst_offset[0], self.img_y),
                (dst_offset[0], 0),
                (self.img_x - dst_offset[0], 0),
                (self.img_x - dst_offset[0], self.img_y),
            ]
        )


        cv2.circle(img, (dst_offset[0], self.img_y), 10, (0, 0, 255), 10)
        cv2.circle(img, (dst_offset[0], 0), 10, (0, 0, 255), 10)
        cv2.circle(img, (self.img_x - dst_offset[0], 0), 10, (0, 0, 255), 10)
        cv2.circle(img, (self.img_x - dst_offset[0], self.img_y), 10, (0, 0, 255), 10)

        matrix = cv2.getPerspectiveTransform(src, dst)
        warp_img = cv2.warpPerspective(img, matrix, (self.img_x, self.img_y))

        return img, warp_img

    def imgCB(self, data):
        img = self.bridge.compressed_imgmsg_to_cv2(data)
        modi_img, warp_img = self.image_wrap(img)
        warp_img_msg = self.bridge.cv2_to_imgmsg(warp_img, "bgr8")
        self.pub.publish(warp_img_msg)

        cv2.imshow("Image window", modi_img)
        cv2.imshow("Warped Image window", warp_img)
        cv2.waitKey(1)

def main():
    rospy.init_node('lkas_node', anonymous=True)
    lk = Lkas()
    rospy.spin()
    
if __name__ == "__main__":
    main()