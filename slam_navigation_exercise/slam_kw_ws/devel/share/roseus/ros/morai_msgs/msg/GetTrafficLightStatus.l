;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::GetTrafficLightStatus)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'GetTrafficLightStatus (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::GETTRAFFICLIGHTSTATUS")
  (make-package "MORAI_MSGS::GETTRAFFICLIGHTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude GetTrafficLightStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass morai_msgs::GetTrafficLightStatus
  :super ros::object
  :slots (_header _trafficLightIndex _trafficLightType _trafficLightStatus ))

(defmethod morai_msgs::GetTrafficLightStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:trafficLightIndex __trafficLightIndex) "")
    ((:trafficLightType __trafficLightType) 0)
    ((:trafficLightStatus __trafficLightStatus) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _trafficLightIndex (string __trafficLightIndex))
   (setq _trafficLightType (round __trafficLightType))
   (setq _trafficLightStatus (round __trafficLightStatus))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:trafficLightIndex
   (&optional __trafficLightIndex)
   (if __trafficLightIndex (setq _trafficLightIndex __trafficLightIndex)) _trafficLightIndex)
  (:trafficLightType
   (&optional __trafficLightType)
   (if __trafficLightType (setq _trafficLightType __trafficLightType)) _trafficLightType)
  (:trafficLightStatus
   (&optional __trafficLightStatus)
   (if __trafficLightStatus (setq _trafficLightStatus __trafficLightStatus)) _trafficLightStatus)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _trafficLightIndex
    4 (length _trafficLightIndex)
    ;; int16 _trafficLightType
    2
    ;; int16 _trafficLightStatus
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _trafficLightIndex
       (write-long (length _trafficLightIndex) s) (princ _trafficLightIndex s)
     ;; int16 _trafficLightType
       (write-word _trafficLightType s)
     ;; int16 _trafficLightStatus
       (write-word _trafficLightStatus s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _trafficLightIndex
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _trafficLightIndex (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _trafficLightType
     (setq _trafficLightType (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _trafficLightStatus
     (setq _trafficLightStatus (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get morai_msgs::GetTrafficLightStatus :md5sum-) "a8401cc4d848efd41d190d36c9ab14ae")
(setf (get morai_msgs::GetTrafficLightStatus :datatype-) "morai_msgs/GetTrafficLightStatus")
(setf (get morai_msgs::GetTrafficLightStatus :definition-)
      "Header header

string trafficLightIndex
int16 trafficLightType
int16 trafficLightStatus

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



(provide :morai_msgs/GetTrafficLightStatus "a8401cc4d848efd41d190d36c9ab14ae")


