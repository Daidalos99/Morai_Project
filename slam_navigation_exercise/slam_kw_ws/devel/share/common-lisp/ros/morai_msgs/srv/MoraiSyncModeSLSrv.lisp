; Auto-generated. Do not edit!


(cl:in-package morai_msgs-srv)


;//! \htmlinclude MoraiSyncModeSLSrv-request.msg.html

(cl:defclass <MoraiSyncModeSLSrv-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type morai_msgs-msg:SyncModeScenarioLoad
    :initform (cl:make-instance 'morai_msgs-msg:SyncModeScenarioLoad)))
)

(cl:defclass MoraiSyncModeSLSrv-request (<MoraiSyncModeSLSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiSyncModeSLSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiSyncModeSLSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-srv:<MoraiSyncModeSLSrv-request> is deprecated: use morai_msgs-srv:MoraiSyncModeSLSrv-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <MoraiSyncModeSLSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-srv:request-val is deprecated.  Use morai_msgs-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiSyncModeSLSrv-request>) ostream)
  "Serializes a message object of type '<MoraiSyncModeSLSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'request) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiSyncModeSLSrv-request>) istream)
  "Deserializes a message object of type '<MoraiSyncModeSLSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'request) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiSyncModeSLSrv-request>)))
  "Returns string type for a service object of type '<MoraiSyncModeSLSrv-request>"
  "morai_msgs/MoraiSyncModeSLSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiSyncModeSLSrv-request)))
  "Returns string type for a service object of type 'MoraiSyncModeSLSrv-request"
  "morai_msgs/MoraiSyncModeSLSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiSyncModeSLSrv-request>)))
  "Returns md5sum for a message object of type '<MoraiSyncModeSLSrv-request>"
  "892af6bb455c083a88752e9286fb2b85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiSyncModeSLSrv-request)))
  "Returns md5sum for a message object of type 'MoraiSyncModeSLSrv-request"
  "892af6bb455c083a88752e9286fb2b85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiSyncModeSLSrv-request>)))
  "Returns full string definition for message of type '<MoraiSyncModeSLSrv-request>"
  (cl:format cl:nil "SyncModeScenarioLoad request~%~%================================================================================~%MSG: morai_msgs/SyncModeScenarioLoad~%uint64 frame~%~%string file_name~%bool load_network_connection_data~%bool delete_all~%bool load_ego_vehicle_data~%bool load_surrounding_vehicle_data~%bool load_pedestrian_data~%bool load_obstacle_data~%bool set_pause~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiSyncModeSLSrv-request)))
  "Returns full string definition for message of type 'MoraiSyncModeSLSrv-request"
  (cl:format cl:nil "SyncModeScenarioLoad request~%~%================================================================================~%MSG: morai_msgs/SyncModeScenarioLoad~%uint64 frame~%~%string file_name~%bool load_network_connection_data~%bool delete_all~%bool load_ego_vehicle_data~%bool load_surrounding_vehicle_data~%bool load_pedestrian_data~%bool load_obstacle_data~%bool set_pause~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiSyncModeSLSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiSyncModeSLSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiSyncModeSLSrv-request
    (cl:cons ':request (request msg))
))
;//! \htmlinclude MoraiSyncModeSLSrv-response.msg.html

(cl:defclass <MoraiSyncModeSLSrv-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type morai_msgs-msg:SyncModeResultResponse
    :initform (cl:make-instance 'morai_msgs-msg:SyncModeResultResponse)))
)

(cl:defclass MoraiSyncModeSLSrv-response (<MoraiSyncModeSLSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiSyncModeSLSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiSyncModeSLSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-srv:<MoraiSyncModeSLSrv-response> is deprecated: use morai_msgs-srv:MoraiSyncModeSLSrv-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <MoraiSyncModeSLSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-srv:response-val is deprecated.  Use morai_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiSyncModeSLSrv-response>) ostream)
  "Serializes a message object of type '<MoraiSyncModeSLSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'response) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiSyncModeSLSrv-response>) istream)
  "Deserializes a message object of type '<MoraiSyncModeSLSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'response) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiSyncModeSLSrv-response>)))
  "Returns string type for a service object of type '<MoraiSyncModeSLSrv-response>"
  "morai_msgs/MoraiSyncModeSLSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiSyncModeSLSrv-response)))
  "Returns string type for a service object of type 'MoraiSyncModeSLSrv-response"
  "morai_msgs/MoraiSyncModeSLSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiSyncModeSLSrv-response>)))
  "Returns md5sum for a message object of type '<MoraiSyncModeSLSrv-response>"
  "892af6bb455c083a88752e9286fb2b85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiSyncModeSLSrv-response)))
  "Returns md5sum for a message object of type 'MoraiSyncModeSLSrv-response"
  "892af6bb455c083a88752e9286fb2b85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiSyncModeSLSrv-response>)))
  "Returns full string definition for message of type '<MoraiSyncModeSLSrv-response>"
  (cl:format cl:nil "SyncModeResultResponse response~%~%~%================================================================================~%MSG: morai_msgs/SyncModeResultResponse~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiSyncModeSLSrv-response)))
  "Returns full string definition for message of type 'MoraiSyncModeSLSrv-response"
  (cl:format cl:nil "SyncModeResultResponse response~%~%~%================================================================================~%MSG: morai_msgs/SyncModeResultResponse~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiSyncModeSLSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiSyncModeSLSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiSyncModeSLSrv-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoraiSyncModeSLSrv)))
  'MoraiSyncModeSLSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoraiSyncModeSLSrv)))
  'MoraiSyncModeSLSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiSyncModeSLSrv)))
  "Returns string type for a service object of type '<MoraiSyncModeSLSrv>"
  "morai_msgs/MoraiSyncModeSLSrv")