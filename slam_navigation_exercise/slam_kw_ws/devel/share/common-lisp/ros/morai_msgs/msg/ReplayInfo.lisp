; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude ReplayInfo.msg.html

(cl:defclass <ReplayInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ego_acc
    :reader ego_acc
    :initarg :ego_acc
    :type cl:float
    :initform 0.0)
   (ego_brake
    :reader ego_brake
    :initarg :ego_brake
    :type cl:float
    :initform 0.0)
   (ego_steer
    :reader ego_steer
    :initarg :ego_steer
    :type cl:float
    :initform 0.0)
   (orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (linear_acceleration
    :reader linear_acceleration
    :initarg :linear_acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (num_of_npcs
    :reader num_of_npcs
    :initarg :num_of_npcs
    :type cl:integer
    :initform 0)
   (num_of_pedestrian
    :reader num_of_pedestrian
    :initarg :num_of_pedestrian
    :type cl:integer
    :initform 0)
   (num_of_obstacle
    :reader num_of_obstacle
    :initarg :num_of_obstacle
    :type cl:integer
    :initform 0)
   (npc_list
    :reader npc_list
    :initarg :npc_list
    :type (cl:vector morai_msgs-msg:ObjectStatus)
   :initform (cl:make-array 0 :element-type 'morai_msgs-msg:ObjectStatus :initial-element (cl:make-instance 'morai_msgs-msg:ObjectStatus)))
   (pedestrian_list
    :reader pedestrian_list
    :initarg :pedestrian_list
    :type (cl:vector morai_msgs-msg:ObjectStatus)
   :initform (cl:make-array 0 :element-type 'morai_msgs-msg:ObjectStatus :initial-element (cl:make-instance 'morai_msgs-msg:ObjectStatus)))
   (obstacle_list
    :reader obstacle_list
    :initarg :obstacle_list
    :type (cl:vector morai_msgs-msg:ObjectStatus)
   :initform (cl:make-array 0 :element-type 'morai_msgs-msg:ObjectStatus :initial-element (cl:make-instance 'morai_msgs-msg:ObjectStatus))))
)

