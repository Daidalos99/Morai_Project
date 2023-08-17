; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude EventInfo.msg.html

(cl:defclass <EventInfo> (roslisp-msg-protocol:ros-message)
  ((option
    :reader option
    :initarg :option
    :type cl:fixnum
    :initform 0)
   (ctrl_mode
    :reader ctrl_mode
    :initarg :ctrl_mode
    :type cl:integer
    :initform 0)
   (gear
    :reader gear
    :initarg :gear
    :type cl:integer
    :initform 0)
   (lamps
    :reader lamps
    :initarg :lamps
    :type morai_msgs-msg:Lamps
    :initform (cl:make-instance 'morai_msgs-msg:Lamps))
   (set_pause
    :reader set_pause
    :initarg :set_pause
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EventInfo (<EventInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EventInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EventInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<EventInfo> is deprecated: use morai_msgs-msg:EventInfo instead.")))

(cl:ensure-generic-function 'option-val :lambda-list '(m))
(cl:defmethod option-val ((m <EventInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:option-val is deprecated.  Use morai_msgs-msg:option instead.")
  (option m))

(cl:ensure-generic-function 'ctrl_mode-val :lambda-list '(m))
(cl:defmethod ctrl_mode-val ((m <EventInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:ctrl_mode-val is deprecated.  Use morai_msgs-msg:ctrl_mode instead.")
  (ctrl_mode m))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <EventInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:gear-val is deprecated.  Use morai_msgs-msg:gear instead.")
  (gear m))

(cl:ensure-generic-function 'lamps-val :lambda-list '(m))
(cl:defmethod lamps-val ((m <EventInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:lamps-val is deprecated.  Use morai_msgs-msg:lamps instead.")
  (lamps m))

(cl:ensure-generic-function 'set_pause-val :lambda-list '(m))
(cl:defmethod set_pause-val ((m <EventInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:set_pause-val is deprecated.  Use morai_msgs-msg:set_pause instead.")
  (set_pause m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EventInfo>) ostream)
  "Serializes a message object of type '<EventInfo>"
  (cl:let* ((signed (cl:slot-value msg 'option)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ctrl_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gear)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lamps) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_pause) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EventInfo>) istream)
  "Deserializes a message object of type '<EventInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'option) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ctrl_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gear) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lamps) istream)
    (cl:setf (cl:slot-value msg 'set_pause) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EventInfo>)))
  "Returns string type for a message object of type '<EventInfo>"
  "morai_msgs/EventInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EventInfo)))
  "Returns string type for a message object of type 'EventInfo"
  "morai_msgs/EventInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EventInfo>)))
  "Returns md5sum for a message object of type '<EventInfo>"
  "3525edb8661dfd06b6e59bbcb7d475b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EventInfo)))
  "Returns md5sum for a message object of type 'EventInfo"
  "3525edb8661dfd06b6e59bbcb7d475b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EventInfo>)))
  "Returns full string definition for message of type '<EventInfo>"
  (cl:format cl:nil "int8 option~%int32 ctrl_mode~%int32 gear~%Lamps lamps~%bool set_pause~%~%================================================================================~%MSG: morai_msgs/Lamps~%Header header~%~%int8 turnSignal~%int8 emergencySignal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EventInfo)))
  "Returns full string definition for message of type 'EventInfo"
  (cl:format cl:nil "int8 option~%int32 ctrl_mode~%int32 gear~%Lamps lamps~%bool set_pause~%~%================================================================================~%MSG: morai_msgs/Lamps~%Header header~%~%int8 turnSignal~%int8 emergencySignal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EventInfo>))
  (cl:+ 0
     1
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lamps))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EventInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'EventInfo
    (cl:cons ':option (option msg))
    (cl:cons ':ctrl_mode (ctrl_mode msg))
    (cl:cons ':gear (gear msg))
    (cl:cons ':lamps (lamps msg))
    (cl:cons ':set_pause (set_pause msg))
))
