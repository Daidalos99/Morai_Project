; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude MapSpec.msg.html

(cl:defclass <MapSpec> (roslisp-msg-protocol:ros-message)
  ((plane_coordinate_system
    :reader plane_coordinate_system
    :initarg :plane_coordinate_system
    :type cl:integer
    :initform 0)
   (utm_num
    :reader utm_num
    :initarg :utm_num
    :type cl:integer
    :initform 0)
   (utm_offset
    :reader utm_offset
    :initarg :utm_offset
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (ellipse
    :reader ellipse
    :initarg :ellipse
    :type cl:string
    :initform "")
   (central_latitude
    :reader central_latitude
    :initarg :central_latitude
    :type cl:float
    :initform 0.0)
   (central_meridian
    :reader central_meridian
    :initarg :central_meridian
    :type cl:float
    :initform 0.0)
   (scale_factor
    :reader scale_factor
    :initarg :scale_factor
    :type cl:float
    :initform 0.0)
   (false_easting
    :reader false_easting
    :initarg :false_easting
    :type cl:float
    :initform 0.0)
   (false_northing
    :reader false_northing
    :initarg :false_northing
    :type cl:float
    :initform 0.0))
)

(cl:defclass MapSpec (<MapSpec>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapSpec>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapSpec)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<MapSpec> is deprecated: use morai_msgs-msg:MapSpec instead.")))

(cl:ensure-generic-function 'plane_coordinate_system-val :lambda-list '(m))
(cl:defmethod plane_coordinate_system-val ((m <MapSpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:plane_coordinate_system-val is deprecated.  Use morai_msgs-msg:plane_coordinate_system instead.")
  (plane_coordinate_system m))

(cl:ensure-generic-function 'utm_num-val :lambda-list '(m))
(cl:defmethod utm_num-val ((m <MapSpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:utm_num-val is deprecated.  Use morai_msgs-msg:utm_num instead.")
  (utm_num m))

(cl:ensure-generic-function 'utm_offset-val :lambda-list '(m))
(cl:defmethod utm_offset-val ((m <MapSpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:utm_offset-val is deprecated.  Use morai_msgs-msg:utm_offset instead.")
  (utm_offset m))

(cl:ensure-generic-function 'ellipse-val :lambda-list '(m))
(cl:defmethod ellipse-val ((m <MapSpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:ellipse-val is deprecated.  Use morai_msgs-msg:ellipse instead.")
  (ellipse m))

(cl:ensure-generic-function 'central_latitude-val :lambda-list '(m))
(cl:defmethod central_latitude-val ((m <MapSpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:central_latitude-val is deprecated.  Use morai_msgs-msg:central_latitude instead.")
  (central_latitude m))

(cl:ensure-generic-function 'central_meridian-val :lambda-list '(m))
(cl:defmethod central_meridian-val ((m <MapSpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:central_meridian-val is deprecated.  Use morai_msgs-msg:central_meridian instead.")
  (central_meridian m))

(cl:ensure-generic-function 'scale_factor-val :lambda-list '(m))
(cl:defmethod scale_factor-val ((m <MapSpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:scale_factor-val is deprecated.  Use morai_msgs-msg:scale_factor instead.")
  (scale_factor m))

(cl:ensure-generic-function 'false_easting-val :lambda-list '(m))
(cl:defmethod false_easting-val ((m <MapSpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:false_easting-val is deprecated.  Use morai_msgs-msg:false_easting instead.")
  (false_easting m))

(cl:ensure-generic-function 'false_northing-val :lambda-list '(m))
(cl:defmethod false_northing-val ((m <MapSpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:false_northing-val is deprecated.  Use morai_msgs-msg:false_northing instead.")
  (false_northing m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapSpec>) ostream)
  "Serializes a message object of type '<MapSpec>"
  (cl:let* ((signed (cl:slot-value msg 'plane_coordinate_system)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'utm_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'utm_offset) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ellipse))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ellipse))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'central_latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'central_meridian))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'scale_factor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'false_easting))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'false_northing))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapSpec>) istream)
  "Deserializes a message object of type '<MapSpec>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'plane_coordinate_system) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'utm_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'utm_offset) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ellipse) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ellipse) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'central_latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'central_meridian) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'scale_factor) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'false_easting) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'false_northing) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapSpec>)))
  "Returns string type for a message object of type '<MapSpec>"
  "morai_msgs/MapSpec")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapSpec)))
  "Returns string type for a message object of type 'MapSpec"
  "morai_msgs/MapSpec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapSpec>)))
  "Returns md5sum for a message object of type '<MapSpec>"
  "ff26999f16fc5ab8e3788072433240e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapSpec)))
  "Returns md5sum for a message object of type 'MapSpec"
  "ff26999f16fc5ab8e3788072433240e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapSpec>)))
  "Returns full string definition for message of type '<MapSpec>"
  (cl:format cl:nil "int32 plane_coordinate_system~%int32 utm_num~%~%geometry_msgs/Vector3 utm_offset~%~%string ellipse~%float64 central_latitude~%float64 central_meridian~%float64 scale_factor~%float64 false_easting~%float64 false_northing~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapSpec)))
  "Returns full string definition for message of type 'MapSpec"
  (cl:format cl:nil "int32 plane_coordinate_system~%int32 utm_num~%~%geometry_msgs/Vector3 utm_offset~%~%string ellipse~%float64 central_latitude~%float64 central_meridian~%float64 scale_factor~%float64 false_easting~%float64 false_northing~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapSpec>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'utm_offset))
     4 (cl:length (cl:slot-value msg 'ellipse))
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapSpec>))
  "Converts a ROS message object to a list"
  (cl:list 'MapSpec
    (cl:cons ':plane_coordinate_system (plane_coordinate_system msg))
    (cl:cons ':utm_num (utm_num msg))
    (cl:cons ':utm_offset (utm_offset msg))
    (cl:cons ':ellipse (ellipse msg))
    (cl:cons ':central_latitude (central_latitude msg))
    (cl:cons ':central_meridian (central_meridian msg))
    (cl:cons ':scale_factor (scale_factor msg))
    (cl:cons ':false_easting (false_easting msg))
    (cl:cons ':false_northing (false_northing msg))
))
