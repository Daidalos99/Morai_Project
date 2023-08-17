; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude MoraiTLIndex.msg.html

(cl:defclass <MoraiTLIndex> (roslisp-msg-protocol:ros-message)
  ((idx
    :reader idx
    :initarg :idx
    :type cl:string
    :initform ""))
)

(cl:defclass MoraiTLIndex (<MoraiTLIndex>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiTLIndex>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiTLIndex)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<MoraiTLIndex> is deprecated: use morai_msgs-msg:MoraiTLIndex instead.")))

(cl:ensure-generic-function 'idx-val :lambda-list '(m))
(cl:defmethod idx-val ((m <MoraiTLIndex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:idx-val is deprecated.  Use morai_msgs-msg:idx instead.")
  (idx m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiTLIndex>) ostream)
  "Serializes a message object of type '<MoraiTLIndex>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'idx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'idx))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiTLIndex>) istream)
  "Deserializes a message object of type '<MoraiTLIndex>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'idx) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'idx) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiTLIndex>)))
  "Returns string type for a message object of type '<MoraiTLIndex>"
  "morai_msgs/MoraiTLIndex")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiTLIndex)))
  "Returns string type for a message object of type 'MoraiTLIndex"
  "morai_msgs/MoraiTLIndex")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiTLIndex>)))
  "Returns md5sum for a message object of type '<MoraiTLIndex>"
  "71e0c15635f115962468861139afa95e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiTLIndex)))
  "Returns md5sum for a message object of type 'MoraiTLIndex"
  "71e0c15635f115962468861139afa95e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiTLIndex>)))
  "Returns full string definition for message of type '<MoraiTLIndex>"
  (cl:format cl:nil "string idx~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiTLIndex)))
  "Returns full string definition for message of type 'MoraiTLIndex"
  (cl:format cl:nil "string idx~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiTLIndex>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'idx))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiTLIndex>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiTLIndex
    (cl:cons ':idx (idx msg))
))
