; Auto-generated. Do not edit!


(cl:in-package morai_msgs-srv)


;//! \htmlinclude MoraiSimProcSrv-request.msg.html

(cl:defclass <MoraiSimProcSrv-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type morai_msgs-msg:MoraiSimProcHandle
    :initform (cl:make-instance 'morai_msgs-msg:MoraiSimProcHandle)))
)

(cl:defclass MoraiSimProcSrv-request (<MoraiSimProcSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiSimProcSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiSimProcSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-srv:<MoraiSimProcSrv-request> is deprecated: use morai_msgs-srv:MoraiSimProcSrv-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <MoraiSimProcSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-srv:request-val is deprecated.  Use morai_msgs-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiSimProcSrv-request>) ostream)
  "Serializes a message object of type '<MoraiSimProcSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'request) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiSimProcSrv-request>) istream)
  "Deserializes a message object of type '<MoraiSimProcSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'request) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiSimProcSrv-request>)))
  "Returns string type for a service object of type '<MoraiSimProcSrv-request>"
  "morai_msgs/MoraiSimProcSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiSimProcSrv-request)))
  "Returns string type for a service object of type 'MoraiSimProcSrv-request"
  "morai_msgs/MoraiSimProcSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiSimProcSrv-request>)))
  "Returns md5sum for a message object of type '<MoraiSimProcSrv-request>"
  "6d340598acf4b7d6e6f913c45512bf48")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiSimProcSrv-request)))
  "Returns md5sum for a message object of type 'MoraiSimProcSrv-request"
  "6d340598acf4b7d6e6f913c45512bf48")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiSimProcSrv-request>)))
  "Returns full string definition for message of type '<MoraiSimProcSrv-request>"
  (cl:format cl:nil "MoraiSimProcHandle request~%~%================================================================================~%MSG: morai_msgs/MoraiSimProcHandle~%uint8 sim_process_status~%~%int16 replay_option~%string rosbag_file_name~%int16 replay_target_option~%~%int32 replay_speed~%int32 start_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiSimProcSrv-request)))
  "Returns full string definition for message of type 'MoraiSimProcSrv-request"
  (cl:format cl:nil "MoraiSimProcHandle request~%~%================================================================================~%MSG: morai_msgs/MoraiSimProcHandle~%uint8 sim_process_status~%~%int16 replay_option~%string rosbag_file_name~%int16 replay_target_option~%~%int32 replay_speed~%int32 start_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiSimProcSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiSimProcSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiSimProcSrv-request
    (cl:cons ':request (request msg))
))
;//! \htmlinclude MoraiSimProcSrv-response.msg.html

(cl:defclass <MoraiSimProcSrv-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type morai_msgs-msg:MoraiSrvResponse
    :initform (cl:make-instance 'morai_msgs-msg:MoraiSrvResponse)))
)

(cl:defclass MoraiSimProcSrv-response (<MoraiSimProcSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiSimProcSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiSimProcSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-srv:<MoraiSimProcSrv-response> is deprecated: use morai_msgs-srv:MoraiSimProcSrv-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <MoraiSimProcSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-srv:response-val is deprecated.  Use morai_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiSimProcSrv-response>) ostream)
  "Serializes a message object of type '<MoraiSimProcSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'response) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiSimProcSrv-response>) istream)
  "Deserializes a message object of type '<MoraiSimProcSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'response) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiSimProcSrv-response>)))
  "Returns string type for a service object of type '<MoraiSimProcSrv-response>"
  "morai_msgs/MoraiSimProcSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiSimProcSrv-response)))
  "Returns string type for a service object of type 'MoraiSimProcSrv-response"
  "morai_msgs/MoraiSimProcSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiSimProcSrv-response>)))
  "Returns md5sum for a message object of type '<MoraiSimProcSrv-response>"
  "6d340598acf4b7d6e6f913c45512bf48")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiSimProcSrv-response)))
  "Returns md5sum for a message object of type 'MoraiSimProcSrv-response"
  "6d340598acf4b7d6e6f913c45512bf48")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiSimProcSrv-response>)))
  "Returns full string definition for message of type '<MoraiSimProcSrv-response>"
  (cl:format cl:nil "MoraiSrvResponse response~%~%~%================================================================================~%MSG: morai_msgs/MoraiSrvResponse~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiSimProcSrv-response)))
  "Returns full string definition for message of type 'MoraiSimProcSrv-response"
  (cl:format cl:nil "MoraiSrvResponse response~%~%~%================================================================================~%MSG: morai_msgs/MoraiSrvResponse~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiSimProcSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiSimProcSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiSimProcSrv-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoraiSimProcSrv)))
  'MoraiSimProcSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoraiSimProcSrv)))
  'MoraiSimProcSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiSimProcSrv)))
  "Returns string type for a service object of type '<MoraiSimProcSrv>"
  "morai_msgs/MoraiSimProcSrv")