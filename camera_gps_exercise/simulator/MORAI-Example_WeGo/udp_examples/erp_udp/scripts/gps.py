
from lib.gps_util import UDP_GPS_Parser
import time
import threading
from math import cos,sin,sqrt,pow,atan2,pi
import os,json


path = os.path.dirname( os.path.abspath( __file__ ) )

with open(os.path.join(path,("params.json")),'r') as fp :
    params = json.load(fp)

params=params["params"]
user_ip = params["user_ip"]
gps_port = params["gps_dst_port"]


def main():
    #GPRMC , GPGGA
    gps_parser=UDP_GPS_Parser(user_ip, gps_port,'GPRMC')
    while True :
        
        if gps_parser.parsed_data!=None :
            latitude= gps_parser.parsed_data[0]
            longitude= gps_parser.parsed_data[1]
            print('Lat : {0} , Long : {1}'.format(latitude,longitude))
        
        time.sleep(0.1)

        



if __name__ == '__main__':

    main()

 








