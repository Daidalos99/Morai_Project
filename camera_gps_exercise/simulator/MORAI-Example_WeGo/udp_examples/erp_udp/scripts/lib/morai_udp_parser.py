import socket
import threading
import time
import struct
class udp_parser :
    def __init__(self,ip,port,data_type):
        self.data_type = data_type
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        recv_address = (ip,port)
        self.sock.bind(recv_address)
        self.data_size = 65535 
        self.parsed_data = []
        thread = threading.Thread(target=self.recv_udp_data)
        thread.daemon = True 
        thread.start() 

    def recv_udp_data(self):
        while True :
            raw_data, sender = self.sock.recvfrom(self.data_size)
            self.data_parsing(raw_data)

    def data_parsing(self,raw_data) :
        if self.data_type == 'erp_status' :
            header = raw_data[0:11].decode()
            data_length = struct.unpack('i',raw_data[11:15])

            if header == '#MoraiInfo$' and data_length[0] == 132:

                ctrl_mode = struct.unpack('b', raw_data[27:28])[0]
                gear = struct.unpack('b', raw_data[28:29])[0]
                signed_vel = struct.unpack('f', raw_data[29:33])[0]
                map_id = struct.unpack('i', raw_data[33:37])[0]
                accel = struct.unpack('f', raw_data[37:41])[0]
                brake = struct.unpack('f', raw_data[41:45])[0]
                size_x,size_y,size_z = struct.unpack('fff', raw_data[45:57])
                overhang, wheelbase, rear_overhang = struct.unpack('fff', raw_data[57:69])
                pose_x, pose_y, pose_z = struct.unpack('fff', raw_data[69:81])
                roll , pitch , yaw = struct.unpack('fff', raw_data[81:93])
                vel_x, vel_y ,vel_z = struct.unpack('fff', raw_data[93:105])
                accel_x , accel_y, accel_z = struct.unpack('fff', raw_data[105:117])
                steer = struct.unpack('f', raw_data[117:121])[0]
                link_id = raw_data[121:159].decode()

                data_1 = ctrl_mode, gear, signed_vel, map_id, accel, brake, size_x, size_y, size_z, overhang, wheelbase, rear_overhang
                data_2 = pose_x, pose_y, pose_z, roll, pitch, yaw, vel_x, vel_y, vel_z, accel_x, accel_y, accel_z, steer, link_id

                unpacked_data = data_1 + data_2
  
                self.parsed_data = list(unpacked_data)                  
            
        elif self.data_type == 'erp_obj' :
            header=raw_data[0:14].decode()            
            if header == '#MoraiObjInfo$' :
                unpacked_data=[]
                offset_byte = 30
                
                for i in range(20) :
                    start_byte = i * 106
                    obj_id, obj_type = struct.unpack('hh', raw_data[start_byte + offset_byte : start_byte + offset_byte + 4])
                    pos_x, pos_y, pos_z = struct.unpack('fff', raw_data[start_byte + offset_byte + 4 : start_byte + offset_byte + 16])
                    heading = struct.unpack('f', raw_data[start_byte + offset_byte + 16 : start_byte + offset_byte + 20])[0]
                    size_x, size_y, size_z = struct.unpack('fff', raw_data[start_byte + offset_byte + 20 : start_byte + offset_byte + 32])
                    overhang, wheelbase, rear_overhang = struct.unpack('fff', raw_data[start_byte + offset_byte + 32 : start_byte + offset_byte + 44])
                    vel_x, vel_y, vel_z = struct.unpack('fff', raw_data[start_byte + offset_byte + 44 : start_byte + offset_byte + 56])
                    accel_x, accel_y, accel_z = struct.unpack('fff', raw_data[start_byte + offset_byte + 56 : start_byte + offset_byte + 68])
                    link_id = raw_data[start_byte + offset_byte + 56 : start_byte + offset_byte + 106].decode()

                    obj_info_list = [obj_id, obj_type, pos_x, pos_y, pos_z, heading, size_x, size_y, size_z, overhang, wheelbase, rear_overhang, vel_x, vel_y, vel_z, accel_x, accel_y, accel_z, link_id]
                    
                    if not(obj_info_list[0] == 0) :
                        unpacked_data.append(obj_info_list)
             
                if len(obj_info_list) != 0 :
                    self.parsed_data = unpacked_data         
                else :
                    self.parsed_data=[]     

        elif self.data_type == 'get_traffic' :            
            header = raw_data[0:14].decode()
            data_length = struct.unpack('i', raw_data[14:18])            
            if header == '#TrafficLight$' and data_length[0] == 16 :
                traffic_index = raw_data[30:42].decode()
                traffic_type, traffic_status = struct.unpack('2h', raw_data[42:46])
                self.parsed_data = [traffic_index, traffic_type, traffic_status]      

    def get_data(self) :
        return self.parsed_data

    def __del__(self):
        self.sock.close()
        print('del')


class udp_sender :
    def __init__(self,ip,port,data_type):
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        self.ip = ip
        self.port = port
        self.data_type = data_type

        if self.data_type == 'erp_ctrl_cmd':
            header = '#MoraiCtrlCmd$'.encode()
            data_length = struct.pack('i', 23)
            aux_data = struct.pack('iii', 0, 0, 0)
            self.upper = header + data_length + aux_data
            self.tail = '\r\n'.encode()  

        elif self.data_type == 'set_traffic':
            header = '#TrafficLight$'.encode()
            data_length = struct.pack('i', 15)
            aux_data = struct.pack('iii', 0, 0, 0)
            self.upper = header + data_length + aux_data
            self.tail = '\r\n'.encode() 

    def send_data(self,data):
        if self.data_type == 'erp_ctrl_cmd':
            packed_mode = struct.pack('b', data[0])
            packed_gear = struct.pack('b', data[1])
            packed_cmd_type = struct.pack('b', data[2])
            packed_velocity = struct.pack('f', data[3])
            packed_acceleration = struct.pack('f', data[4]) 
            packed_accel = struct.pack('f', data[5])
            packed_brake = struct.pack('f', data[6])
            packed_steering_angle = struct.pack('f', data[7])
            lower = packed_mode + packed_gear + packed_cmd_type + packed_velocity + packed_acceleration + packed_accel + packed_brake + packed_steering_angle
            send_data = self.upper + lower + self.tail

        elif self.data_type == 'set_traffic':
            packed_traffic_index  =data[0].encode()
            packed_traffic_status = struct.pack('h', data[1])
            lower = packed_traffic_index + packed_traffic_status
            send_data = self.upper + lower + self.tail
        
        self.sock.sendto(send_data, (self.ip, self.port))