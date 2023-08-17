; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude SaveSensorData.msg.html

(cl:defclass <SaveSensorData> (roslisp-msg-protocol:ros-message)
  ((is_custom_file_name
    :reader is_custom_file_name
    :initarg :is_custom_file_name
    :type cl:boolean
    :initform cl:nil)
   (custom_file_name
    :reader custom_file_name
    :initarg :custom_file_name
    :type cl:string
    :initform "")
   (file_dir
    :reader file_dir
    :initarg :file_dir
    :type cl:string
    :initform ""))
)

(cl:defclass SaveSensorData (<SaveSensorData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveSensorData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveSensorData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<SaveSensorData> is deprecated: use morai_msgs-msg:SaveSensorData instead.")))

(cl:ensure-generic-function 'is_custom_file_name-val :lambda-list '(m))
(cl:defmethod is_custom_file_name-val ((m <SaveSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:is_custom_file_name-val is deprecated.  Use morai_msgs-msg:is_custom_file_name instead.")
  (is_custom_file_name m))

(cl:ensure-generic-function 'custom_file_name-val :lambda-list '(m))
(cl:defmethod custom_file_name-val ((m <SaveSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:custom_file_name-val is deprecated.  Use morai_msgs-msg:custom_file_name instead.")
  (custom_file_name m))

(cl:ensure-generic-function 'file_dir-val :lambda-list '(m))
(cl:defmethod file_dir-val ((m <SaveSensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:file_dir-val is deprecated.  Use morai_msgs-msg:file_dir instead.")
  (file_dir m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveSensorData>) ostream)
  "Serializes a message object of type '<SaveSensorData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_custom_file_name) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'custom_file_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'custom_file_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_dir))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_dir))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveSensorData>) istream)
  "Deserializes a message object of type '<SaveSensorData>"
    (cl:setf (cl:slot-value msg 'is_custom_file_name) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'custom_file_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'custom_file_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_dir) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file_dir) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveSensorData>)))
  "Returns string type for a message object of type '<SaveSensorData>"
  "morai_msgs/SaveSensorData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveSensorData)))
  "Returns string type for a message object of type 'SaveSensorData"
  "morai_msgs/SaveSensorData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveSensorData>)))
  "Returns md5sum for a message object of type '<SaveSensorData>"
  "dad180f0ff2328c64bf118f8cf118abe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveSensorData)))
  "Returns md5sum for a message object of type 'SaveSensorData"
  "dad180f0ff2328c64bf118f8cf118abe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveSensorData>)))
  "Returns full string definition for message of type '<SaveSensorData>"
  (cl:format cl:nil "bool is_custom_file_name~%string custom_file_name~%string file_dir~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveSensorData)))
  "Returns full string definition for message of type 'SaveSensorData"
  (cl:format cl:nil "bool is_custom_file_name~%string custom_file_name~%string file_dir~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveSensorData>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'custom_file_name))
     4 (cl:length (cl:slot-value msg 'file_dir))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveSensorData>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveSensorData
    (cl:cons ':is_custom_file_name (is_custom_file_name msg))
    (cl:cons ':custom_file_name (custom_file_name msg))
    (cl:cons ':file_dir (file_dir msg))
))
