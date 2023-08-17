; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude SyncModeInfo.msg.html

(cl:defclass <SyncModeInfo> (roslisp-msg-protocol:ros-message)
  ((master_id
    :reader master_id
    :initarg :master_id
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil)
   (frame
    :reader frame
    :initarg :frame
    :type cl:integer
    :initform 0)
   (can_send_tick
    :reader can_send_tick
    :initarg :can_send_tick
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SyncModeInfo (<SyncModeInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SyncModeInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SyncModeInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<SyncModeInfo> is deprecated: use morai_msgs-msg:SyncModeInfo instead.")))

(cl:ensure-generic-function 'master_id-val :lambda-list '(m))
(cl:defmethod master_id-val ((m <SyncModeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:master_id-val is deprecated.  Use morai_msgs-msg:master_id instead.")
  (master_id m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SyncModeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:status-val is deprecated.  Use morai_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'frame-val :lambda-list '(m))
(cl:defmethod frame-val ((m <SyncModeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:frame-val is deprecated.  Use morai_msgs-msg:frame instead.")
  (frame m))

(cl:ensure-generic-function 'can_send_tick-val :lambda-list '(m))
(cl:defmethod can_send_tick-val ((m <SyncModeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:can_send_tick-val is deprecated.  Use morai_msgs-msg:can_send_tick instead.")
  (can_send_tick m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SyncModeInfo>) ostream)
  "Serializes a message object of type '<SyncModeInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'master_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'master_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'can_send_tick) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SyncModeInfo>) istream)
  "Deserializes a message object of type '<SyncModeInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'master_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'master_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'can_send_tick) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SyncModeInfo>)))
  "Returns string type for a message object of type '<SyncModeInfo>"
  "morai_msgs/SyncModeInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SyncModeInfo)))
  "Returns string type for a message object of type 'SyncModeInfo"
  "morai_msgs/SyncModeInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SyncModeInfo>)))
  "Returns md5sum for a message object of type '<SyncModeInfo>"
  "6d9bc8fdf24a57461d5bcf823494e818")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SyncModeInfo)))
  "Returns md5sum for a message object of type 'SyncModeInfo"
  "6d9bc8fdf24a57461d5bcf823494e818")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SyncModeInfo>)))
  "Returns full string definition for message of type '<SyncModeInfo>"
  (cl:format cl:nil "string master_id~%bool status~%uint64 frame~%~%bool can_send_tick~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SyncModeInfo)))
  "Returns full string definition for message of type 'SyncModeInfo"
  (cl:format cl:nil "string master_id~%bool status~%uint64 frame~%~%bool can_send_tick~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SyncModeInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'master_id))
     1
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SyncModeInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SyncModeInfo
    (cl:cons ':master_id (master_id msg))
    (cl:cons ':status (status msg))
    (cl:cons ':frame (frame msg))
    (cl:cons ':can_send_tick (can_send_tick msg))
))
