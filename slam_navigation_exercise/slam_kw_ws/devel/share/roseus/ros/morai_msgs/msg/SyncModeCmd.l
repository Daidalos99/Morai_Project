;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::SyncModeCmd)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'SyncModeCmd (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::SYNCMODECMD")
  (make-package "MORAI_MSGS::SYNCMODECMD"))

(in-package "ROS")
;;//! \htmlinclude SyncModeCmd.msg.html


(defclass morai_msgs::SyncModeCmd
  :super ros::object
  :slots (_user_id _start_sync_mode _time_step ))

(defmethod morai_msgs::SyncModeCmd
  (:init
   (&key
    ((:user_id __user_id) "")
    ((:start_sync_mode __start_sync_mode) nil)
    ((:time_step __time_step) 0)
    )
   (send-super :init)
   (setq _user_id (string __user_id))
   (setq _start_sync_mode __start_sync_mode)
   (setq _time_step (round __time_step))
   self)
  (:user_id
   (&optional __user_id)
   (if __user_id (setq _user_id __user_id)) _user_id)
  (:start_sync_mode
   (&optional (__start_sync_mode :null))
   (if (not (eq __start_sync_mode :null)) (setq _start_sync_mode __start_sync_mode)) _start_sync_mode)
  (:time_step
   (&optional __time_step)
   (if __time_step (setq _time_step __time_step)) _time_step)
  (:serialization-length
   ()
   (+
    ;; string _user_id
    4 (length _user_id)
    ;; bool _start_sync_mode
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
     ;; bool _start_sync_mode
       (if _start_sync_mode (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _time_step
       (write-long _time_step s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _user_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _user_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _start_sync_mode
     (setq _start_sync_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _time_step
     (setq _time_step (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get morai_msgs::SyncModeCmd :md5sum-) "1cccc3e22a995ad33b1d0a9da180e8c1")
(setf (get morai_msgs::SyncModeCmd :datatype-) "morai_msgs/SyncModeCmd")
(setf (get morai_msgs::SyncModeCmd :definition-)
      "string user_id
bool start_sync_mode
uint32 time_step

")



(provide :morai_msgs/SyncModeCmd "1cccc3e22a995ad33b1d0a9da180e8c1")


