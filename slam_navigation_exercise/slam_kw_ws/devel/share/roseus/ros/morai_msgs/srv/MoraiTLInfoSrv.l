;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::MoraiTLInfoSrv)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'MoraiTLInfoSrv (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::MORAITLINFOSRV")
  (make-package "MORAI_MSGS::MORAITLINFOSRV"))
(unless (find-package "MORAI_MSGS::MORAITLINFOSRVREQUEST")
  (make-package "MORAI_MSGS::MORAITLINFOSRVREQUEST"))
(unless (find-package "MORAI_MSGS::MORAITLINFOSRVRESPONSE")
  (make-package "MORAI_MSGS::MORAITLINFOSRVRESPONSE"))

(in-package "ROS")





(defclass morai_msgs::MoraiTLInfoSrvRequest
  :super ros::object
  :slots (_request ))

(defmethod morai_msgs::MoraiTLInfoSrvRequest
  (:init
   (&key
    ((:request __request) (instance morai_msgs::MoraiTLIndex :init))
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
    ;; morai_msgs/MoraiTLIndex _request
    (send _request :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; morai_msgs/MoraiTLIndex _request
       (send _request :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; morai_msgs/MoraiTLIndex _request
     (send _request :deserialize buf ptr-) (incf ptr- (send _request :serialization-length))
   ;;
   self)
  )

(defclass morai_msgs::MoraiTLInfoSrvResponse
  :super ros::object
  :slots (_response ))

(defmethod morai_msgs::MoraiTLInfoSrvResponse
  (:init
   (&key
    ((:response __response) (instance morai_msgs::MoraiTLInfo :init))
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
    ;; morai_msgs/MoraiTLInfo _response
    (send _response :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; morai_msgs/MoraiTLInfo _response
       (send _response :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; morai_msgs/MoraiTLInfo _response
     (send _response :deserialize buf ptr-) (incf ptr- (send _response :serialization-length))
   ;;
   self)
  )

(defclass morai_msgs::MoraiTLInfoSrv
  :super ros::object
  :slots ())

(setf (get morai_msgs::MoraiTLInfoSrv :md5sum-) "45a35612e91c0d4a540073e8f137e9c5")
(setf (get morai_msgs::MoraiTLInfoSrv :datatype-) "morai_msgs/MoraiTLInfoSrv")
(setf (get morai_msgs::MoraiTLInfoSrv :request) morai_msgs::MoraiTLInfoSrvRequest)
(setf (get morai_msgs::MoraiTLInfoSrv :response) morai_msgs::MoraiTLInfoSrvResponse)

(defmethod morai_msgs::MoraiTLInfoSrvRequest
  (:response () (instance morai_msgs::MoraiTLInfoSrvResponse :init)))

(setf (get morai_msgs::MoraiTLInfoSrvRequest :md5sum-) "45a35612e91c0d4a540073e8f137e9c5")
(setf (get morai_msgs::MoraiTLInfoSrvRequest :datatype-) "morai_msgs/MoraiTLInfoSrvRequest")
(setf (get morai_msgs::MoraiTLInfoSrvRequest :definition-)
      "MoraiTLIndex request

================================================================================
MSG: morai_msgs/MoraiTLIndex
string idx
---
MoraiTLInfo response


================================================================================
MSG: morai_msgs/MoraiTLInfo
Header header
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

(setf (get morai_msgs::MoraiTLInfoSrvResponse :md5sum-) "45a35612e91c0d4a540073e8f137e9c5")
(setf (get morai_msgs::MoraiTLInfoSrvResponse :datatype-) "morai_msgs/MoraiTLInfoSrvResponse")
(setf (get morai_msgs::MoraiTLInfoSrvResponse :definition-)
      "MoraiTLIndex request

================================================================================
MSG: morai_msgs/MoraiTLIndex
string idx
---
MoraiTLInfo response


================================================================================
MSG: morai_msgs/MoraiTLInfo
Header header
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



(provide :morai_msgs/MoraiTLInfoSrv "45a35612e91c0d4a540073e8f137e9c5")


