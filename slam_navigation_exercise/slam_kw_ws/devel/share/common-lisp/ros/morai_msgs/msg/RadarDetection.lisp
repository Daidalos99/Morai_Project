; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude RadarDetection.msg.html

(cl:defclass <RadarDetection> (roslisp-msg-protocol:ros-message)
  ((detection_id
    :reader detection_id
    :initarg :detection_id
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (azimuth
    :reader azimuth
    :initarg :azimuth
    :type cl:float
    :initform 0.0)
   (rangerate
    :reader rangerate
    :initarg :rangerate
    :type cl:float
    :initform 0.0)
   (amplitude
    :reader amplitude
    :initarg :amplitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass RadarDetection (<RadarDetection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarDetection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarDetection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<RadarDetection> is deprecated: use morai_msgs-msg:RadarDetection instead.")))

(cl:ensure-generic-function 'detection_id-val :lambda-list '(m))
(cl:defmethod detection_id-val ((m <RadarDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:detection_id-val is deprecated.  Use morai_msgs-msg:detection_id instead.")
  (detection_id m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <RadarDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:position-val is deprecated.  Use morai_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'azimuth-val :lambda-list '(m))
(cl:defmethod azimuth-val ((m <RadarDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:azimuth-val is deprecated.  Use morai_msgs-msg:azimuth instead.")
  (azimuth m))

(cl:ensure-generic-function 'rangerate-val :lambda-list '(m))
(cl:defmethod rangerate-val ((m <RadarDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:rangerate-val is deprecated.  Use morai_msgs-msg:rangerate instead.")
  (rangerate m))

(cl:ensure-generic-function 'amplitude-val :lambda-list '(m))
(cl:defmethod amplitude-val ((m <RadarDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:amplitude-val is deprecated.  Use morai_msgs-msg:amplitude instead.")
  (amplitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarDetection>) ostream)
  "Serializes a message object of type '<RadarDetection>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'detection_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'detection_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'azimuth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rangerate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'amplitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarDetection>) istream)
  "Deserializes a message object of type '<RadarDetection>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'detection_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'detection_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'azimuth) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rangerate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'amplitude) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarDetection>)))
  "Returns string type for a message object of type '<RadarDetection>"
  "morai_msgs/RadarDetection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarDetection)))
  "Returns string type for a message object of type 'RadarDetection"
  "morai_msgs/RadarDetection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarDetection>)))
  "Returns md5sum for a message object of type '<RadarDetection>"
  "a793982ef59c29909256d522d48cad28")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarDetection)))
  "Returns md5sum for a message object of type 'RadarDetection"
  "a793982ef59c29909256d522d48cad28")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarDetection>)))
  "Returns full string definition for message of type '<RadarDetection>"
  (cl:format cl:nil "# This message relates only to FMCW radar.  ~%# All variables below are relative to the radar's frame of reference.~%# This message is not meant to be used alone but as part of a stamped or array message.~%~%# Object classifications (Additional vendor-specific classifications are permitted starting from 32000 eg. Car)~%~%uint16 detection_id                       # Index of each radar detection point~%geometry_msgs/Point position              # x, y, z position of each radar detection point~%~%float32 azimuth							  # azimuth angle of each radar detection point in Degree~%float32 rangerate						  # relative velocity of the radar detected target w.r.t radial direction~%float32 amplitude						  # amplitude of the reflected signal of the radar detected target(rcs)~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarDetection)))
  "Returns full string definition for message of type 'RadarDetection"
  (cl:format cl:nil "# This message relates only to FMCW radar.  ~%# All variables below are relative to the radar's frame of reference.~%# This message is not meant to be used alone but as part of a stamped or array message.~%~%# Object classifications (Additional vendor-specific classifications are permitted starting from 32000 eg. Car)~%~%uint16 detection_id                       # Index of each radar detection point~%geometry_msgs/Point position              # x, y, z position of each radar detection point~%~%float32 azimuth							  # azimuth angle of each radar detection point in Degree~%float32 rangerate						  # relative velocity of the radar detected target w.r.t radial direction~%float32 amplitude						  # amplitude of the reflected signal of the radar detected target(rcs)~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarDetection>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarDetection>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarDetection
    (cl:cons ':detection_id (detection_id msg))
    (cl:cons ':position (position msg))
    (cl:cons ':azimuth (azimuth msg))
    (cl:cons ':rangerate (rangerate msg))
    (cl:cons ':amplitude (amplitude msg))
))
