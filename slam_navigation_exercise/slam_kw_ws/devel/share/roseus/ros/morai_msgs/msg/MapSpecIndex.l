;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::MapSpecIndex)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'MapSpecIndex (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::MAPSPECINDEX")
  (make-package "MORAI_MSGS::MAPSPECINDEX"))

(in-package "ROS")
;;//! \htmlinclude MapSpecIndex.msg.html


(defclass morai_msgs::MapSpecIndex
  :super ros::object
  :slots (_load_map_data ))

(defmethod morai_msgs::MapSpecIndex
  (:init
   (&key
    ((:load_map_data __load_map_data) nil)
    )
   (send-super :init)
   (setq _load_map_data __load_map_data)
   self)
  (:load_map_data
   (&optional (__load_map_data :null))
   (if (not (eq __load_map_data :null)) (setq _load_map_data __load_map_data)) _load_map_data)
  (:serialization-length
   ()
   (+
    ;; bool _load_map_data
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _load_map_data
       (if _load_map_data (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _load_map_data
     (setq _load_map_data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get morai_msgs::MapSpecIndex :md5sum-) "019993d4829f9fc48833727291488dc1")
(setf (get morai_msgs::MapSpecIndex :datatype-) "morai_msgs/MapSpecIndex")
(setf (get morai_msgs::MapSpecIndex :definition-)
      "bool load_map_data
")



(provide :morai_msgs/MapSpecIndex "019993d4829f9fc48833727291488dc1")


