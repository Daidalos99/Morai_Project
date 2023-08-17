; Auto-generated. Do not edit!


(cl:in-package morai_msgs-srv)


;//! \htmlinclude MoraiVehicleSpecSrv-request.msg.html

(cl:defclass <MoraiVehicleSpecSrv-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type morai_msgs-msg:VehicleSpecIndex
    :initform (cl:make-instance 'morai_msgs-msg:VehicleSpecIndex)))
)

(cl:defclass MoraiVehicleSpecSrv-request (<MoraiVehicleSpecSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiVehicleSpecSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiVehicleSpecSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-srv:<MoraiVehicleSpecSrv-request> is deprecated: use morai_msgs-srv:MoraiVehicleSpecSrv-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <MoraiVehicleSpecSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-srv:request-val is deprecated.  Use morai_msgs-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiVehicleSpecSrv-request>) ostream)
  "Serializes a message object of type '<MoraiVehicleSpecSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'request) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiVehicleSpecSrv-request>) istream)
  "Deserializes a message object of type '<MoraiVehicleSpecSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'request) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiVehicleSpecSrv-request>)))
  "Returns string type for a service object of type '<MoraiVehicleSpecSrv-request>"
  "morai_msgs/MoraiVehicleSpecSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiVehicleSpecSrv-request)))
  "Returns string type for a service object of type 'MoraiVehicleSpecSrv-request"
  "morai_msgs/MoraiVehicleSpecSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiVehicleSpecSrv-request>)))
  "Returns md5sum for a message object of type '<MoraiVehicleSpecSrv-request>"
  "00e763d6a7313045c7676986f63a8fd8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiVehicleSpecSrv-request)))
  "Returns md5sum for a message object of type 'MoraiVehicleSpecSrv-request"
  "00e763d6a7313045c7676986f63a8fd8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiVehicleSpecSrv-request>)))
  "Returns full string definition for message of type '<MoraiVehicleSpecSrv-request>"
  (cl:format cl:nil "VehicleSpecIndex request~%~%================================================================================~%MSG: morai_msgs/VehicleSpecIndex~%int32 unique_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiVehicleSpecSrv-request)))
  "Returns full string definition for message of type 'MoraiVehicleSpecSrv-request"
  (cl:format cl:nil "VehicleSpecIndex request~%~%================================================================================~%MSG: morai_msgs/VehicleSpecIndex~%int32 unique_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiVehicleSpecSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiVehicleSpecSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiVehicleSpecSrv-request
    (cl:cons ':request (request msg))
))
;//! \htmlinclude MoraiVehicleSpecSrv-response.msg.html

(cl:defclass <MoraiVehicleSpecSrv-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type morai_msgs-msg:VehicleSpec
    :initform (cl:make-instance 'morai_msgs-msg:VehicleSpec)))
)

(cl:defclass MoraiVehicleSpecSrv-response (<MoraiVehicleSpecSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiVehicleSpecSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiVehicleSpecSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-srv:<MoraiVehicleSpecSrv-response> is deprecated: use morai_msgs-srv:MoraiVehicleSpecSrv-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <MoraiVehicleSpecSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-srv:response-val is deprecated.  Use morai_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiVehicleSpecSrv-response>) ostream)
  "Serializes a message object of type '<MoraiVehicleSpecSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'response) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiVehicleSpecSrv-response>) istream)
  "Deserializes a message object of type '<MoraiVehicleSpecSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'response) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiVehicleSpecSrv-response>)))
  "Returns string type for a service object of type '<MoraiVehicleSpecSrv-response>"
  "morai_msgs/MoraiVehicleSpecSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiVehicleSpecSrv-response)))
  "Returns string type for a service object of type 'MoraiVehicleSpecSrv-response"
  "morai_msgs/MoraiVehicleSpecSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiVehicleSpecSrv-response>)))
  "Returns md5sum for a message object of type '<MoraiVehicleSpecSrv-response>"
  "00e763d6a7313045c7676986f63a8fd8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiVehicleSpecSrv-response)))
  "Returns md5sum for a message object of type 'MoraiVehicleSpecSrv-response"
  "00e763d6a7313045c7676986f63a8fd8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiVehicleSpecSrv-response>)))
  "Returns full string definition for message of type '<MoraiVehicleSpecSrv-response>"
  (cl:format cl:nil "VehicleSpec response~%~%~%================================================================================~%MSG: morai_msgs/VehicleSpec~%geometry_msgs/Vector3 size~%float32 wheel_base~%float64 max_steering~%~%float32 overhang ~%float32 rear_overhang~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiVehicleSpecSrv-response)))
  "Returns full string definition for message of type 'MoraiVehicleSpecSrv-response"
  (cl:format cl:nil "VehicleSpec response~%~%~%================================================================================~%MSG: morai_msgs/VehicleSpec~%geometry_msgs/Vector3 size~%float32 wheel_base~%float64 max_steering~%~%float32 overhang ~%float32 rear_overhang~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiVehicleSpecSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiVehicleSpecSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiVehicleSpecSrv-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoraiVehicleSpecSrv)))
  'MoraiVehicleSpecSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoraiVehicleSpecSrv)))
  'MoraiVehicleSpecSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiVehicleSpecSrv)))
  "Returns string type for a service object of type '<MoraiVehicleSpecSrv>"
  "morai_msgs/MoraiVehicleSpecSrv")