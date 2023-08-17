;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::SkateboardStatus)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'SkateboardStatus (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::SKATEBOARDSTATUS")
  (make-package "MORAI_MSGS::SKATEBOARDSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SkateboardStatus.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass morai_msgs::SkateboardStatus
  :super ros::object
  :slots (_header _unique_id _acceleration _position _velocity _heading _accel _brake _wheel_angle _wheel_angle_rear ))

(defmethod morai_msgs::SkateboardStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:unique_id __unique_id) 0)
    ((:acceleration __acceleration) (instance geometry_msgs::Vector3 :init))
    ((:position __position) (instance geometry_msgs::Vector3 :init))
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:heading __heading) 0.0)
    ((:accel __accel) 0.0)
    ((:brake __brake) 0.0)
    ((:wheel_angle __wheel_angle) 0.0)
    ((:wheel_angle_rear __wheel_angle_rear) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _unique_id (round __unique_id))
   (setq _acceleration __acceleration)
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _heading (float __heading))
   (setq _accel (float __accel))
   (setq _brake (float __brake))
   (setq _wheel_angle (float __wheel_angle))
   (setq _wheel_angle_rear (float __wheel_angle_rear))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:unique_id
   (&optional __unique_id)
   (if __unique_id (setq _unique_id __unique_id)) _unique_id)
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:accel
   (&optional __accel)
   (if __accel (setq _accel __accel)) _accel)
  (:brake
   (&optional __brake)
   (if __brake (setq _brake __brake)) _brake)
  (:wheel_angle
   (&optional __wheel_angle)
   (if __wheel_angle (setq _wheel_angle __wheel_angle)) _wheel_angle)
  (:wheel_angle_rear
   (&optional __wheel_angle_rear)
   (if __wheel_angle_rear (setq _wheel_angle_rear __wheel_angle_rear)) _wheel_angle_rear)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _unique_id
    4
    ;; geometry_msgs/Vector3 _acceleration
    (send _acceleration :serialization-length)
    ;; geometry_msgs/Vector3 _position
    (send _position :serialization-length)
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; float64 _heading
    8
    ;; float32 _accel
    4
    ;; float32 _brake
    4
    ;; float32 _wheel_angle
    4
    ;; float32 _wheel_angle_rear
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _unique_id
       (write-long _unique_id s)
     ;; geometry_msgs/Vector3 _acceleration
       (send _acceleration :serialize s)
     ;; geometry_msgs/Vector3 _position
       (send _position :serialize s)
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _accel
       (sys::poke _accel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _brake
       (sys::poke _brake (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wheel_angle
       (sys::poke _wheel_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wheel_angle_rear
       (sys::poke _wheel_angle_rear (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _unique_id
     (setq _unique_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; geometry_msgs/Vector3 _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _accel
     (setq _accel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _brake
     (setq _brake (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wheel_angle
     (setq _wheel_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wheel_angle_rear
     (setq _wheel_angle_rear (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get morai_msgs::SkateboardStatus :md5sum-) "f9d12fd21720e651e2f84a2efdd6ec91")
(setf (get morai_msgs::SkateboardStatus :datatype-) "morai_msgs/SkateboardStatus")
(setf (get morai_msgs::SkateboardStatus :definition-)
      "Header header
int32 unique_id
geometry_msgs/Vector3 acceleration
geometry_msgs/Vector3 position
geometry_msgs/Vector3 velocity

float64 heading
float32 accel
float32 brake
float32 wheel_angle
float32 wheel_angle_rear

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :morai_msgs/SkateboardStatus "f9d12fd21720e651e2f84a2efdd6ec91")


