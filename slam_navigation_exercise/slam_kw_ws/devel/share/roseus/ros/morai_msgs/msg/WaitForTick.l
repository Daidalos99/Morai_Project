;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::WaitForTick)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'WaitForTick (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::WAITFORTICK")
  (make-package "MORAI_MSGS::WAITFORTICK"))

(in-package "ROS")
;;//! \htmlinclude WaitForTick.msg.html


(defclass morai_msgs::WaitForTick
  :super ros::object
  :slots (_user_id _frame ))

(defmethod morai_msgs::WaitForTick
  (:init
   (&key
    ((:user_id __user_id) "")
    ((:frame __frame) 0)
    )
   (send-super :init)
   (setq _user_id (string __user_id))
   (setq _frame (round __frame))
   self)
  (:user_id
   (&optional __user_id)
   (if __user_id (setq _user_id __user_id)) _user_id)
  (:frame
   (&optional __frame)
   (if __frame (setq _frame __frame)) _frame)
  (:serialization-length
   ()
   (+
    ;; string _user_id
    4 (length _user_id)
    ;; uint64 _frame
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _user_id
       (write-long (length _user_id) s) (princ _user_id s)
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
   ;; string _user_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _user_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(setf (get morai_msgs::WaitForTick :md5sum-) "2fc7bbc1a7fcecee1fda37b70774bdd8")
(setf (get morai_msgs::WaitForTick :datatype-) "morai_msgs/WaitForTick")
(setf (get morai_msgs::WaitForTick :definition-)
      "string user_id
uint64 frame

")



(provide :morai_msgs/WaitForTick "2fc7bbc1a7fcecee1fda37b70774bdd8")


