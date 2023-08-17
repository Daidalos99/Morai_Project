;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::ReplayInfo)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'ReplayInfo (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::REPLAYINFO")
  (make-package "MORAI_MSGS::REPLAYINFO"))

(in-package "ROS")
;;//! \htmlinclude ReplayInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass morai_msgs::ReplayInfo
  :super ros::object
  :slots (_header _ego_acc _ego_brake _ego_steer _orientation _linear_acceleration _angular_velocity _num_of_npcs _num_of_pedestrian _num_of_obstacle _npc_list _pedestrian_list _obstacle_list ))

(defmethod morai_msgs::ReplayInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ego_acc __ego_acc) 0.0)
    ((:ego_brake __ego_brake) 0.0)
    ((:ego_steer __ego_steer) 0.0)
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    ((:linear_acceleration __linear_acceleration) (instance geometry_msgs::Vector3 :init))
    ((:angular_velocity __angular_velocity) (instance geometry_msgs::Vector3 :init))
    ((:num_of_npcs __num_of_npcs) 0)
    ((:num_of_pedestrian __num_of_pedestrian) 0)
    ((:num_of_obstacle __num_of_obstacle) 0)
    ((:npc_list __npc_list) ())
    ((:pedestrian_list __pedestrian_list) ())
    ((:obstacle_list __obstacle_list) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _ego_acc (float __ego_acc))
   (setq _ego_brake (float __ego_brake))
   (setq _ego_steer (float __ego_steer))
   (setq _orientation __orientation)
   (setq _linear_acceleration __linear_acceleration)
   (setq _angular_velocity __angular_velocity)
   (setq _num_of_npcs (round __num_of_npcs))
   (setq _num_of_pedestrian (round __num_of_pedestrian))
   (setq _num_of_obstacle (round __num_of_obstacle))
   (setq _npc_list __npc_list)
   (setq _pedestrian_list __pedestrian_list)
   (setq _obstacle_list __obstacle_list)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ego_acc
   (&optional __ego_acc)
   (if __ego_acc (setq _ego_acc __ego_acc)) _ego_acc)
  (:ego_brake
   (&optional __ego_brake)
   (if __ego_brake (setq _ego_brake __ego_brake)) _ego_brake)
  (:ego_steer
   (&optional __ego_steer)
   (if __ego_steer (setq _ego_steer __ego_steer)) _ego_steer)
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:linear_acceleration
   (&rest __linear_acceleration)
   (if (keywordp (car __linear_acceleration))
       (send* _linear_acceleration __linear_acceleration)
     (progn
       (if __linear_acceleration (setq _linear_acceleration (car __linear_acceleration)))
       _linear_acceleration)))
  (:angular_velocity
   (&rest __angular_velocity)
   (if (keywordp (car __angular_velocity))
       (send* _angular_velocity __angular_velocity)
     (progn
       (if __angular_velocity (setq _angular_velocity (car __angular_velocity)))
       _angular_velocity)))
  (:num_of_npcs
   (&optional __num_of_npcs)
   (if __num_of_npcs (setq _num_of_npcs __num_of_npcs)) _num_of_npcs)
  (:num_of_pedestrian
   (&optional __num_of_pedestrian)
   (if __num_of_pedestrian (setq _num_of_pedestrian __num_of_pedestrian)) _num_of_pedestrian)
  (:num_of_obstacle
   (&optional __num_of_obstacle)
   (if __num_of_obstacle (setq _num_of_obstacle __num_of_obstacle)) _num_of_obstacle)
  (:npc_list
   (&rest __npc_list)
   (if (keywordp (car __npc_list))
       (send* _npc_list __npc_list)
     (progn
       (if __npc_list (setq _npc_list (car __npc_list)))
       _npc_list)))
  (:pedestrian_list
   (&rest __pedestrian_list)
   (if (keywordp (car __pedestrian_list))
       (send* _pedestrian_list __pedestrian_list)
     (progn
       (if __pedestrian_list (setq _pedestrian_list (car __pedestrian_list)))
       _pedestrian_list)))
  (:obstacle_list
   (&rest __obstacle_list)
   (if (keywordp (car __obstacle_list))
       (send* _obstacle_list __obstacle_list)
     (progn
       (if __obstacle_list (setq _obstacle_list (car __obstacle_list)))
       _obstacle_list)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _ego_acc
    8
    ;; float64 _ego_brake
    8
    ;; float64 _ego_steer
    8
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; geometry_msgs/Vector3 _linear_acceleration
    (send _linear_acceleration :serialization-length)
    ;; geometry_msgs/Vector3 _angular_velocity
    (send _angular_velocity :serialization-length)
    ;; int32 _num_of_npcs
    4
    ;; int32 _num_of_pedestrian
    4
    ;; int32 _num_of_obstacle
    4
    ;; morai_msgs/ObjectStatus[] _npc_list
    (apply #'+ (send-all _npc_list :serialization-length)) 4
    ;; morai_msgs/ObjectStatus[] _pedestrian_list
    (apply #'+ (send-all _pedestrian_list :serialization-length)) 4
    ;; morai_msgs/ObjectStatus[] _obstacle_list
    (apply #'+ (send-all _obstacle_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _ego_acc
       (sys::poke _ego_acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ego_brake
       (sys::poke _ego_brake (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ego_steer
       (sys::poke _ego_steer (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;; geometry_msgs/Vector3 _linear_acceleration
       (send _linear_acceleration :serialize s)
     ;; geometry_msgs/Vector3 _angular_velocity
       (send _angular_velocity :serialize s)
     ;; int32 _num_of_npcs
       (write-long _num_of_npcs s)
     ;; int32 _num_of_pedestrian
       (write-long _num_of_pedestrian s)
     ;; int32 _num_of_obstacle
       (write-long _num_of_obstacle s)
     ;; morai_msgs/ObjectStatus[] _npc_list
     (write-long (length _npc_list) s)
     (dolist (elem _npc_list)
       (send elem :serialize s)
       )
     ;; morai_msgs/ObjectStatus[] _pedestrian_list
     (write-long (length _pedestrian_list) s)
     (dolist (elem _pedestrian_list)
       (send elem :serialize s)
       )
     ;; morai_msgs/ObjectStatus[] _obstacle_list
     (write-long (length _obstacle_list) s)
     (dolist (elem _obstacle_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _ego_acc
     (setq _ego_acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ego_brake
     (setq _ego_brake (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ego_steer
     (setq _ego_steer (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; geometry_msgs/Vector3 _linear_acceleration
     (send _linear_acceleration :deserialize buf ptr-) (incf ptr- (send _linear_acceleration :serialization-length))
   ;; geometry_msgs/Vector3 _angular_velocity
     (send _angular_velocity :deserialize buf ptr-) (incf ptr- (send _angular_velocity :serialization-length))
   ;; int32 _num_of_npcs
     (setq _num_of_npcs (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num_of_pedestrian
     (setq _num_of_pedestrian (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num_of_obstacle
     (setq _num_of_obstacle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; morai_msgs/ObjectStatus[] _npc_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _npc_list (let (r) (dotimes (i n) (push (instance morai_msgs::ObjectStatus :init) r)) r))
     (dolist (elem- _npc_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; morai_msgs/ObjectStatus[] _pedestrian_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pedestrian_list (let (r) (dotimes (i n) (push (instance morai_msgs::ObjectStatus :init) r)) r))
     (dolist (elem- _pedestrian_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; morai_msgs/ObjectStatus[] _obstacle_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacle_list (let (r) (dotimes (i n) (push (instance morai_msgs::ObjectStatus :init) r)) r))
     (dolist (elem- _obstacle_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get morai_msgs::ReplayInfo :md5sum-) "79280912719be2d1374fda7d2d0d3d7e")
(setf (get morai_msgs::ReplayInfo :datatype-) "morai_msgs/ReplayInfo")
(setf (get morai_msgs::ReplayInfo :definition-)
      "Header header

float64 ego_acc
float64 ego_brake
float64 ego_steer

geometry_msgs/Quaternion orientation

geometry_msgs/Vector3 linear_acceleration

geometry_msgs/Vector3 angular_velocity

int32 num_of_npcs
int32 num_of_pedestrian
int32 num_of_obstacle

ObjectStatus[] npc_list 

ObjectStatus[] pedestrian_list

ObjectStatus[] obstacle_list 
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: morai_msgs/ObjectStatus
int32 unique_id
int32 type
string name
float64 heading

geometry_msgs/Vector3 velocity
geometry_msgs/Vector3 acceleration
geometry_msgs/Vector3 size
geometry_msgs/Vector3 position

")



(provide :morai_msgs/ReplayInfo "79280912719be2d1374fda7d2d0d3d7e")


