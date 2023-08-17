;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::VehicleSpecIndex)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'VehicleSpecIndex (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::VEHICLESPECINDEX")
  (make-package "MORAI_MSGS::VEHICLESPECINDEX"))

(in-package "ROS")
;;//! \htmlinclude VehicleSpecIndex.msg.html


(defclass morai_msgs::VehicleSpecIndex
  :super ros::object
  :slots (_unique_id ))

(defmethod morai_msgs::VehicleSpecIndex
  (:init
   (&key
    ((:unique_id __unique_id) 0)
    )
   (send-super :init)
   (setq _unique_id (round __unique_id))
   self)
  (:unique_id
   (&optional __unique_id)
   (if __unique_id (setq _unique_id __unique_id)) _unique_id)
  (:serialization-length
   ()
   (+
    ;; int32 _unique_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _unique_id
       (write-long _unique_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _unique_id
     (setq _unique_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get morai_msgs::VehicleSpecIndex :md5sum-) "757f4e51cd60d98daf03650421bff492")
(setf (get morai_msgs::VehicleSpecIndex :datatype-) "morai_msgs/VehicleSpecIndex")
(setf (get morai_msgs::VehicleSpecIndex :definition-)
      "int32 unique_id

")



(provide :morai_msgs/VehicleSpecIndex "757f4e51cd60d98daf03650421bff492")


