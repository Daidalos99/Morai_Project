; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude ObjectStatusList.msg.html

(cl:defclass <ObjectStatusList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
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

(cl:defclass ObjectStatusList (<ObjectStatusList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectStatusList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectStatusList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<ObjectStatusList> is deprecated: use morai_msgs-msg:ObjectStatusList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObjectStatusList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:header-val is deprecated.  Use morai_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'num_of_npcs-val :lambda-list '(m))
(cl:defmethod num_of_npcs-val ((m <ObjectStatusList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:num_of_npcs-val is deprecated.  Use morai_msgs-msg:num_of_npcs instead.")
  (num_of_npcs m))

(cl:ensure-generic-function 'num_of_pedestrian-val :lambda-list '(m))
(cl:defmethod num_of_pedestrian-val ((m <ObjectStatusList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:num_of_pedestrian-val is deprecated.  Use morai_msgs-msg:num_of_pedestrian instead.")
  (num_of_pedestrian m))

(cl:ensure-generic-function 'num_of_obstacle-val :lambda-list '(m))
(cl:defmethod num_of_obstacle-val ((m <ObjectStatusList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:num_of_obstacle-val is deprecated.  Use morai_msgs-msg:num_of_obstacle instead.")
  (num_of_obstacle m))

(cl:ensure-generic-function 'npc_list-val :lambda-list '(m))
(cl:defmethod npc_list-val ((m <ObjectStatusList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:npc_list-val is deprecated.  Use morai_msgs-msg:npc_list instead.")
  (npc_list m))

(cl:ensure-generic-function 'pedestrian_list-val :lambda-list '(m))
(cl:defmethod pedestrian_list-val ((m <ObjectStatusList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:pedestrian_list-val is deprecated.  Use morai_msgs-msg:pedestrian_list instead.")
  (pedestrian_list m))

(cl:ensure-generic-function 'obstacle_list-val :lambda-list '(m))
(cl:defmethod obstacle_list-val ((m <ObjectStatusList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:obstacle_list-val is deprecated.  Use morai_msgs-msg:obstacle_list instead.")
  (obstacle_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectStatusList>) ostream)
  "Serializes a message object of type '<ObjectStatusList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectStatusList>) istream)
  "Deserializes a message object of type '<ObjectStatusList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectStatusList>)))
  "Returns string type for a message object of type '<ObjectStatusList>"
  "morai_msgs/ObjectStatusList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectStatusList)))
  "Returns string type for a message object of type 'ObjectStatusList"
  "morai_msgs/ObjectStatusList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectStatusList>)))
  "Returns md5sum for a message object of type '<ObjectStatusList>"
  "97d744183b4ec364d0c8dac1cd520ef1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectStatusList)))
  "Returns md5sum for a message object of type 'ObjectStatusList"
  "97d744183b4ec364d0c8dac1cd520ef1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectStatusList>)))
  "Returns full string definition for message of type '<ObjectStatusList>"
  (cl:format cl:nil "Header header~%~%int32 num_of_npcs~%int32 num_of_pedestrian~%int32 num_of_obstacle~%~%ObjectStatus[] npc_list~%ObjectStatus[] pedestrian_list~%ObjectStatus[] obstacle_list~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: morai_msgs/ObjectStatus~%int32 unique_id~%int32 type~%string name~%float64 heading~%~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 size~%geometry_msgs/Vector3 position~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectStatusList)))
  "Returns full string definition for message of type 'ObjectStatusList"
  (cl:format cl:nil "Header header~%~%int32 num_of_npcs~%int32 num_of_pedestrian~%int32 num_of_obstacle~%~%ObjectStatus[] npc_list~%ObjectStatus[] pedestrian_list~%ObjectStatus[] obstacle_list~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: morai_msgs/ObjectStatus~%int32 unique_id~%int32 type~%string name~%float64 heading~%~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 size~%geometry_msgs/Vector3 position~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectStatusList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'npc_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pedestrian_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacle_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectStatusList>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectStatusList
    (cl:cons ':header (header msg))
    (cl:cons ':num_of_npcs (num_of_npcs msg))
    (cl:cons ':num_of_pedestrian (num_of_pedestrian msg))
    (cl:cons ':num_of_obstacle (num_of_obstacle msg))
    (cl:cons ':npc_list (npc_list msg))
    (cl:cons ':pedestrian_list (pedestrian_list msg))
    (cl:cons ':obstacle_list (obstacle_list msg))
))
