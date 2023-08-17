;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::VehicleCollision)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'VehicleCollision (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::VEHICLECOLLISION")
  (make-package "MORAI_MSGS::VEHICLECOLLISION"))

(in-package "ROS")
;;//! \htmlinclude VehicleCollision.msg.html


(defclass morai_msgs::VehicleCollision
  :super ros::object
  :slots (_crashed_vehicles ))

(defmethod morai_msgs::VehicleCollision
  (:init
   (&key
    ((:crashed_vehicles __crashed_vehicles) ())
    )
   (send-super :init)
   (setq _crashed_vehicles __crashed_vehicles)
   self)
  (:crashed_vehicles
   (&rest __crashed_vehicles)
   (if (keywordp (car __crashed_vehicles))
       (send* _crashed_vehicles __crashed_vehicles)
     (progn
       (if __crashed_vehicles (setq _crashed_vehicles (car __crashed_vehicles)))
       _crashed_vehicles)))
  (:serialization-length
   ()
   (+
    ;; morai_msgs/ObjectStatus[] _crashed_vehicles
    (apply #'+ (send-all _crashed_vehicles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; morai_msgs/ObjectStatus[] _crashed_vehicles
     (write-long (length _crashed_vehicles) s)
     (dolist (elem _crashed_vehicles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; morai_msgs/ObjectStatus[] _crashed_vehicles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _crashed_vehicles (let (r) (dotimes (i n) (push (instance morai_msgs::ObjectStatus :init) r)) r))
     (dolist (elem- _crashed_vehicles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get morai_msgs::VehicleCollision :md5sum-) "b76a1136c5fcb79b704b50b7421616cb")
(setf (get morai_msgs::VehicleCollision :datatype-) "morai_msgs/VehicleCollision")
(setf (get morai_msgs::VehicleCollision :definition-)
      "ObjectStatus[] crashed_vehicles

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



(provide :morai_msgs/VehicleCollision "b76a1136c5fcb79b704b50b7421616cb")


