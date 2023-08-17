;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::RadarDetection)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'RadarDetection (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::RADARDETECTION")
  (make-package "MORAI_MSGS::RADARDETECTION"))

(in-package "ROS")
;;//! \htmlinclude RadarDetection.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass morai_msgs::RadarDetection
  :super ros::object
  :slots (_detection_id _position _azimuth _rangerate _amplitude ))

(defmethod morai_msgs::RadarDetection
  (:init
   (&key
    ((:detection_id __detection_id) 0)
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:azimuth __azimuth) 0.0)
    ((:rangerate __rangerate) 0.0)
    ((:amplitude __amplitude) 0.0)
    )
   (send-super :init)
   (setq _detection_id (round __detection_id))
   (setq _position __position)
   (setq _azimuth (float __azimuth))
   (setq _rangerate (float __rangerate))
   (setq _amplitude (float __amplitude))
   self)
  (:detection_id
   (&optional __detection_id)
   (if __detection_id (setq _detection_id __detection_id)) _detection_id)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:azimuth
   (&optional __azimuth)
   (if __azimuth (setq _azimuth __azimuth)) _azimuth)
  (:rangerate
   (&optional __rangerate)
   (if __rangerate (setq _rangerate __rangerate)) _rangerate)
  (:amplitude
   (&optional __amplitude)
   (if __amplitude (setq _amplitude __amplitude)) _amplitude)
  (:serialization-length
   ()
   (+
    ;; uint16 _detection_id
    2
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float32 _azimuth
    4
    ;; float32 _rangerate
    4
    ;; float32 _amplitude
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _detection_id
       (write-word _detection_id s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float32 _azimuth
       (sys::poke _azimuth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rangerate
       (sys::poke _rangerate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _amplitude
       (sys::poke _amplitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _detection_id
     (setq _detection_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float32 _azimuth
     (setq _azimuth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rangerate
     (setq _rangerate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _amplitude
     (setq _amplitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get morai_msgs::RadarDetection :md5sum-) "a793982ef59c29909256d522d48cad28")
(setf (get morai_msgs::RadarDetection :datatype-) "morai_msgs/RadarDetection")
(setf (get morai_msgs::RadarDetection :definition-)
      "# This message relates only to FMCW radar.  
# All variables below are relative to the radar's frame of reference.
# This message is not meant to be used alone but as part of a stamped or array message.

# Object classifications (Additional vendor-specific classifications are permitted starting from 32000 eg. Car)

uint16 detection_id                       # Index of each radar detection point
geometry_msgs/Point position              # x, y, z position of each radar detection point

float32 azimuth							  # azimuth angle of each radar detection point in Degree
float32 rangerate						  # relative velocity of the radar detected target w.r.t radial direction
float32 amplitude						  # amplitude of the reflected signal of the radar detected target(rcs)


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :morai_msgs/RadarDetection "a793982ef59c29909256d522d48cad28")


