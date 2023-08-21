#!/usr/bin/env python
# -*- coding: utf-8 -*-
import rospy
import serial
import threading
import struct
from std_msgs.msg import Int16
from morai_msgs.msg import CtrlCmd

serial_name='/dev/ttyS0'


class serial_node :

    def __init__(self,device_name):
        rospy.init_node('serial', anonymous=True)
        self.vel_pub = rospy.Publisher('/current_vel',Int16, queue_size=1)
        rospy.Subscriber("/ctrl_cmd", CtrlCmd, self.ctrl_cmd_callback)
        self.vel_msg=Int16()
        self.ser = serial.Serial(device_name, baudrate=115200)
        thread = threading.Thread(target=self.recv_serial_data)
        thread.daemon = True 
        thread.start() 
        self.alive=0


        rospy.spin()
        self.ser.close()

    def recv_serial_data(self):
        while True :
            packet = self.ser.readline()
            if len(packet)==18:
                header= packet[0:3]
                
                if header == "STX":
                    mode,e_stop,gear=struct.unpack('BBB',packet[3:6])
                    speed,steer=struct.unpack('2h',packet[6:10])
                    brake=struct.unpack('B',packet[10:11])
                    enc=struct.unpack('f',packet[11:15])
                    alive=struct.unpack('B',packet[15:16])
                    self.vel_msg.data=speed
                    self.vel_pub.publish(self.vel_msg)

                    print(mode,e_stop,gear,speed,steer,brake,enc,alive)

    def ctrl_cmd_callback(self,msg):

        
        if msg.velocity > 20 :
            msg.velocity=20
        print("msg = ",  msg)
        header="STX".encode()
        tail='\r\n'.encode()
        mode=1
        e_stop=0
        gear=0
        brake=1

        # header="STX".encode()
        # tail='\r\n'.encode()
        # mode=1
        # e_stop=0
        # gear=0
        # brake=msg.brake

        
        data=struct.pack('>BBBhhBB',mode,e_stop,gear,msg.velocity*10,msg.steering*71,brake,self.alive)
        packet=header+data+tail
        self.ser.write(packet) 
        
        if self.alive <255 :
            self.alive+=1
        else :
            self.alive=0

        
        

if __name__ == '__main__':
    try:
        erp=serial_node(serial_name)
    except rospy.ROSInterruptException:
        pass
