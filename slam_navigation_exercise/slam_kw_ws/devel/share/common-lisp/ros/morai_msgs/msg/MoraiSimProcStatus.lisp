; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude MoraiSimProcStatus.msg.html

(cl:defclass <MoraiSimProcStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (latest_command_time
    :reader latest_command_time
    :initarg :latest_command_time
    :type cl:real
    :initform 0)
   (command_result
    :reader command_result
    :initarg :command_result
    :type cl:fixnum
    :initform 0)
   (current_mode
    :reader current_mode
    :initarg :current_mode
    :type cl:fixnum
    :initform 0)
   (current_status
    :reader current_status
    :initarg :current_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MoraiSimProcStatus (<MoraiSimProcStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoraiSimProcStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoraiSimProcStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<MoraiSimProcStatus> is deprecated: use morai_msgs-msg:MoraiSimProcStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MoraiSimProcStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:header-val is deprecated.  Use morai_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'latest_command_time-val :lambda-list '(m))
(cl:defmethod latest_command_time-val ((m <MoraiSimProcStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:latest_command_time-val is deprecated.  Use morai_msgs-msg:latest_command_time instead.")
  (latest_command_time m))

(cl:ensure-generic-function 'command_result-val :lambda-list '(m))
(cl:defmethod command_result-val ((m <MoraiSimProcStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:command_result-val is deprecated.  Use morai_msgs-msg:command_result instead.")
  (command_result m))

(cl:ensure-generic-function 'current_mode-val :lambda-list '(m))
(cl:defmethod current_mode-val ((m <MoraiSimProcStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:current_mode-val is deprecated.  Use morai_msgs-msg:current_mode instead.")
  (current_mode m))

(cl:ensure-generic-function 'current_status-val :lambda-list '(m))
(cl:defmethod current_status-val ((m <MoraiSimProcStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:current_status-val is deprecated.  Use morai_msgs-msg:current_status instead.")
  (current_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoraiSimProcStatus>) ostream)
  "Serializes a message object of type '<MoraiSimProcStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'latest_command_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'latest_command_time) (cl:floor (cl:slot-value msg 'latest_command_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command_result)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoraiSimProcStatus>) istream)
  "Deserializes a message object of type '<MoraiSimProcStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'latest_command_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command_result)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoraiSimProcStatus>)))
  "Returns string type for a message object of type '<MoraiSimProcStatus>"
  "morai_msgs/MoraiSimProcStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoraiSimProcStatus)))
  "Returns string type for a message object of type 'MoraiSimProcStatus"
  "morai_msgs/MoraiSimProcStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoraiSimProcStatus>)))
  "Returns md5sum for a message object of type '<MoraiSimProcStatus>"
  "533bc73de5b186ff7b72acd2d1130c9f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoraiSimProcStatus)))
  "Returns md5sum for a message object of type 'MoraiSimProcStatus"
  "533bc73de5b186ff7b72acd2d1130c9f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoraiSimProcStatus>)))
  "Returns full string definition for message of type '<MoraiSimProcStatus>"
  (cl:format cl:nil "Header header~%~%time latest_command_time~%uint8 command_result~%uint8 current_mode~%uint8 current_status~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoraiSimProcStatus)))
  "Returns full string definition for message of type 'MoraiSimProcStatus"
  (cl:format cl:nil "Header header~%~%time latest_command_time~%uint8 command_result~%uint8 current_mode~%uint8 current_status~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoraiSimProcStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoraiSimProcStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MoraiSimProcStatus
    (cl:cons ':header (header msg))
    (cl:cons ':latest_command_time (latest_command_time msg))
    (cl:cons ':command_result (command_result msg))
    (cl:cons ':current_mode (current_mode msg))
    (cl:cons ':current_status (current_status msg))
))
