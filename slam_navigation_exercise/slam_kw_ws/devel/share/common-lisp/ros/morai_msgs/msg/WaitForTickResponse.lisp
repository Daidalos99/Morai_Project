; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude WaitForTickResponse.msg.html

(cl:defclass <WaitForTickResponse> (roslisp-msg-protocol:ros-message)
  ((tick_status
    :reader tick_status
    :initarg :tick_status
    :type cl:boolean
    :initform cl:nil)
   (pause_status
    :reader pause_status
    :initarg :pause_status
    :type cl:boolean
    :initform cl:nil)
   (frame
    :reader frame
    :initarg :frame
    :type cl:integer
    :initform 0)
   (vehicle_status
    :reader vehicle_status
    :initarg :vehicle_status
    :type morai_msgs-msg:EgoVehicleStatus
    :initform (cl:make-instance 'morai_msgs-msg:EgoVehicleStatus))
   (time
    :reader time
    :initarg :time
    :type cl:string
    :initform ""))
)

(cl:defclass WaitForTickResponse (<WaitForTickResponse>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaitForTickResponse>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaitForTickResponse)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<WaitForTickResponse> is deprecated: use morai_msgs-msg:WaitForTickResponse instead.")))

(cl:ensure-generic-function 'tick_status-val :lambda-list '(m))
(cl:defmethod tick_status-val ((m <WaitForTickResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:tick_status-val is deprecated.  Use morai_msgs-msg:tick_status instead.")
  (tick_status m))

(cl:ensure-generic-function 'pause_status-val :lambda-list '(m))
(cl:defmethod pause_status-val ((m <WaitForTickResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:pause_status-val is deprecated.  Use morai_msgs-msg:pause_status instead.")
  (pause_status m))

(cl:ensure-generic-function 'frame-val :lambda-list '(m))
(cl:defmethod frame-val ((m <WaitForTickResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:frame-val is deprecated.  Use morai_msgs-msg:frame instead.")
  (frame m))

(cl:ensure-generic-function 'vehicle_status-val :lambda-list '(m))
(cl:defmethod vehicle_status-val ((m <WaitForTickResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:vehicle_status-val is deprecated.  Use morai_msgs-msg:vehicle_status instead.")
  (vehicle_status m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <WaitForTickResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:time-val is deprecated.  Use morai_msgs-msg:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaitForTickResponse>) ostream)
  "Serializes a message object of type '<WaitForTickResponse>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'tick_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pause_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'frame)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_status) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'time))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaitForTickResponse>) istream)
  "Deserializes a message object of type '<WaitForTickResponse>"
    (cl:setf (cl:slot-value msg 'tick_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pause_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'frame)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_status) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaitForTickResponse>)))
  "Returns string type for a message object of type '<WaitForTickResponse>"
  "morai_msgs/WaitForTickResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaitForTickResponse)))
  "Returns string type for a message object of type 'WaitForTickResponse"
  "morai_msgs/WaitForTickResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaitForTickResponse>)))
  "Returns md5sum for a message object of type '<WaitForTickResponse>"
  "1c80ca1ddc5a285c8be87fef734111b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaitForTickResponse)))
  "Returns md5sum for a message object of type 'WaitForTickResponse"
  "1c80ca1ddc5a285c8be87fef734111b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaitForTickResponse>)))
  "Returns full string definition for message of type '<WaitForTickResponse>"
  (cl:format cl:nil "bool tick_status~%bool pause_status~%uint64 frame~%~%EgoVehicleStatus vehicle_status~%string time~%~%================================================================================~%MSG: morai_msgs/EgoVehicleStatus~%Header header~%int32 unique_id~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 position~%geometry_msgs/Vector3 velocity~%~%float64 heading~%float32 accel~%float32 brake~%float32 wheel_angle~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaitForTickResponse)))
  "Returns full string definition for message of type 'WaitForTickResponse"
  (cl:format cl:nil "bool tick_status~%bool pause_status~%uint64 frame~%~%EgoVehicleStatus vehicle_status~%string time~%~%================================================================================~%MSG: morai_msgs/EgoVehicleStatus~%Header header~%int32 unique_id~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 position~%geometry_msgs/Vector3 velocity~%~%float64 heading~%float32 accel~%float32 brake~%float32 wheel_angle~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaitForTickResponse>))
  (cl:+ 0
     1
     1
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_status))
     4 (cl:length (cl:slot-value msg 'time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaitForTickResponse>))
  "Converts a ROS message object to a list"
  (cl:list 'WaitForTickResponse
    (cl:cons ':tick_status (tick_status msg))
    (cl:cons ':pause_status (pause_status msg))
    (cl:cons ':frame (frame msg))
    (cl:cons ':vehicle_status (vehicle_status msg))
    (cl:cons ':time (time msg))
))
