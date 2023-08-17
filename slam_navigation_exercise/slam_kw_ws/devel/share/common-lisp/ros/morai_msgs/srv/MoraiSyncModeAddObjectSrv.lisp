; Auto-generated. Do not edit!


(cl:in-package morai_msgs-srv)


;//! \htmlinclude MoraiSyncModeAddObjectSrv-request.msg.html

(cl:defclass <MoraiSyncModeAddObjectSrv-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type morai_msgs-msg:SyncModeAddObject
    :initform (cl:make-instance 'morai_msgs-msg:SyncModeAddObject)))
)

(cl:defclass MoraiSyncModeAddObjectSrv-request (<MoraiSyncModeAddObjectSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiSyncModeAddObjectSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiSyncModeAddObjectSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-srv:<MoraiSyncModeAddObjectSrv-request> is deprecated: use morai_msgs-srv:MoraiSyncModeAddObjectSrv-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <MoraiSyncModeAddObjectSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-srv:request-val is deprecated.  Use morai_msgs-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiSyncModeAddObjectSrv-request>) ostream)
  "Serializes a message object of type '<MoraiSyncModeAddObjectSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'request) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiSyncModeAddObjectSrv-request>) istream)
  "Deserializes a message object of type '<MoraiSyncModeAddObjectSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'request) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiSyncModeAddObjectSrv-request>)))
  "Returns string type for a service object of type '<MoraiSyncModeAddObjectSrv-request>"
  "morai_msgs/MoraiSyncModeAddObjectSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiSyncModeAddObjectSrv-request)))
  "Returns string type for a service object of type 'MoraiSyncModeAddObjectSrv-request"
  "morai_msgs/MoraiSyncModeAddObjectSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiSyncModeAddObjectSrv-request>)))
  "Returns md5sum for a message object of type '<MoraiSyncModeAddObjectSrv-request>"
  "c1fef4ccdc9874029ce22686c7e98f83")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiSyncModeAddObjectSrv-request)))
  "Returns md5sum for a message object of type 'MoraiSyncModeAddObjectSrv-request"
  "c1fef4ccdc9874029ce22686c7e98f83")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiSyncModeAddObjectSrv-request>)))
  "Returns full string definition for message of type '<MoraiSyncModeAddObjectSrv-request>"
  (cl:format cl:nil "SyncModeAddObject request~%~%================================================================================~%MSG: morai_msgs/SyncModeAddObject~%string name~%geometry_msgs/Vector3 position~%float64 heading~%uint64 frame~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiSyncModeAddObjectSrv-request)))
  "Returns full string definition for message of type 'MoraiSyncModeAddObjectSrv-request"
  (cl:format cl:nil "SyncModeAddObject request~%~%================================================================================~%MSG: morai_msgs/SyncModeAddObject~%string name~%geometry_msgs/Vector3 position~%float64 heading~%uint64 frame~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiSyncModeAddObjectSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiSyncModeAddObjectSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiSyncModeAddObjectSrv-request
    (cl:cons ':request (request msg))
))
;//! \htmlinclude MoraiSyncModeAddObjectSrv-response.msg.html

(cl:defclass <MoraiSyncModeAddObjectSrv-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type morai_msgs-msg:SyncModeResultResponse
    :initform (cl:make-instance 'morai_msgs-msg:SyncModeResultResponse)))
)

(cl:defclass MoraiSyncModeAddObjectSrv-response (<MoraiSyncModeAddObjectSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiSyncModeAddObjectSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiSyncModeAddObjectSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-srv:<MoraiSyncModeAddObjectSrv-response> is deprecated: use morai_msgs-srv:MoraiSyncModeAddObjectSrv-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <MoraiSyncModeAddObjectSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-srv:response-val is deprecated.  Use morai_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiSyncModeAddObjectSrv-response>) ostream)
  "Serializes a message object of type '<MoraiSyncModeAddObjectSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'response) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiSyncModeAddObjectSrv-response>) istream)
  "Deserializes a message object of type '<MoraiSyncModeAddObjectSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'response) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiSyncModeAddObjectSrv-response>)))
  "Returns string type for a service object of type '<MoraiSyncModeAddObjectSrv-response>"
  "morai_msgs/MoraiSyncModeAddObjectSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiSyncModeAddObjectSrv-response)))
  "Returns string type for a service object of type 'MoraiSyncModeAddObjectSrv-response"
  "morai_msgs/MoraiSyncModeAddObjectSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiSyncModeAddObjectSrv-response>)))
  "Returns md5sum for a message object of type '<MoraiSyncModeAddObjectSrv-response>"
  "c1fef4ccdc9874029ce22686c7e98f83")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiSyncModeAddObjectSrv-response)))
  "Returns md5sum for a message object of type 'MoraiSyncModeAddObjectSrv-response"
  "c1fef4ccdc9874029ce22686c7e98f83")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiSyncModeAddObjectSrv-response>)))
  "Returns full string definition for message of type '<MoraiSyncModeAddObjectSrv-response>"
  (cl:format cl:nil "SyncModeResultResponse response~%~%~%================================================================================~%MSG: morai_msgs/SyncModeResultResponse~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiSyncModeAddObjectSrv-response)))
  "Returns full string definition for message of type 'MoraiSyncModeAddObjectSrv-response"
  (cl:format cl:nil "SyncModeResultResponse response~%~%~%================================================================================~%MSG: morai_msgs/SyncModeResultResponse~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiSyncModeAddObjectSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiSyncModeAddObjectSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiSyncModeAddObjectSrv-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoraiSyncModeAddObjectSrv)))
  'MoraiSyncModeAddObjectSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoraiSyncModeAddObjectSrv)))
  'MoraiSyncModeAddObjectSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiSyncModeAddObjectSrv)))
  "Returns string type for a service object of type '<MoraiSyncModeAddObjectSrv>"
  "morai_msgs/MoraiSyncModeAddObjectSrv")