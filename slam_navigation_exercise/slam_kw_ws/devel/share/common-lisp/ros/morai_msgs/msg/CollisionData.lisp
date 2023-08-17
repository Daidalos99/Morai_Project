; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude CollisionData.msg.html

(cl:defclass <CollisionData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (global_offset_x
    :reader global_offset_x
    :initarg :global_offset_x
    :type cl:float
    :initform 0.0)
   (global_offset_y
    :reader global_offset_y
    :initarg :global_offset_y
    :type cl:float
    :initform 0.0)
   (global_offset_z
    :reader global_offset_z
    :initarg :global_offset_z
    :type cl:float
    :initform 0.0)
   (collision_object
    :reader collision_object
    :initarg :collision_object
    :type (cl:vector morai_msgs-msg:ObjectStatus)
   :initform (cl:make-array 0 :element-type 'morai_msgs-msg:ObjectStatus :initial-element (cl:make-instance 'morai_msgs-msg:ObjectStatus))))
)

(cl:defclass CollisionData (<CollisionData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CollisionData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CollisionData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<CollisionData> is deprecated: use morai_msgs-msg:CollisionData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CollisionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:header-val is deprecated.  Use morai_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'global_offset_x-val :lambda-list '(m))
(cl:defmethod global_offset_x-val ((m <CollisionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:global_offset_x-val is deprecated.  Use morai_msgs-msg:global_offset_x instead.")
  (global_offset_x m))

(cl:ensure-generic-function 'global_offset_y-val :lambda-list '(m))
(cl:defmethod global_offset_y-val ((m <CollisionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:global_offset_y-val is deprecated.  Use morai_msgs-msg:global_offset_y instead.")
  (global_offset_y m))

(cl:ensure-generic-function 'global_offset_z-val :lambda-list '(m))
(cl:defmethod global_offset_z-val ((m <CollisionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:global_offset_z-val is deprecated.  Use morai_msgs-msg:global_offset_z instead.")
  (global_offset_z m))

(cl:ensure-generic-function 'collision_object-val :lambda-list '(m))
(cl:defmethod collision_object-val ((m <CollisionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:collision_object-val is deprecated.  Use morai_msgs-msg:collision_object instead.")
  (collision_object m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CollisionData>) ostream)
  "Serializes a message object of type '<CollisionData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'global_offset_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'global_offset_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'global_offset_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'collision_object))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'collision_object))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CollisionData>) istream)
  "Deserializes a message object of type '<CollisionData>"
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
    (cl:setf (cl:slot-value msg 'global_offset_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'global_offset_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'global_offset_z) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'collision_object) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'collision_object)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'morai_msgs-msg:ObjectStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CollisionData>)))
  "Returns string type for a message object of type '<CollisionData>"
  "morai_msgs/CollisionData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CollisionData)))
  "Returns string type for a message object of type 'CollisionData"
  "morai_msgs/CollisionData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CollisionData>)))
  "Returns md5sum for a message object of type '<CollisionData>"
  "f56c53bee30cea28ebfdf412c3c25678")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CollisionData)))
  "Returns md5sum for a message object of type 'CollisionData"
  "f56c53bee30cea28ebfdf412c3c25678")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CollisionData>)))
  "Returns full string definition for message of type '<CollisionData>"
  (cl:format cl:nil "Header header~%~%float64 global_offset_x~%float64 global_offset_y~%float64 global_offset_z~%~%ObjectStatus[] collision_object~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: morai_msgs/ObjectStatus~%int32 unique_id~%int32 type~%string name~%float64 heading~%~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 size~%geometry_msgs/Vector3 position~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CollisionData)))
  "Returns full string definition for message of type 'CollisionData"
  (cl:format cl:nil "Header header~%~%float64 global_offset_x~%float64 global_offset_y~%float64 global_offset_z~%~%ObjectStatus[] collision_object~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: morai_msgs/ObjectStatus~%int32 unique_id~%int32 type~%string name~%float64 heading~%~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 size~%geometry_msgs/Vector3 position~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CollisionData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'collision_object) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CollisionData>))
  "Converts a ROS message object to a list"
  (cl:list 'CollisionData
    (cl:cons ':header (header msg))
    (cl:cons ':global_offset_x (global_offset_x msg))
    (cl:cons ':global_offset_y (global_offset_y msg))
    (cl:cons ':global_offset_z (global_offset_z msg))
    (cl:cons ':collision_object (collision_object msg))
))
