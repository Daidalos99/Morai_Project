; Auto-generated. Do not edit!


(cl:in-package morai_msgs-srv)


;//! \htmlinclude PREventSrv-request.msg.html

(cl:defclass <PREventSrv-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type morai_msgs-msg:PREvent
    :initform (cl:make-instance 'morai_msgs-msg:PREvent)))
)

(cl:defclass PREventSrv-request (<PREventSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PREventSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PREventSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-srv:<PREventSrv-request> is deprecated: use morai_msgs-srv:PREventSrv-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <PREventSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-srv:request-val is deprecated.  Use morai_msgs-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PREventSrv-request>) ostream)
  "Serializes a message object of type '<PREventSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'request) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PREventSrv-request>) istream)
  "Deserializes a message object of type '<PREventSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'request) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PREventSrv-request>)))
  "Returns string type for a service object of type '<PREventSrv-request>"
  "morai_msgs/PREventSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PREventSrv-request)))
  "Returns string type for a service object of type 'PREventSrv-request"
  "morai_msgs/PREventSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PREventSrv-request>)))
  "Returns md5sum for a message object of type '<PREventSrv-request>"
  "a5cf1a2f9ad9d91c7dbbba6c3b888bda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PREventSrv-request)))
  "Returns md5sum for a message object of type 'PREventSrv-request"
  "a5cf1a2f9ad9d91c7dbbba6c3b888bda")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PREventSrv-request>)))
  "Returns full string definition for message of type '<PREventSrv-request>"
  (cl:format cl:nil "PREvent request~%~%================================================================================~%MSG: morai_msgs/PREvent~%bool mountVehicle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PREventSrv-request)))
  "Returns full string definition for message of type 'PREventSrv-request"
  (cl:format cl:nil "PREvent request~%~%================================================================================~%MSG: morai_msgs/PREvent~%bool mountVehicle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PREventSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PREventSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PREventSrv-request
    (cl:cons ':request (request msg))
))
;//! \htmlinclude PREventSrv-response.msg.html

(cl:defclass <PREventSrv-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type morai_msgs-msg:PREvent
    :initform (cl:make-instance 'morai_msgs-msg:PREvent)))
)

(cl:defclass PREventSrv-response (<PREventSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PREventSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PREventSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-srv:<PREventSrv-response> is deprecated: use morai_msgs-srv:PREventSrv-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <PREventSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-srv:response-val is deprecated.  Use morai_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PREventSrv-response>) ostream)
  "Serializes a message object of type '<PREventSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'response) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PREventSrv-response>) istream)
  "Deserializes a message object of type '<PREventSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'response) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PREventSrv-response>)))
  "Returns string type for a service object of type '<PREventSrv-response>"
  "morai_msgs/PREventSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PREventSrv-response)))
  "Returns string type for a service object of type 'PREventSrv-response"
  "morai_msgs/PREventSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PREventSrv-response>)))
  "Returns md5sum for a message object of type '<PREventSrv-response>"
  "a5cf1a2f9ad9d91c7dbbba6c3b888bda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PREventSrv-response)))
  "Returns md5sum for a message object of type 'PREventSrv-response"
  "a5cf1a2f9ad9d91c7dbbba6c3b888bda")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PREventSrv-response>)))
  "Returns full string definition for message of type '<PREventSrv-response>"
  (cl:format cl:nil "PREvent response~%~%~%================================================================================~%MSG: morai_msgs/PREvent~%bool mountVehicle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PREventSrv-response)))
  "Returns full string definition for message of type 'PREventSrv-response"
  (cl:format cl:nil "PREvent response~%~%~%================================================================================~%MSG: morai_msgs/PREvent~%bool mountVehicle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PREventSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PREventSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PREventSrv-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PREventSrv)))
  'PREventSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PREventSrv)))
  'PREventSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PREventSrv)))
  "Returns string type for a service object of type '<PREventSrv>"
  "morai_msgs/PREventSrv")