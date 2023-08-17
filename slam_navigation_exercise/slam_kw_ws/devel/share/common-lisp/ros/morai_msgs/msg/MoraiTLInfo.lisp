; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude MoraiTLInfo.msg.html

(cl:defclass <MoraiTLInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (idx
    :reader idx
    :initarg :idx
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MoraiTLInfo (<MoraiTLInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiTLInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiTLInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<MoraiTLInfo> is deprecated: use morai_msgs-msg:MoraiTLInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MoraiTLInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:header-val is deprecated.  Use morai_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'idx-val :lambda-list '(m))
(cl:defmethod idx-val ((m <MoraiTLInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:idx-val is deprecated.  Use morai_msgs-msg:idx instead.")
  (idx m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <MoraiTLInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:status-val is deprecated.  Use morai_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiTLInfo>) ostream)
  "Serializes a message object of type '<MoraiTLInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'idx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'idx))
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiTLInfo>) istream)
  "Deserializes a message object of type '<MoraiTLInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'idx) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'idx) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiTLInfo>)))
  "Returns string type for a message object of type '<MoraiTLInfo>"
  "morai_msgs/MoraiTLInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiTLInfo)))
  "Returns string type for a message object of type 'MoraiTLInfo"
  "morai_msgs/MoraiTLInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiTLInfo>)))
  "Returns md5sum for a message object of type '<MoraiTLInfo>"
  "fd593c80e25e130dfe063cc055f61aaf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiTLInfo)))
  "Returns md5sum for a message object of type 'MoraiTLInfo"
  "fd593c80e25e130dfe063cc055f61aaf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiTLInfo>)))
  "Returns full string definition for message of type '<MoraiTLInfo>"
  (cl:format cl:nil "Header header~%string idx~%int16 status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiTLInfo)))
  "Returns full string definition for message of type 'MoraiTLInfo"
  (cl:format cl:nil "Header header~%string idx~%int16 status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiTLInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'idx))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiTLInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiTLInfo
    (cl:cons ':header (header msg))
    (cl:cons ':idx (idx msg))
    (cl:cons ':status (status msg))
))
