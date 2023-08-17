; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude PRStatus.msg.html

(cl:defclass <PRStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (position_X
    :reader position_X
    :initarg :position_X
    :type cl:float
    :initform 0.0)
   (position_Y
    :reader position_Y
    :initarg :position_Y
    :type cl:float
    :initform 0.0)
   (position_Z
    :reader position_Z
    :initarg :position_Z
    :type cl:float
    :initform 0.0)
   (heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0)
   (mountStatus
    :reader mountStatus
    :initarg :mountStatus
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PRStatus (<PRStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PRStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PRStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<PRStatus> is deprecated: use morai_msgs-msg:PRStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:header-val is deprecated.  Use morai_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'position_X-val :lambda-list '(m))
(cl:defmethod position_X-val ((m <PRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:position_X-val is deprecated.  Use morai_msgs-msg:position_X instead.")
  (position_X m))

(cl:ensure-generic-function 'position_Y-val :lambda-list '(m))
(cl:defmethod position_Y-val ((m <PRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:position_Y-val is deprecated.  Use morai_msgs-msg:position_Y instead.")
  (position_Y m))

(cl:ensure-generic-function 'position_Z-val :lambda-list '(m))
(cl:defmethod position_Z-val ((m <PRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:position_Z-val is deprecated.  Use morai_msgs-msg:position_Z instead.")
  (position_Z m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <PRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:heading-val is deprecated.  Use morai_msgs-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'mountStatus-val :lambda-list '(m))
(cl:defmethod mountStatus-val ((m <PRStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:mountStatus-val is deprecated.  Use morai_msgs-msg:mountStatus instead.")
  (mountStatus m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PRStatus>) ostream)
  "Serializes a message object of type '<PRStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position_X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position_Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position_Z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mountStatus) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PRStatus>) istream)
  "Deserializes a message object of type '<PRStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_X) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_Y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_Z) (roslisp-utils:decode-single-float-bits bits)))
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
    (cl:setf (cl:slot-value msg 'mountStatus) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PRStatus>)))
  "Returns string type for a message object of type '<PRStatus>"
  "morai_msgs/PRStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PRStatus)))
  "Returns string type for a message object of type 'PRStatus"
  "morai_msgs/PRStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PRStatus>)))
  "Returns md5sum for a message object of type '<PRStatus>"
  "3717aef8039c3cd46c25aa8ac584e9d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PRStatus)))
  "Returns md5sum for a message object of type 'PRStatus"
  "3717aef8039c3cd46c25aa8ac584e9d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PRStatus>)))
  "Returns full string definition for message of type '<PRStatus>"
  (cl:format cl:nil "Header header~%~%float32 position_X~%float32 position_Y~%float32 position_Z~%float64 heading~%bool mountStatus~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PRStatus)))
  "Returns full string definition for message of type 'PRStatus"
  (cl:format cl:nil "Header header~%~%float32 position_X~%float32 position_Y~%float32 position_Z~%float64 heading~%bool mountStatus~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PRStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PRStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'PRStatus
    (cl:cons ':header (header msg))
    (cl:cons ':position_X (position_X msg))
    (cl:cons ':position_Y (position_Y msg))
    (cl:cons ':position_Z (position_Z msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':mountStatus (mountStatus msg))
))
