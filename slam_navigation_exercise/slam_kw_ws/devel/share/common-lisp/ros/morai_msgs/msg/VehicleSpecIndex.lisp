; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude VehicleSpecIndex.msg.html

(cl:defclass <VehicleSpecIndex> (roslisp-msg-protocol:ros-message)
  ((unique_id
    :reader unique_id
    :initarg :unique_id
    :type cl:integer
    :initform 0))
)

(cl:defclass VehicleSpecIndex (<VehicleSpecIndex>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleSpecIndex>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleSpecIndex)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<VehicleSpecIndex> is deprecated: use morai_msgs-msg:VehicleSpecIndex instead.")))

(cl:ensure-generic-function 'unique_id-val :lambda-list '(m))
(cl:defmethod unique_id-val ((m <VehicleSpecIndex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:unique_id-val is deprecated.  Use morai_msgs-msg:unique_id instead.")
  (unique_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleSpecIndex>) ostream)
  "Serializes a message object of type '<VehicleSpecIndex>"
  (cl:let* ((signed (cl:slot-value msg 'unique_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleSpecIndex>) istream)
  "Deserializes a message object of type '<VehicleSpecIndex>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'unique_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleSpecIndex>)))
  "Returns string type for a message object of type '<VehicleSpecIndex>"
  "morai_msgs/VehicleSpecIndex")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleSpecIndex)))
  "Returns string type for a message object of type 'VehicleSpecIndex"
  "morai_msgs/VehicleSpecIndex")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleSpecIndex>)))
  "Returns md5sum for a message object of type '<VehicleSpecIndex>"
  "757f4e51cd60d98daf03650421bff492")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleSpecIndex)))
  "Returns md5sum for a message object of type 'VehicleSpecIndex"
  "757f4e51cd60d98daf03650421bff492")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleSpecIndex>)))
  "Returns full string definition for message of type '<VehicleSpecIndex>"
  (cl:format cl:nil "int32 unique_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleSpecIndex)))
  "Returns full string definition for message of type 'VehicleSpecIndex"
  (cl:format cl:nil "int32 unique_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleSpecIndex>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleSpecIndex>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleSpecIndex
    (cl:cons ':unique_id (unique_id msg))
))
