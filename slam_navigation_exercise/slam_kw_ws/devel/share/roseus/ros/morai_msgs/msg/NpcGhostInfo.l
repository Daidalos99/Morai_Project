;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::NpcGhostInfo)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'NpcGhostInfo (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::NPCGHOSTINFO")
  (make-package "MORAI_MSGS::NPCGHOSTINFO"))

(in-package "ROS")
;;//! \htmlinclude NpcGhostInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass morai_msgs::NpcGhostInfo
  :super ros::object
  :slots (_unique_id _name _position _rpy ))

(defmethod morai_msgs::NpcGhostInfo
  (:init
   (&key
    ((:unique_id __unique_id) 0)
    ((:name __name) "")
    ((:position __position) (instance geometry_msgs::Vector3 :init))
    ((:rpy __rpy) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _unique_id (round __unique_id))
   (setq _name (string __name))
   (setq _position __position)
   (setq _rpy __rpy)
   self)
  (:unique_id
   (&optional __unique_id)
   (if __unique_id (setq _unique_id __unique_id)) _unique_id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:rpy
   (&rest __rpy)
   (if (keywordp (car __rpy))
       (send* _rpy __rpy)
     (progn
       (if __rpy (setq _rpy (car __rpy)))
       _rpy)))
  (:serialization-length
   ()
   (+
    ;; int32 _unique_id
    4
    ;; string _name
    4 (length _name)
    ;; geometry_msgs/Vector3 _position
    (send _position :serialization-length)
    ;; geometry_msgs/Vector3 _rpy
    (send _rpy :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _unique_id
       (write-long _unique_id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; geometry_msgs/Vector3 _position
       (send _position :serialize s)
     ;; geometry_msgs/Vector3 _rpy
       (send _rpy :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _unique_id
     (setq _unique_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Vector3 _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Vector3 _rpy
     (send _rpy :deserialize buf ptr-) (incf ptr- (send _rpy :serialization-length))
   ;;
   self)
  )

(setf (get morai_msgs::NpcGhostInfo :md5sum-) "3290c3d676866a67769dc5339863ab69")
(setf (get morai_msgs::NpcGhostInfo :datatype-) "morai_msgs/NpcGhostInfo")
(setf (get morai_msgs::NpcGhostInfo :definition-)
      "int32 unique_id
string name

geometry_msgs/Vector3 position
geometry_msgs/Vector3 rpy

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



(provide :morai_msgs/NpcGhostInfo "3290c3d676866a67769dc5339863ab69")


