; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude RadarDetections.msg.html

(cl:defclass <RadarDetections> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (detections
    :reader detections
    :initarg :detections
    :type (cl:vector morai_msgs-msg:RadarDetection)
   :initform (cl:make-array 0 :element-type 'morai_msgs-msg:RadarDetection :initial-element (cl:make-instance 'morai_msgs-msg:RadarDetection))))
)

(cl:defclass RadarDetections (<RadarDetections>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarDetections>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarDetections)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<RadarDetections> is deprecated: use morai_msgs-msg:RadarDetections instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RadarDetections>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:header-val is deprecated.  Use morai_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'detections-val :lambda-list '(m))
(cl:defmethod detections-val ((m <RadarDetections>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:detections-val is deprecated.  Use morai_msgs-msg:detections instead.")
  (detections m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarDetections>) ostream)
  "Serializes a message object of type '<RadarDetections>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detections))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'detections))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarDetections>) istream)
  "Deserializes a message object of type '<RadarDetections>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'detections) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detections)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'morai_msgs-msg:RadarDetection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarDetections>)))
  "Returns string type for a message object of type '<RadarDetections>"
  "morai_msgs/RadarDetections")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarDetections)))
  "Returns string type for a message object of type 'RadarDetections"
  "morai_msgs/RadarDetections")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarDetections>)))
  "Returns md5sum for a message object of type '<RadarDetections>"
  "2b152d3e41735e99fec72c55c819ab7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarDetections)))
  "Returns md5sum for a message object of type 'RadarDetections"
  "2b152d3e41735e99fec72c55c819ab7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarDetections>)))
  "Returns full string definition for message of type '<RadarDetections>"
  (cl:format cl:nil "Header header~%~%RadarDetection[] detections~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: morai_msgs/RadarDetection~%# This message relates only to FMCW radar.  ~%# All variables below are relative to the radar's frame of reference.~%# This message is not meant to be used alone but as part of a stamped or array message.~%~%# Object classifications (Additional vendor-specific classifications are permitted starting from 32000 eg. Car)~%~%uint16 detection_id                       # Index of each radar detection point~%geometry_msgs/Point position              # x, y, z position of each radar detection point~%~%float32 azimuth							  # azimuth angle of each radar detection point in Degree~%float32 rangerate						  # relative velocity of the radar detected target w.r.t radial direction~%float32 amplitude						  # amplitude of the reflected signal of the radar detected target(rcs)~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarDetections)))
  "Returns full string definition for message of type 'RadarDetections"
  (cl:format cl:nil "Header header~%~%RadarDetection[] detections~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: morai_msgs/RadarDetection~%# This message relates only to FMCW radar.  ~%# All variables below are relative to the radar's frame of reference.~%# This message is not meant to be used alone but as part of a stamped or array message.~%~%# Object classifications (Additional vendor-specific classifications are permitted starting from 32000 eg. Car)~%~%uint16 detection_id                       # Index of each radar detection point~%geometry_msgs/Point position              # x, y, z position of each radar detection point~%~%float32 azimuth							  # azimuth angle of each radar detection point in Degree~%float32 rangerate						  # relative velocity of the radar detected target w.r.t radial direction~%float32 amplitude						  # amplitude of the reflected signal of the radar detected target(rcs)~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarDetections>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detections) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarDetections>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarDetections
    (cl:cons ':header (header msg))
    (cl:cons ':detections (detections msg))
))
