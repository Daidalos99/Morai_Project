;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::MoraiSimProcHandle)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'MoraiSimProcHandle (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::MORAISIMPROCHANDLE")
  (make-package "MORAI_MSGS::MORAISIMPROCHANDLE"))

(in-package "ROS")
;;//! \htmlinclude MoraiSimProcHandle.msg.html


(defclass morai_msgs::MoraiSimProcHandle
  :super ros::object
  :slots (_sim_process_status _replay_option _rosbag_file_name _replay_target_option _replay_speed _start_time ))

(defmethod morai_msgs::MoraiSimProcHandle
  (:init
   (&key
    ((:sim_process_status __sim_process_status) 0)
    ((:replay_option __replay_option) 0)
    ((:rosbag_file_name __rosbag_file_name) "")
    ((:replay_target_option __replay_target_option) 0)
    ((:replay_speed __replay_speed) 0)
    ((:start_time __start_time) 0)
    )
   (send-super :init)
   (setq _sim_process_status (round __sim_process_status))
   (setq _replay_option (round __replay_option))
   (setq _rosbag_file_name (string __rosbag_file_name))
   (setq _replay_target_option (round __replay_target_option))
   (setq _replay_speed (round __replay_speed))
   (setq _start_time (round __start_time))
   self)
  (:sim_process_status
   (&optional __sim_process_status)
   (if __sim_process_status (setq _sim_process_status __sim_process_status)) _sim_process_status)
  (:replay_option
   (&optional __replay_option)
   (if __replay_option (setq _replay_option __replay_option)) _replay_option)
  (:rosbag_file_name
   (&optional __rosbag_file_name)
   (if __rosbag_file_name (setq _rosbag_file_name __rosbag_file_name)) _rosbag_file_name)
  (:replay_target_option
   (&optional __replay_target_option)
   (if __replay_target_option (setq _replay_target_option __replay_target_option)) _replay_target_option)
  (:replay_speed
   (&optional __replay_speed)
   (if __replay_speed (setq _replay_speed __replay_speed)) _replay_speed)
  (:start_time
   (&optional __start_time)
   (if __start_time (setq _start_time __start_time)) _start_time)
  (:serialization-length
   ()
   (+
    ;; uint8 _sim_process_status
    1
    ;; int16 _replay_option
    2
    ;; string _rosbag_file_name
    4 (length _rosbag_file_name)
    ;; int16 _replay_target_option
    2
    ;; int32 _replay_speed
    4
    ;; int32 _start_time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _sim_process_status
       (write-byte _sim_process_status s)
     ;; int16 _replay_option
       (write-word _replay_option s)
     ;; string _rosbag_file_name
       (write-long (length _rosbag_file_name) s) (princ _rosbag_file_name s)
     ;; int16 _replay_target_option
       (write-word _replay_target_option s)
     ;; int32 _replay_speed
       (write-long _replay_speed s)
     ;; int32 _start_time
       (write-long _start_time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _sim_process_status
     (setq _sim_process_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _replay_option
     (setq _replay_option (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _rosbag_file_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _rosbag_file_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _replay_target_option
     (setq _replay_target_option (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _replay_speed
     (setq _replay_speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _start_time
     (setq _start_time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get morai_msgs::MoraiSimProcHandle :md5sum-) "0c9175c85f14149cc98c9509a8191c60")
(setf (get morai_msgs::MoraiSimProcHandle :datatype-) "morai_msgs/MoraiSimProcHandle")
(setf (get morai_msgs::MoraiSimProcHandle :definition-)
      "uint8 sim_process_status

int16 replay_option
string rosbag_file_name
int16 replay_target_option

int32 replay_speed
int32 start_time

")



(provide :morai_msgs/MoraiSimProcHandle "0c9175c85f14149cc98c9509a8191c60")


