; Auto-generated. Do not edit!


(cl:in-package morai_msgs-srv)


;//! \htmlinclude MoraiTLInfoSrv-request.msg.html

(cl:defclass <MoraiTLInfoSrv-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type morai_msgs-msg:MoraiTLIndex
    :initform (cl:make-instance 'morai_msgs-msg:MoraiTLIndex)))
)

(cl:defclass MoraiTLInfoSrv-request (<MoraiTLInfoSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiTLInfoSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiTLInfoSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-srv:<MoraiTLInfoSrv-request> is deprecated: use morai_msgs-srv:MoraiTLInfoSrv-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <MoraiTLInfoSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-srv:request-val is deprecated.  Use morai_msgs-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiTLInfoSrv-request>) ostream)
  "Serializes a message object of type '<MoraiTLInfoSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'request) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiTLInfoSrv-request>) istream)
  "Deserializes a message object of type '<MoraiTLInfoSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'request) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiTLInfoSrv-request>)))
  "Returns string type for a service object of type '<MoraiTLInfoSrv-request>"
  "morai_msgs/MoraiTLInfoSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiTLInfoSrv-request)))
  "Returns string type for a service object of type 'MoraiTLInfoSrv-request"
  "morai_msgs/MoraiTLInfoSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiTLInfoSrv-request>)))
  "Returns md5sum for a message object of type '<MoraiTLInfoSrv-request>"
  "45a35612e91c0d4a540073e8f137e9c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiTLInfoSrv-request)))
  "Returns md5sum for a message object of type 'MoraiTLInfoSrv-request"
  "45a35612e91c0d4a540073e8f137e9c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiTLInfoSrv-request>)))
  "Returns full string definition for message of type '<MoraiTLInfoSrv-request>"
  (cl:format cl:nil "MoraiTLIndex request~%~%================================================================================~%MSG: morai_msgs/MoraiTLIndex~%string idx~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiTLInfoSrv-request)))
  "Returns full string definition for message of type 'MoraiTLInfoSrv-request"
  (cl:format cl:nil "MoraiTLIndex request~%~%================================================================================~%MSG: morai_msgs/MoraiTLIndex~%string idx~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiTLInfoSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiTLInfoSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiTLInfoSrv-request
    (cl:cons ':request (request msg))
))
;//! \htmlinclude MoraiTLInfoSrv-response.msg.html

(cl:defclass <MoraiTLInfoSrv-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type morai_msgs-msg:MoraiTLInfo
    :initform (cl:make-instance 'morai_msgs-msg:MoraiTLInfo)))
)

(cl:defclass MoraiTLInfoSrv-response (<MoraiTLInfoSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiTLInfoSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiTLInfoSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-srv:<MoraiTLInfoSrv-response> is deprecated: use morai_msgs-srv:MoraiTLInfoSrv-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <MoraiTLInfoSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-srv:response-val is deprecated.  Use morai_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiTLInfoSrv-response>) ostream)
  "Serializes a message object of type '<MoraiTLInfoSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'response) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiTLInfoSrv-response>) istream)
  "Deserializes a message object of type '<MoraiTLInfoSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'response) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiTLInfoSrv-response>)))
  "Returns string type for a service object of type '<MoraiTLInfoSrv-response>"
  "morai_msgs/MoraiTLInfoSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiTLInfoSrv-response)))
  "Returns string type for a service object of type 'MoraiTLInfoSrv-response"
  "morai_msgs/MoraiTLInfoSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiTLInfoSrv-response>)))
  "Returns md5sum for a message object of type '<MoraiTLInfoSrv-response>"
  "45a35612e91c0d4a540073e8f137e9c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiTLInfoSrv-response)))
  "Returns md5sum for a message object of type 'MoraiTLInfoSrv-response"
  "45a35612e91c0d4a540073e8f137e9c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiTLInfoSrv-response>)))
  "Returns full string definition for message of type '<MoraiTLInfoSrv-response>"
  (cl:format cl:nil "MoraiTLInfo response~%~%~%================================================================================~%MSG: morai_msgs/MoraiTLInfo~%Header header~%string idx~%int16 status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiTLInfoSrv-response)))
  "Returns full string definition for message of type 'MoraiTLInfoSrv-response"
  (cl:format cl:nil "MoraiTLInfo response~%~%~%================================================================================~%MSG: morai_msgs/MoraiTLInfo~%Header header~%string idx~%int16 status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiTLInfoSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiTLInfoSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiTLInfoSrv-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoraiTLInfoSrv)))
  'MoraiTLInfoSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoraiTLInfoSrv)))
  'MoraiTLInfoSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiTLInfoSrv)))
  "Returns string type for a service object of type '<MoraiTLInfoSrv>"
  "morai_msgs/MoraiTLInfoSrv")