; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude SyncModeSetGear.msg.html

(cl:defclass <SyncModeSetGear> (roslisp-msg-protocol:ros-message)
  ((gear
    :reader gear
    :initarg :gear
    :type cl:integer
    :initform 0)
   (frame
    :reader frame
    :initarg :frame
    :type cl:integer
    :initform 0))
)

(cl:defclass SyncModeSetGear (<SyncModeSetGear>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SyncModeSetGear>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SyncModeSetGear)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<SyncModeSetGear> is deprecated: use morai_msgs-msg:SyncModeSetGear instead.")))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <SyncModeSetGear>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:gear-val is deprecated.  Use morai_msgs-msg:gear instead.")
  (gear m))

(cl:ensure-generic-function 'frame-val :lambda-list '(m))
(cl:defmethod frame-val ((m <SyncModeSetGear>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:frame-val is deprecated.  Use morai_msgs-msg:frame instead.")
  (frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SyncModeSetGear>) ostream)
  "Serializes a message object of type '<SyncModeSetGear>"
  (cl:let* ((signed (cl:slot-value msg 'gear)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'frame)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SyncModeSetGear>) istream)
  "Deserializes a message object of type '<SyncModeSetGear>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gear) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'frame)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SyncModeSetGear>)))
  "Returns string type for a message object of type '<SyncModeSetGear>"
  "morai_msgs/SyncModeSetGear")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SyncModeSetGear)))
  "Returns string type for a message object of type 'SyncModeSetGear"
  "morai_msgs/SyncModeSetGear")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SyncModeSetGear>)))
  "Returns md5sum for a message object of type '<SyncModeSetGear>"
  "868a6bec5d44170250553f4368c5aafa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SyncModeSetGear)))
  "Returns md5sum for a message object of type 'SyncModeSetGear"
  "868a6bec5d44170250553f4368c5aafa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SyncModeSetGear>)))
  "Returns full string definition for message of type '<SyncModeSetGear>"
  (cl:format cl:nil "int32 gear~%uint64 frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SyncModeSetGear)))
  "Returns full string definition for message of type 'SyncModeSetGear"
  (cl:format cl:nil "int32 gear~%uint64 frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SyncModeSetGear>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SyncModeSetGear>))
  "Converts a ROS message object to a list"
  (cl:list 'SyncModeSetGear
    (cl:cons ':gear (gear msg))
    (cl:cons ':frame (frame msg))
))
