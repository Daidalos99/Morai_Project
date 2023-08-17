; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude VehicleSpec.msg.html

(cl:defclass <VehicleSpec> (roslisp-msg-protocol:ros-message)
  ((size
    :reader size
    :initarg :size
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (wheel_base
    :reader wheel_base
    :initarg :wheel_base
    :type cl:float
    :initform 0.0)
   (max_steering
    :reader max_steering
    :initarg :max_steering
    :type cl:float
    :initform 0.0)
   (overhang
    :reader overhang
    :initarg :overhang
    :type cl:float
    :initform 0.0)
   (rear_overhang
    :reader rear_overhang
    :initarg :rear_overhang
    :type cl:float
    :initform 0.0))
)

(cl:defclass VehicleSpec (<VehicleSpec>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleSpec>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleSpec)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<VehicleSpec> is deprecated: use morai_msgs-msg:VehicleSpec instead.")))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <VehicleSpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:size-val is deprecated.  Use morai_msgs-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'wheel_base-val :lambda-list '(m))
(cl:defmethod wheel_base-val ((m <VehicleSpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:wheel_base-val is deprecated.  Use morai_msgs-msg:wheel_base instead.")
  (wheel_base m))

(cl:ensure-generic-function 'max_steering-val :lambda-list '(m))
(cl:defmethod max_steering-val ((m <VehicleSpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:max_steering-val is deprecated.  Use morai_msgs-msg:max_steering instead.")
  (max_steering m))

(cl:ensure-generic-function 'overhang-val :lambda-list '(m))
(cl:defmethod overhang-val ((m <VehicleSpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:overhang-val is deprecated.  Use morai_msgs-msg:overhang instead.")
  (overhang m))

(cl:ensure-generic-function 'rear_overhang-val :lambda-list '(m))
(cl:defmethod rear_overhang-val ((m <VehicleSpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:rear_overhang-val is deprecated.  Use morai_msgs-msg:rear_overhang instead.")
  (rear_overhang m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleSpec>) ostream)
  "Serializes a message object of type '<VehicleSpec>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'size) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheel_base))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_steering))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'overhang))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rear_overhang))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleSpec>) istream)
  "Deserializes a message object of type '<VehicleSpec>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'size) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_base) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_steering) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'overhang) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rear_overhang) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleSpec>)))
  "Returns string type for a message object of type '<VehicleSpec>"
  "morai_msgs/VehicleSpec")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleSpec)))
  "Returns string type for a message object of type 'VehicleSpec"
  "morai_msgs/VehicleSpec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleSpec>)))
  "Returns md5sum for a message object of type '<VehicleSpec>"
  "d273508226bd3615fec6992c56a9ddae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleSpec)))
  "Returns md5sum for a message object of type 'VehicleSpec"
  "d273508226bd3615fec6992c56a9ddae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleSpec>)))
  "Returns full string definition for message of type '<VehicleSpec>"
  (cl:format cl:nil "geometry_msgs/Vector3 size~%float32 wheel_base~%float64 max_steering~%~%float32 overhang ~%float32 rear_overhang~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleSpec)))
  "Returns full string definition for message of type 'VehicleSpec"
  (cl:format cl:nil "geometry_msgs/Vector3 size~%float32 wheel_base~%float64 max_steering~%~%float32 overhang ~%float32 rear_overhang~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleSpec>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'size))
     4
     8
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleSpec>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleSpec
    (cl:cons ':size (size msg))
    (cl:cons ':wheel_base (wheel_base msg))
    (cl:cons ':max_steering (max_steering msg))
    (cl:cons ':overhang (overhang msg))
    (cl:cons ':rear_overhang (rear_overhang msg))
))
