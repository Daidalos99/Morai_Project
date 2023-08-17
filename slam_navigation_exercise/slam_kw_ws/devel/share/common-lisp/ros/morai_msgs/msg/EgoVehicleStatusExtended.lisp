; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude EgoVehicleStatusExtended.msg.html

(cl:defclass <EgoVehicleStatusExtended> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (unique_id
    :reader unique_id
    :initarg :unique_id
    :type cl:integer
    :initform 0)
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0)
   (accel
    :reader accel
    :initarg :accel
    :type cl:float
    :initform 0.0)
   (brake
    :reader brake
    :initarg :brake
    :type cl:float
    :initform 0.0)
   (wheel_angle
    :reader wheel_angle
    :initarg :wheel_angle
    :type cl:float
    :initform 0.0)
   (wheel_angle_speed
    :reader wheel_angle_speed
    :initarg :wheel_angle_speed
    :type cl:float
    :initform 0.0)
   (FL_wheel_speed
    :reader FL_wheel_speed
    :initarg :FL_wheel_speed
    :type cl:float
    :initform 0.0)
   (FR_wheel_speed
    :reader FR_wheel_speed
    :initarg :FR_wheel_speed
    :type cl:float
    :initform 0.0)
   (RL_wheel_speed
    :reader RL_wheel_speed
    :initarg :RL_wheel_speed
    :type cl:float
    :initform 0.0)
   (RR_wheel_speed
    :reader RR_wheel_speed
    :initarg :RR_wheel_speed
    :type cl:float
    :initform 0.0)
   (yaw_rate
    :reader yaw_rate
    :initarg :yaw_rate
    :type cl:float
    :initform 0.0))
)

