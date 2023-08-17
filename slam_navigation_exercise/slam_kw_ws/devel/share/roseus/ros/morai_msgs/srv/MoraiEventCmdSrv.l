;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::MoraiEventCmdSrv)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'MoraiEventCmdSrv (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::MORAIEVENTCMDSRV")
  (make-package "MORAI_MSGS::MORAIEVENTCMDSRV"))
(unless (find-package "MORAI_MSGS::MORAIEVENTCMDSRVREQUEST")
  (make-package "MORAI_MSGS::MORAIEVENTCMDSRVREQUEST"))
(unless (find-package "MORAI_MSGS::MORAIEVENTCMDSRVRESPONSE")
  (make-package "MORAI_MSGS::MORAIEVENTCMDSRVRESPONSE"))

(in-package "ROS")





(defclass morai_msgs::MoraiEventCmdSrvRequest
  :super ros::object
  :slots (_request ))

(defmethod morai_msgs::MoraiEventCmdSrvRequest
  (:init
   (&key
    ((:request __request) (instance morai_msgs::EventInfo :init))
    )
   (send-super :init)
   (setq _request __request)
   self)
  (:request
   (&rest __request)
   (if (keywordp (car __request))
       (send* _request __request)
     (progn
       (if __request (setq _request (car __request)))
       _request)))
  (:serialization-length
   ()
   (+
    ;; morai_msgs/EventInfo _request
    (send _request :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; morai_msgs/EventInfo _request
       (send _request :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; morai_msgs/EventInfo _request
     (send _request :deserialize buf ptr-) (incf ptr- (send _request :serialization-length))
   ;;
   self)
  )

(defclass morai_msgs::MoraiEventCmdSrvResponse
  :super ros::object
  :slots (_response ))

(defmethod morai_msgs::MoraiEventCmdSrvResponse
  (:init
   (&key
    ((:response __response) (instance morai_msgs::EventInfo :init))
    )
   (send-super :init)
   (setq _response __response)
   self)
  (:response
   (&rest __response)
   (if (keywordp (car __response))
       (send* _response __response)
     (progn
       (if __response (setq _response (car __response)))
       _response)))
  (:serialization-length
   ()
   (+
    ;; morai_msgs/EventInfo _response
    (send _response :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; morai_msgs/EventInfo _response
       (send _response :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; morai_msgs/EventInfo _response
     (send _response :deserialize buf ptr-) (incf ptr- (send _response :serialization-length))
   ;;
   self)
  )

(defclass morai_msgs::MoraiEventCmdSrv
  :super ros::object
  :slots ())

(setf (get morai_msgs::MoraiEventCmdSrv :md5sum-) "12515282709d0774401eb06049aedb82")
(setf (get morai_msgs::MoraiEventCmdSrv :datatype-) "morai_msgs/MoraiEventCmdSrv")
(setf (get morai_msgs::MoraiEventCmdSrv :request) morai_msgs::MoraiEventCmdSrvRequest)
(setf (get morai_msgs::MoraiEventCmdSrv :response) morai_msgs::MoraiEventCmdSrvResponse)

(defmethod morai_msgs::MoraiEventCmdSrvRequest
  (:response () (instance morai_msgs::MoraiEventCmdSrvResponse :init)))

(setf (get morai_msgs::MoraiEventCmdSrvRequest :md5sum-) "12515282709d0774401eb06049aedb82")
(setf (get morai_msgs::MoraiEventCmdSrvRequest :datatype-) "morai_msgs/MoraiEventCmdSrvRequest")
(setf (get morai_msgs::MoraiEventCmdSrvRequest :definition-)
      "EventInfo request

================================================================================
MSG: morai_msgs/EventInfo
int8 option
int32 ctrl_mode
int32 gear
Lamps lamps
bool set_pause

================================================================================
MSG: morai_msgs/Lamps
Header header

int8 turnSignal
int8 emergencySignal

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
---
EventInfo response


================================================================================
MSG: morai_msgs/EventInfo
int8 option
int32 ctrl_mode
int32 gear
Lamps lamps
bool set_pause

================================================================================
MSG: morai_msgs/Lamps
Header header

int8 turnSignal
int8 emergencySignal

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

(setf (get morai_msgs::MoraiEventCmdSrvResponse :md5sum-) "12515282709d0774401eb06049aedb82")
(setf (get morai_msgs::MoraiEventCmdSrvResponse :datatype-) "morai_msgs/MoraiEventCmdSrvResponse")
(setf (get morai_msgs::MoraiEventCmdSrvResponse :definition-)
      "EventInfo request

================================================================================
MSG: morai_msgs/EventInfo
int8 option
int32 ctrl_mode
int32 gear
Lamps lamps
bool set_pause

================================================================================
MSG: morai_msgs/Lamps
Header header

int8 turnSignal
int8 emergencySignal

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
---
EventInfo response


================================================================================
MSG: morai_msgs/EventInfo
int8 option
int32 ctrl_mode
int32 gear
Lamps lamps
bool set_pause

================================================================================
MSG: morai_msgs/Lamps
Header header

int8 turnSignal
int8 emergencySignal

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



(provide :morai_msgs/MoraiEventCmdSrv "12515282709d0774401eb06049aedb82")


