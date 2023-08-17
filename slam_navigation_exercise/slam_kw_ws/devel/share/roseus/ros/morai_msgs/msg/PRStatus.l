;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::PRStatus)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'PRStatus (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::PRSTATUS")
  (make-package "MORAI_MSGS::PRSTATUS"))

(in-package "ROS")
;;//! \htmlinclude PRStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass morai_msgs::PRStatus
  :super ros::object
  :slots (_header _position_X _position_Y _position_Z _heading _mountStatus ))

(defmethod morai_msgs::PRStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:position_X __position_X) 0.0)
    ((:position_Y __position_Y) 0.0)
    ((:position_Z __position_Z) 0.0)
    ((:heading __heading) 0.0)
    ((:mountStatus __mountStatus) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _position_X (float __position_X))
   (setq _position_Y (float __position_Y))
   (setq _position_Z (float __position_Z))
   (setq _heading (float __heading))
   (setq _mountStatus __mountStatus)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:position_X
   (&optional __position_X)
   (if __position_X (setq _position_X __position_X)) _position_X)
  (:position_Y
   (&optional __position_Y)
   (if __position_Y (setq _position_Y __position_Y)) _position_Y)
  (:position_Z
   (&optional __position_Z)
   (if __position_Z (setq _position_Z __position_Z)) _position_Z)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:mountStatus
   (&optional (__mountStatus :null))
   (if (not (eq __mountStatus :null)) (setq _mountStatus __mountStatus)) _mountStatus)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _position_X
    4
    ;; float32 _position_Y
    4
    ;; float32 _position_Z
    4
    ;; float64 _heading
    8
    ;; bool _mountStatus
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _position_X
       (sys::poke _position_X (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _position_Y
       (sys::poke _position_Y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _position_Z
       (sys::poke _position_Z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _mountStatus
       (if _mountStatus (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _position_X
     (setq _position_X (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _position_Y
     (setq _position_Y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _position_Z
     (setq _position_Z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _mountStatus
     (setq _mountStatus (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get morai_msgs::PRStatus :md5sum-) "3717aef8039c3cd46c25aa8ac584e9d9")
(setf (get morai_msgs::PRStatus :datatype-) "morai_msgs/PRStatus")
(setf (get morai_msgs::PRStatus :definition-)
      "Header header

float32 position_X
float32 position_Y
float32 position_Z
float64 heading
bool mountStatus

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

")



(provide :morai_msgs/PRStatus "3717aef8039c3cd46c25aa8ac584e9d9")


