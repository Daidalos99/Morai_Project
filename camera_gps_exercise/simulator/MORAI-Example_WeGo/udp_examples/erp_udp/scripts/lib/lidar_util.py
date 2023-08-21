import cv2
import numpy as np
import math
from common_util import RotationMatrix, TranslationMatrix

import socket
import threading
class UDP_LIDAR_Parser :
    
    def __init__(self, ip, port, params_lidar=None):

        self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        recv_address = (ip,port)
        self.sock.bind(recv_address)

        self.data_size=params_lidar["Block_SIZE"]
        
        if params_lidar["CHANNEL"]==int(16):
            self.channel = int(16)
            self.max_len = 150
            self.VerticalAngleDeg = np.array([[-15,1,-13,3,-11,5,-9,7,-7,9,-5,11,-3,13,-1,15]])

        else:
            self.channel = int(32)
            self.max_len = 300
            self.VerticalAngleDeg = np.array([[-30.67,-9.33,-29.33,-8.0,-28.0,-6.67,-26.67,-5.33,-25.33,-4,-24,-2.67,-22.67,-1.33,-21.33,
                                    0.0,-20.,1.33,-18.67,2.67,-17.33,4,-16,5.33,-14.67,6.67,-13.33,8,-12,9.33,-10.67,10.67]])


        self.is_lidar=False
        thread = threading.Thread(target=self.loop)
        thread.daemon = True 
        thread.start() 
    
    def loop(self):
        while True:
            self.x,self.y,self.z,self.Intensity=self.recv_udp_data()
            # lidar_result(x,y,z,Intensity)
            self.is_lidar=True

    # def lidar_result(self,x,y,z,Intensity):
    #     return x,y,z,Intensity


    def recv_udp_data(self):

        Buffer = b''

        for _ in range(self.max_len):

            UnitBlock, sender = self.sock.recvfrom(self.data_size)
            
            Buffer+=UnitBlock[:1200]

        Buffer_np=np.frombuffer(Buffer, dtype=np.uint8).reshape([-1, 100])

        if self.channel==16:
            Azimuth = np.zeros((24*self.max_len,))
            Azimuth[0::2] = Buffer_np[:,2].astype(np.float32) + 256*Buffer_np[:,3].astype(np.float32)
            Azimuth[1::2] = Buffer_np[:,2].astype(np.float32) + 256*Buffer_np[:,3].astype(np.float32) + 20
        else:
            Azimuth = Buffer_np[:,2] + 256*Buffer_np[:,3]
        
        Distance = (Buffer_np[:,4::3].astype(np.float32) + 256*Buffer_np[:,5::3].astype(np.float32))*2
        Intensity = Buffer_np[:,6::3].astype(np.float32)

        # reshape outputs based on 16 channels
        Azimuth = Azimuth.reshape([-1, 1])/100
        Distance = Distance.reshape([-1, self.channel])/1000
        Intensity = Intensity.reshape([-1])

        x, y, z = self.sph2cart(Distance, Azimuth)

        return x, y, z, Intensity

    def sph2cart(self, R, a):

        x = R * np.cos(np.deg2rad(self.VerticalAngleDeg)) * np.sin(np.deg2rad(a))
        y = R * np.cos(np.deg2rad(self.VerticalAngleDeg)) * np.cos(np.deg2rad(a))
        z = R * np.sin(np.deg2rad(self.VerticalAngleDeg))
        
        return x.reshape([-1]), y.reshape([-1]), z.reshape([-1])

    def __del__(self):
        self.sock.close()
        print('del')


def transformMTX_lidar2cam(params_lidar, params_cam):
    '''
    transform the coordinate of the lidar points to the camera coordinate
    \n xs, ys, zs : xyz components of lidar points w.r.t a lidar coordinate
    \n params_lidar : parameters from lidars 
    \n params_cam : parameters from cameras 
    '''
    lidar_yaw, lidar_pitch, lidar_roll = [np.deg2rad(params_lidar.get(i)) for i in (["YAW","PITCH","ROLL"])]
    cam_yaw, cam_pitch, cam_roll = [np.deg2rad(params_cam.get(i)) for i in (["YAW","PITCH","ROLL"])]
    
    #Relative position of lidar w.r.t cam
    lidar_pos = [params_lidar.get(i) for i in (["X","Y","Z"])]
    cam_pos = [params_cam.get(i) for i in (["X","Y","Z"])]

    x_rel = cam_pos[0] - lidar_pos[0]
    y_rel = cam_pos[1] - lidar_pos[1]
    z_rel = cam_pos[2] - lidar_pos[2]

    R_T = np.matmul(RotationMatrix(lidar_yaw, lidar_pitch, lidar_roll).T, TranslationMatrix(-x_rel, -y_rel, -z_rel).T)
    R_T = np.matmul(R_T, RotationMatrix(cam_yaw, cam_pitch, cam_roll))
    R_T = np.matmul(R_T, RotationMatrix(np.deg2rad(-90.), 0., 0.))
    R_T = np.matmul(R_T, RotationMatrix(0, 0., np.deg2rad(-90.)))
    
    #rotate and translate the coordinate of a lidar
    R_T = R_T.T 
    
    print('r : \n')

    print(R_T[:3,:3])

    print('t : \n')

    print(R_T[:3,3])

    return R_T


