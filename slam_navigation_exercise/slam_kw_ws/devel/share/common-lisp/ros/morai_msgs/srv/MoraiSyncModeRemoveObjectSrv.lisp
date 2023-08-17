; Auto-generated. Do not edit!


(cl:in-package morai_msgs-srv)


;//! \htmlinclude MoraiSyncModeRemoveObjectSrv-request.msg.html

(cl:defclass <MoraiSyncModeRemoveObjectSrv-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type morai_msgs-msg:SyncModeRemoveObject
    :initform (cl:make-instance 'morai_msgs-msg:SyncModeRemoveObject)))
)

(cl:defclass MoraiSyncModeRemoveObjectSrv-request (<MoraiSyncModeRemoveObjectSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiSyncModeRemoveObjectSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiSyncModeRemoveObjectSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-srv:<MoraiSyncModeRemoveObjectSrv-request> is deprecated: use morai_msgs-srv:MoraiSyncModeRemoveObjectSrv-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <MoraiSyncModeRemoveObjectSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-srv:request-val is deprecated.  Use morai_msgs-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiSyncModeRemoveObjectSrv-request>) ostream)
  "Serializes a message object of type '<MoraiSyncModeRemoveObjectSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'request) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiSyncModeRemoveObjectSrv-request>) istream)
  "Deserializes a message object of type '<MoraiSyncModeRemoveObjectSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'request) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiSyncModeRemoveObjectSrv-request>)))
  "Returns string type for a service object of type '<MoraiSyncModeRemoveObjectSrv-request>"
  "morai_msgs/MoraiSyncModeRemoveObjectSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiSyncModeRemoveObjectSrv-request)))
  "Returns string type for a service object of type 'MoraiSyncModeRemoveObjectSrv-request"
  "morai_msgs/MoraiSyncModeRemoveObjectSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiSyncModeRemoveObjectSrv-request>)))
  "Returns md5sum for a message object of type '<MoraiSyncModeRemoveObjectSrv-request>"
  "d499baec7083a3731b7e7fc183807dce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiSyncModeRemoveObjectSrv-request)))
  "Returns md5sum for a message object of type 'MoraiSyncModeRemoveObjectSrv-request"
  "d499baec7083a3731b7e7fc183807dce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiSyncModeRemoveObjectSrv-request>)))
  "Returns full string definition for message of type '<MoraiSyncModeRemoveObjectSrv-request>"
  (cl:format cl:nil "SyncModeRemoveObject request~%~%================================================================================~%MSG: morai_msgs/SyncModeRemoveObject~%int32 unique_id~%uint64 frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiSyncModeRemoveObjectSrv-request)))
  "Returns full string definition for message of type 'MoraiSyncModeRemoveObjectSrv-request"
  (cl:format cl:nil "SyncModeRemoveObject request~%~%================================================================================~%MSG: morai_msgs/SyncModeRemoveObject~%int32 unique_id~%uint64 frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiSyncModeRemoveObjectSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiSyncModeRemoveObjectSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiSyncModeRemoveObjectSrv-request
    (cl:cons ':request (request msg))
))
;//! \htmlinclude MoraiSyncModeRemoveObjectSrv-response.msg.html

(cl:defclass <MoraiSyncModeRemoveObjectSrv-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type morai_msgs-msg:SyncModeResultResponse
    :initform (cl:make-instance 'morai_msgs-msg:SyncModeResultResponse)))
)

(cl:defclass MoraiSyncModeRemoveObjectSrv-response (<MoraiSyncModeRemoveObjectSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiSyncModeRemoveObjectSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiSyncModeRemoveObjectSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-srv:<MoraiSyncModeRemoveObjectSrv-response> is deprecated: use morai_msgs-srv:MoraiSyncModeRemoveObjectSrv-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <MoraiSyncModeRemoveObjectSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-srv:response-val is deprecated.  Use morai_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiSyncModeRemoveObjectSrv-response>) ostream)
  "Serializes a message object of type '<MoraiSyncModeRemoveObjectSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'response) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiSyncModeRemoveObjectSrv-response>) istream)
  "Deserializes a message object of type '<MoraiSyncModeRemoveObjectSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'response) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiSyncModeRemoveObjectSrv-response>)))
  "Returns string type for a service object of type '<MoraiSyncModeRemoveObjectSrv-response>"
  "morai_msgs/MoraiSyncModeRemoveObjectSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiSyncModeRemoveObjectSrv-response)))
  "Returns string type for a service object of type 'MoraiSyncModeRemoveObjectSrv-response"
  "morai_msgs/MoraiSyncModeRemoveObjectSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiSyncModeRemoveObjectSrv-response>)))
  "Returns md5sum for a message object of type '<MoraiSyncModeRemoveObjectSrv-response>"
  "d499baec7083a3731b7e7fc183807dce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiSyncModeRemoveObjectSrv-response)))
  "Returns md5sum for a message object of type 'MoraiSyncModeRemoveObjectSrv-response"
  "d499baec7083a3731b7e7fc183807dce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiSyncModeRemoveObjectSrv-response>)))
  "Returns full string definition for message of type '<MoraiSyncModeRemoveObjectSrv-response>"
  (cl:format cl:nil "SyncModeResultResponse response~%~%~%================================================================================~%MSG: morai_msgs/SyncModeResultResponse~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiSyncModeRemoveObjectSrv-response)))
  "Returns full string definition for message of type 'MoraiSyncModeRemoveObjectSrv-response"
  (cl:format cl:nil "SyncModeResultResponse response~%~%~%================================================================================~%MSG: morai_msgs/SyncModeResultResponse~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiSyncModeRemoveObjectSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiSyncModeRemoveObjectSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiSyncModeRemoveObjectSrv-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoraiSyncModeRemoveObjectSrv)))
  'MoraiSyncModeRemoveObjectSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoraiSyncModeRemoveObjectSrv)))
  'MoraiSyncModeRemoveObjectSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiSyncModeRemoveObjectSrv)))
  "Returns string type for a service object of type '<MoraiSyncModeRemoveObjectSrv>"
  "morai_msgs/MoraiSyncModeRemoveObjectSrv")