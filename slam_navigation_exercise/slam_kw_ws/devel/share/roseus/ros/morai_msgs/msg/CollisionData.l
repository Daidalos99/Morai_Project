;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::CollisionData)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'CollisionData (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::COLLISIONDATA")
  (make-package "MORAI_MSGS::COLLISIONDATA"))

(in-package "ROS")
;;//! \htmlinclude CollisionData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass morai_msgs::CollisionData
  :super ros::object
  :slots (_header _global_offset_x _global_offset_y _global_offset_z _collision_object ))

(defmethod morai_msgs::CollisionData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:global_offset_x __global_offset_x) 0.0)
    ((:global_offset_y __global_offset_y) 0.0)
    ((:global_offset_z __global_offset_z) 0.0)
    ((:collision_object __collision_object) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _global_offset_x (float __global_offset_x))
   (setq _global_offset_y (float __global_offset_y))
   (setq _global_offset_z (float __global_offset_z))
   (setq _collision_object __collision_object)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:global_offset_x
   (&optional __global_offset_x)
   (if __global_offset_x (setq _global_offset_x __global_offset_x)) _global_offset_x)
  (:global_offset_y
   (&optional __global_offset_y)
   (if __global_offset_y (setq _global_offset_y __global_offset_y)) _global_offset_y)
  (:global_offset_z
   (&optional __global_offset_z)
   (if __global_offset_z (setq _global_offset_z __global_offset_z)) _global_offset_z)
  (:collision_object
   (&rest __collision_object)
   (if (keywordp (car __collision_object))
       (send* _collision_object __collision_object)
     (progn
       (if __collision_object (setq _collision_object (car __collision_object)))
       _collision_object)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _global_offset_x
    8
    ;; float64 _global_offset_y
    8
    ;; float64 _global_offset_z
    8
    ;; morai_msgs/ObjectStatus[] _collision_object
    (apply #'+ (send-all _collision_object :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _global_offset_x
       (sys::poke _global_offset_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _global_offset_y
       (sys::poke _global_offset_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _global_offset_z
       (sys::poke _global_offset_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; morai_msgs/ObjectStatus[] _collision_object
     (write-long (length _collision_object) s)
     (dolist (elem _collision_object)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _global_offset_x
     (setq _global_offset_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _global_offset_y
     (setq _global_offset_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _global_offset_z
     (setq _global_offset_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; morai_msgs/ObjectStatus[] _collision_object
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _collision_object (let (r) (dotimes (i n) (push (instance morai_msgs::ObjectStatus :init) r)) r))
     (dolist (elem- _collision_object)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get morai_msgs::CollisionData :md5sum-) "f56c53bee30cea28ebfdf412c3c25678")
(setf (get morai_msgs::CollisionData :datatype-) "morai_msgs/CollisionData")
(setf (get morai_msgs::CollisionData :definition-)
      "Header header

float64 global_offset_x
float64 global_offset_y
float64 global_offset_z

ObjectStatus[] collision_object
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
MSG: morai_msgs/ObjectStatus
int32 unique_id
int32 type
string name
float64 heading

geometry_msgs/Vector3 velocity
geometry_msgs/Vector3 acceleration
geometry_msgs/Vector3 size
geometry_msgs/Vector3 position

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



(provide :morai_msgs/CollisionData "f56c53bee30cea28ebfdf412c3c25678")


