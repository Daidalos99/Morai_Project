; Auto-generated. Do not edit!


(cl:in-package morai_msgs-srv)


;//! \htmlinclude MoraiSyncModeSetGearSrv-request.msg.html

(cl:defclass <MoraiSyncModeSetGearSrv-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type morai_msgs-msg:SyncModeSetGear
    :initform (cl:make-instance 'morai_msgs-msg:SyncModeSetGear)))
)

(cl:defclass MoraiSyncModeSetGearSrv-request (<MoraiSyncModeSetGearSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiSyncModeSetGearSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiSyncModeSetGearSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-srv:<MoraiSyncModeSetGearSrv-request> is deprecated: use morai_msgs-srv:MoraiSyncModeSetGearSrv-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <MoraiSyncModeSetGearSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-srv:request-val is deprecated.  Use morai_msgs-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiSyncModeSetGearSrv-request>) ostream)
  "Serializes a message object of type '<MoraiSyncModeSetGearSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'request) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiSyncModeSetGearSrv-request>) istream)
  "Deserializes a message object of type '<MoraiSyncModeSetGearSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'request) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiSyncModeSetGearSrv-request>)))
  "Returns string type for a service object of type '<MoraiSyncModeSetGearSrv-request>"
  "morai_msgs/MoraiSyncModeSetGearSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiSyncModeSetGearSrv-request)))
  "Returns string type for a service object of type 'MoraiSyncModeSetGearSrv-request"
  "morai_msgs/MoraiSyncModeSetGearSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiSyncModeSetGearSrv-request>)))
  "Returns md5sum for a message object of type '<MoraiSyncModeSetGearSrv-request>"
  "933dd1db4e5ca4203b1f770f04800d0a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiSyncModeSetGearSrv-request)))
  "Returns md5sum for a message object of type 'MoraiSyncModeSetGearSrv-request"
  "933dd1db4e5ca4203b1f770f04800d0a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiSyncModeSetGearSrv-request>)))
  "Returns full string definition for message of type '<MoraiSyncModeSetGearSrv-request>"
  (cl:format cl:nil "SyncModeSetGear request~%~%================================================================================~%MSG: morai_msgs/SyncModeSetGear~%int32 gear~%uint64 frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiSyncModeSetGearSrv-request)))
  "Returns full string definition for message of type 'MoraiSyncModeSetGearSrv-request"
  (cl:format cl:nil "SyncModeSetGear request~%~%================================================================================~%MSG: morai_msgs/SyncModeSetGear~%int32 gear~%uint64 frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiSyncModeSetGearSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiSyncModeSetGearSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiSyncModeSetGearSrv-request
    (cl:cons ':request (request msg))
))
;//! \htmlinclude MoraiSyncModeSetGearSrv-response.msg.html

(cl:defclass <MoraiSyncModeSetGearSrv-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type morai_msgs-msg:SyncModeResultResponse
    :initform (cl:make-instance 'morai_msgs-msg:SyncModeResultResponse)))
)

(cl:defclass MoraiSyncModeSetGearSrv-response (<MoraiSyncModeSetGearSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiSyncModeSetGearSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiSyncModeSetGearSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-srv:<MoraiSyncModeSetGearSrv-response> is deprecated: use morai_msgs-srv:MoraiSyncModeSetGearSrv-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <MoraiSyncModeSetGearSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-srv:response-val is deprecated.  Use morai_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiSyncModeSetGearSrv-response>) ostream)
  "Serializes a message object of type '<MoraiSyncModeSetGearSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'response) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiSyncModeSetGearSrv-response>) istream)
  "Deserializes a message object of type '<MoraiSyncModeSetGearSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'response) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiSyncModeSetGearSrv-response>)))
  "Returns string type for a service object of type '<MoraiSyncModeSetGearSrv-response>"
  "morai_msgs/MoraiSyncModeSetGearSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiSyncModeSetGearSrv-response)))
  "Returns string type for a service object of type 'MoraiSyncModeSetGearSrv-response"
  "morai_msgs/MoraiSyncModeSetGearSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiSyncModeSetGearSrv-response>)))
  "Returns md5sum for a message object of type '<MoraiSyncModeSetGearSrv-response>"
  "933dd1db4e5ca4203b1f770f04800d0a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiSyncModeSetGearSrv-response)))
  "Returns md5sum for a message object of type 'MoraiSyncModeSetGearSrv-response"
  "933dd1db4e5ca4203b1f770f04800d0a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiSyncModeSetGearSrv-response>)))
  "Returns full string definition for message of type '<MoraiSyncModeSetGearSrv-response>"
  (cl:format cl:nil "SyncModeResultResponse response~%~%~%================================================================================~%MSG: morai_msgs/SyncModeResultResponse~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiSyncModeSetGearSrv-response)))
  "Returns full string definition for message of type 'MoraiSyncModeSetGearSrv-response"
  (cl:format cl:nil "SyncModeResultResponse response~%~%~%================================================================================~%MSG: morai_msgs/SyncModeResultResponse~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiSyncModeSetGearSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiSyncModeSetGearSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiSyncModeSetGearSrv-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoraiSyncModeSetGearSrv)))
  'MoraiSyncModeSetGearSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoraiSyncModeSetGearSrv)))
  'MoraiSyncModeSetGearSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiSyncModeSetGearSrv)))
  "Returns string type for a service object of type '<MoraiSyncModeSetGearSrv>"
  "morai_msgs/MoraiSyncModeSetGearSrv")