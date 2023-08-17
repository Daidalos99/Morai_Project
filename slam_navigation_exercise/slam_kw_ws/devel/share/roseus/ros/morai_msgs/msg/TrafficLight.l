;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::TrafficLight)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'TrafficLight (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::TRAFFICLIGHT")
  (make-package "MORAI_MSGS::TRAFFICLIGHT"))

(in-package "ROS")
;;//! \htmlinclude TrafficLight.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass morai_msgs::TrafficLight
  :super ros::object
  :slots (_header _light _num_of_light ))

(defmethod morai_msgs::TrafficLight
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:light __light) 0)
    ((:num_of_light __num_of_light) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _light (round __light))
   (setq _num_of_light (round __num_of_light))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:light
   (&optional __light)
   (if __light (setq _light __light)) _light)
  (:num_of_light
   (&optional __num_of_light)
   (if __num_of_light (setq _num_of_light __num_of_light)) _num_of_light)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16 _light
    2
    ;; int16 _num_of_light
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int16 _light
       (write-word _light s)
     ;; int16 _num_of_light
       (write-word _num_of_light s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16 _light
     (setq _light (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _num_of_light
     (setq _num_of_light (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get morai_msgs::TrafficLight :md5sum-) "480e75f7f0e8a7ff951bb52c9de43c72")
(setf (get morai_msgs::TrafficLight :datatype-) "morai_msgs/TrafficLight")
(setf (get morai_msgs::TrafficLight :definition-)
      "Header header
int16 light
int16 num_of_light

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

")



(provide :morai_msgs/TrafficLight "480e75f7f0e8a7ff951bb52c9de43c72")


