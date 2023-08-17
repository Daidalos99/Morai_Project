; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude MapSpecIndex.msg.html

(cl:defclass <MapSpecIndex> (roslisp-msg-protocol:ros-message)
  ((load_map_data
    :reader load_map_data
    :initarg :load_map_data
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MapSpecIndex (<MapSpecIndex>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapSpecIndex>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapSpecIndex)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<MapSpecIndex> is deprecated: use morai_msgs-msg:MapSpecIndex instead.")))

(cl:ensure-generic-function 'load_map_data-val :lambda-list '(m))
(cl:defmethod load_map_data-val ((m <MapSpecIndex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:load_map_data-val is deprecated.  Use morai_msgs-msg:load_map_data instead.")
  (load_map_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapSpecIndex>) ostream)
  "Serializes a message object of type '<MapSpecIndex>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'load_map_data) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapSpecIndex>) istream)
  "Deserializes a message object of type '<MapSpecIndex>"
    (cl:setf (cl:slot-value msg 'load_map_data) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapSpecIndex>)))
  "Returns string type for a message object of type '<MapSpecIndex>"
  "morai_msgs/MapSpecIndex")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapSpecIndex)))
  "Returns string type for a message object of type 'MapSpecIndex"
  "morai_msgs/MapSpecIndex")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapSpecIndex>)))
  "Returns md5sum for a message object of type '<MapSpecIndex>"
  "019993d4829f9fc48833727291488dc1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapSpecIndex)))
  "Returns md5sum for a message object of type 'MapSpecIndex"
  "019993d4829f9fc48833727291488dc1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapSpecIndex>)))
  "Returns full string definition for message of type '<MapSpecIndex>"
  (cl:format cl:nil "bool load_map_data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapSpecIndex)))
  "Returns full string definition for message of type 'MapSpecIndex"
  (cl:format cl:nil "bool load_map_data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapSpecIndex>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapSpecIndex>))
  "Converts a ROS message object to a list"
  (cl:list 'MapSpecIndex
    (cl:cons ':load_map_data (load_map_data msg))
))
