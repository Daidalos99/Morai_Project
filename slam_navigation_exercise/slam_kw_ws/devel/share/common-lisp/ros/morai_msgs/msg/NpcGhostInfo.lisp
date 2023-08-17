; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude NpcGhostInfo.msg.html

(cl:defclass <NpcGhostInfo> (roslisp-msg-protocol:ros-message)
  ((unique_id
    :reader unique_id
    :initarg :unique_id
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (rpy
    :reader rpy
    :initarg :rpy
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass NpcGhostInfo (<NpcGhostInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NpcGhostInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NpcGhostInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<NpcGhostInfo> is deprecated: use morai_msgs-msg:NpcGhostInfo instead.")))

(cl:ensure-generic-function 'unique_id-val :lambda-list '(m))
(cl:defmethod unique_id-val ((m <NpcGhostInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:unique_id-val is deprecated.  Use morai_msgs-msg:unique_id instead.")
  (unique_id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <NpcGhostInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:name-val is deprecated.  Use morai_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <NpcGhostInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:position-val is deprecated.  Use morai_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'rpy-val :lambda-list '(m))
(cl:defmethod rpy-val ((m <NpcGhostInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:rpy-val is deprecated.  Use morai_msgs-msg:rpy instead.")
  (rpy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NpcGhostInfo>) ostream)
  "Serializes a message object of type '<NpcGhostInfo>"
  (cl:let* ((signed (cl:slot-value msg 'unique_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rpy) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NpcGhostInfo>) istream)
  "Deserializes a message object of type '<NpcGhostInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'unique_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rpy) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NpcGhostInfo>)))
  "Returns string type for a message object of type '<NpcGhostInfo>"
  "morai_msgs/NpcGhostInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NpcGhostInfo)))
  "Returns string type for a message object of type 'NpcGhostInfo"
  "morai_msgs/NpcGhostInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NpcGhostInfo>)))
  "Returns md5sum for a message object of type '<NpcGhostInfo>"
  "3290c3d676866a67769dc5339863ab69")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NpcGhostInfo)))
  "Returns md5sum for a message object of type 'NpcGhostInfo"
  "3290c3d676866a67769dc5339863ab69")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NpcGhostInfo>)))
  "Returns full string definition for message of type '<NpcGhostInfo>"
  (cl:format cl:nil "int32 unique_id~%string name~%~%geometry_msgs/Vector3 position~%geometry_msgs/Vector3 rpy~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NpcGhostInfo)))
  "Returns full string definition for message of type 'NpcGhostInfo"
  (cl:format cl:nil "int32 unique_id~%string name~%~%geometry_msgs/Vector3 position~%geometry_msgs/Vector3 rpy~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NpcGhostInfo>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rpy))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NpcGhostInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'NpcGhostInfo
    (cl:cons ':unique_id (unique_id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':position (position msg))
    (cl:cons ':rpy (rpy msg))
))
