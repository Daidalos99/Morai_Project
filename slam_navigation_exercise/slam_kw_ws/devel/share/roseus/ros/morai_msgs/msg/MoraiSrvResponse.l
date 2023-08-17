;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::MoraiSrvResponse)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'MoraiSrvResponse (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::MORAISRVRESPONSE")
  (make-package "MORAI_MSGS::MORAISRVRESPONSE"))

(in-package "ROS")
;;//! \htmlinclude MoraiSrvResponse.msg.html


(defclass morai_msgs::MoraiSrvResponse
  :super ros::object
  :slots (_result ))

(defmethod morai_msgs::MoraiSrvResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get morai_msgs::MoraiSrvResponse :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get morai_msgs::MoraiSrvResponse :datatype-) "morai_msgs/MoraiSrvResponse")
(setf (get morai_msgs::MoraiSrvResponse :definition-)
      "bool result

")



(provide :morai_msgs/MoraiSrvResponse "eb13ac1f1354ccecb7941ee8fa2192e8")


