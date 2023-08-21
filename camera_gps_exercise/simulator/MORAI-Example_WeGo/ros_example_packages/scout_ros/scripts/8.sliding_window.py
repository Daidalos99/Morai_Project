#!/usr/bin/env python3

import rospy
from sensor_msgs.msg import CompressedImage, Image
from cv_bridge import CvBridge
import numpy as np
import cv2
import os
import matplotlib.pyplot as plt


class Sliding_Window:
    def __init__(self):
        self.bridge = CvBridge()
        rospy.init_node("sliding_window_node")
        self.pub = rospy.Publisher("/sliding_windows/compressed", CompressedImage, queue_size=10)
        rospy.Subscriber("/image_jpeg/compressed", CompressedImage, self.img_CB)
        self.nothing_flag = False

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
    
    def detect_color(self, img):
        # Convert to HSV color space
        hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)

        # Define range of yellow color in HSV
        yellow_lower = np.array([20, 100, 100])
        yellow_upper = np.array([30, 255, 255])

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

    def img_binary(self, blend_line):
        bin = cv2.cvtColor(blend_line, cv2.COLOR_BGR2GRAY)
        binary_line = np.zeros_like(bin)

        # # only on(255) the pixel which bin value is not 0
        binary_line[bin != 0] = 1
        return binary_line


    # 처음 한번만(nothing_flag=False일 때만) 실행
    def detect_nothing(self):
        # on divided row images, set left window center and right window center
        self.nothing_left_x_base = round(self.img_x * 0.140625) # 90
        self.nothing_right_x_base = self.img_x - round(self.img_x * 0.140625)   # 550
        
        # ndarray of left, right x
        self.nothing_pixel_left_x = np.zeros(self.nwindows) + round(self.img_x * 0.140625)  # [90., 90., 90., 90., 90., 90., 90., 90., 90., 90.,]
        self.nothing_pixel_right_x = (np.zeros(self.nwindows) + self.img_x - round(self.img_x * 0.140625))  # [550., 550., 550., 550., 550., 550., 550., 550., 550., 550.,]

        # list of top y coordinates of each 10 windows
        self.nothing_pixel_y = [round(self.window_height / 2) * index for index in range(0, self.nwindows)] # [0, 24, 48, 72, ..., 216]

    def window_search(self, binary_line):   # binary_line: blur_img
        # make histograms
        # y축 기준 절반 아래 부분만을 사용하여 x축 기준 픽셀의 분포를 구합니다.
        bottom_half_y = binary_line.shape[0] / 2

        # get the total sum of each row, return type is list
        # 절반으로 나눈 이미지의 열(col)별 합을 계산(=axis0, 행방향 합과 같은 말)
        histogram = np.sum(binary_line[int(bottom_half_y) :, :], axis=0)

        # 히스토그램을 절반으로 나누어 좌우 히스토그램의 최대값의 인덱스를 반환합니다.
        midpoint = np.int32(histogram.shape[0] / 2)
        left_x_base = np.argmax(histogram[:midpoint])
        right_x_base = np.argmax(histogram[midpoint:]) + midpoint
        # show histogram
        # plt.hist(histogram)
        # plt.show()
        
        # if the left window's max index is 0, set index to nothing_left_x_base, which is center idx
        # else set to idx which has maximum histo value
        if left_x_base == 0:
            left_x_current = self.nothing_left_x_base
            # 왼쪽 차선의 최댓값 인덱스가 0이면 그냥 가운데(90)를 current로 설정
        else:
            left_x_current = left_x_base
            # 최댓값 인덱스가 있으면 current를 base 그대로 사용

        # if the right window's max index is midpoint, set index to nothing_right_x_base, which is center idx
        # else set to idx which has maximum histo value
        if right_x_base == midpoint:
            right_x_current = self.nothing_right_x_base
            # 오른쪽 차선의 최댓값 인덱스가 0이면 그냥 가운데(550)를 current로 설정
        else:
            right_x_current = right_x_base
            # 최댓값 인덱스가 있으면 current를 base 그대로 사용

        # np.dstack: stack with depth
        out_img = np.dstack((binary_line, binary_line, binary_line)) * 255
        # binary_line은 0~1로 이루어진 차선모양의 배열, 255배 후 3번 겹쳐서 흰색 선으로 만듦(gray to rgb(only white))

        ## window parameter
        # 적절한 윈도우의 개수를 지정합니다.
        nwindows = self.nwindows    # 10
        # 개수가 너무 적으면 정확하게 차선을 찾기 힘듭니다.
        # 개수가 너무 많으면 연산량이 증가하여 시간이 오래 걸립니다.
        window_height = self.window_height  # 48

        # 윈도우의 너비를 지정합니다. 윈도우가 옆 차선까지 넘어가지 않게 사이즈를 적절히 지정합니다.
        margin = 80 # 윈도우 가로/2

        # 탐색할 최소 픽셀의 개수를 지정합니다.
        min_pix = round((margin * 2 * window_height) * 0.0031)  # 24

        lane_pixel = binary_line.nonzero()  # 0이 아닌 인덱스들을 반환
        lane_pixel_y = np.array(lane_pixel[0])  # 0이 아닌 값이 있는 binary_line배열의 행(y값)을 추출
        lane_pixel_x = np.array(lane_pixel[1])  # 0이 아닌 값이 있는 binary_line배열의 열(x값)을 추출

        # pixel index를 담을 list를 만들어 줍니다.
        left_lane_idx = []
        right_lane_idx = []

        # Step through the windows one by one
        for window in range(nwindows):
            # window boundary를 지정합니다. (가로)
            win_y_low = binary_line.shape[0] - (window + 1) * window_height
            win_y_high = binary_line.shape[0] - window * window_height
            # print("check param : \n",window,win_y_low,win_y_high)

            # position 기준 window size
            # current: 윈도우에 차선이 안잡히면 중앙값(왼쪽 차선: 90, 오른쪽 차선: 550)
            #           윈도우에 차선이 잡히면 그때의 최대 히스토그램값
            win_x_left_low = left_x_current - margin
            win_x_left_high = left_x_current + margin
            win_x_right_low = right_x_current - margin
            win_x_right_high = right_x_current + margin

            # window 시각화입니다.
            if left_x_current != 0:
                cv2.rectangle(
                    out_img,
                    (win_x_left_low, win_y_low),
                    (win_x_left_high, win_y_high),
                    (0, 255, 0),
                    2,
                )
            if right_x_current != midpoint:
                cv2.rectangle(
                    out_img,
                    (win_x_right_low, win_y_low),
                    (win_x_right_high, win_y_high),
                    (0, 0, 255),
                    2,
                )

            # 왼쪽 오른쪽 각 차선 픽셀이 window안에 있는 경우 index를 저장합니다.
            # True False False True 등의 Boolean 배열을 생성
            # 전부 True일때 y좌표 값이 추출되어서 담김 [0]
            good_left_idx = (
                (lane_pixel_y >= win_y_low)
                & (lane_pixel_y < win_y_high)
                & (lane_pixel_x >= win_x_left_low)
                & (lane_pixel_x < win_x_left_high)
            ).nonzero()[0]

            # 전부 True일때 y좌표 값이 추출되어서 담김 [0]
            good_right_idx = (
                (lane_pixel_y >= win_y_low)
                & (lane_pixel_y < win_y_high)
                & (lane_pixel_x >= win_x_right_low)
                & (lane_pixel_x < win_x_right_high)
            ).nonzero()[0]

            # Append these indices to the lists
            # left_lane_idx와 right_lane_idx는 위에서 만든 빈 리스트
            left_lane_idx.append(good_left_idx)
            right_lane_idx.append(good_right_idx)

            # window내 설정한 pixel개수(min_pix = 24) 이상이 탐지되면, 픽셀들의 x 좌표 평균으로 업데이트 합니다.
            if len(good_left_idx) > min_pix:
                left_x_current = np.int32(np.mean(lane_pixel_x[good_left_idx]))
            if len(good_right_idx) > min_pix:
                right_x_current = np.int32(np.mean(lane_pixel_x[good_right_idx]))
        # for 문 종료, 10개의 윈도우에 대한 픽셀 좌표(left_x_current, right_x_current) 각각 업데이트

        # np.concatenate(array) => axis 0으로 차원 감소 시킵니다.(window개수로 감소)
        left_lane_idx = np.concatenate(left_lane_idx)
        right_lane_idx = np.concatenate(right_lane_idx)

        # window 별 좌우 도로 픽셀 좌표입니다.
        left_x = lane_pixel_x[left_lane_idx]
        left_y = lane_pixel_y[left_lane_idx]
        right_x = lane_pixel_x[right_lane_idx]
        right_y = lane_pixel_y[right_lane_idx]

        # 좌우 차선 별 2차 함수 계수를 추정합니다.
        if len(left_x) == 0 and len(right_x) == 0:
            left_x = self.nothing_pixel_left_x
            left_y = self.nothing_pixel_y
            right_x = self.nothing_pixel_right_x
            right_y = self.nothing_pixel_y
        else:
            if len(left_x) == 0:
                left_x = right_x - round(self.img_x / 2)
                left_y = right_y
            elif len(right_x) == 0:
                right_x = left_x + round(self.img_x / 2)
                right_y = left_y

        left_fit = np.polyfit(left_y, left_x, 2)
        right_fit = np.polyfit(right_y, right_x, 2)
        # 좌우 차선 별 추정할 y좌표입니다.
        plot_y = np.linspace(0, binary_line.shape[0] - 1, 100)
        # 좌우 차선 별 2차 곡선을 추정합니다.
        left_fit_x = left_fit[0] * plot_y**2 + left_fit[1] * plot_y + left_fit[2]
        right_fit_x = right_fit[0] * plot_y**2 + right_fit[1] * plot_y + right_fit[2]
        center_fit_x = (right_fit_x + left_fit_x) / 2

        # # window안의 lane을 black 처리합니다.
        # out_img[lane_pixel_y[left_lane_idx], lane_pixel_x[left_lane_idx]] = (0, 0, 0)
        # out_img[lane_pixel_y[right_lane_idx], lane_pixel_x[right_lane_idx]] = (0, 0, 0)

        # 양쪽 차선 및 중심 선 pixel 좌표(x,y)로 변환합니다.
        center = np.asarray(tuple(zip(center_fit_x, plot_y)), np.int32)
        right = np.asarray(tuple(zip(right_fit_x, plot_y)), np.int32)
        left = np.asarray(tuple(zip(left_fit_x, plot_y)), np.int32)

        cv2.polylines(out_img, [left], False, (0, 0, 255), thickness=5)
        cv2.polylines(out_img, [right], False, (0, 255, 0), thickness=5)
        sliding_window_img = out_img
        return sliding_window_img, left, right, center, left_x, left_y, right_x, right_y

    def img_CB(self, data):
        img = self.bridge.compressed_imgmsg_to_cv2(data)
        self.nwindows = 10
        self.window_height = np.int32(img.shape[0] / self.nwindows) # window 한개의 height를 구함, 48

        warp_img = self.img_warp(img)
        blend_img = self.detect_color(warp_img)
        binary_img = self.img_binary(blend_img)
        blur_img = cv2.GaussianBlur(binary_img, ksize=(3, 3), sigmaX=0, sigmaY=0)

        if self.nothing_flag == False:
            self.detect_nothing()
            self.nothing_flag = True

        (
            sliding_window_img,
            left,
            right,
            center,
            left_x,
            left_y,
            right_x,
            right_y,
        ) = self.window_search(blur_img)

        os.system("clear")
        print(f"------------------------------")
        print(f"left : {left}")
        print(f"right : {right}")
        print(f"center : {center}")
        print(f"left_x : {left_x}")
        print(f"left_y : {left_y}")
        print(f"right_x : {right_x}")
        print(f"right_y : {right_y}")
        print(f"------------------------------")

        sliding_window_msg = self.bridge.cv2_to_compressed_imgmsg(sliding_window_img)
        self.pub.publish(sliding_window_msg)

        cv2.namedWindow("img", cv2.WINDOW_NORMAL)
        cv2.namedWindow("sliding_window_img", cv2.WINDOW_NORMAL)
        cv2.imshow("img", img)
        cv2.imshow("sliding_window_img", sliding_window_img)
        cv2.waitKey(1)


if __name__ == "__main__":
    sliding_window = Sliding_Window()
    rospy.spin()