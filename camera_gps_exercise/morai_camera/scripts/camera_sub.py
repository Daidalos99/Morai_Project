#! /usr/bin/env python3
import rospy
from sensor_msgs.msg import CompressedImage, Image
from cv_bridge import CvBridge
import cv2

class Lkas:
    def __init__(self):
        self.bridge = CvBridge()
        self.pub = rospy.Publisher('/modified_compressed_jpg', Image, queue_size=10)
        self.sub = rospy.Subscriber('/image_jpeg/compressed', CompressedImage, self.imgCB)

    def imgCB(self, data):
        img = self.bridge.compressed_imgmsg_to_cv2(data)

        print(img.shape)
        (rows,cols,channels) = img.shape
        if cols > 60 and rows > 60 :
          cv2.circle(img, (50,50), 10, (255, 255, 255), 10)

        modi_img = self.bridge.cv2_to_imgmsg(img, "bgr8")
        self.pub.publish(modi_img)

        # cv2.imshow("Image window", img)
        # cv2.waitKey(1)

def main():
    rospy.init_node('lkas_node', anonymous=True)
    lk = Lkas()
    rospy.spin()
    
if __name__ == "__main__":
    main()