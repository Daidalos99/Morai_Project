; Auto-generated. Do not edit!


(cl:in-package morai_msgs-srv)


;//! \htmlinclude MoraiSyncModeCmdSrv-request.msg.html

(cl:defclass <MoraiSyncModeCmdSrv-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type morai_msgs-msg:SyncModeCmd
    :initform (cl:make-instance 'morai_msgs-msg:SyncModeCmd)))
)

(cl:defclass MoraiSyncModeCmdSrv-request (<MoraiSyncModeCmdSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiSyncModeCmdSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiSyncModeCmdSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-srv:<MoraiSyncModeCmdSrv-request> is deprecated: use morai_msgs-srv:MoraiSyncModeCmdSrv-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <MoraiSyncModeCmdSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-srv:request-val is deprecated.  Use morai_msgs-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiSyncModeCmdSrv-request>) ostream)
  "Serializes a message object of type '<MoraiSyncModeCmdSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'request) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiSyncModeCmdSrv-request>) istream)
  "Deserializes a message object of type '<MoraiSyncModeCmdSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'request) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiSyncModeCmdSrv-request>)))
  "Returns string type for a service object of type '<MoraiSyncModeCmdSrv-request>"
  "morai_msgs/MoraiSyncModeCmdSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiSyncModeCmdSrv-request)))
  "Returns string type for a service object of type 'MoraiSyncModeCmdSrv-request"
  "morai_msgs/MoraiSyncModeCmdSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiSyncModeCmdSrv-request>)))
  "Returns md5sum for a message object of type '<MoraiSyncModeCmdSrv-request>"
  "df0fcb0eae8a1f37d527d8331f8eb734")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiSyncModeCmdSrv-request)))
  "Returns md5sum for a message object of type 'MoraiSyncModeCmdSrv-request"
  "df0fcb0eae8a1f37d527d8331f8eb734")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiSyncModeCmdSrv-request>)))
  "Returns full string definition for message of type '<MoraiSyncModeCmdSrv-request>"
  (cl:format cl:nil "SyncModeCmd request~%~%================================================================================~%MSG: morai_msgs/SyncModeCmd~%string user_id~%bool start_sync_mode~%uint32 time_step~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiSyncModeCmdSrv-request)))
  "Returns full string definition for message of type 'MoraiSyncModeCmdSrv-request"
  (cl:format cl:nil "SyncModeCmd request~%~%================================================================================~%MSG: morai_msgs/SyncModeCmd~%string user_id~%bool start_sync_mode~%uint32 time_step~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiSyncModeCmdSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiSyncModeCmdSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiSyncModeCmdSrv-request
    (cl:cons ':request (request msg))
))
;//! \htmlinclude MoraiSyncModeCmdSrv-response.msg.html

(cl:defclass <MoraiSyncModeCmdSrv-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type morai_msgs-msg:SyncModeCmdResponse
    :initform (cl:make-instance 'morai_msgs-msg:SyncModeCmdResponse)))
)

(cl:defclass MoraiSyncModeCmdSrv-response (<MoraiSyncModeCmdSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiSyncModeCmdSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiSyncModeCmdSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-srv:<MoraiSyncModeCmdSrv-response> is deprecated: use morai_msgs-srv:MoraiSyncModeCmdSrv-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <MoraiSyncModeCmdSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-srv:response-val is deprecated.  Use morai_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiSyncModeCmdSrv-response>) ostream)
  "Serializes a message object of type '<MoraiSyncModeCmdSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'response) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiSyncModeCmdSrv-response>) istream)
  "Deserializes a message object of type '<MoraiSyncModeCmdSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'response) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiSyncModeCmdSrv-response>)))
  "Returns string type for a service object of type '<MoraiSyncModeCmdSrv-response>"
  "morai_msgs/MoraiSyncModeCmdSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiSyncModeCmdSrv-response)))
  "Returns string type for a service object of type 'MoraiSyncModeCmdSrv-response"
  "morai_msgs/MoraiSyncModeCmdSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiSyncModeCmdSrv-response>)))
  "Returns md5sum for a message object of type '<MoraiSyncModeCmdSrv-response>"
  "df0fcb0eae8a1f37d527d8331f8eb734")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiSyncModeCmdSrv-response)))
  "Returns md5sum for a message object of type 'MoraiSyncModeCmdSrv-response"
  "df0fcb0eae8a1f37d527d8331f8eb734")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiSyncModeCmdSrv-response>)))
  "Returns full string definition for message of type '<MoraiSyncModeCmdSrv-response>"
  (cl:format cl:nil "SyncModeCmdResponse response~%~%~%================================================================================~%MSG: morai_msgs/SyncModeCmdResponse~%string user_id~%uint64 frame~%bool result~%uint32 time_step~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiSyncModeCmdSrv-response)))
  "Returns full string definition for message of type 'MoraiSyncModeCmdSrv-response"
  (cl:format cl:nil "SyncModeCmdResponse response~%~%~%================================================================================~%MSG: morai_msgs/SyncModeCmdResponse~%string user_id~%uint64 frame~%bool result~%uint32 time_step~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiSyncModeCmdSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiSyncModeCmdSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiSyncModeCmdSrv-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoraiSyncModeCmdSrv)))
  'MoraiSyncModeCmdSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoraiSyncModeCmdSrv)))
  'MoraiSyncModeCmdSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiSyncModeCmdSrv)))
  "Returns string type for a service object of type '<MoraiSyncModeCmdSrv>"
  "morai_msgs/MoraiSyncModeCmdSrv")