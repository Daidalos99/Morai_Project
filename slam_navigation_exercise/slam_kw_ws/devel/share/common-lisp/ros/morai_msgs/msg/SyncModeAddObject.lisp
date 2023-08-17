; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude SyncModeAddObject.msg.html

(cl:defclass <SyncModeAddObject> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0)
   (frame
    :reader frame
    :initarg :frame
    :type cl:integer
    :initform 0))
)

(cl:defclass SyncModeAddObject (<SyncModeAddObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SyncModeAddObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SyncModeAddObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<SyncModeAddObject> is deprecated: use morai_msgs-msg:SyncModeAddObject instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SyncModeAddObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:name-val is deprecated.  Use morai_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <SyncModeAddObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:position-val is deprecated.  Use morai_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <SyncModeAddObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:heading-val is deprecated.  Use morai_msgs-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'frame-val :lambda-list '(m))
(cl:defmethod frame-val ((m <SyncModeAddObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:frame-val is deprecated.  Use morai_msgs-msg:frame instead.")
  (frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SyncModeAddObject>) ostream)
  "Serializes a message object of type '<SyncModeAddObject>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'frame)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SyncModeAddObject>) istream)
  "Deserializes a message object of type '<SyncModeAddObject>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading) (roslisp-utils:decode-double-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SyncModeAddObject>)))
  "Returns string type for a message object of type '<SyncModeAddObject>"
  "morai_msgs/SyncModeAddObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SyncModeAddObject)))
  "Returns string type for a message object of type 'SyncModeAddObject"
  "morai_msgs/SyncModeAddObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SyncModeAddObject>)))
  "Returns md5sum for a message object of type '<SyncModeAddObject>"
  "6d5eb87e0fc34ed28764f286444e7f82")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SyncModeAddObject)))
  "Returns md5sum for a message object of type 'SyncModeAddObject"
  "6d5eb87e0fc34ed28764f286444e7f82")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SyncModeAddObject>)))
  "Returns full string definition for message of type '<SyncModeAddObject>"
  (cl:format cl:nil "string name~%geometry_msgs/Vector3 position~%float64 heading~%uint64 frame~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SyncModeAddObject)))
  "Returns full string definition for message of type 'SyncModeAddObject"
  (cl:format cl:nil "string name~%geometry_msgs/Vector3 position~%float64 heading~%uint64 frame~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SyncModeAddObject>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SyncModeAddObject>))
  "Converts a ROS message object to a list"
  (cl:list 'SyncModeAddObject
    (cl:cons ':name (name msg))
    (cl:cons ':position (position msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':frame (frame msg))
))
