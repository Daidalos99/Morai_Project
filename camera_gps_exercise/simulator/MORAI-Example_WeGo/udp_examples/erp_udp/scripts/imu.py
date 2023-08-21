
from lib.imu_util import udp_sensor_parser
import time
import threading
import os,json

path = os.path.dirname( os.path.abspath( __file__ ) )

with open(os.path.join(path,("params.json")),'r') as fp :
    params = json.load(fp)

params=params["params"]
user_ip = params["user_ip"]
imu_port = params["imu_dst_port"]

def main():
    imu_parser=udp_sensor_parser(user_ip, imu_port,'imu')
    while True :
        
        if len(imu_parser.parsed_data)==10 :
            print('------------------------------------------------------')
            print(' ori_w:{0}  ori_x {1}  ori_y {2}  ori_z {3}'.format(round(imu_parser.parsed_data[0],2),round(imu_parser.parsed_data[1],2),round(imu_parser.parsed_data[2],2),round(imu_parser.parsed_data[3],2)))
            print(' ang_vel_x :{0}  ang_vel_y : {1}  ang_vel_z : {2} '.format(round(imu_parser.parsed_data[4],2),round(imu_parser.parsed_data[5],2),round(imu_parser.parsed_data[6],2)))
            print(' lin_acc_x :{0}  lin_acc_y : {1}  lin_acc_z : {2} '.format(round(imu_parser.parsed_data[7],2),round(imu_parser.parsed_data[8],2),round(imu_parser.parsed_data[9],2)))

        
        time.sleep(0.1)

        



if __name__ == '__main__':

    main()

 







