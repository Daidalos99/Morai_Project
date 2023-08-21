#!/usr/bin/env python
# -*- coding: utf-8 -*-
import serial
import threading
import struct


class erpSerial :

    def __init__(self,device_name):
        self.ser = serial.Serial(device_name, baudrate=115200, timeout = 0)
        self.ser.flushInput()
        self.ser.flushOutput()
        thread = threading.Thread(target=self.recv_serial_data)
        thread.daemon = True 
        thread.start() 
        self.alive = 0
        self.is_data = False
        self.speed = 0.0
        self.steer = 0.0

    def recv_serial_data(self):
        while True :
            packet = self.ser.readline()
            if len(packet) == 18:
                header= packet[0:3].decode()
                
                if header == "STX":
                    self.is_data=True
                    mode,e_stop,gear=struct.unpack('BBB',packet[3:6])
                    self.speed,self.steer=struct.unpack('2h',packet[6:10])
                    brake=struct.unpack('B',packet[10:11])
                    enc=struct.unpack('f',packet[11:15])
                    alive=struct.unpack('B',packet[15:16])
                    # print(speed,steer)


    def send_ctrl_cmd(self,velocity,steering):
        
        if velocity > 20 :
            velocity=20.0
        else:
            velocity = int(velocity)
        header='STX'.encode()
        
        tail='\r\n'.encode()
        mode=1
        e_stop=0
        gear=0
        brake=1
        data=struct.pack('>BBBhhBB',mode,e_stop,gear,velocity*10,int(steering*71),brake,self.alive)
              
        packet=header+data+tail                
        self.ser.write(packet) 
        
        if self.alive <255 :
            self.alive+=1
        else :
            self.alive=0

    def __del__(self):
        self.ser.close()

        
        

