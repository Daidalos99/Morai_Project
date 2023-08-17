;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::PRCtrlCmd)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'PRCtrlCmd (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::PRCTRLCMD")
  (make-package "MORAI_MSGS::PRCTRLCMD"))

(in-package "ROS")
;;//! \htmlinclude PRCtrlCmd.msg.html


(defclass morai_msgs::PRCtrlCmd
  :super ros::object
  :slots (_longitudinalVelocity _latitudinalVelocity _AngularVelocity ))

(defmethod morai_msgs::PRCtrlCmd
  (:init
   (&key
    ((:longitudinalVelocity __longitudinalVelocity) 0.0)
    ((:latitudinalVelocity __latitudinalVelocity) 0.0)
    ((:AngularVelocity __AngularVelocity) 0.0)
    )
   (send-super :init)
   (setq _longitudinalVelocity (float __longitudinalVelocity))
   (setq _latitudinalVelocity (float __latitudinalVelocity))
   (setq _AngularVelocity (float __AngularVelocity))
   self)
  (:longitudinalVelocity
   (&optional __longitudinalVelocity)
   (if __longitudinalVelocity (setq _longitudinalVelocity __longitudinalVelocity)) _longitudinalVelocity)
  (:latitudinalVelocity
   (&optional __latitudinalVelocity)
   (if __latitudinalVelocity (setq _latitudinalVelocity __latitudinalVelocity)) _latitudinalVelocity)
  (:AngularVelocity
   (&optional __AngularVelocity)
   (if __AngularVelocity (setq _AngularVelocity __AngularVelocity)) _AngularVelocity)
  (:serialization-length
   ()
   (+
    ;; float64 _longitudinalVelocity
    8
    ;; float64 _latitudinalVelocity
    8
    ;; float64 _AngularVelocity
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _longitudinalVelocity
       (sys::poke _longitudinalVelocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _latitudinalVelocity
       (sys::poke _latitudinalVelocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _AngularVelocity
       (sys::poke _AngularVelocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _longitudinalVelocity
     (setq _longitudinalVelocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _latitudinalVelocity
     (setq _latitudinalVelocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _AngularVelocity
     (setq _AngularVelocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get morai_msgs::PRCtrlCmd :md5sum-) "538a390f152bdc3fa35e075076d8b7ec")
(setf (get morai_msgs::PRCtrlCmd :datatype-) "morai_msgs/PRCtrlCmd")
(setf (get morai_msgs::PRCtrlCmd :definition-)
      "float64 longitudinalVelocity
float64 latitudinalVelocity
float64 AngularVelocity
")



(provide :morai_msgs/PRCtrlCmd "538a390f152bdc3fa35e075076d8b7ec")


