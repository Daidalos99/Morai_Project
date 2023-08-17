; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude NpcGhostCmd.msg.html

(cl:defclass <NpcGhostCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (npc_list
    :reader npc_list
    :initarg :npc_list
    :type (cl:vector morai_msgs-msg:NpcGhostInfo)
   :initform (cl:make-array 0 :element-type 'morai_msgs-msg:NpcGhostInfo :initial-element (cl:make-instance 'morai_msgs-msg:NpcGhostInfo))))
)

(cl:defclass NpcGhostCmd (<NpcGhostCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NpcGhostCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NpcGhostCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<NpcGhostCmd> is deprecated: use morai_msgs-msg:NpcGhostCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NpcGhostCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:header-val is deprecated.  Use morai_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'npc_list-val :lambda-list '(m))
(cl:defmethod npc_list-val ((m <NpcGhostCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:npc_list-val is deprecated.  Use morai_msgs-msg:npc_list instead.")
  (npc_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NpcGhostCmd>) ostream)
  "Serializes a message object of type '<NpcGhostCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'npc_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'npc_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NpcGhostCmd>) istream)
  "Deserializes a message object of type '<NpcGhostCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'npc_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'npc_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'morai_msgs-msg:NpcGhostInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NpcGhostCmd>)))
  "Returns string type for a message object of type '<NpcGhostCmd>"
  "morai_msgs/NpcGhostCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NpcGhostCmd)))
  "Returns string type for a message object of type 'NpcGhostCmd"
  "morai_msgs/NpcGhostCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NpcGhostCmd>)))
  "Returns md5sum for a message object of type '<NpcGhostCmd>"
  "f46c55a2e9ac85bf40936cf393bdb14d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NpcGhostCmd)))
  "Returns md5sum for a message object of type 'NpcGhostCmd"
  "f46c55a2e9ac85bf40936cf393bdb14d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NpcGhostCmd>)))
  "Returns full string definition for message of type '<NpcGhostCmd>"
  (cl:format cl:nil "Header header~%~%NpcGhostInfo[] npc_list~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: morai_msgs/NpcGhostInfo~%int32 unique_id~%string name~%~%geometry_msgs/Vector3 position~%geometry_msgs/Vector3 rpy~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NpcGhostCmd)))
  "Returns full string definition for message of type 'NpcGhostCmd"
  (cl:format cl:nil "Header header~%~%NpcGhostInfo[] npc_list~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: morai_msgs/NpcGhostInfo~%int32 unique_id~%string name~%~%geometry_msgs/Vector3 position~%geometry_msgs/Vector3 rpy~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NpcGhostCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'npc_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NpcGhostCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'NpcGhostCmd
    (cl:cons ':header (header msg))
    (cl:cons ':npc_list (npc_list msg))
))
