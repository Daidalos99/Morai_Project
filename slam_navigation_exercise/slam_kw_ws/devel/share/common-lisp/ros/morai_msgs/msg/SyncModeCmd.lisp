; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude SyncModeCmd.msg.html

(cl:defclass <SyncModeCmd> (roslisp-msg-protocol:ros-message)
  ((user_id
    :reader user_id
    :initarg :user_id
    :type cl:string
    :initform "")
   (start_sync_mode
    :reader start_sync_mode
    :initarg :start_sync_mode
    :type cl:boolean
    :initform cl:nil)
   (time_step
    :reader time_step
    :initarg :time_step
    :type cl:integer
    :initform 0))
)

(cl:defclass SyncModeCmd (<SyncModeCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SyncModeCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SyncModeCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<SyncModeCmd> is deprecated: use morai_msgs-msg:SyncModeCmd instead.")))

(cl:ensure-generic-function 'user_id-val :lambda-list '(m))
(cl:defmethod user_id-val ((m <SyncModeCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:user_id-val is deprecated.  Use morai_msgs-msg:user_id instead.")
  (user_id m))

(cl:ensure-generic-function 'start_sync_mode-val :lambda-list '(m))
(cl:defmethod start_sync_mode-val ((m <SyncModeCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:start_sync_mode-val is deprecated.  Use morai_msgs-msg:start_sync_mode instead.")
  (start_sync_mode m))

(cl:ensure-generic-function 'time_step-val :lambda-list '(m))
(cl:defmethod time_step-val ((m <SyncModeCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:time_step-val is deprecated.  Use morai_msgs-msg:time_step instead.")
  (time_step m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SyncModeCmd>) ostream)
  "Serializes a message object of type '<SyncModeCmd>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'user_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'user_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'start_sync_mode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_step)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_step)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_step)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_step)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SyncModeCmd>) istream)
  "Deserializes a message object of type '<SyncModeCmd>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'user_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'user_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'start_sync_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_step)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_step)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_step)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_step)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SyncModeCmd>)))
  "Returns string type for a message object of type '<SyncModeCmd>"
  "morai_msgs/SyncModeCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SyncModeCmd)))
  "Returns string type for a message object of type 'SyncModeCmd"
  "morai_msgs/SyncModeCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SyncModeCmd>)))
  "Returns md5sum for a message object of type '<SyncModeCmd>"
  "1cccc3e22a995ad33b1d0a9da180e8c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SyncModeCmd)))
  "Returns md5sum for a message object of type 'SyncModeCmd"
  "1cccc3e22a995ad33b1d0a9da180e8c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SyncModeCmd>)))
  "Returns full string definition for message of type '<SyncModeCmd>"
  (cl:format cl:nil "string user_id~%bool start_sync_mode~%uint32 time_step~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SyncModeCmd)))
  "Returns full string definition for message of type 'SyncModeCmd"
  (cl:format cl:nil "string user_id~%bool start_sync_mode~%uint32 time_step~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SyncModeCmd>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'user_id))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SyncModeCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'SyncModeCmd
    (cl:cons ':user_id (user_id msg))
    (cl:cons ':start_sync_mode (start_sync_mode msg))
    (cl:cons ':time_step (time_step msg))
))
