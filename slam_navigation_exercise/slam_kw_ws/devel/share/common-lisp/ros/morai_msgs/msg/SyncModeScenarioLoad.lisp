; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude SyncModeScenarioLoad.msg.html

(cl:defclass <SyncModeScenarioLoad> (roslisp-msg-protocol:ros-message)
  ((frame
    :reader frame
    :initarg :frame
    :type cl:integer
    :initform 0)
   (file_name
    :reader file_name
    :initarg :file_name
    :type cl:string
    :initform "")
   (load_network_connection_data
    :reader load_network_connection_data
    :initarg :load_network_connection_data
    :type cl:boolean
    :initform cl:nil)
   (delete_all
    :reader delete_all
    :initarg :delete_all
    :type cl:boolean
    :initform cl:nil)
   (load_ego_vehicle_data
    :reader load_ego_vehicle_data
    :initarg :load_ego_vehicle_data
    :type cl:boolean
    :initform cl:nil)
   (load_surrounding_vehicle_data
    :reader load_surrounding_vehicle_data
    :initarg :load_surrounding_vehicle_data
    :type cl:boolean
    :initform cl:nil)
   (load_pedestrian_data
    :reader load_pedestrian_data
    :initarg :load_pedestrian_data
    :type cl:boolean
    :initform cl:nil)
   (load_obstacle_data
    :reader load_obstacle_data
    :initarg :load_obstacle_data
    :type cl:boolean
    :initform cl:nil)
   (set_pause
    :reader set_pause
    :initarg :set_pause
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SyncModeScenarioLoad (<SyncModeScenarioLoad>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SyncModeScenarioLoad>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SyncModeScenarioLoad)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<SyncModeScenarioLoad> is deprecated: use morai_msgs-msg:SyncModeScenarioLoad instead.")))

(cl:ensure-generic-function 'frame-val :lambda-list '(m))
(cl:defmethod frame-val ((m <SyncModeScenarioLoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:frame-val is deprecated.  Use morai_msgs-msg:frame instead.")
  (frame m))

(cl:ensure-generic-function 'file_name-val :lambda-list '(m))
(cl:defmethod file_name-val ((m <SyncModeScenarioLoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:file_name-val is deprecated.  Use morai_msgs-msg:file_name instead.")
  (file_name m))

(cl:ensure-generic-function 'load_network_connection_data-val :lambda-list '(m))
(cl:defmethod load_network_connection_data-val ((m <SyncModeScenarioLoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:load_network_connection_data-val is deprecated.  Use morai_msgs-msg:load_network_connection_data instead.")
  (load_network_connection_data m))

(cl:ensure-generic-function 'delete_all-val :lambda-list '(m))
(cl:defmethod delete_all-val ((m <SyncModeScenarioLoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:delete_all-val is deprecated.  Use morai_msgs-msg:delete_all instead.")
  (delete_all m))

(cl:ensure-generic-function 'load_ego_vehicle_data-val :lambda-list '(m))
(cl:defmethod load_ego_vehicle_data-val ((m <SyncModeScenarioLoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:load_ego_vehicle_data-val is deprecated.  Use morai_msgs-msg:load_ego_vehicle_data instead.")
  (load_ego_vehicle_data m))

(cl:ensure-generic-function 'load_surrounding_vehicle_data-val :lambda-list '(m))
(cl:defmethod load_surrounding_vehicle_data-val ((m <SyncModeScenarioLoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:load_surrounding_vehicle_data-val is deprecated.  Use morai_msgs-msg:load_surrounding_vehicle_data instead.")
  (load_surrounding_vehicle_data m))

(cl:ensure-generic-function 'load_pedestrian_data-val :lambda-list '(m))
(cl:defmethod load_pedestrian_data-val ((m <SyncModeScenarioLoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:load_pedestrian_data-val is deprecated.  Use morai_msgs-msg:load_pedestrian_data instead.")
  (load_pedestrian_data m))

(cl:ensure-generic-function 'load_obstacle_data-val :lambda-list '(m))
(cl:defmethod load_obstacle_data-val ((m <SyncModeScenarioLoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:load_obstacle_data-val is deprecated.  Use morai_msgs-msg:load_obstacle_data instead.")
  (load_obstacle_data m))

(cl:ensure-generic-function 'set_pause-val :lambda-list '(m))
(cl:defmethod set_pause-val ((m <SyncModeScenarioLoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:set_pause-val is deprecated.  Use morai_msgs-msg:set_pause instead.")
  (set_pause m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SyncModeScenarioLoad>) ostream)
  "Serializes a message object of type '<SyncModeScenarioLoad>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'frame)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'frame)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'load_network_connection_data) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'delete_all) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'load_ego_vehicle_data) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'load_surrounding_vehicle_data) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'load_pedestrian_data) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'load_obstacle_data) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_pause) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SyncModeScenarioLoad>) istream)
  "Deserializes a message object of type '<SyncModeScenarioLoad>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'load_network_connection_data) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'delete_all) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'load_ego_vehicle_data) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'load_surrounding_vehicle_data) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'load_pedestrian_data) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'load_obstacle_data) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'set_pause) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SyncModeScenarioLoad>)))
  "Returns string type for a message object of type '<SyncModeScenarioLoad>"
  "morai_msgs/SyncModeScenarioLoad")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SyncModeScenarioLoad)))
  "Returns string type for a message object of type 'SyncModeScenarioLoad"
  "morai_msgs/SyncModeScenarioLoad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SyncModeScenarioLoad>)))
  "Returns md5sum for a message object of type '<SyncModeScenarioLoad>"
  "18d7884b2197b3f6a512fde8a7dedc57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SyncModeScenarioLoad)))
  "Returns md5sum for a message object of type 'SyncModeScenarioLoad"
  "18d7884b2197b3f6a512fde8a7dedc57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SyncModeScenarioLoad>)))
  "Returns full string definition for message of type '<SyncModeScenarioLoad>"
  (cl:format cl:nil "uint64 frame~%~%string file_name~%bool load_network_connection_data~%bool delete_all~%bool load_ego_vehicle_data~%bool load_surrounding_vehicle_data~%bool load_pedestrian_data~%bool load_obstacle_data~%bool set_pause~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SyncModeScenarioLoad)))
  "Returns full string definition for message of type 'SyncModeScenarioLoad"
  (cl:format cl:nil "uint64 frame~%~%string file_name~%bool load_network_connection_data~%bool delete_all~%bool load_ego_vehicle_data~%bool load_surrounding_vehicle_data~%bool load_pedestrian_data~%bool load_obstacle_data~%bool set_pause~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SyncModeScenarioLoad>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'file_name))
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SyncModeScenarioLoad>))
  "Converts a ROS message object to a list"
  (cl:list 'SyncModeScenarioLoad
    (cl:cons ':frame (frame msg))
    (cl:cons ':file_name (file_name msg))
    (cl:cons ':load_network_connection_data (load_network_connection_data msg))
    (cl:cons ':delete_all (delete_all msg))
    (cl:cons ':load_ego_vehicle_data (load_ego_vehicle_data msg))
    (cl:cons ':load_surrounding_vehicle_data (load_surrounding_vehicle_data msg))
    (cl:cons ':load_pedestrian_data (load_pedestrian_data msg))
    (cl:cons ':load_obstacle_data (load_obstacle_data msg))
    (cl:cons ':set_pause (set_pause msg))
))
