; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude VehicleCollision.msg.html

(cl:defclass <VehicleCollision> (roslisp-msg-protocol:ros-message)
  ((crashed_vehicles
    :reader crashed_vehicles
    :initarg :crashed_vehicles
    :type (cl:vector morai_msgs-msg:ObjectStatus)
   :initform (cl:make-array 0 :element-type 'morai_msgs-msg:ObjectStatus :initial-element (cl:make-instance 'morai_msgs-msg:ObjectStatus))))
)

(cl:defclass VehicleCollision (<VehicleCollision>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleCollision>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleCollision)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<VehicleCollision> is deprecated: use morai_msgs-msg:VehicleCollision instead.")))

(cl:ensure-generic-function 'crashed_vehicles-val :lambda-list '(m))
(cl:defmethod crashed_vehicles-val ((m <VehicleCollision>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:crashed_vehicles-val is deprecated.  Use morai_msgs-msg:crashed_vehicles instead.")
  (crashed_vehicles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleCollision>) ostream)
  "Serializes a message object of type '<VehicleCollision>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'crashed_vehicles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'crashed_vehicles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleCollision>) istream)
  "Deserializes a message object of type '<VehicleCollision>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'crashed_vehicles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'crashed_vehicles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'morai_msgs-msg:ObjectStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleCollision>)))
  "Returns string type for a message object of type '<VehicleCollision>"
  "morai_msgs/VehicleCollision")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleCollision)))
  "Returns string type for a message object of type 'VehicleCollision"
  "morai_msgs/VehicleCollision")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleCollision>)))
  "Returns md5sum for a message object of type '<VehicleCollision>"
  "b76a1136c5fcb79b704b50b7421616cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleCollision)))
  "Returns md5sum for a message object of type 'VehicleCollision"
  "b76a1136c5fcb79b704b50b7421616cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleCollision>)))
  "Returns full string definition for message of type '<VehicleCollision>"
  (cl:format cl:nil "ObjectStatus[] crashed_vehicles~%~%================================================================================~%MSG: morai_msgs/ObjectStatus~%int32 unique_id~%int32 type~%string name~%float64 heading~%~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 size~%geometry_msgs/Vector3 position~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleCollision)))
  "Returns full string definition for message of type 'VehicleCollision"
  (cl:format cl:nil "ObjectStatus[] crashed_vehicles~%~%================================================================================~%MSG: morai_msgs/ObjectStatus~%int32 unique_id~%int32 type~%string name~%float64 heading~%~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 size~%geometry_msgs/Vector3 position~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleCollision>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'crashed_vehicles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleCollision>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleCollision
    (cl:cons ':crashed_vehicles (crashed_vehicles msg))
))
