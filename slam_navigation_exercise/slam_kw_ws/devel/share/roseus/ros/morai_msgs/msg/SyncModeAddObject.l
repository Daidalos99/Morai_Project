;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::SyncModeAddObject)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'SyncModeAddObject (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::SYNCMODEADDOBJECT")
  (make-package "MORAI_MSGS::SYNCMODEADDOBJECT"))

(in-package "ROS")
;;//! \htmlinclude SyncModeAddObject.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass morai_msgs::SyncModeAddObject
  :super ros::object
  :slots (_name _position _heading _frame ))

(defmethod morai_msgs::SyncModeAddObject
  (:init
   (&key
    ((:name __name) "")
    ((:position __position) (instance geometry_msgs::Vector3 :init))
    ((:heading __heading) 0.0)
    ((:frame __frame) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _position __position)
   (setq _heading (float __heading))
   (setq _frame (round __frame))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:frame
   (&optional __frame)
   (if __frame (setq _frame __frame)) _frame)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; geometry_msgs/Vector3 _position
    (send _position :serialization-length)
    ;; float64 _heading
    8
    ;; uint64 _frame
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; geometry_msgs/Vector3 _position
       (send _position :serialize s)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Vector3 _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
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
   ;;
   self)
  )

(setf (get morai_msgs::SyncModeAddObject :md5sum-) "6d5eb87e0fc34ed28764f286444e7f82")
(setf (get morai_msgs::SyncModeAddObject :datatype-) "morai_msgs/SyncModeAddObject")
(setf (get morai_msgs::SyncModeAddObject :definition-)
      "string name
geometry_msgs/Vector3 position
float64 heading
uint64 frame

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



(provide :morai_msgs/SyncModeAddObject "6d5eb87e0fc34ed28764f286444e7f82")


