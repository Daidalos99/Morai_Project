;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::MoraiWaitForTickSrv)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'MoraiWaitForTickSrv (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::MORAIWAITFORTICKSRV")
  (make-package "MORAI_MSGS::MORAIWAITFORTICKSRV"))
(unless (find-package "MORAI_MSGS::MORAIWAITFORTICKSRVREQUEST")
  (make-package "MORAI_MSGS::MORAIWAITFORTICKSRVREQUEST"))
(unless (find-package "MORAI_MSGS::MORAIWAITFORTICKSRVRESPONSE")
  (make-package "MORAI_MSGS::MORAIWAITFORTICKSRVRESPONSE"))

(in-package "ROS")





(defclass morai_msgs::MoraiWaitForTickSrvRequest
  :super ros::object
  :slots (_request ))

(defmethod morai_msgs::MoraiWaitForTickSrvRequest
  (:init
   (&key
    ((:request __request) (instance morai_msgs::WaitForTick :init))
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
    ;; morai_msgs/WaitForTick _request
    (send _request :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; morai_msgs/WaitForTick _request
       (send _request :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; morai_msgs/WaitForTick _request
     (send _request :deserialize buf ptr-) (incf ptr- (send _request :serialization-length))
   ;;
   self)
  )

(defclass morai_msgs::MoraiWaitForTickSrvResponse
  :super ros::object
  :slots (_response ))

(defmethod morai_msgs::MoraiWaitForTickSrvResponse
  (:init
   (&key
    ((:response __response) (instance morai_msgs::WaitForTickResponse :init))
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
    ;; morai_msgs/WaitForTickResponse _response
    (send _response :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; morai_msgs/WaitForTickResponse _response
       (send _response :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; morai_msgs/WaitForTickResponse _response
     (send _response :deserialize buf ptr-) (incf ptr- (send _response :serialization-length))
   ;;
   self)
  )

(defclass morai_msgs::MoraiWaitForTickSrv
  :super ros::object
  :slots ())

(setf (get morai_msgs::MoraiWaitForTickSrv :md5sum-) "1faebcf9c4d5c1360e198f99611eacb5")
(setf (get morai_msgs::MoraiWaitForTickSrv :datatype-) "morai_msgs/MoraiWaitForTickSrv")
(setf (get morai_msgs::MoraiWaitForTickSrv :request) morai_msgs::MoraiWaitForTickSrvRequest)
(setf (get morai_msgs::MoraiWaitForTickSrv :response) morai_msgs::MoraiWaitForTickSrvResponse)

(defmethod morai_msgs::MoraiWaitForTickSrvRequest
  (:response () (instance morai_msgs::MoraiWaitForTickSrvResponse :init)))

(setf (get morai_msgs::MoraiWaitForTickSrvRequest :md5sum-) "1faebcf9c4d5c1360e198f99611eacb5")
(setf (get morai_msgs::MoraiWaitForTickSrvRequest :datatype-) "morai_msgs/MoraiWaitForTickSrvRequest")
(setf (get morai_msgs::MoraiWaitForTickSrvRequest :definition-)
      "WaitForTick request

================================================================================
MSG: morai_msgs/WaitForTick
string user_id
uint64 frame
---
WaitForTickResponse response


================================================================================
MSG: morai_msgs/WaitForTickResponse
bool tick_status
bool pause_status
uint64 frame

EgoVehicleStatus vehicle_status
string time

================================================================================
MSG: morai_msgs/EgoVehicleStatus
Header header
int32 unique_id
geometry_msgs/Vector3 acceleration
geometry_msgs/Vector3 position
geometry_msgs/Vector3 velocity

float64 heading
float32 accel
float32 brake
float32 wheel_angle

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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")

(setf (get morai_msgs::MoraiWaitForTickSrvResponse :md5sum-) "1faebcf9c4d5c1360e198f99611eacb5")
(setf (get morai_msgs::MoraiWaitForTickSrvResponse :datatype-) "morai_msgs/MoraiWaitForTickSrvResponse")
(setf (get morai_msgs::MoraiWaitForTickSrvResponse :definition-)
      "WaitForTick request

================================================================================
MSG: morai_msgs/WaitForTick
string user_id
uint64 frame
---
WaitForTickResponse response


================================================================================
MSG: morai_msgs/WaitForTickResponse
bool tick_status
bool pause_status
uint64 frame

EgoVehicleStatus vehicle_status
string time

================================================================================
MSG: morai_msgs/EgoVehicleStatus
Header header
int32 unique_id
geometry_msgs/Vector3 acceleration
geometry_msgs/Vector3 position
geometry_msgs/Vector3 velocity

float64 heading
float32 accel
float32 brake
float32 wheel_angle

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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
")



(provide :morai_msgs/MoraiWaitForTickSrv "1faebcf9c4d5c1360e198f99611eacb5")


