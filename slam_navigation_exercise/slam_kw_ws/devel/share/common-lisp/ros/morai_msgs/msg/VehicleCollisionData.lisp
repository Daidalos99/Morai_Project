; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude VehicleCollisionData.msg.html

(cl:defclass <VehicleCollisionData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (collisions
    :reader collisions
    :initarg :collisions
    :type (cl:vector morai_msgs-msg:VehicleCollision)
   :initform (cl:make-array 0 :element-type 'morai_msgs-msg:VehicleCollision :initial-element (cl:make-instance 'morai_msgs-msg:VehicleCollision))))
)

(cl:defclass VehicleCollisionData (<VehicleCollisionData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleCollisionData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleCollisionData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<VehicleCollisionData> is deprecated: use morai_msgs-msg:VehicleCollisionData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VehicleCollisionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:header-val is deprecated.  Use morai_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'collisions-val :lambda-list '(m))
(cl:defmethod collisions-val ((m <VehicleCollisionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:collisions-val is deprecated.  Use morai_msgs-msg:collisions instead.")
  (collisions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleCollisionData>) ostream)
  "Serializes a message object of type '<VehicleCollisionData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'collisions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'collisions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleCollisionData>) istream)
  "Deserializes a message object of type '<VehicleCollisionData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'collisions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'collisions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'morai_msgs-msg:VehicleCollision))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleCollisionData>)))
  "Returns string type for a message object of type '<VehicleCollisionData>"
  "morai_msgs/VehicleCollisionData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleCollisionData)))
  "Returns string type for a message object of type 'VehicleCollisionData"
  "morai_msgs/VehicleCollisionData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleCollisionData>)))
  "Returns md5sum for a message object of type '<VehicleCollisionData>"
  "0a928c1718fbb672e05004cbdd1dabd9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleCollisionData)))
  "Returns md5sum for a message object of type 'VehicleCollisionData"
  "0a928c1718fbb672e05004cbdd1dabd9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleCollisionData>)))
  "Returns full string definition for message of type '<VehicleCollisionData>"
  (cl:format cl:nil "Header header~%VehicleCollision[] collisions~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: morai_msgs/VehicleCollision~%ObjectStatus[] crashed_vehicles~%~%================================================================================~%MSG: morai_msgs/ObjectStatus~%int32 unique_id~%int32 type~%string name~%float64 heading~%~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 size~%geometry_msgs/Vector3 position~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleCollisionData)))
  "Returns full string definition for message of type 'VehicleCollisionData"
  (cl:format cl:nil "Header header~%VehicleCollision[] collisions~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: morai_msgs/VehicleCollision~%ObjectStatus[] crashed_vehicles~%~%================================================================================~%MSG: morai_msgs/ObjectStatus~%int32 unique_id~%int32 type~%string name~%float64 heading~%~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 size~%geometry_msgs/Vector3 position~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleCollisionData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'collisions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleCollisionData>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleCollisionData
    (cl:cons ':header (header msg))
    (cl:cons ':collisions (collisions msg))
))