def project2img_mtx(params_cam):
    
    '''
    project the lidar points to 2d plane
    \n xc, yc, zc : xyz components of lidar points w.r.t a camera coordinate
    \n params_cam : parameters from cameras 

    '''
    # focal lengths
    fc_x = params_cam["HEIGHT"]/(2*np.tan(np.deg2rad(params_cam["FOV"]/2)))
    fc_y = params_cam["HEIGHT"]/(2*np.tan(np.deg2rad(params_cam["FOV"]/2)))

    #the center of image
    cx = params_cam["WIDTH"]/2
    cy = params_cam["HEIGHT"]/2
    
    #transformation matrix from 3D to 2D
    R_f = np.array([[fc_x,  0,      cx],
                    [0,     fc_y,   cy]])

    return R_f


class LIDAR2CAMTransform:
    def __init__(self, params_cam, params_lidar):

        self.width = params_cam["WIDTH"]
        self.height = params_cam["HEIGHT"]

        self.n = float(params_cam["WIDTH"])
        self.m = float(params_cam["HEIGHT"])

        self.RT = transformMTX_lidar2cam(params_lidar, params_cam)

        self.proj_mtx = project2img_mtx(params_cam)

    def transform_lidar2cam(self, xyz_p):
        
        xyz_c = np.matmul(np.concatenate([xyz_p, np.ones((xyz_p.shape[0], 1))], axis=1), self.RT.T)

        return xyz_c

    def project_pts2img(self, xyz_c, intens=None, crop=True):

        xyz_c = xyz_c.T

        xc, yc, zc = xyz_c[0,:].reshape([1,-1]), xyz_c[1,:].reshape([1,-1]), xyz_c[2,:].reshape([1,-1])

        xn, yn = xc/(zc+0.0001), yc/(zc+0.0001)

        xyi = np.matmul(self.proj_mtx, np.concatenate([xn, yn, np.ones_like(xn)], axis=0))

        if intens is None:

            xyi = xyi[0:2,:].T

        else:

            xyi = np.concatenate([xyi, intens.reshape([1, -1])], axis=0)

            xyi = xyi.T

        if crop:

            xyi = self.crop_pts(xyi)
        else:

            pass

        if intens is None:

            return xyi

        else:

            intens = xyi[:, 2]

            return xyi[:, :2], intens


    def crop_pts(self, xyi):

        xyi = xyi[np.logical_and(xyi[:, 0]>=0, xyi[:, 0]<self.width), :]
        xyi = xyi[np.logical_and(xyi[:, 1]>=0, xyi[:, 1]<self.height), :]

        return xyi



def make_intens_img(xi, yi, intens, img_w, img_h, intens_max, clr_map):
    '''
    place the lidar points into numpy arrays in order to make distance map
    \n xi, yi : xy components of lidar points w.r.t a 2d normalized plane
    \n intensity : intensity from the origin of the lidar coordinate
    \n img_w, img_h : a width and a height of a image from a camera
    \n dis_max : maximum of distance shown in the distance map 
    \n clr_map : colormap
    '''
    point_np = np.zeros((img_h,img_w,1), dtype=np.uint8)
    point_binary = np.zeros((img_h,img_w,3), dtype=np.uint8)

    point_np[yi.astype(np.int), xi.astype(np.int), :] = (np.clip(intens,0,intens_max).reshape([-1,1])/intens_max*255).astype(np.uint8)
    point_binary[yi.astype(np.int), xi.astype(np.int), :] = 1

    point_np = cv2.applyColorMap(point_np, clr_map)

    point_np = point_np*point_binary

    return point_np

