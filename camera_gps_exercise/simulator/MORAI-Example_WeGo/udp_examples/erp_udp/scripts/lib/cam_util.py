import cv2
import numpy as np
import os
import socket
import struct
import threading


class UDP_CAM_Parser:
    
    def __init__(self, ip, port, params_cam=None):

        self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        recv_address = (ip,port)
        self.sock.bind(recv_address)

        print("connected")

        self.data_size=int(65000)
        
        self.max_len = 3 #640X480
        self.raw_img=None
        self.is_img=False
        thread = threading.Thread(target=self.loop)
        thread.daemon = True 
        thread.start() 

    def loop(self):
        while True:
            self.raw_img=self.recv_udp_data()
            self.is_img=True

    def check_max_len(self):

        idx_list=[]

        for _ in range(self.ready_step):

            UnitBlock, sender = self.sock.recvfrom(self.data_size)

            print("check the size .. ")
            
            idx_list.append(np.fromstring(UnitBlock[3:7], dtype = "int"))

        self.max_len = np.max(idx_list)+1

    def recv_udp_data(self):

        TotalBuffer = b''
        num_block = 0

        while True:
            # self.sock.settimeout(1.0)

            UnitBlock, sender = self.sock.recvfrom(self.data_size)
            
            UnitIdx = np.frombuffer(UnitBlock[3:7], dtype = "int")[0]
            UnitSize = np.frombuffer(UnitBlock[7:11], dtype = "int")[0]
            UnitTail = UnitBlock[-2:]
            UnitBody = UnitBlock[11:(11 + UnitSize)]

            TotalBuffer+=UnitBody

            if UnitTail==b'EI':
             
                TotalIMG = cv2.imdecode(np.fromstring(TotalBuffer[-64987*self.max_len-UnitSize:], np.uint8), 1)

                TotalBuffer = b''

                break

        return TotalIMG
        
    def __del__(self):
        self.sock.close()
        print('del')
