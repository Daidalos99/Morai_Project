;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::NpcGhostCmd)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'NpcGhostCmd (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::NPCGHOSTCMD")
  (make-package "MORAI_MSGS::NPCGHOSTCMD"))

(in-package "ROS")
;;//! \htmlinclude NpcGhostCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass morai_msgs::NpcGhostCmd
  :super ros::object
  :slots (_header _npc_list ))

(defmethod morai_msgs::NpcGhostCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:npc_list __npc_list) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _npc_list __npc_list)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:npc_list
   (&rest __npc_list)
   (if (keywordp (car __npc_list))
       (send* _npc_list __npc_list)
     (progn
       (if __npc_list (setq _npc_list (car __npc_list)))
       _npc_list)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; morai_msgs/NpcGhostInfo[] _npc_list
    (apply #'+ (send-all _npc_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; morai_msgs/NpcGhostInfo[] _npc_list
     (write-long (length _npc_list) s)
     (dolist (elem _npc_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; morai_msgs/NpcGhostInfo[] _npc_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _npc_list (let (r) (dotimes (i n) (push (instance morai_msgs::NpcGhostInfo :init) r)) r))
     (dolist (elem- _npc_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get morai_msgs::NpcGhostCmd :md5sum-) "f46c55a2e9ac85bf40936cf393bdb14d")
(setf (get morai_msgs::NpcGhostCmd :datatype-) "morai_msgs/NpcGhostCmd")
(setf (get morai_msgs::NpcGhostCmd :definition-)
      "Header header

NpcGhostInfo[] npc_list

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
MSG: morai_msgs/NpcGhostInfo
int32 unique_id
string name

geometry_msgs/Vector3 position
geometry_msgs/Vector3 rpy

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



(provide :morai_msgs/NpcGhostCmd "f46c55a2e9ac85bf40936cf393bdb14d")