(cl:defclass ReplayInfo (<ReplayInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReplayInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReplayInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<ReplayInfo> is deprecated: use morai_msgs-msg:ReplayInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ReplayInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:header-val is deprecated.  Use morai_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ego_acc-val :lambda-list '(m))
(cl:defmethod ego_acc-val ((m <ReplayInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:ego_acc-val is deprecated.  Use morai_msgs-msg:ego_acc instead.")
  (ego_acc m))

(cl:ensure-generic-function 'ego_brake-val :lambda-list '(m))
(cl:defmethod ego_brake-val ((m <ReplayInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:ego_brake-val is deprecated.  Use morai_msgs-msg:ego_brake instead.")
  (ego_brake m))

(cl:ensure-generic-function 'ego_steer-val :lambda-list '(m))
(cl:defmethod ego_steer-val ((m <ReplayInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:ego_steer-val is deprecated.  Use morai_msgs-msg:ego_steer instead.")
  (ego_steer m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <ReplayInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:orientation-val is deprecated.  Use morai_msgs-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'linear_acceleration-val :lambda-list '(m))
(cl:defmethod linear_acceleration-val ((m <ReplayInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:linear_acceleration-val is deprecated.  Use morai_msgs-msg:linear_acceleration instead.")
  (linear_acceleration m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <ReplayInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:angular_velocity-val is deprecated.  Use morai_msgs-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'num_of_npcs-val :lambda-list '(m))
(cl:defmethod num_of_npcs-val ((m <ReplayInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:num_of_npcs-val is deprecated.  Use morai_msgs-msg:num_of_npcs instead.")
  (num_of_npcs m))

(cl:ensure-generic-function 'num_of_pedestrian-val :lambda-list '(m))
(cl:defmethod num_of_pedestrian-val ((m <ReplayInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:num_of_pedestrian-val is deprecated.  Use morai_msgs-msg:num_of_pedestrian instead.")
  (num_of_pedestrian m))

(cl:ensure-generic-function 'num_of_obstacle-val :lambda-list '(m))
(cl:defmethod num_of_obstacle-val ((m <ReplayInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:num_of_obstacle-val is deprecated.  Use morai_msgs-msg:num_of_obstacle instead.")
  (num_of_obstacle m))

(cl:ensure-generic-function 'npc_list-val :lambda-list '(m))
(cl:defmethod npc_list-val ((m <ReplayInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:npc_list-val is deprecated.  Use morai_msgs-msg:npc_list instead.")
  (npc_list m))

(cl:ensure-generic-function 'pedestrian_list-val :lambda-list '(m))
(cl:defmethod pedestrian_list-val ((m <ReplayInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:pedestrian_list-val is deprecated.  Use morai_msgs-msg:pedestrian_list instead.")
  (pedestrian_list m))

(cl:ensure-generic-function 'obstacle_list-val :lambda-list '(m))
(cl:defmethod obstacle_list-val ((m <ReplayInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:obstacle_list-val is deprecated.  Use morai_msgs-msg:obstacle_list instead.")
  (obstacle_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReplayInfo>) ostream)
  "Serializes a message object of type '<ReplayInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ego_acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ego_brake))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ego_steer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity) ostream)
  (cl:let* ((signed (cl:slot-value msg 'num_of_npcs)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_of_pedestrian)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_of_obstacle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'npc_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'npc_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pedestrian_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pedestrian_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacle_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacle_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReplayInfo>) istream)
  "Deserializes a message object of type '<ReplayInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ego_acc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ego_brake) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ego_steer) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_of_npcs) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_of_pedestrian) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_of_obstacle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'npc_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'npc_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'morai_msgs-msg:ObjectStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pedestrian_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pedestrian_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'morai_msgs-msg:ObjectStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacle_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacle_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'morai_msgs-msg:ObjectStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReplayInfo>)))
  "Returns string type for a message object of type '<ReplayInfo>"
  "morai_msgs/ReplayInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReplayInfo)))
  "Returns string type for a message object of type 'ReplayInfo"
  "morai_msgs/ReplayInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReplayInfo>)))
  "Returns md5sum for a message object of type '<ReplayInfo>"
  "79280912719be2d1374fda7d2d0d3d7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReplayInfo)))
  "Returns md5sum for a message object of type 'ReplayInfo"
  "79280912719be2d1374fda7d2d0d3d7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReplayInfo>)))
  "Returns full string definition for message of type '<ReplayInfo>"
  (cl:format cl:nil "Header header~%~%float64 ego_acc~%float64 ego_brake~%float64 ego_steer~%~%geometry_msgs/Quaternion orientation~%~%geometry_msgs/Vector3 linear_acceleration~%~%geometry_msgs/Vector3 angular_velocity~%~%int32 num_of_npcs~%int32 num_of_pedestrian~%int32 num_of_obstacle~%~%ObjectStatus[] npc_list ~%~%ObjectStatus[] pedestrian_list~%~%ObjectStatus[] obstacle_list ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: morai_msgs/ObjectStatus~%int32 unique_id~%int32 type~%string name~%float64 heading~%~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 size~%geometry_msgs/Vector3 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReplayInfo)))
  "Returns full string definition for message of type 'ReplayInfo"
  (cl:format cl:nil "Header header~%~%float64 ego_acc~%float64 ego_brake~%float64 ego_steer~%~%geometry_msgs/Quaternion orientation~%~%geometry_msgs/Vector3 linear_acceleration~%~%geometry_msgs/Vector3 angular_velocity~%~%int32 num_of_npcs~%int32 num_of_pedestrian~%int32 num_of_obstacle~%~%ObjectStatus[] npc_list ~%~%ObjectStatus[] pedestrian_list~%~%ObjectStatus[] obstacle_list ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: morai_msgs/ObjectStatus~%int32 unique_id~%int32 type~%string name~%float64 heading~%~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 size~%geometry_msgs/Vector3 position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReplayInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity))
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'npc_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pedestrian_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacle_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReplayInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ReplayInfo
    (cl:cons ':header (header msg))
    (cl:cons ':ego_acc (ego_acc msg))
    (cl:cons ':ego_brake (ego_brake msg))
    (cl:cons ':ego_steer (ego_steer msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':linear_acceleration (linear_acceleration msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':num_of_npcs (num_of_npcs msg))
    (cl:cons ':num_of_pedestrian (num_of_pedestrian msg))
    (cl:cons ':num_of_obstacle (num_of_obstacle msg))
    (cl:cons ':npc_list (npc_list msg))
    (cl:cons ':pedestrian_list (pedestrian_list msg))
    (cl:cons ':obstacle_list (obstacle_list msg))
))
