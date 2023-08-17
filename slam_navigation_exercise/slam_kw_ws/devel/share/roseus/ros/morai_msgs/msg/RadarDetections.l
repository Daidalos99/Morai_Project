;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::RadarDetections)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'RadarDetections (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::RADARDETECTIONS")
  (make-package "MORAI_MSGS::RADARDETECTIONS"))

(in-package "ROS")
;;//! \htmlinclude RadarDetections.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass morai_msgs::RadarDetections
  :super ros::object
  :slots (_header _detections ))

(defmethod morai_msgs::RadarDetections
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:detections __detections) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _detections __detections)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:detections
   (&rest __detections)
   (if (keywordp (car __detections))
       (send* _detections __detections)
     (progn
       (if __detections (setq _detections (car __detections)))
       _detections)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; morai_msgs/RadarDetection[] _detections
    (apply #'+ (send-all _detections :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; morai_msgs/RadarDetection[] _detections
     (write-long (length _detections) s)
     (dolist (elem _detections)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; morai_msgs/RadarDetection[] _detections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detections (let (r) (dotimes (i n) (push (instance morai_msgs::RadarDetection :init) r)) r))
     (dolist (elem- _detections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get morai_msgs::RadarDetections :md5sum-) "2b152d3e41735e99fec72c55c819ab7e")
(setf (get morai_msgs::RadarDetections :datatype-) "morai_msgs/RadarDetections")
(setf (get morai_msgs::RadarDetections :definition-)
      "Header header

RadarDetection[] detections

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
MSG: morai_msgs/RadarDetection
# This message relates only to FMCW radar.  
# All variables below are relative to the radar's frame of reference.
# This message is not meant to be used alone but as part of a stamped or array message.

# Object classifications (Additional vendor-specific classifications are permitted starting from 32000 eg. Car)

uint16 detection_id                       # Index of each radar detection point
geometry_msgs/Point position              # x, y, z position of each radar detection point

float32 azimuth							  # azimuth angle of each radar detection point in Degree
float32 rangerate						  # relative velocity of the radar detected target w.r.t radial direction
float32 amplitude						  # amplitude of the reflected signal of the radar detected target(rcs)


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :morai_msgs/RadarDetections "2b152d3e41735e99fec72c55c819ab7e")


