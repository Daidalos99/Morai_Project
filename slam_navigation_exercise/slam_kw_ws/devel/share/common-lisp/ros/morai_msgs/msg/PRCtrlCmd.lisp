; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude PRCtrlCmd.msg.html

(cl:defclass <PRCtrlCmd> (roslisp-msg-protocol:ros-message)
  ((longitudinalVelocity
    :reader longitudinalVelocity
    :initarg :longitudinalVelocity
    :type cl:float
    :initform 0.0)
   (latitudinalVelocity
    :reader latitudinalVelocity
    :initarg :latitudinalVelocity
    :type cl:float
    :initform 0.0)
   (AngularVelocity
    :reader AngularVelocity
    :initarg :AngularVelocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass PRCtrlCmd (<PRCtrlCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PRCtrlCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PRCtrlCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<PRCtrlCmd> is deprecated: use morai_msgs-msg:PRCtrlCmd instead.")))

(cl:ensure-generic-function 'longitudinalVelocity-val :lambda-list '(m))
(cl:defmethod longitudinalVelocity-val ((m <PRCtrlCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:longitudinalVelocity-val is deprecated.  Use morai_msgs-msg:longitudinalVelocity instead.")
  (longitudinalVelocity m))

(cl:ensure-generic-function 'latitudinalVelocity-val :lambda-list '(m))
(cl:defmethod latitudinalVelocity-val ((m <PRCtrlCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:latitudinalVelocity-val is deprecated.  Use morai_msgs-msg:latitudinalVelocity instead.")
  (latitudinalVelocity m))

(cl:ensure-generic-function 'AngularVelocity-val :lambda-list '(m))
(cl:defmethod AngularVelocity-val ((m <PRCtrlCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:AngularVelocity-val is deprecated.  Use morai_msgs-msg:AngularVelocity instead.")
  (AngularVelocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PRCtrlCmd>) ostream)
  "Serializes a message object of type '<PRCtrlCmd>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitudinalVelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitudinalVelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'AngularVelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PRCtrlCmd>) istream)
  "Deserializes a message object of type '<PRCtrlCmd>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitudinalVelocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitudinalVelocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'AngularVelocity) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PRCtrlCmd>)))
  "Returns string type for a message object of type '<PRCtrlCmd>"
  "morai_msgs/PRCtrlCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PRCtrlCmd)))
  "Returns string type for a message object of type 'PRCtrlCmd"
  "morai_msgs/PRCtrlCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PRCtrlCmd>)))
  "Returns md5sum for a message object of type '<PRCtrlCmd>"
  "538a390f152bdc3fa35e075076d8b7ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PRCtrlCmd)))
  "Returns md5sum for a message object of type 'PRCtrlCmd"
  "538a390f152bdc3fa35e075076d8b7ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PRCtrlCmd>)))
  "Returns full string definition for message of type '<PRCtrlCmd>"
  (cl:format cl:nil "float64 longitudinalVelocity~%float64 latitudinalVelocity~%float64 AngularVelocity~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PRCtrlCmd)))
  "Returns full string definition for message of type 'PRCtrlCmd"
  (cl:format cl:nil "float64 longitudinalVelocity~%float64 latitudinalVelocity~%float64 AngularVelocity~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PRCtrlCmd>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PRCtrlCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'PRCtrlCmd
    (cl:cons ':longitudinalVelocity (longitudinalVelocity msg))
    (cl:cons ':latitudinalVelocity (latitudinalVelocity msg))
    (cl:cons ':AngularVelocity (AngularVelocity msg))
))
