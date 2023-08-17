;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::SyncModeInfo)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'SyncModeInfo (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::SYNCMODEINFO")
  (make-package "MORAI_MSGS::SYNCMODEINFO"))

(in-package "ROS")
;;//! \htmlinclude SyncModeInfo.msg.html


(defclass morai_msgs::SyncModeInfo
  :super ros::object
  :slots (_master_id _status _frame _can_send_tick ))

(defmethod morai_msgs::SyncModeInfo
  (:init
   (&key
    ((:master_id __master_id) "")
    ((:status __status) nil)
    ((:frame __frame) 0)
    ((:can_send_tick __can_send_tick) nil)
    )
   (send-super :init)
   (setq _master_id (string __master_id))
   (setq _status __status)
   (setq _frame (round __frame))
   (setq _can_send_tick __can_send_tick)
   self)
  (:master_id
   (&optional __master_id)
   (if __master_id (setq _master_id __master_id)) _master_id)
  (:status
   (&optional (__status :null))
   (if (not (eq __status :null)) (setq _status __status)) _status)
  (:frame
   (&optional __frame)
   (if __frame (setq _frame __frame)) _frame)
  (:can_send_tick
   (&optional (__can_send_tick :null))
   (if (not (eq __can_send_tick :null)) (setq _can_send_tick __can_send_tick)) _can_send_tick)
  (:serialization-length
   ()
   (+
    ;; string _master_id
    4 (length _master_id)
    ;; bool _status
    1
    ;; uint64 _frame
    8
    ;; bool _can_send_tick
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _master_id
       (write-long (length _master_id) s) (princ _master_id s)
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
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
     ;; bool _can_send_tick
       (if _can_send_tick (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _master_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _master_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
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
   ;; bool _can_send_tick
     (setq _can_send_tick (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get morai_msgs::SyncModeInfo :md5sum-) "6d9bc8fdf24a57461d5bcf823494e818")
(setf (get morai_msgs::SyncModeInfo :datatype-) "morai_msgs/SyncModeInfo")
(setf (get morai_msgs::SyncModeInfo :definition-)
      "string master_id
bool status
uint64 frame

bool can_send_tick

")



(provide :morai_msgs/SyncModeInfo "6d9bc8fdf24a57461d5bcf823494e818")


