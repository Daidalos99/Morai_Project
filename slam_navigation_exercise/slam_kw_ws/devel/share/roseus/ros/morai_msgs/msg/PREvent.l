;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::PREvent)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'PREvent (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::PREVENT")
  (make-package "MORAI_MSGS::PREVENT"))

(in-package "ROS")
;;//! \htmlinclude PREvent.msg.html


(defclass morai_msgs::PREvent
  :super ros::object
  :slots (_mountVehicle ))

(defmethod morai_msgs::PREvent
  (:init
   (&key
    ((:mountVehicle __mountVehicle) nil)
    )
   (send-super :init)
   (setq _mountVehicle __mountVehicle)
   self)
  (:mountVehicle
   (&optional (__mountVehicle :null))
   (if (not (eq __mountVehicle :null)) (setq _mountVehicle __mountVehicle)) _mountVehicle)
  (:serialization-length
   ()
   (+
    ;; bool _mountVehicle
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _mountVehicle
       (if _mountVehicle (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _mountVehicle
     (setq _mountVehicle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get morai_msgs::PREvent :md5sum-) "ab98a8b314ee24dcbc91e59253d3a584")
(setf (get morai_msgs::PREvent :datatype-) "morai_msgs/PREvent")
(setf (get morai_msgs::PREvent :definition-)
      "bool mountVehicle

")



(provide :morai_msgs/PREvent "ab98a8b314ee24dcbc91e59253d3a584")


