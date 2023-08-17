; Auto-generated. Do not edit!


(cl:in-package morai_msgs-srv)


;//! \htmlinclude MoraiScenarioLoadSrv-request.msg.html

(cl:defclass <MoraiScenarioLoadSrv-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type morai_msgs-msg:ScenarioLoad
    :initform (cl:make-instance 'morai_msgs-msg:ScenarioLoad)))
)

(cl:defclass MoraiScenarioLoadSrv-request (<MoraiScenarioLoadSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiScenarioLoadSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiScenarioLoadSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-srv:<MoraiScenarioLoadSrv-request> is deprecated: use morai_msgs-srv:MoraiScenarioLoadSrv-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <MoraiScenarioLoadSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-srv:request-val is deprecated.  Use morai_msgs-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiScenarioLoadSrv-request>) ostream)
  "Serializes a message object of type '<MoraiScenarioLoadSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'request) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiScenarioLoadSrv-request>) istream)
  "Deserializes a message object of type '<MoraiScenarioLoadSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'request) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiScenarioLoadSrv-request>)))
  "Returns string type for a service object of type '<MoraiScenarioLoadSrv-request>"
  "morai_msgs/MoraiScenarioLoadSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiScenarioLoadSrv-request)))
  "Returns string type for a service object of type 'MoraiScenarioLoadSrv-request"
  "morai_msgs/MoraiScenarioLoadSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiScenarioLoadSrv-request>)))
  "Returns md5sum for a message object of type '<MoraiScenarioLoadSrv-request>"
  "25b7997ab4e17f67a86b3d83c84ac51d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiScenarioLoadSrv-request)))
  "Returns md5sum for a message object of type 'MoraiScenarioLoadSrv-request"
  "25b7997ab4e17f67a86b3d83c84ac51d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiScenarioLoadSrv-request>)))
  "Returns full string definition for message of type '<MoraiScenarioLoadSrv-request>"
  (cl:format cl:nil "ScenarioLoad request~%~%================================================================================~%MSG: morai_msgs/ScenarioLoad~%string file_name~%bool load_network_connection_data~%bool delete_all~%bool load_ego_vehicle_data~%bool load_surrounding_vehicle_data~%bool load_pedestrian_data~%bool load_obstacle_data~%bool set_pause~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiScenarioLoadSrv-request)))
  "Returns full string definition for message of type 'MoraiScenarioLoadSrv-request"
  (cl:format cl:nil "ScenarioLoad request~%~%================================================================================~%MSG: morai_msgs/ScenarioLoad~%string file_name~%bool load_network_connection_data~%bool delete_all~%bool load_ego_vehicle_data~%bool load_surrounding_vehicle_data~%bool load_pedestrian_data~%bool load_obstacle_data~%bool set_pause~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiScenarioLoadSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiScenarioLoadSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiScenarioLoadSrv-request
    (cl:cons ':request (request msg))
))
;//! \htmlinclude MoraiScenarioLoadSrv-response.msg.html

(cl:defclass <MoraiScenarioLoadSrv-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type morai_msgs-msg:MoraiSrvResponse
    :initform (cl:make-instance 'morai_msgs-msg:MoraiSrvResponse)))
)

(cl:defclass MoraiScenarioLoadSrv-response (<MoraiScenarioLoadSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiScenarioLoadSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiScenarioLoadSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-srv:<MoraiScenarioLoadSrv-response> is deprecated: use morai_msgs-srv:MoraiScenarioLoadSrv-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <MoraiScenarioLoadSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-srv:response-val is deprecated.  Use morai_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiScenarioLoadSrv-response>) ostream)
  "Serializes a message object of type '<MoraiScenarioLoadSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'response) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiScenarioLoadSrv-response>) istream)
  "Deserializes a message object of type '<MoraiScenarioLoadSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'response) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiScenarioLoadSrv-response>)))
  "Returns string type for a service object of type '<MoraiScenarioLoadSrv-response>"
  "morai_msgs/MoraiScenarioLoadSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiScenarioLoadSrv-response)))
  "Returns string type for a service object of type 'MoraiScenarioLoadSrv-response"
  "morai_msgs/MoraiScenarioLoadSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiScenarioLoadSrv-response>)))
  "Returns md5sum for a message object of type '<MoraiScenarioLoadSrv-response>"
  "25b7997ab4e17f67a86b3d83c84ac51d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiScenarioLoadSrv-response)))
  "Returns md5sum for a message object of type 'MoraiScenarioLoadSrv-response"
  "25b7997ab4e17f67a86b3d83c84ac51d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiScenarioLoadSrv-response>)))
  "Returns full string definition for message of type '<MoraiScenarioLoadSrv-response>"
  (cl:format cl:nil "MoraiSrvResponse response~%~%~%================================================================================~%MSG: morai_msgs/MoraiSrvResponse~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiScenarioLoadSrv-response)))
  "Returns full string definition for message of type 'MoraiScenarioLoadSrv-response"
  (cl:format cl:nil "MoraiSrvResponse response~%~%~%================================================================================~%MSG: morai_msgs/MoraiSrvResponse~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiScenarioLoadSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiScenarioLoadSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiScenarioLoadSrv-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoraiScenarioLoadSrv)))
  'MoraiScenarioLoadSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoraiScenarioLoadSrv)))
  'MoraiScenarioLoadSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiScenarioLoadSrv)))
  "Returns string type for a service object of type '<MoraiScenarioLoadSrv>"
  "morai_msgs/MoraiScenarioLoadSrv")