(cl:defclass EgoVehicleStatusExtended (<EgoVehicleStatusExtended>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EgoVehicleStatusExtended>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EgoVehicleStatusExtended)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<EgoVehicleStatusExtended> is deprecated: use morai_msgs-msg:EgoVehicleStatusExtended instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <EgoVehicleStatusExtended>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:header-val is deprecated.  Use morai_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'unique_id-val :lambda-list '(m))
(cl:defmethod unique_id-val ((m <EgoVehicleStatusExtended>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:unique_id-val is deprecated.  Use morai_msgs-msg:unique_id instead.")
  (unique_id m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <EgoVehicleStatusExtended>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:acceleration-val is deprecated.  Use morai_msgs-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <EgoVehicleStatusExtended>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:position-val is deprecated.  Use morai_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <EgoVehicleStatusExtended>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:velocity-val is deprecated.  Use morai_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <EgoVehicleStatusExtended>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:heading-val is deprecated.  Use morai_msgs-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'accel-val :lambda-list '(m))
(cl:defmethod accel-val ((m <EgoVehicleStatusExtended>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:accel-val is deprecated.  Use morai_msgs-msg:accel instead.")
  (accel m))

(cl:ensure-generic-function 'brake-val :lambda-list '(m))
(cl:defmethod brake-val ((m <EgoVehicleStatusExtended>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:brake-val is deprecated.  Use morai_msgs-msg:brake instead.")
  (brake m))

(cl:ensure-generic-function 'wheel_angle-val :lambda-list '(m))
(cl:defmethod wheel_angle-val ((m <EgoVehicleStatusExtended>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:wheel_angle-val is deprecated.  Use morai_msgs-msg:wheel_angle instead.")
  (wheel_angle m))

(cl:ensure-generic-function 'wheel_angle_speed-val :lambda-list '(m))
(cl:defmethod wheel_angle_speed-val ((m <EgoVehicleStatusExtended>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:wheel_angle_speed-val is deprecated.  Use morai_msgs-msg:wheel_angle_speed instead.")
  (wheel_angle_speed m))

(cl:ensure-generic-function 'FL_wheel_speed-val :lambda-list '(m))
(cl:defmethod FL_wheel_speed-val ((m <EgoVehicleStatusExtended>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:FL_wheel_speed-val is deprecated.  Use morai_msgs-msg:FL_wheel_speed instead.")
  (FL_wheel_speed m))

(cl:ensure-generic-function 'FR_wheel_speed-val :lambda-list '(m))
(cl:defmethod FR_wheel_speed-val ((m <EgoVehicleStatusExtended>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:FR_wheel_speed-val is deprecated.  Use morai_msgs-msg:FR_wheel_speed instead.")
  (FR_wheel_speed m))

(cl:ensure-generic-function 'RL_wheel_speed-val :lambda-list '(m))
(cl:defmethod RL_wheel_speed-val ((m <EgoVehicleStatusExtended>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:RL_wheel_speed-val is deprecated.  Use morai_msgs-msg:RL_wheel_speed instead.")
  (RL_wheel_speed m))

(cl:ensure-generic-function 'RR_wheel_speed-val :lambda-list '(m))
(cl:defmethod RR_wheel_speed-val ((m <EgoVehicleStatusExtended>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:RR_wheel_speed-val is deprecated.  Use morai_msgs-msg:RR_wheel_speed instead.")
  (RR_wheel_speed m))

(cl:ensure-generic-function 'yaw_rate-val :lambda-list '(m))
(cl:defmethod yaw_rate-val ((m <EgoVehicleStatusExtended>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:yaw_rate-val is deprecated.  Use morai_msgs-msg:yaw_rate instead.")
  (yaw_rate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EgoVehicleStatusExtended>) ostream)
  "Serializes a message object of type '<EgoVehicleStatusExtended>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'unique_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brake))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheel_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheel_angle_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'FL_wheel_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'FR_wheel_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RL_wheel_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'RR_wheel_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EgoVehicleStatusExtended>) istream)
  "Deserializes a message object of type '<EgoVehicleStatusExtended>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'unique_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_angle_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'FL_wheel_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'FR_wheel_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RL_wheel_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'RR_wheel_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_rate) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EgoVehicleStatusExtended>)))
  "Returns string type for a message object of type '<EgoVehicleStatusExtended>"
  "morai_msgs/EgoVehicleStatusExtended")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EgoVehicleStatusExtended)))
  "Returns string type for a message object of type 'EgoVehicleStatusExtended"
  "morai_msgs/EgoVehicleStatusExtended")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EgoVehicleStatusExtended>)))
  "Returns md5sum for a message object of type '<EgoVehicleStatusExtended>"
  "29e0d7add02c73a8dd83ba3c46d6bb17")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EgoVehicleStatusExtended)))
  "Returns md5sum for a message object of type 'EgoVehicleStatusExtended"
  "29e0d7add02c73a8dd83ba3c46d6bb17")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EgoVehicleStatusExtended>)))
  "Returns full string definition for message of type '<EgoVehicleStatusExtended>"
  (cl:format cl:nil "Header header~%int32 unique_id~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 position~%geometry_msgs/Vector3 velocity~%~%float64 heading~%float32 accel~%float32 brake~%float32 wheel_angle~%~%float32 wheel_angle_speed~%float32 FL_wheel_speed~%float32 FR_wheel_speed~%float32 RL_wheel_speed~%float32 RR_wheel_speed~%float32 yaw_rate~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EgoVehicleStatusExtended)))
  "Returns full string definition for message of type 'EgoVehicleStatusExtended"
  (cl:format cl:nil "Header header~%int32 unique_id~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 position~%geometry_msgs/Vector3 velocity~%~%float64 heading~%float32 accel~%float32 brake~%float32 wheel_angle~%~%float32 wheel_angle_speed~%float32 FL_wheel_speed~%float32 FR_wheel_speed~%float32 RL_wheel_speed~%float32 RR_wheel_speed~%float32 yaw_rate~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EgoVehicleStatusExtended>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     8
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EgoVehicleStatusExtended>))
  "Converts a ROS message object to a list"
  (cl:list 'EgoVehicleStatusExtended
    (cl:cons ':header (header msg))
    (cl:cons ':unique_id (unique_id msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':accel (accel msg))
    (cl:cons ':brake (brake msg))
    (cl:cons ':wheel_angle (wheel_angle msg))
    (cl:cons ':wheel_angle_speed (wheel_angle_speed msg))
    (cl:cons ':FL_wheel_speed (FL_wheel_speed msg))
    (cl:cons ':FR_wheel_speed (FR_wheel_speed msg))
    (cl:cons ':RL_wheel_speed (RL_wheel_speed msg))
    (cl:cons ':RR_wheel_speed (RR_wheel_speed msg))
    (cl:cons ':yaw_rate (yaw_rate msg))
))
