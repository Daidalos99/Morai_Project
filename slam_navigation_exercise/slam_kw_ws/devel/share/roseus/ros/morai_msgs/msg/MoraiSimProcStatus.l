;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::MoraiSimProcStatus)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'MoraiSimProcStatus (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::MORAISIMPROCSTATUS")
  (make-package "MORAI_MSGS::MORAISIMPROCSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MoraiSimProcStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass morai_msgs::MoraiSimProcStatus
  :super ros::object
  :slots (_header _latest_command_time _command_result _current_mode _current_status ))

(defmethod morai_msgs::MoraiSimProcStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:latest_command_time __latest_command_time) (instance ros::time :init))
    ((:command_result __command_result) 0)
    ((:current_mode __current_mode) 0)
    ((:current_status __current_status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _latest_command_time __latest_command_time)
   (setq _command_result (round __command_result))
   (setq _current_mode (round __current_mode))
   (setq _current_status (round __current_status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:latest_command_time
   (&optional __latest_command_time)
   (if __latest_command_time (setq _latest_command_time __latest_command_time)) _latest_command_time)
  (:command_result
   (&optional __command_result)
   (if __command_result (setq _command_result __command_result)) _command_result)
  (:current_mode
   (&optional __current_mode)
   (if __current_mode (setq _current_mode __current_mode)) _current_mode)
  (:current_status
   (&optional __current_status)
   (if __current_status (setq _current_status __current_status)) _current_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; time _latest_command_time
    8
    ;; uint8 _command_result
    1
    ;; uint8 _current_mode
    1
    ;; uint8 _current_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; time _latest_command_time
       (write-long (send _latest_command_time :sec) s) (write-long (send _latest_command_time :nsec) s)
     ;; uint8 _command_result
       (write-byte _command_result s)
     ;; uint8 _current_mode
       (write-byte _current_mode s)
     ;; uint8 _current_status
       (write-byte _current_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; time _latest_command_time
     (send _latest_command_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _latest_command_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _command_result
     (setq _command_result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _current_mode
     (setq _current_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _current_status
     (setq _current_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get morai_msgs::MoraiSimProcStatus :md5sum-) "533bc73de5b186ff7b72acd2d1130c9f")
(setf (get morai_msgs::MoraiSimProcStatus :datatype-) "morai_msgs/MoraiSimProcStatus")
(setf (get morai_msgs::MoraiSimProcStatus :definition-)
      "Header header

time latest_command_time
uint8 command_result
uint8 current_mode
uint8 current_status


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



(provide :morai_msgs/MoraiSimProcStatus "533bc73de5b186ff7b72acd2d1130c9f")


