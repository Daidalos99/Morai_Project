; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude PREvent.msg.html

(cl:defclass <PREvent> (roslisp-msg-protocol:ros-message)
  ((mountVehicle
    :reader mountVehicle
    :initarg :mountVehicle
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PREvent (<PREvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PREvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PREvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<PREvent> is deprecated: use morai_msgs-msg:PREvent instead.")))

(cl:ensure-generic-function 'mountVehicle-val :lambda-list '(m))
(cl:defmethod mountVehicle-val ((m <PREvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:mountVehicle-val is deprecated.  Use morai_msgs-msg:mountVehicle instead.")
  (mountVehicle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PREvent>) ostream)
  "Serializes a message object of type '<PREvent>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mountVehicle) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PREvent>) istream)
  "Deserializes a message object of type '<PREvent>"
    (cl:setf (cl:slot-value msg 'mountVehicle) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PREvent>)))
  "Returns string type for a message object of type '<PREvent>"
  "morai_msgs/PREvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PREvent)))
  "Returns string type for a message object of type 'PREvent"
  "morai_msgs/PREvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PREvent>)))
  "Returns md5sum for a message object of type '<PREvent>"
  "ab98a8b314ee24dcbc91e59253d3a584")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PREvent)))
  "Returns md5sum for a message object of type 'PREvent"
  "ab98a8b314ee24dcbc91e59253d3a584")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PREvent>)))
  "Returns full string definition for message of type '<PREvent>"
  (cl:format cl:nil "bool mountVehicle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PREvent)))
  "Returns full string definition for message of type 'PREvent"
  (cl:format cl:nil "bool mountVehicle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PREvent>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PREvent>))
  "Converts a ROS message object to a list"
  (cl:list 'PREvent
    (cl:cons ':mountVehicle (mountVehicle msg))
))
