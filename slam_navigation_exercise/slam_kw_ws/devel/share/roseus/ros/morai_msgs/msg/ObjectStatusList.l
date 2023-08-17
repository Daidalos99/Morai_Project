;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::ObjectStatusList)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'ObjectStatusList (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::OBJECTSTATUSLIST")
  (make-package "MORAI_MSGS::OBJECTSTATUSLIST"))

(in-package "ROS")
;;//! \htmlinclude ObjectStatusList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass morai_msgs::ObjectStatusList
  :super ros::object
  :slots (_header _num_of_npcs _num_of_pedestrian _num_of_obstacle _npc_list _pedestrian_list _obstacle_list ))

(defmethod morai_msgs::ObjectStatusList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:num_of_npcs __num_of_npcs) 0)
    ((:num_of_pedestrian __num_of_pedestrian) 0)
    ((:num_of_obstacle __num_of_obstacle) 0)
    ((:npc_list __npc_list) ())
    ((:pedestrian_list __pedestrian_list) ())
    ((:obstacle_list __obstacle_list) ())
    )
   (send-super :init)
   (setq _header __header)
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

(setf (get morai_msgs::ObjectStatusList :md5sum-) "97d744183b4ec364d0c8dac1cd520ef1")
(setf (get morai_msgs::ObjectStatusList :datatype-) "morai_msgs/ObjectStatusList")
(setf (get morai_msgs::ObjectStatusList :definition-)
      "Header header

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
MSG: morai_msgs/ObjectStatus
int32 unique_id
int32 type
string name
float64 heading

geometry_msgs/Vector3 velocity
geometry_msgs/Vector3 acceleration
geometry_msgs/Vector3 size
geometry_msgs/Vector3 position

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
")



(provide :morai_msgs/ObjectStatusList "97d744183b4ec364d0c8dac1cd520ef1")


