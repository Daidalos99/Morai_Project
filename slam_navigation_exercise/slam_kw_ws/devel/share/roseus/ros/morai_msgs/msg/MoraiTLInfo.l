;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::MoraiTLInfo)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'MoraiTLInfo (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::MORAITLINFO")
  (make-package "MORAI_MSGS::MORAITLINFO"))

(in-package "ROS")
;;//! \htmlinclude MoraiTLInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass morai_msgs::MoraiTLInfo
  :super ros::object
  :slots (_header _idx _status ))

(defmethod morai_msgs::MoraiTLInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:idx __idx) "")
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _idx (string __idx))
   (setq _status (round __status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:idx
   (&optional __idx)
   (if __idx (setq _idx __idx)) _idx)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _idx
    4 (length _idx)
    ;; int16 _status
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _idx
       (write-long (length _idx) s) (princ _idx s)
     ;; int16 _status
       (write-word _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _idx
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _idx (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _status
     (setq _status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get morai_msgs::MoraiTLInfo :md5sum-) "fd593c80e25e130dfe063cc055f61aaf")
(setf (get morai_msgs::MoraiTLInfo :datatype-) "morai_msgs/MoraiTLInfo")
(setf (get morai_msgs::MoraiTLInfo :definition-)
      "Header header
string idx
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



(provide :morai_msgs/MoraiTLInfo "fd593c80e25e130dfe063cc055f61aaf")


