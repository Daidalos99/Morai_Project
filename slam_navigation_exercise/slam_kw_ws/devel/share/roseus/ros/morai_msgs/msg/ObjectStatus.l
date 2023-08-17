;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::ObjectStatus)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'ObjectStatus (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::OBJECTSTATUS")
  (make-package "MORAI_MSGS::OBJECTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ObjectStatus.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass morai_msgs::ObjectStatus
  :super ros::object
  :slots (_unique_id _type _name _heading _velocity _acceleration _size _position ))

(defmethod morai_msgs::ObjectStatus
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
   ;;
   self)
  )

(setf (get morai_msgs::ObjectStatus :md5sum-) "3c26de946466c1a04669a97165d87ed0")
(setf (get morai_msgs::ObjectStatus :datatype-) "morai_msgs/ObjectStatus")
(setf (get morai_msgs::ObjectStatus :definition-)
      "int32 unique_id
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



(provide :morai_msgs/ObjectStatus "3c26de946466c1a04669a97165d87ed0")


