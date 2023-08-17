;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::SetTrafficLight)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'SetTrafficLight (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::SETTRAFFICLIGHT")
  (make-package "MORAI_MSGS::SETTRAFFICLIGHT"))

(in-package "ROS")
;;//! \htmlinclude SetTrafficLight.msg.html


(defclass morai_msgs::SetTrafficLight
  :super ros::object
  :slots (_trafficLightIndex _trafficLightStatus ))

(defmethod morai_msgs::SetTrafficLight
  (:init
   (&key
    ((:trafficLightIndex __trafficLightIndex) "")
    ((:trafficLightStatus __trafficLightStatus) 0)
    )
   (send-super :init)
   (setq _trafficLightIndex (string __trafficLightIndex))
   (setq _trafficLightStatus (round __trafficLightStatus))
   self)
  (:trafficLightIndex
   (&optional __trafficLightIndex)
   (if __trafficLightIndex (setq _trafficLightIndex __trafficLightIndex)) _trafficLightIndex)
  (:trafficLightStatus
   (&optional __trafficLightStatus)
   (if __trafficLightStatus (setq _trafficLightStatus __trafficLightStatus)) _trafficLightStatus)
  (:serialization-length
   ()
   (+
    ;; string _trafficLightIndex
    4 (length _trafficLightIndex)
    ;; int16 _trafficLightStatus
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _trafficLightIndex
       (write-long (length _trafficLightIndex) s) (princ _trafficLightIndex s)
     ;; int16 _trafficLightStatus
       (write-word _trafficLightStatus s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _trafficLightIndex
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _trafficLightIndex (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _trafficLightStatus
     (setq _trafficLightStatus (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get morai_msgs::SetTrafficLight :md5sum-) "bd27357f4982612d0e2067eb726f8617")
(setf (get morai_msgs::SetTrafficLight :datatype-) "morai_msgs/SetTrafficLight")
(setf (get morai_msgs::SetTrafficLight :definition-)
      "string trafficLightIndex
int16 trafficLightStatus

")



(provide :morai_msgs/SetTrafficLight "bd27357f4982612d0e2067eb726f8617")


