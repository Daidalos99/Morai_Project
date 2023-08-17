; Auto-generated. Do not edit!


(cl:in-package morai_msgs-srv)


;//! \htmlinclude MoraiMapSpecSrv-request.msg.html

(cl:defclass <MoraiMapSpecSrv-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type morai_msgs-msg:MapSpecIndex
    :initform (cl:make-instance 'morai_msgs-msg:MapSpecIndex)))
)

(cl:defclass MoraiMapSpecSrv-request (<MoraiMapSpecSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiMapSpecSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiMapSpecSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-srv:<MoraiMapSpecSrv-request> is deprecated: use morai_msgs-srv:MoraiMapSpecSrv-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <MoraiMapSpecSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-srv:request-val is deprecated.  Use morai_msgs-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiMapSpecSrv-request>) ostream)
  "Serializes a message object of type '<MoraiMapSpecSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'request) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiMapSpecSrv-request>) istream)
  "Deserializes a message object of type '<MoraiMapSpecSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'request) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiMapSpecSrv-request>)))
  "Returns string type for a service object of type '<MoraiMapSpecSrv-request>"
  "morai_msgs/MoraiMapSpecSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiMapSpecSrv-request)))
  "Returns string type for a service object of type 'MoraiMapSpecSrv-request"
  "morai_msgs/MoraiMapSpecSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiMapSpecSrv-request>)))
  "Returns md5sum for a message object of type '<MoraiMapSpecSrv-request>"
  "05d746a24a1f7725a363510d4264a323")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiMapSpecSrv-request)))
  "Returns md5sum for a message object of type 'MoraiMapSpecSrv-request"
  "05d746a24a1f7725a363510d4264a323")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiMapSpecSrv-request>)))
  "Returns full string definition for message of type '<MoraiMapSpecSrv-request>"
  (cl:format cl:nil "MapSpecIndex request~%~%================================================================================~%MSG: morai_msgs/MapSpecIndex~%bool load_map_data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiMapSpecSrv-request)))
  "Returns full string definition for message of type 'MoraiMapSpecSrv-request"
  (cl:format cl:nil "MapSpecIndex request~%~%================================================================================~%MSG: morai_msgs/MapSpecIndex~%bool load_map_data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiMapSpecSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiMapSpecSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiMapSpecSrv-request
    (cl:cons ':request (request msg))
))
;//! \htmlinclude MoraiMapSpecSrv-response.msg.html

(cl:defclass <MoraiMapSpecSrv-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type morai_msgs-msg:MapSpec
    :initform (cl:make-instance 'morai_msgs-msg:MapSpec)))
)

(cl:defclass MoraiMapSpecSrv-response (<MoraiMapSpecSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiMapSpecSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiMapSpecSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-srv:<MoraiMapSpecSrv-response> is deprecated: use morai_msgs-srv:MoraiMapSpecSrv-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <MoraiMapSpecSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-srv:response-val is deprecated.  Use morai_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiMapSpecSrv-response>) ostream)
  "Serializes a message object of type '<MoraiMapSpecSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'response) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiMapSpecSrv-response>) istream)
  "Deserializes a message object of type '<MoraiMapSpecSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'response) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiMapSpecSrv-response>)))
  "Returns string type for a service object of type '<MoraiMapSpecSrv-response>"
  "morai_msgs/MoraiMapSpecSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiMapSpecSrv-response)))
  "Returns string type for a service object of type 'MoraiMapSpecSrv-response"
  "morai_msgs/MoraiMapSpecSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiMapSpecSrv-response>)))
  "Returns md5sum for a message object of type '<MoraiMapSpecSrv-response>"
  "05d746a24a1f7725a363510d4264a323")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiMapSpecSrv-response)))
  "Returns md5sum for a message object of type 'MoraiMapSpecSrv-response"
  "05d746a24a1f7725a363510d4264a323")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiMapSpecSrv-response>)))
  "Returns full string definition for message of type '<MoraiMapSpecSrv-response>"
  (cl:format cl:nil "MapSpec response~%~%================================================================================~%MSG: morai_msgs/MapSpec~%int32 plane_coordinate_system~%int32 utm_num~%~%geometry_msgs/Vector3 utm_offset~%~%string ellipse~%float64 central_latitude~%float64 central_meridian~%float64 scale_factor~%float64 false_easting~%float64 false_northing~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiMapSpecSrv-response)))
  "Returns full string definition for message of type 'MoraiMapSpecSrv-response"
  (cl:format cl:nil "MapSpec response~%~%================================================================================~%MSG: morai_msgs/MapSpec~%int32 plane_coordinate_system~%int32 utm_num~%~%geometry_msgs/Vector3 utm_offset~%~%string ellipse~%float64 central_latitude~%float64 central_meridian~%float64 scale_factor~%float64 false_easting~%float64 false_northing~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiMapSpecSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiMapSpecSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiMapSpecSrv-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoraiMapSpecSrv)))
  'MoraiMapSpecSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoraiMapSpecSrv)))
  'MoraiMapSpecSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiMapSpecSrv)))
  "Returns string type for a service object of type '<MoraiMapSpecSrv>"
  "morai_msgs/MoraiMapSpecSrv")