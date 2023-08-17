;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::IntscnTL)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'IntscnTL (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::INTSCNTL")
  (make-package "MORAI_MSGS::INTSCNTL"))

(in-package "ROS")
;;//! \htmlinclude IntscnTL.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass morai_msgs::IntscnTL
  :super ros::object
  :slots (_header _idx _state _delta_time ))

(defmethod morai_msgs::IntscnTL
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:idx __idx) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:state __state) (make-array 0 :initial-element 0 :element-type :integer))
    ((:delta_time __delta_time) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _idx __idx)
   (setq _state __state)
   (setq _delta_time __delta_time)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:idx
   (&optional __idx)
   (if __idx (setq _idx __idx)) _idx)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:delta_time
   (&optional __delta_time)
   (if __delta_time (setq _delta_time __delta_time)) _delta_time)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _idx
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _idx)) 4
    ;; int32[] _state
    (* 4    (length _state)) 4
    ;; float32[] _delta_time
    (* 4    (length _delta_time)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _idx
     (write-long (length _idx) s)
     (dolist (elem _idx)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int32[] _state
     (write-long (length _state) s)
     (dotimes (i (length _state))
       (write-long (elt _state i) s)
       )
     ;; float32[] _delta_time
     (write-long (length _delta_time) s)
     (dotimes (i (length _delta_time))
       (sys::poke (elt _delta_time i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _idx
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _idx (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _idx i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int32[] _state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _state (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _state i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _delta_time
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _delta_time (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _delta_time i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get morai_msgs::IntscnTL :md5sum-) "9f2b14b75fa52122ddd11e92b22c6939")
(setf (get morai_msgs::IntscnTL :datatype-) "morai_msgs/IntscnTL")
(setf (get morai_msgs::IntscnTL :definition-)
      "Header header

string[] idx
int32[] state
float32[] delta_time

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



(provide :morai_msgs/IntscnTL "9f2b14b75fa52122ddd11e92b22c6939")


