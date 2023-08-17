; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude WaitForTick.msg.html

(cl:defclass <WaitForTick> (roslisp-msg-protocol:ros-message)
  ((user_id
    :reader user_id
    :initarg :user_id
    :type cl:string
    :initform "")
   (frame
    :reader frame
    :initarg :frame
    :type cl:integer
    :initform 0))
)

(cl:defclass WaitForTick (<WaitForTick>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaitForTick>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaitForTick)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<WaitForTick> is deprecated: use morai_msgs-msg:WaitForTick instead.")))

(cl:ensure-generic-function 'user_id-val :lambda-list '(m))
(cl:defmethod user_id-val ((m <WaitForTick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:user_id-val is deprecated.  Use morai_msgs-msg:user_id instead.")
  (user_id m))

(cl:ensure-generic-function 'frame-val :lambda-list '(m))
(cl:defmethod frame-val ((m <WaitForTick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:frame-val is deprecated.  Use morai_msgs-msg:frame instead.")
  (frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaitForTick>) ostream)
  "Serializes a message object of type '<WaitForTick>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaitForTick>) istream)
  "Deserializes a message object of type '<WaitForTick>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaitForTick>)))
  "Returns string type for a message object of type '<WaitForTick>"
  "morai_msgs/WaitForTick")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaitForTick)))
  "Returns string type for a message object of type 'WaitForTick"
  "morai_msgs/WaitForTick")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaitForTick>)))
  "Returns md5sum for a message object of type '<WaitForTick>"
  "2fc7bbc1a7fcecee1fda37b70774bdd8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaitForTick)))
  "Returns md5sum for a message object of type 'WaitForTick"
  "2fc7bbc1a7fcecee1fda37b70774bdd8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaitForTick>)))
  "Returns full string definition for message of type '<WaitForTick>"
  (cl:format cl:nil "string user_id~%uint64 frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaitForTick)))
  "Returns full string definition for message of type 'WaitForTick"
  (cl:format cl:nil "string user_id~%uint64 frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaitForTick>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'user_id))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaitForTick>))
  "Converts a ROS message object to a list"
  (cl:list 'WaitForTick
    (cl:cons ':user_id (user_id msg))
    (cl:cons ':frame (frame msg))
))
