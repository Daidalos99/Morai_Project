; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude GetTrafficLightStatus.msg.html

(cl:defclass <GetTrafficLightStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (trafficLightIndex
    :reader trafficLightIndex
    :initarg :trafficLightIndex
    :type cl:string
    :initform "")
   (trafficLightType
    :reader trafficLightType
    :initarg :trafficLightType
    :type cl:fixnum
    :initform 0)
   (trafficLightStatus
    :reader trafficLightStatus
    :initarg :trafficLightStatus
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetTrafficLightStatus (<GetTrafficLightStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTrafficLightStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTrafficLightStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<GetTrafficLightStatus> is deprecated: use morai_msgs-msg:GetTrafficLightStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GetTrafficLightStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:header-val is deprecated.  Use morai_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'trafficLightIndex-val :lambda-list '(m))
(cl:defmethod trafficLightIndex-val ((m <GetTrafficLightStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:trafficLightIndex-val is deprecated.  Use morai_msgs-msg:trafficLightIndex instead.")
  (trafficLightIndex m))

(cl:ensure-generic-function 'trafficLightType-val :lambda-list '(m))
(cl:defmethod trafficLightType-val ((m <GetTrafficLightStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:trafficLightType-val is deprecated.  Use morai_msgs-msg:trafficLightType instead.")
  (trafficLightType m))

(cl:ensure-generic-function 'trafficLightStatus-val :lambda-list '(m))
(cl:defmethod trafficLightStatus-val ((m <GetTrafficLightStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:trafficLightStatus-val is deprecated.  Use morai_msgs-msg:trafficLightStatus instead.")
  (trafficLightStatus m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTrafficLightStatus>) ostream)
  "Serializes a message object of type '<GetTrafficLightStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'trafficLightIndex))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'trafficLightIndex))
  (cl:let* ((signed (cl:slot-value msg 'trafficLightType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'trafficLightStatus)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTrafficLightStatus>) istream)
  "Deserializes a message object of type '<GetTrafficLightStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trafficLightIndex) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'trafficLightIndex) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trafficLightType) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trafficLightStatus) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTrafficLightStatus>)))
  "Returns string type for a message object of type '<GetTrafficLightStatus>"
  "morai_msgs/GetTrafficLightStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTrafficLightStatus)))
  "Returns string type for a message object of type 'GetTrafficLightStatus"
  "morai_msgs/GetTrafficLightStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTrafficLightStatus>)))
  "Returns md5sum for a message object of type '<GetTrafficLightStatus>"
  "a8401cc4d848efd41d190d36c9ab14ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTrafficLightStatus)))
  "Returns md5sum for a message object of type 'GetTrafficLightStatus"
  "a8401cc4d848efd41d190d36c9ab14ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTrafficLightStatus>)))
  "Returns full string definition for message of type '<GetTrafficLightStatus>"
  (cl:format cl:nil "Header header~%~%string trafficLightIndex~%int16 trafficLightType~%int16 trafficLightStatus~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTrafficLightStatus)))
  "Returns full string definition for message of type 'GetTrafficLightStatus"
  (cl:format cl:nil "Header header~%~%string trafficLightIndex~%int16 trafficLightType~%int16 trafficLightStatus~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTrafficLightStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'trafficLightIndex))
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTrafficLightStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTrafficLightStatus
    (cl:cons ':header (header msg))
    (cl:cons ':trafficLightIndex (trafficLightIndex msg))
    (cl:cons ':trafficLightType (trafficLightType msg))
    (cl:cons ':trafficLightStatus (trafficLightStatus msg))
))
