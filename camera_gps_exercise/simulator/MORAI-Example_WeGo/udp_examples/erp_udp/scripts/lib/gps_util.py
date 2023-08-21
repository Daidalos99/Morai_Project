import socket
import threading
import time
import struct
class UDP_GPS_Parser :
    def __init__(self,ip,port,data_type):
        self.type=data_type
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        recv_address = (ip,port)
        self.sock.bind(recv_address)
        self.data_size=65535 
        self.parsed_data=None
        thread = threading.Thread(target=self.recv_udp_data)
        thread.daemon = True 
        thread.start() 


    def recv_udp_data(self):
        while True :
            raw_data, sender = self.sock.recvfrom(self.data_size)
            self.data_parsing(raw_data)



    def data_parsing(self,raw_data) :
        raw_str=raw_data.decode()
        split_str=raw_str.split(",")
        header=split_str[0]
        
        if header[1:]== self.type :
            if self.type == 'GPRMC':
                latitude=int(float(split_str[3])/100)+(float(split_str[3])%100)/60
                longitude=int(float(split_str[5])/100)+(float(split_str[5])%100)/60
                self.parsed_data=[latitude,longitude]

            if self.type == 'GPGGA':
                latitude=int(float(split_str[2])/100)+(float(split_str[2])%100)/60
                longitude=int(float(split_str[4])/100)+(float(split_str[4])%100)/60
                self.parsed_data=[latitude,longitude]
       
                

    def get_data(self) :
        return self.parsed_data

    def __del__(self):
        self.sock.close()
        print('del')
