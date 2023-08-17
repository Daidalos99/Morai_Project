;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::SyncModeRemoveObject)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'SyncModeRemoveObject (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::SYNCMODEREMOVEOBJECT")
  (make-package "MORAI_MSGS::SYNCMODEREMOVEOBJECT"))

(in-package "ROS")
;;//! \htmlinclude SyncModeRemoveObject.msg.html


(defclass morai_msgs::SyncModeRemoveObject
  :super ros::object
  :slots (_unique_id _frame ))

(defmethod morai_msgs::SyncModeRemoveObject
  (:init
   (&key
    ((:unique_id __unique_id) 0)
    ((:frame __frame) 0)
    )
   (send-super :init)
   (setq _unique_id (round __unique_id))
   (setq _frame (round __frame))
   self)
  (:unique_id
   (&optional __unique_id)
   (if __unique_id (setq _unique_id __unique_id)) _unique_id)
  (:frame
   (&optional __frame)
   (if __frame (setq _frame __frame)) _frame)
  (:serialization-length
   ()
   (+
    ;; int32 _unique_id
    4
    ;; uint64 _frame
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _unique_id
       (write-long _unique_id s)
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
   ;; int32 _unique_id
     (setq _unique_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
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

(setf (get morai_msgs::SyncModeRemoveObject :md5sum-) "e03aa402d08096d62169318ac743ac26")
(setf (get morai_msgs::SyncModeRemoveObject :datatype-) "morai_msgs/SyncModeRemoveObject")
(setf (get morai_msgs::SyncModeRemoveObject :definition-)
      "int32 unique_id
uint64 frame

")



(provide :morai_msgs/SyncModeRemoveObject "e03aa402d08096d62169318ac743ac26")


