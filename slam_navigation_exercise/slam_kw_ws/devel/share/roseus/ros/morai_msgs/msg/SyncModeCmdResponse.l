;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::SyncModeCmdResponse)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'SyncModeCmdResponse (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::SYNCMODECMDRESPONSE")
  (make-package "MORAI_MSGS::SYNCMODECMDRESPONSE"))

(in-package "ROS")
;;//! \htmlinclude SyncModeCmdResponse.msg.html


(defclass morai_msgs::SyncModeCmdResponse
  :super ros::object
  :slots (_user_id _frame _result _time_step ))

(defmethod morai_msgs::SyncModeCmdResponse
  (:init
   (&key
    ((:user_id __user_id) "")
    ((:frame __frame) 0)
    ((:result __result) nil)
    ((:time_step __time_step) 0)
    )
   (send-super :init)
   (setq _user_id (string __user_id))
   (setq _frame (round __frame))
   (setq _result __result)
   (setq _time_step (round __time_step))
   self)
  (:user_id
   (&optional __user_id)
   (if __user_id (setq _user_id __user_id)) _user_id)
  (:frame
   (&optional __frame)
   (if __frame (setq _frame __frame)) _frame)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:time_step
   (&optional __time_step)
   (if __time_step (setq _time_step __time_step)) _time_step)
  (:serialization-length
   ()
   (+
    ;; string _user_id
    4 (length _user_id)
    ;; uint64 _frame
    8
    ;; bool _result
    1
    ;; uint32 _time_step
    4
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
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _time_step
       (write-long _time_step s)
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
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _time_step
     (setq _time_step (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get morai_msgs::SyncModeCmdResponse :md5sum-) "ea7255c2910d9b74a04977095711f9e5")
(setf (get morai_msgs::SyncModeCmdResponse :datatype-) "morai_msgs/SyncModeCmdResponse")
(setf (get morai_msgs::SyncModeCmdResponse :definition-)
      "string user_id
uint64 frame
bool result
uint32 time_step

")



(provide :morai_msgs/SyncModeCmdResponse "ea7255c2910d9b74a04977095711f9e5")


