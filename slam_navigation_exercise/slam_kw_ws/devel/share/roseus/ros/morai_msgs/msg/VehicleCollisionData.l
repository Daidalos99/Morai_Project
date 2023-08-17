;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::VehicleCollisionData)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'VehicleCollisionData (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::VEHICLECOLLISIONDATA")
  (make-package "MORAI_MSGS::VEHICLECOLLISIONDATA"))

(in-package "ROS")
;;//! \htmlinclude VehicleCollisionData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass morai_msgs::VehicleCollisionData
  :super ros::object
  :slots (_header _collisions ))

(defmethod morai_msgs::VehicleCollisionData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:collisions __collisions) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _collisions __collisions)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:collisions
   (&rest __collisions)
   (if (keywordp (car __collisions))
       (send* _collisions __collisions)
     (progn
       (if __collisions (setq _collisions (car __collisions)))
       _collisions)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; morai_msgs/VehicleCollision[] _collisions
    (apply #'+ (send-all _collisions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; morai_msgs/VehicleCollision[] _collisions
     (write-long (length _collisions) s)
     (dolist (elem _collisions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; morai_msgs/VehicleCollision[] _collisions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _collisions (let (r) (dotimes (i n) (push (instance morai_msgs::VehicleCollision :init) r)) r))
     (dolist (elem- _collisions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get morai_msgs::VehicleCollisionData :md5sum-) "0a928c1718fbb672e05004cbdd1dabd9")
(setf (get morai_msgs::VehicleCollisionData :datatype-) "morai_msgs/VehicleCollisionData")
(setf (get morai_msgs::VehicleCollisionData :definition-)
      "Header header
VehicleCollision[] collisions

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
MSG: morai_msgs/VehicleCollision
ObjectStatus[] crashed_vehicles

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



(provide :morai_msgs/VehicleCollisionData "0a928c1718fbb672e05004cbdd1dabd9")


