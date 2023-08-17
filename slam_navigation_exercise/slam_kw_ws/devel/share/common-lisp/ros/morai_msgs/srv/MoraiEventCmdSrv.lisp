; Auto-generated. Do not edit!


(cl:in-package morai_msgs-srv)


;//! \htmlinclude MoraiEventCmdSrv-request.msg.html

(cl:defclass <MoraiEventCmdSrv-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type morai_msgs-msg:EventInfo
    :initform (cl:make-instance 'morai_msgs-msg:EventInfo)))
)

(cl:defclass MoraiEventCmdSrv-request (<MoraiEventCmdSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiEventCmdSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiEventCmdSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-srv:<MoraiEventCmdSrv-request> is deprecated: use morai_msgs-srv:MoraiEventCmdSrv-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <MoraiEventCmdSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-srv:request-val is deprecated.  Use morai_msgs-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiEventCmdSrv-request>) ostream)
  "Serializes a message object of type '<MoraiEventCmdSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'request) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiEventCmdSrv-request>) istream)
  "Deserializes a message object of type '<MoraiEventCmdSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'request) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiEventCmdSrv-request>)))
  "Returns string type for a service object of type '<MoraiEventCmdSrv-request>"
  "morai_msgs/MoraiEventCmdSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiEventCmdSrv-request)))
  "Returns string type for a service object of type 'MoraiEventCmdSrv-request"
  "morai_msgs/MoraiEventCmdSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiEventCmdSrv-request>)))
  "Returns md5sum for a message object of type '<MoraiEventCmdSrv-request>"
  "12515282709d0774401eb06049aedb82")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiEventCmdSrv-request)))
  "Returns md5sum for a message object of type 'MoraiEventCmdSrv-request"
  "12515282709d0774401eb06049aedb82")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiEventCmdSrv-request>)))
  "Returns full string definition for message of type '<MoraiEventCmdSrv-request>"
  (cl:format cl:nil "EventInfo request~%~%================================================================================~%MSG: morai_msgs/EventInfo~%int8 option~%int32 ctrl_mode~%int32 gear~%Lamps lamps~%bool set_pause~%~%================================================================================~%MSG: morai_msgs/Lamps~%Header header~%~%int8 turnSignal~%int8 emergencySignal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiEventCmdSrv-request)))
  "Returns full string definition for message of type 'MoraiEventCmdSrv-request"
  (cl:format cl:nil "EventInfo request~%~%================================================================================~%MSG: morai_msgs/EventInfo~%int8 option~%int32 ctrl_mode~%int32 gear~%Lamps lamps~%bool set_pause~%~%================================================================================~%MSG: morai_msgs/Lamps~%Header header~%~%int8 turnSignal~%int8 emergencySignal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiEventCmdSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiEventCmdSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiEventCmdSrv-request
    (cl:cons ':request (request msg))
))
;//! \htmlinclude MoraiEventCmdSrv-response.msg.html

(cl:defclass <MoraiEventCmdSrv-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type morai_msgs-msg:EventInfo
    :initform (cl:make-instance 'morai_msgs-msg:EventInfo)))
)

(cl:defclass MoraiEventCmdSrv-response (<MoraiEventCmdSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiEventCmdSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiEventCmdSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-srv:<MoraiEventCmdSrv-response> is deprecated: use morai_msgs-srv:MoraiEventCmdSrv-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <MoraiEventCmdSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-srv:response-val is deprecated.  Use morai_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiEventCmdSrv-response>) ostream)
  "Serializes a message object of type '<MoraiEventCmdSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'response) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiEventCmdSrv-response>) istream)
  "Deserializes a message object of type '<MoraiEventCmdSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'response) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiEventCmdSrv-response>)))
  "Returns string type for a service object of type '<MoraiEventCmdSrv-response>"
  "morai_msgs/MoraiEventCmdSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiEventCmdSrv-response)))
  "Returns string type for a service object of type 'MoraiEventCmdSrv-response"
  "morai_msgs/MoraiEventCmdSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiEventCmdSrv-response>)))
  "Returns md5sum for a message object of type '<MoraiEventCmdSrv-response>"
  "12515282709d0774401eb06049aedb82")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiEventCmdSrv-response)))
  "Returns md5sum for a message object of type 'MoraiEventCmdSrv-response"
  "12515282709d0774401eb06049aedb82")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiEventCmdSrv-response>)))
  "Returns full string definition for message of type '<MoraiEventCmdSrv-response>"
  (cl:format cl:nil "EventInfo response~%~%~%================================================================================~%MSG: morai_msgs/EventInfo~%int8 option~%int32 ctrl_mode~%int32 gear~%Lamps lamps~%bool set_pause~%~%================================================================================~%MSG: morai_msgs/Lamps~%Header header~%~%int8 turnSignal~%int8 emergencySignal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiEventCmdSrv-response)))
  "Returns full string definition for message of type 'MoraiEventCmdSrv-response"
  (cl:format cl:nil "EventInfo response~%~%~%================================================================================~%MSG: morai_msgs/EventInfo~%int8 option~%int32 ctrl_mode~%int32 gear~%Lamps lamps~%bool set_pause~%~%================================================================================~%MSG: morai_msgs/Lamps~%Header header~%~%int8 turnSignal~%int8 emergencySignal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiEventCmdSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiEventCmdSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiEventCmdSrv-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoraiEventCmdSrv)))
  'MoraiEventCmdSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoraiEventCmdSrv)))
  'MoraiEventCmdSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiEventCmdSrv)))
  "Returns string type for a service object of type '<MoraiEventCmdSrv>"
  "morai_msgs/MoraiEventCmdSrv")