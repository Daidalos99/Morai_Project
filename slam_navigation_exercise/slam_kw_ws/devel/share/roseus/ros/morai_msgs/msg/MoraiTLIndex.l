;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::MoraiTLIndex)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'MoraiTLIndex (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::MORAITLINDEX")
  (make-package "MORAI_MSGS::MORAITLINDEX"))

(in-package "ROS")
;;//! \htmlinclude MoraiTLIndex.msg.html


(defclass morai_msgs::MoraiTLIndex
  :super ros::object
  :slots (_idx ))

(defmethod morai_msgs::MoraiTLIndex
  (:init
   (&key
    ((:idx __idx) "")
    )
   (send-super :init)
   (setq _idx (string __idx))
   self)
  (:idx
   (&optional __idx)
   (if __idx (setq _idx __idx)) _idx)
  (:serialization-length
   ()
   (+
    ;; string _idx
    4 (length _idx)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _idx
       (write-long (length _idx) s) (princ _idx s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _idx
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _idx (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get morai_msgs::MoraiTLIndex :md5sum-) "71e0c15635f115962468861139afa95e")
(setf (get morai_msgs::MoraiTLIndex :datatype-) "morai_msgs/MoraiTLIndex")
(setf (get morai_msgs::MoraiTLIndex :definition-)
      "string idx

")



(provide :morai_msgs/MoraiTLIndex "71e0c15635f115962468861139afa95e")


