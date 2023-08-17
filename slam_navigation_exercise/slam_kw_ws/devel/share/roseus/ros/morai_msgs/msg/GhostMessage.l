;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::GhostMessage)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'GhostMessage (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::GHOSTMESSAGE")
  (make-package "MORAI_MSGS::GHOSTMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude GhostMessage.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass morai_msgs::GhostMessage
  :super ros::object
  :slots (_position _rotation _velocity _steering_angle ))

(defmethod morai_msgs::GhostMessage
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Vector3 :init))
    ((:rotation __rotation) (instance geometry_msgs::Vector3 :init))
    ((:velocity __velocity) 0.0)
    ((:steering_angle __steering_angle) 0.0)
    )
   (send-super :init)
   (setq _position __position)
   (setq _rotation __rotation)
   (setq _velocity (float __velocity))
   (setq _steering_angle (float __steering_angle))
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:rotation
   (&rest __rotation)
   (if (keywordp (car __rotation))
       (send* _rotation __rotation)
     (progn
       (if __rotation (setq _rotation (car __rotation)))
       _rotation)))
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:steering_angle
   (&optional __steering_angle)
   (if __steering_angle (setq _steering_angle __steering_angle)) _steering_angle)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _position
    (send _position :serialization-length)
    ;; geometry_msgs/Vector3 _rotation
    (send _rotation :serialization-length)
    ;; float64 _velocity
    8
    ;; float64 _steering_angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _position
       (send _position :serialize s)
     ;; geometry_msgs/Vector3 _rotation
       (send _rotation :serialize s)
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steering_angle
       (sys::poke _steering_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Vector3 _rotation
     (send _rotation :deserialize buf ptr-) (incf ptr- (send _rotation :serialization-length))
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steering_angle
     (setq _steering_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get morai_msgs::GhostMessage :md5sum-) "9b0cee621629137441e1a9fb4484359a")
(setf (get morai_msgs::GhostMessage :datatype-) "morai_msgs/GhostMessage")
(setf (get morai_msgs::GhostMessage :definition-)
      "geometry_msgs/Vector3 position
geometry_msgs/Vector3 rotation
float64 velocity
float64 steering_angle

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



(provide :morai_msgs/GhostMessage "9b0cee621629137441e1a9fb4484359a")


