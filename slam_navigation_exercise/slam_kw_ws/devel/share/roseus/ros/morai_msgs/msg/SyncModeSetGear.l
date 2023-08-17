;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::SyncModeSetGear)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'SyncModeSetGear (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::SYNCMODESETGEAR")
  (make-package "MORAI_MSGS::SYNCMODESETGEAR"))

(in-package "ROS")
;;//! \htmlinclude SyncModeSetGear.msg.html


(defclass morai_msgs::SyncModeSetGear
  :super ros::object
  :slots (_gear _frame ))

(defmethod morai_msgs::SyncModeSetGear
  (:init
   (&key
    ((:gear __gear) 0)
    ((:frame __frame) 0)
    )
   (send-super :init)
   (setq _gear (round __gear))
   (setq _frame (round __frame))
   self)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:frame
   (&optional __frame)
   (if __frame (setq _frame __frame)) _frame)
  (:serialization-length
   ()
   (+
    ;; int32 _gear
    4
    ;; uint64 _frame
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _gear
       (write-long _gear s)
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
   ;; int32 _gear
     (setq _gear (sys::peek buf ptr- :integer)) (incf ptr- 4)
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

(setf (get morai_msgs::SyncModeSetGear :md5sum-) "868a6bec5d44170250553f4368c5aafa")
(setf (get morai_msgs::SyncModeSetGear :datatype-) "morai_msgs/SyncModeSetGear")
(setf (get morai_msgs::SyncModeSetGear :definition-)
      "int32 gear
uint64 frame

")



(provide :morai_msgs/SyncModeSetGear "868a6bec5d44170250553f4368c5aafa")


