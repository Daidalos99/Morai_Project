; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude SetTrafficLight.msg.html

(cl:defclass <SetTrafficLight> (roslisp-msg-protocol:ros-message)
  ((trafficLightIndex
    :reader trafficLightIndex
    :initarg :trafficLightIndex
    :type cl:string
    :initform "")
   (trafficLightStatus
    :reader trafficLightStatus
    :initarg :trafficLightStatus
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetTrafficLight (<SetTrafficLight>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTrafficLight>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTrafficLight)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<SetTrafficLight> is deprecated: use morai_msgs-msg:SetTrafficLight instead.")))

(cl:ensure-generic-function 'trafficLightIndex-val :lambda-list '(m))
(cl:defmethod trafficLightIndex-val ((m <SetTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:trafficLightIndex-val is deprecated.  Use morai_msgs-msg:trafficLightIndex instead.")
  (trafficLightIndex m))

(cl:ensure-generic-function 'trafficLightStatus-val :lambda-list '(m))
(cl:defmethod trafficLightStatus-val ((m <SetTrafficLight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:trafficLightStatus-val is deprecated.  Use morai_msgs-msg:trafficLightStatus instead.")
  (trafficLightStatus m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTrafficLight>) ostream)
  "Serializes a message object of type '<SetTrafficLight>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'trafficLightIndex))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'trafficLightIndex))
  (cl:let* ((signed (cl:slot-value msg 'trafficLightStatus)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTrafficLight>) istream)
  "Deserializes a message object of type '<SetTrafficLight>"
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
      (cl:setf (cl:slot-value msg 'trafficLightStatus) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTrafficLight>)))
  "Returns string type for a message object of type '<SetTrafficLight>"
  "morai_msgs/SetTrafficLight")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTrafficLight)))
  "Returns string type for a message object of type 'SetTrafficLight"
  "morai_msgs/SetTrafficLight")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTrafficLight>)))
  "Returns md5sum for a message object of type '<SetTrafficLight>"
  "bd27357f4982612d0e2067eb726f8617")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTrafficLight)))
  "Returns md5sum for a message object of type 'SetTrafficLight"
  "bd27357f4982612d0e2067eb726f8617")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTrafficLight>)))
  "Returns full string definition for message of type '<SetTrafficLight>"
  (cl:format cl:nil "string trafficLightIndex~%int16 trafficLightStatus~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTrafficLight)))
  "Returns full string definition for message of type 'SetTrafficLight"
  (cl:format cl:nil "string trafficLightIndex~%int16 trafficLightStatus~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTrafficLight>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'trafficLightIndex))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTrafficLight>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTrafficLight
    (cl:cons ':trafficLightIndex (trafficLightIndex msg))
    (cl:cons ':trafficLightStatus (trafficLightStatus msg))
))
