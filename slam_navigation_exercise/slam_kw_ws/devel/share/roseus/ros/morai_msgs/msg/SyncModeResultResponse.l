;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::SyncModeResultResponse)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'SyncModeResultResponse (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::SYNCMODERESULTRESPONSE")
  (make-package "MORAI_MSGS::SYNCMODERESULTRESPONSE"))

(in-package "ROS")
;;//! \htmlinclude SyncModeResultResponse.msg.html


(defclass morai_msgs::SyncModeResultResponse
  :super ros::object
  :slots (_result ))

(defmethod morai_msgs::SyncModeResultResponse
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

(setf (get morai_msgs::SyncModeResultResponse :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get morai_msgs::SyncModeResultResponse :datatype-) "morai_msgs/SyncModeResultResponse")
(setf (get morai_msgs::SyncModeResultResponse :definition-)
      "bool result

")



(provide :morai_msgs/SyncModeResultResponse "eb13ac1f1354ccecb7941ee8fa2192e8")


