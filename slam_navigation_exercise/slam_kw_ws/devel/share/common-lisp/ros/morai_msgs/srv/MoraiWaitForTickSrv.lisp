; Auto-generated. Do not edit!


(cl:in-package morai_msgs-srv)


;//! \htmlinclude MoraiWaitForTickSrv-request.msg.html

(cl:defclass <MoraiWaitForTickSrv-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type morai_msgs-msg:WaitForTick
    :initform (cl:make-instance 'morai_msgs-msg:WaitForTick)))
)

(cl:defclass MoraiWaitForTickSrv-request (<MoraiWaitForTickSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiWaitForTickSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiWaitForTickSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-srv:<MoraiWaitForTickSrv-request> is deprecated: use morai_msgs-srv:MoraiWaitForTickSrv-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <MoraiWaitForTickSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-srv:request-val is deprecated.  Use morai_msgs-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiWaitForTickSrv-request>) ostream)
  "Serializes a message object of type '<MoraiWaitForTickSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'request) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiWaitForTickSrv-request>) istream)
  "Deserializes a message object of type '<MoraiWaitForTickSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'request) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiWaitForTickSrv-request>)))
  "Returns string type for a service object of type '<MoraiWaitForTickSrv-request>"
  "morai_msgs/MoraiWaitForTickSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiWaitForTickSrv-request)))
  "Returns string type for a service object of type 'MoraiWaitForTickSrv-request"
  "morai_msgs/MoraiWaitForTickSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiWaitForTickSrv-request>)))
  "Returns md5sum for a message object of type '<MoraiWaitForTickSrv-request>"
  "1faebcf9c4d5c1360e198f99611eacb5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiWaitForTickSrv-request)))
  "Returns md5sum for a message object of type 'MoraiWaitForTickSrv-request"
  "1faebcf9c4d5c1360e198f99611eacb5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiWaitForTickSrv-request>)))
  "Returns full string definition for message of type '<MoraiWaitForTickSrv-request>"
  (cl:format cl:nil "WaitForTick request~%~%================================================================================~%MSG: morai_msgs/WaitForTick~%string user_id~%uint64 frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiWaitForTickSrv-request)))
  "Returns full string definition for message of type 'MoraiWaitForTickSrv-request"
  (cl:format cl:nil "WaitForTick request~%~%================================================================================~%MSG: morai_msgs/WaitForTick~%string user_id~%uint64 frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiWaitForTickSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiWaitForTickSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiWaitForTickSrv-request
    (cl:cons ':request (request msg))
))
;//! \htmlinclude MoraiWaitForTickSrv-response.msg.html

(cl:defclass <MoraiWaitForTickSrv-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type morai_msgs-msg:WaitForTickResponse
    :initform (cl:make-instance 'morai_msgs-msg:WaitForTickResponse)))
)

(cl:defclass MoraiWaitForTickSrv-response (<MoraiWaitForTickSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiWaitForTickSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiWaitForTickSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-srv:<MoraiWaitForTickSrv-response> is deprecated: use morai_msgs-srv:MoraiWaitForTickSrv-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <MoraiWaitForTickSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-srv:response-val is deprecated.  Use morai_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiWaitForTickSrv-response>) ostream)
  "Serializes a message object of type '<MoraiWaitForTickSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'response) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiWaitForTickSrv-response>) istream)
  "Deserializes a message object of type '<MoraiWaitForTickSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'response) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiWaitForTickSrv-response>)))
  "Returns string type for a service object of type '<MoraiWaitForTickSrv-response>"
  "morai_msgs/MoraiWaitForTickSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiWaitForTickSrv-response)))
  "Returns string type for a service object of type 'MoraiWaitForTickSrv-response"
  "morai_msgs/MoraiWaitForTickSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiWaitForTickSrv-response>)))
  "Returns md5sum for a message object of type '<MoraiWaitForTickSrv-response>"
  "1faebcf9c4d5c1360e198f99611eacb5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiWaitForTickSrv-response)))
  "Returns md5sum for a message object of type 'MoraiWaitForTickSrv-response"
  "1faebcf9c4d5c1360e198f99611eacb5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiWaitForTickSrv-response>)))
  "Returns full string definition for message of type '<MoraiWaitForTickSrv-response>"
  (cl:format cl:nil "WaitForTickResponse response~%~%~%================================================================================~%MSG: morai_msgs/WaitForTickResponse~%bool tick_status~%bool pause_status~%uint64 frame~%~%EgoVehicleStatus vehicle_status~%string time~%~%================================================================================~%MSG: morai_msgs/EgoVehicleStatus~%Header header~%int32 unique_id~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 position~%geometry_msgs/Vector3 velocity~%~%float64 heading~%float32 accel~%float32 brake~%float32 wheel_angle~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiWaitForTickSrv-response)))
  "Returns full string definition for message of type 'MoraiWaitForTickSrv-response"
  (cl:format cl:nil "WaitForTickResponse response~%~%~%================================================================================~%MSG: morai_msgs/WaitForTickResponse~%bool tick_status~%bool pause_status~%uint64 frame~%~%EgoVehicleStatus vehicle_status~%string time~%~%================================================================================~%MSG: morai_msgs/EgoVehicleStatus~%Header header~%int32 unique_id~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 position~%geometry_msgs/Vector3 velocity~%~%float64 heading~%float32 accel~%float32 brake~%float32 wheel_angle~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiWaitForTickSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiWaitForTickSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiWaitForTickSrv-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoraiWaitForTickSrv)))
  'MoraiWaitForTickSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoraiWaitForTickSrv)))
  'MoraiWaitForTickSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiWaitForTickSrv)))
  "Returns string type for a service object of type '<MoraiWaitForTickSrv>"
  "morai_msgs/MoraiWaitForTickSrv")