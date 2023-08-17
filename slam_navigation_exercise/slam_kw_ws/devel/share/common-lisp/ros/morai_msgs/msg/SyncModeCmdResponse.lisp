; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude SyncModeCmdResponse.msg.html

(cl:defclass <SyncModeCmdResponse> (roslisp-msg-protocol:ros-message)
  ((user_id
    :reader user_id
    :initarg :user_id
    :type cl:string
    :initform "")
   (frame
    :reader frame
    :initarg :frame
    :type cl:integer
    :initform 0)
   (result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (time_step
    :reader time_step
    :initarg :time_step
    :type cl:integer
    :initform 0))
)

(cl:defclass SyncModeCmdResponse (<SyncModeCmdResponse>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SyncModeCmdResponse>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SyncModeCmdResponse)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<SyncModeCmdResponse> is deprecated: use morai_msgs-msg:SyncModeCmdResponse instead.")))

(cl:ensure-generic-function 'user_id-val :lambda-list '(m))
(cl:defmethod user_id-val ((m <SyncModeCmdResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:user_id-val is deprecated.  Use morai_msgs-msg:user_id instead.")
  (user_id m))

(cl:ensure-generic-function 'frame-val :lambda-list '(m))
(cl:defmethod frame-val ((m <SyncModeCmdResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:frame-val is deprecated.  Use morai_msgs-msg:frame instead.")
  (frame m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SyncModeCmdResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:result-val is deprecated.  Use morai_msgs-msg:result instead.")
  (result m))

(cl:ensure-generic-function 'time_step-val :lambda-list '(m))
(cl:defmethod time_step-val ((m <SyncModeCmdResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:time_step-val is deprecated.  Use morai_msgs-msg:time_step instead.")
  (time_step m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SyncModeCmdResponse>) ostream)
  "Serializes a message object of type '<SyncModeCmdResponse>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'user_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'user_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_step)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_step)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_step)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_step)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SyncModeCmdResponse>) istream)
  "Deserializes a message object of type '<SyncModeCmdResponse>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'user_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'user_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_step)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_step)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_step)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_step)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SyncModeCmdResponse>)))
  "Returns string type for a message object of type '<SyncModeCmdResponse>"
  "morai_msgs/SyncModeCmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SyncModeCmdResponse)))
  "Returns string type for a message object of type 'SyncModeCmdResponse"
  "morai_msgs/SyncModeCmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SyncModeCmdResponse>)))
  "Returns md5sum for a message object of type '<SyncModeCmdResponse>"
  "ea7255c2910d9b74a04977095711f9e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SyncModeCmdResponse)))
  "Returns md5sum for a message object of type 'SyncModeCmdResponse"
  "ea7255c2910d9b74a04977095711f9e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SyncModeCmdResponse>)))
  "Returns full string definition for message of type '<SyncModeCmdResponse>"
  (cl:format cl:nil "string user_id~%uint64 frame~%bool result~%uint32 time_step~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SyncModeCmdResponse)))
  "Returns full string definition for message of type 'SyncModeCmdResponse"
  (cl:format cl:nil "string user_id~%uint64 frame~%bool result~%uint32 time_step~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SyncModeCmdResponse>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'user_id))
     8
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SyncModeCmdResponse>))
  "Converts a ROS message object to a list"
  (cl:list 'SyncModeCmdResponse
    (cl:cons ':user_id (user_id msg))
    (cl:cons ':frame (frame msg))
    (cl:cons ':result (result msg))
    (cl:cons ':time_step (time_step msg))
))
