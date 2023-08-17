;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::SaveSensorData)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'SaveSensorData (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::SAVESENSORDATA")
  (make-package "MORAI_MSGS::SAVESENSORDATA"))

(in-package "ROS")
;;//! \htmlinclude SaveSensorData.msg.html


(defclass morai_msgs::SaveSensorData
  :super ros::object
  :slots (_is_custom_file_name _custom_file_name _file_dir ))

(defmethod morai_msgs::SaveSensorData
  (:init
   (&key
    ((:is_custom_file_name __is_custom_file_name) nil)
    ((:custom_file_name __custom_file_name) "")
    ((:file_dir __file_dir) "")
    )
   (send-super :init)
   (setq _is_custom_file_name __is_custom_file_name)
   (setq _custom_file_name (string __custom_file_name))
   (setq _file_dir (string __file_dir))
   self)
  (:is_custom_file_name
   (&optional (__is_custom_file_name :null))
   (if (not (eq __is_custom_file_name :null)) (setq _is_custom_file_name __is_custom_file_name)) _is_custom_file_name)
  (:custom_file_name
   (&optional __custom_file_name)
   (if __custom_file_name (setq _custom_file_name __custom_file_name)) _custom_file_name)
  (:file_dir
   (&optional __file_dir)
   (if __file_dir (setq _file_dir __file_dir)) _file_dir)
  (:serialization-length
   ()
   (+
    ;; bool _is_custom_file_name
    1
    ;; string _custom_file_name
    4 (length _custom_file_name)
    ;; string _file_dir
    4 (length _file_dir)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_custom_file_name
       (if _is_custom_file_name (write-byte -1 s) (write-byte 0 s))
     ;; string _custom_file_name
       (write-long (length _custom_file_name) s) (princ _custom_file_name s)
     ;; string _file_dir
       (write-long (length _file_dir) s) (princ _file_dir s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_custom_file_name
     (setq _is_custom_file_name (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _custom_file_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _custom_file_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _file_dir
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_dir (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get morai_msgs::SaveSensorData :md5sum-) "dad180f0ff2328c64bf118f8cf118abe")
(setf (get morai_msgs::SaveSensorData :datatype-) "morai_msgs/SaveSensorData")
(setf (get morai_msgs::SaveSensorData :definition-)
      "bool is_custom_file_name
string custom_file_name
string file_dir

")



(provide :morai_msgs/SaveSensorData "dad180f0ff2328c64bf118f8cf118abe")


