;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::MapSpec)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'MapSpec (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::MAPSPEC")
  (make-package "MORAI_MSGS::MAPSPEC"))

(in-package "ROS")
;;//! \htmlinclude MapSpec.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass morai_msgs::MapSpec
  :super ros::object
  :slots (_plane_coordinate_system _utm_num _utm_offset _ellipse _central_latitude _central_meridian _scale_factor _false_easting _false_northing ))

(defmethod morai_msgs::MapSpec
  (:init
   (&key
    ((:plane_coordinate_system __plane_coordinate_system) 0)
    ((:utm_num __utm_num) 0)
    ((:utm_offset __utm_offset) (instance geometry_msgs::Vector3 :init))
    ((:ellipse __ellipse) "")
    ((:central_latitude __central_latitude) 0.0)
    ((:central_meridian __central_meridian) 0.0)
    ((:scale_factor __scale_factor) 0.0)
    ((:false_easting __false_easting) 0.0)
    ((:false_northing __false_northing) 0.0)
    )
   (send-super :init)
   (setq _plane_coordinate_system (round __plane_coordinate_system))
   (setq _utm_num (round __utm_num))
   (setq _utm_offset __utm_offset)
   (setq _ellipse (string __ellipse))
   (setq _central_latitude (float __central_latitude))
   (setq _central_meridian (float __central_meridian))
   (setq _scale_factor (float __scale_factor))
   (setq _false_easting (float __false_easting))
   (setq _false_northing (float __false_northing))
   self)
  (:plane_coordinate_system
   (&optional __plane_coordinate_system)
   (if __plane_coordinate_system (setq _plane_coordinate_system __plane_coordinate_system)) _plane_coordinate_system)
  (:utm_num
   (&optional __utm_num)
   (if __utm_num (setq _utm_num __utm_num)) _utm_num)
  (:utm_offset
   (&rest __utm_offset)
   (if (keywordp (car __utm_offset))
       (send* _utm_offset __utm_offset)
     (progn
       (if __utm_offset (setq _utm_offset (car __utm_offset)))
       _utm_offset)))
  (:ellipse
   (&optional __ellipse)
   (if __ellipse (setq _ellipse __ellipse)) _ellipse)
  (:central_latitude
   (&optional __central_latitude)
   (if __central_latitude (setq _central_latitude __central_latitude)) _central_latitude)
  (:central_meridian
   (&optional __central_meridian)
   (if __central_meridian (setq _central_meridian __central_meridian)) _central_meridian)
  (:scale_factor
   (&optional __scale_factor)
   (if __scale_factor (setq _scale_factor __scale_factor)) _scale_factor)
  (:false_easting
   (&optional __false_easting)
   (if __false_easting (setq _false_easting __false_easting)) _false_easting)
  (:false_northing
   (&optional __false_northing)
   (if __false_northing (setq _false_northing __false_northing)) _false_northing)
  (:serialization-length
   ()
   (+
    ;; int32 _plane_coordinate_system
    4
    ;; int32 _utm_num
    4
    ;; geometry_msgs/Vector3 _utm_offset
    (send _utm_offset :serialization-length)
    ;; string _ellipse
    4 (length _ellipse)
    ;; float64 _central_latitude
    8
    ;; float64 _central_meridian
    8
    ;; float64 _scale_factor
    8
    ;; float64 _false_easting
    8
    ;; float64 _false_northing
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _plane_coordinate_system
       (write-long _plane_coordinate_system s)
     ;; int32 _utm_num
       (write-long _utm_num s)
     ;; geometry_msgs/Vector3 _utm_offset
       (send _utm_offset :serialize s)
     ;; string _ellipse
       (write-long (length _ellipse) s) (princ _ellipse s)
     ;; float64 _central_latitude
       (sys::poke _central_latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _central_meridian
       (sys::poke _central_meridian (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _scale_factor
       (sys::poke _scale_factor (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _false_easting
       (sys::poke _false_easting (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _false_northing
       (sys::poke _false_northing (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _plane_coordinate_system
     (setq _plane_coordinate_system (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _utm_num
     (setq _utm_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _utm_offset
     (send _utm_offset :deserialize buf ptr-) (incf ptr- (send _utm_offset :serialization-length))
   ;; string _ellipse
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ellipse (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _central_latitude
     (setq _central_latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _central_meridian
     (setq _central_meridian (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _scale_factor
     (setq _scale_factor (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _false_easting
     (setq _false_easting (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _false_northing
     (setq _false_northing (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get morai_msgs::MapSpec :md5sum-) "ff26999f16fc5ab8e3788072433240e9")
(setf (get morai_msgs::MapSpec :datatype-) "morai_msgs/MapSpec")
(setf (get morai_msgs::MapSpec :definition-)
      "int32 plane_coordinate_system
int32 utm_num

geometry_msgs/Vector3 utm_offset

string ellipse
float64 central_latitude
float64 central_meridian
float64 scale_factor
float64 false_easting
float64 false_northing
================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :morai_msgs/MapSpec "ff26999f16fc5ab8e3788072433240e9")


