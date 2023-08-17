; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude SyncModeRemoveObject.msg.html

(cl:defclass <SyncModeRemoveObject> (roslisp-msg-protocol:ros-message)
  ((unique_id
    :reader unique_id
    :initarg :unique_id
    :type cl:integer
    :initform 0)
   (frame
    :reader frame
    :initarg :frame
    :type cl:integer
    :initform 0))
)

(cl:defclass SyncModeRemoveObject (<SyncModeRemoveObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SyncModeRemoveObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SyncModeRemoveObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<SyncModeRemoveObject> is deprecated: use morai_msgs-msg:SyncModeRemoveObject instead.")))

(cl:ensure-generic-function 'unique_id-val :lambda-list '(m))
(cl:defmethod unique_id-val ((m <SyncModeRemoveObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:unique_id-val is deprecated.  Use morai_msgs-msg:unique_id instead.")
  (unique_id m))

(cl:ensure-generic-function 'frame-val :lambda-list '(m))
(cl:defmethod frame-val ((m <SyncModeRemoveObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:frame-val is deprecated.  Use morai_msgs-msg:frame instead.")
  (frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SyncModeRemoveObject>) ostream)
  "Serializes a message object of type '<SyncModeRemoveObject>"
  (cl:let* ((signed (cl:slot-value msg 'unique_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SyncModeRemoveObject>) istream)
  "Deserializes a message object of type '<SyncModeRemoveObject>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'unique_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SyncModeRemoveObject>)))
  "Returns string type for a message object of type '<SyncModeRemoveObject>"
  "morai_msgs/SyncModeRemoveObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SyncModeRemoveObject)))
  "Returns string type for a message object of type 'SyncModeRemoveObject"
  "morai_msgs/SyncModeRemoveObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SyncModeRemoveObject>)))
  "Returns md5sum for a message object of type '<SyncModeRemoveObject>"
  "e03aa402d08096d62169318ac743ac26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SyncModeRemoveObject)))
  "Returns md5sum for a message object of type 'SyncModeRemoveObject"
  "e03aa402d08096d62169318ac743ac26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SyncModeRemoveObject>)))
  "Returns full string definition for message of type '<SyncModeRemoveObject>"
  (cl:format cl:nil "int32 unique_id~%uint64 frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SyncModeRemoveObject)))
  "Returns full string definition for message of type 'SyncModeRemoveObject"
  (cl:format cl:nil "int32 unique_id~%uint64 frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SyncModeRemoveObject>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SyncModeRemoveObject>))
  "Converts a ROS message object to a list"
  (cl:list 'SyncModeRemoveObject
    (cl:cons ':unique_id (unique_id msg))
    (cl:cons ':frame (frame msg))
))
