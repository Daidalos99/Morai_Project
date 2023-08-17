; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude Lamps.msg.html

(cl:defclass <Lamps> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (turnSignal
    :reader turnSignal
    :initarg :turnSignal
    :type cl:fixnum
    :initform 0)
   (emergencySignal
    :reader emergencySignal
    :initarg :emergencySignal
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Lamps (<Lamps>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Lamps>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Lamps)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<Lamps> is deprecated: use morai_msgs-msg:Lamps instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Lamps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:header-val is deprecated.  Use morai_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'turnSignal-val :lambda-list '(m))
(cl:defmethod turnSignal-val ((m <Lamps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:turnSignal-val is deprecated.  Use morai_msgs-msg:turnSignal instead.")
  (turnSignal m))

(cl:ensure-generic-function 'emergencySignal-val :lambda-list '(m))
(cl:defmethod emergencySignal-val ((m <Lamps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:emergencySignal-val is deprecated.  Use morai_msgs-msg:emergencySignal instead.")
  (emergencySignal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Lamps>) ostream)
  "Serializes a message object of type '<Lamps>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'turnSignal)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'emergencySignal)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Lamps>) istream)
  "Deserializes a message object of type '<Lamps>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'turnSignal) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'emergencySignal) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Lamps>)))
  "Returns string type for a message object of type '<Lamps>"
  "morai_msgs/Lamps")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Lamps)))
  "Returns string type for a message object of type 'Lamps"
  "morai_msgs/Lamps")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Lamps>)))
  "Returns md5sum for a message object of type '<Lamps>"
  "c5ccafcb539dda544420a20f26b1f9a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Lamps)))
  "Returns md5sum for a message object of type 'Lamps"
  "c5ccafcb539dda544420a20f26b1f9a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Lamps>)))
  "Returns full string definition for message of type '<Lamps>"
  (cl:format cl:nil "Header header~%~%int8 turnSignal~%int8 emergencySignal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Lamps)))
  "Returns full string definition for message of type 'Lamps"
  (cl:format cl:nil "Header header~%~%int8 turnSignal~%int8 emergencySignal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Lamps>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Lamps>))
  "Converts a ROS message object to a list"
  (cl:list 'Lamps
    (cl:cons ':header (header msg))
    (cl:cons ':turnSignal (turnSignal msg))
    (cl:cons ':emergencySignal (emergencySignal msg))
))
