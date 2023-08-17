;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::ERP42Info)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'ERP42Info (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::ERP42INFO")
  (make-package "MORAI_MSGS::ERP42INFO"))

(in-package "ROS")
;;//! \htmlinclude ERP42Info.msg.html


(defclass morai_msgs::ERP42Info
  :super ros::object
  :slots (_longlCmdType _position_x _position_y _position_z _roll _pitch _yaw _velocity _steering ))

(defmethod morai_msgs::ERP42Info
  (:init
   (&key
    ((:longlCmdType __longlCmdType) 0)
    ((:position_x __position_x) 0.0)
    ((:position_y __position_y) 0.0)
    ((:position_z __position_z) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:velocity __velocity) 0.0)
    ((:steering __steering) 0.0)
    )
   (send-super :init)
   (setq _longlCmdType (round __longlCmdType))
   (setq _position_x (float __position_x))
   (setq _position_y (float __position_y))
   (setq _position_z (float __position_z))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _velocity (float __velocity))
   (setq _steering (float __steering))
   self)
  (:longlCmdType
   (&optional __longlCmdType)
   (if __longlCmdType (setq _longlCmdType __longlCmdType)) _longlCmdType)
  (:position_x
   (&optional __position_x)
   (if __position_x (setq _position_x __position_x)) _position_x)
  (:position_y
   (&optional __position_y)
   (if __position_y (setq _position_y __position_y)) _position_y)
  (:position_z
   (&optional __position_z)
   (if __position_z (setq _position_z __position_z)) _position_z)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:steering
   (&optional __steering)
   (if __steering (setq _steering __steering)) _steering)
  (:serialization-length
   ()
   (+
    ;; int32 _longlCmdType
    4
    ;; float32 _position_x
    4
    ;; float32 _position_y
    4
    ;; float32 _position_z
    4
    ;; float32 _roll
    4
    ;; float32 _pitch
    4
    ;; float32 _yaw
    4
    ;; float32 _velocity
    4
    ;; float32 _steering
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _longlCmdType
       (write-long _longlCmdType s)
     ;; float32 _position_x
       (sys::poke _position_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _position_y
       (sys::poke _position_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _position_z
       (sys::poke _position_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _steering
       (sys::poke _steering (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _longlCmdType
     (setq _longlCmdType (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _position_x
     (setq _position_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _position_y
     (setq _position_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _position_z
     (setq _position_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _steering
     (setq _steering (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get morai_msgs::ERP42Info :md5sum-) "447921c8aaf0c348263b1dd340abd2b4")
(setf (get morai_msgs::ERP42Info :datatype-) "morai_msgs/ERP42Info")
(setf (get morai_msgs::ERP42Info :definition-)
      "int32 longlCmdType

float32 position_x
float32 position_y
float32 position_z

float32 roll
float32 pitch
float32 yaw

float32 velocity
float32 steering


")



(provide :morai_msgs/ERP42Info "447921c8aaf0c348263b1dd340abd2b4")


