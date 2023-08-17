; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude GhostMessage.msg.html

(cl:defclass <GhostMessage> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (rotation
    :reader rotation
    :initarg :rotation
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0)
   (steering_angle
    :reader steering_angle
    :initarg :steering_angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass GhostMessage (<GhostMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GhostMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GhostMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<GhostMessage> is deprecated: use morai_msgs-msg:GhostMessage instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <GhostMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:position-val is deprecated.  Use morai_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'rotation-val :lambda-list '(m))
(cl:defmethod rotation-val ((m <GhostMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:rotation-val is deprecated.  Use morai_msgs-msg:rotation instead.")
  (rotation m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <GhostMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:velocity-val is deprecated.  Use morai_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'steering_angle-val :lambda-list '(m))
(cl:defmethod steering_angle-val ((m <GhostMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:steering_angle-val is deprecated.  Use morai_msgs-msg:steering_angle instead.")
  (steering_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GhostMessage>) ostream)
  "Serializes a message object of type '<GhostMessage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rotation) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steering_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GhostMessage>) istream)
  "Deserializes a message object of type '<GhostMessage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rotation) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GhostMessage>)))
  "Returns string type for a message object of type '<GhostMessage>"
  "morai_msgs/GhostMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GhostMessage)))
  "Returns string type for a message object of type 'GhostMessage"
  "morai_msgs/GhostMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GhostMessage>)))
  "Returns md5sum for a message object of type '<GhostMessage>"
  "9b0cee621629137441e1a9fb4484359a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GhostMessage)))
  "Returns md5sum for a message object of type 'GhostMessage"
  "9b0cee621629137441e1a9fb4484359a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GhostMessage>)))
  "Returns full string definition for message of type '<GhostMessage>"
  (cl:format cl:nil "geometry_msgs/Vector3 position~%geometry_msgs/Vector3 rotation~%float64 velocity~%float64 steering_angle~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GhostMessage)))
  "Returns full string definition for message of type 'GhostMessage"
  (cl:format cl:nil "geometry_msgs/Vector3 position~%geometry_msgs/Vector3 rotation~%float64 velocity~%float64 steering_angle~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GhostMessage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rotation))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GhostMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'GhostMessage
    (cl:cons ':position (position msg))
    (cl:cons ':rotation (rotation msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':steering_angle (steering_angle msg))
))
