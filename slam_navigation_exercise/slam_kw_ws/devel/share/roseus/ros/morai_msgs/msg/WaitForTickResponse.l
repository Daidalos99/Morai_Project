;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::WaitForTickResponse)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'WaitForTickResponse (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::WAITFORTICKRESPONSE")
  (make-package "MORAI_MSGS::WAITFORTICKRESPONSE"))

(in-package "ROS")
;;//! \htmlinclude WaitForTickResponse.msg.html


(defclass morai_msgs::WaitForTickResponse
  :super ros::object
  :slots (_tick_status _pause_status _frame _vehicle_status _time ))

(defmethod morai_msgs::WaitForTickResponse
  (:init
   (&key
    ((:tick_status __tick_status) nil)
    ((:pause_status __pause_status) nil)
    ((:frame __frame) 0)
    ((:vehicle_status __vehicle_status) (instance morai_msgs::EgoVehicleStatus :init))
    ((:time __time) "")
    )
   (send-super :init)
   (setq _tick_status __tick_status)
   (setq _pause_status __pause_status)
   (setq _frame (round __frame))
   (setq _vehicle_status __vehicle_status)
   (setq _time (string __time))
   self)
  (:tick_status
   (&optional (__tick_status :null))
   (if (not (eq __tick_status :null)) (setq _tick_status __tick_status)) _tick_status)
  (:pause_status
   (&optional (__pause_status :null))
   (if (not (eq __pause_status :null)) (setq _pause_status __pause_status)) _pause_status)
  (:frame
   (&optional __frame)
   (if __frame (setq _frame __frame)) _frame)
  (:vehicle_status
   (&rest __vehicle_status)
   (if (keywordp (car __vehicle_status))
       (send* _vehicle_status __vehicle_status)
     (progn
       (if __vehicle_status (setq _vehicle_status (car __vehicle_status)))
       _vehicle_status)))
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; bool _tick_status
    1
    ;; bool _pause_status
    1
    ;; uint64 _frame
    8
    ;; morai_msgs/EgoVehicleStatus _vehicle_status
    (send _vehicle_status :serialization-length)
    ;; string _time
    4 (length _time)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _tick_status
       (if _tick_status (write-byte -1 s) (write-byte 0 s))
     ;; bool _pause_status
       (if _pause_status (write-byte -1 s) (write-byte 0 s))
     ;; uint64 _frame
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _frame (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _frame) (= (length (_frame . bv)) 2)) ;; bignum
              (write-long (ash (elt (_frame . bv) 0) 0) s)
              (write-long (ash (elt (_frame . bv) 1) -1) s))
             ((and (class _frame) (= (length (_frame . bv)) 1)) ;; big1
              (write-long (elt (_frame . bv) 0) s)
              (write-long (if (>= _frame 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _frame s)(write-long (if (>= _frame 0) 0 #xffffffff) s)))
     ;; morai_msgs/EgoVehicleStatus _vehicle_status
       (send _vehicle_status :serialize s)
     ;; string _time
       (write-long (length _time) s) (princ _time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _tick_status
     (setq _tick_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pause_status
     (setq _pause_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint64 _frame
     
#+(or :alpha :irix6 :x86_64)
      (setf _frame (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _frame (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; morai_msgs/EgoVehicleStatus _vehicle_status
     (send _vehicle_status :deserialize buf ptr-) (incf ptr- (send _vehicle_status :serialization-length))
   ;; string _time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get morai_msgs::WaitForTickResponse :md5sum-) "1c80ca1ddc5a285c8be87fef734111b0")
(setf (get morai_msgs::WaitForTickResponse :datatype-) "morai_msgs/WaitForTickResponse")
(setf (get morai_msgs::WaitForTickResponse :definition-)
      "bool tick_status
bool pause_status
uint64 frame

EgoVehicleStatus vehicle_status
string time

================================================================================
MSG: morai_msgs/EgoVehicleStatus
Header header
int32 unique_id
geometry_msgs/Vector3 acceleration
geometry_msgs/Vector3 position
geometry_msgs/Vector3 velocity

float64 heading
float32 accel
float32 brake
float32 wheel_angle

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



(provide :morai_msgs/WaitForTickResponse "1c80ca1ddc5a285c8be87fef734111b0")


