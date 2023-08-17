;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::ObjectStatusExtended)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'ObjectStatusExtended (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::OBJECTSTATUSEXTENDED")
  (make-package "MORAI_MSGS::OBJECTSTATUSEXTENDED"))

(in-package "ROS")
;;//! \htmlinclude ObjectStatusExtended.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass morai_msgs::ObjectStatusExtended
  :super ros::object
  :slots (_unique_id _type _name _heading _velocity _acceleration _size _position _orientation _turn_signal _global_path_info _lane_departure _distance_left_lane _distance_right_lane _object_yaw_rate ))

(defmethod morai_msgs::ObjectStatusExtended
  (:init
   (&key
    ((:unique_id __unique_id) 0)
    ((:type __type) 0)
    ((:name __name) "")
    ((:heading __heading) 0.0)
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:acceleration __acceleration) (instance geometry_msgs::Vector3 :init))
    ((:size __size) (instance geometry_msgs::Vector3 :init))
    ((:position __position) (instance geometry_msgs::Vector3 :init))
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    ((:turn_signal __turn_signal) 0)
    ((:global_path_info __global_path_info) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:lane_departure __lane_departure) 0)
    ((:distance_left_lane __distance_left_lane) 0.0)
    ((:distance_right_lane __distance_right_lane) 0.0)
    ((:object_yaw_rate __object_yaw_rate) 0.0)
    )
   (send-super :init)
   (setq _unique_id (round __unique_id))
   (setq _type (round __type))
   (setq _name (string __name))
   (setq _heading (float __heading))
   (setq _velocity __velocity)
   (setq _acceleration __acceleration)
   (setq _size __size)
   (setq _position __position)
   (setq _orientation __orientation)
   (setq _turn_signal (round __turn_signal))
   (setq _global_path_info __global_path_info)
   (setq _lane_departure (round __lane_departure))
   (setq _distance_left_lane (float __distance_left_lane))
   (setq _distance_right_lane (float __distance_right_lane))
   (setq _object_yaw_rate (float __object_yaw_rate))
   self)
  (:unique_id
   (&optional __unique_id)
   (if __unique_id (setq _unique_id __unique_id)) _unique_id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:size
   (&rest __size)
   (if (keywordp (car __size))
       (send* _size __size)
     (progn
       (if __size (setq _size (car __size)))
       _size)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:turn_signal
   (&optional __turn_signal)
   (if __turn_signal (setq _turn_signal __turn_signal)) _turn_signal)
  (:global_path_info
   (&optional __global_path_info)
   (if __global_path_info (setq _global_path_info __global_path_info)) _global_path_info)
  (:lane_departure
   (&optional __lane_departure)
   (if __lane_departure (setq _lane_departure __lane_departure)) _lane_departure)
  (:distance_left_lane
   (&optional __distance_left_lane)
   (if __distance_left_lane (setq _distance_left_lane __distance_left_lane)) _distance_left_lane)
  (:distance_right_lane
   (&optional __distance_right_lane)
   (if __distance_right_lane (setq _distance_right_lane __distance_right_lane)) _distance_right_lane)
  (:object_yaw_rate
   (&optional __object_yaw_rate)
   (if __object_yaw_rate (setq _object_yaw_rate __object_yaw_rate)) _object_yaw_rate)
  (:serialization-length
   ()
   (+
    ;; int32 _unique_id
    4
    ;; int32 _type
    4
    ;; string _name
    4 (length _name)
    ;; float64 _heading
    8
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Vector3 _acceleration
    (send _acceleration :serialization-length)
    ;; geometry_msgs/Vector3 _size
    (send _size :serialization-length)
    ;; geometry_msgs/Vector3 _position
    (send _position :serialization-length)
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; int32 _turn_signal
    4
    ;; string[] _global_path_info
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _global_path_info)) 4
    ;; int32 _lane_departure
    4
    ;; float32 _distance_left_lane
    4
    ;; float32 _distance_right_lane
    4
    ;; float32 _object_yaw_rate
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _unique_id
       (write-long _unique_id s)
     ;; int32 _type
       (write-long _type s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Vector3 _acceleration
       (send _acceleration :serialize s)
     ;; geometry_msgs/Vector3 _size
       (send _size :serialize s)
     ;; geometry_msgs/Vector3 _position
       (send _position :serialize s)
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;; int32 _turn_signal
       (write-long _turn_signal s)
     ;; string[] _global_path_info
     (write-long (length _global_path_info) s)
     (dolist (elem _global_path_info)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int32 _lane_departure
       (write-long _lane_departure s)
     ;; float32 _distance_left_lane
       (sys::poke _distance_left_lane (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance_right_lane
       (sys::poke _distance_right_lane (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _object_yaw_rate
       (sys::poke _object_yaw_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _unique_id
     (setq _unique_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Vector3 _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; geometry_msgs/Vector3 _size
     (send _size :deserialize buf ptr-) (incf ptr- (send _size :serialization-length))
   ;; geometry_msgs/Vector3 _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; int32 _turn_signal
     (setq _turn_signal (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string[] _global_path_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _global_path_info (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _global_path_info i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int32 _lane_departure
     (setq _lane_departure (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _distance_left_lane
     (setq _distance_left_lane (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance_right_lane
     (setq _distance_right_lane (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _object_yaw_rate
     (setq _object_yaw_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get morai_msgs::ObjectStatusExtended :md5sum-) "d017861db3d88ed9ce76f9879817437c")
(setf (get morai_msgs::ObjectStatusExtended :datatype-) "morai_msgs/ObjectStatusExtended")
(setf (get morai_msgs::ObjectStatusExtended :definition-)
      "int32 unique_id
int32 type
string name
float64 heading

geometry_msgs/Vector3 velocity
geometry_msgs/Vector3 acceleration
geometry_msgs/Vector3 size
geometry_msgs/Vector3 position

geometry_msgs/Quaternion orientation
int32 turn_signal
string[] global_path_info
int32 lane_departure
float32 distance_left_lane
float32 distance_right_lane
float32 object_yaw_rate
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
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :morai_msgs/ObjectStatusExtended "d017861db3d88ed9ce76f9879817437c")


