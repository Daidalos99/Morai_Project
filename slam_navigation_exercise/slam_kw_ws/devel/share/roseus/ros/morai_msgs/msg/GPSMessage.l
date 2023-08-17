;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::GPSMessage)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'GPSMessage (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::GPSMESSAGE")
  (make-package "MORAI_MSGS::GPSMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude GPSMessage.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass morai_msgs::GPSMessage
  :super ros::object
  :slots (_header _latitude _longitude _altitude _eastOffset _northOffset _status ))

(defmethod morai_msgs::GPSMessage
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:eastOffset __eastOffset) 0.0)
    ((:northOffset __northOffset) 0.0)
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _eastOffset (float __eastOffset))
   (setq _northOffset (float __northOffset))
   (setq _status (round __status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:eastOffset
   (&optional __eastOffset)
   (if __eastOffset (setq _eastOffset __eastOffset)) _eastOffset)
  (:northOffset
   (&optional __northOffset)
   (if __northOffset (setq _northOffset __northOffset)) _northOffset)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _altitude
    8
    ;; float64 _eastOffset
    8
    ;; float64 _northOffset
    8
    ;; int16 _status
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _eastOffset
       (sys::poke _eastOffset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _northOffset
       (sys::poke _northOffset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int16 _status
       (write-word _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _eastOffset
     (setq _eastOffset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _northOffset
     (setq _northOffset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int16 _status
     (setq _status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get morai_msgs::GPSMessage :md5sum-) "6ab9511aaf9d33b721630ddffc1f7c5f")
(setf (get morai_msgs::GPSMessage :datatype-) "morai_msgs/GPSMessage")
(setf (get morai_msgs::GPSMessage :definition-)
      "Header header

float64 latitude
float64 longitude
float64 altitude

float64 eastOffset
float64 northOffset
int16 status

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



(provide :morai_msgs/GPSMessage "6ab9511aaf9d33b721630ddffc1f7c5f")


