; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude TrafficLight.msg.html

(cl:defclass <TrafficLight> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (light
    :reader light
    :initarg :light
    :type cl:fixnum
    :initform 0)
   (num_of_light
    :reader num_of_light
    :initarg :num_of_light
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficLight (<TrafficLight>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLight>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLight)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<TrafficLight> is deprecated: use morai_msgs-msg:TrafficLight instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:header-val is deprecated.  Use morai_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'light-val :lambda-list '(m))
(cl:defmethod light-val ((m <TrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:light-val is deprecated.  Use morai_msgs-msg:light instead.")
  (light m))

(cl:ensure-generic-function 'num_of_light-val :lambda-list '(m))
(cl:defmethod num_of_light-val ((m <TrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:num_of_light-val is deprecated.  Use morai_msgs-msg:num_of_light instead.")
  (num_of_light m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLight>) ostream)
  "Serializes a message object of type '<TrafficLight>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'light)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_of_light)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLight>) istream)
  "Deserializes a message object of type '<TrafficLight>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'light) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_of_light) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLight>)))
  "Returns string type for a message object of type '<TrafficLight>"
  "morai_msgs/TrafficLight")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLight)))
  "Returns string type for a message object of type 'TrafficLight"
  "morai_msgs/TrafficLight")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLight>)))
  "Returns md5sum for a message object of type '<TrafficLight>"
  "480e75f7f0e8a7ff951bb52c9de43c72")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLight)))
  "Returns md5sum for a message object of type 'TrafficLight"
  "480e75f7f0e8a7ff951bb52c9de43c72")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLight>)))
  "Returns full string definition for message of type '<TrafficLight>"
  (cl:format cl:nil "Header header~%int16 light~%int16 num_of_light~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLight)))
  "Returns full string definition for message of type 'TrafficLight"
  (cl:format cl:nil "Header header~%int16 light~%int16 num_of_light~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLight>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLight>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLight
    (cl:cons ':header (header msg))
    (cl:cons ':light (light msg))
    (cl:cons ':num_of_light (num_of_light msg))
))
