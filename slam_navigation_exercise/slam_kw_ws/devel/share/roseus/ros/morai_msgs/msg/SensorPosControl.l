;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::SensorPosControl)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'SensorPosControl (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::SENSORPOSCONTROL")
  (make-package "MORAI_MSGS::SENSORPOSCONTROL"))

(in-package "ROS")
;;//! \htmlinclude SensorPosControl.msg.html


(defclass morai_msgs::SensorPosControl
  :super ros::object
  :slots (_sensor_index _pose_x _pose_y _pose_z _roll _pitch _yaw ))

(defmethod morai_msgs::SensorPosControl
  (:init
   (&key
    ((:sensor_index __sensor_index) (make-array 0 :initial-element 0 :element-type :integer))
    ((:pose_x __pose_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pose_y __pose_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pose_z __pose_z) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:roll __roll) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pitch __pitch) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:yaw __yaw) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _sensor_index __sensor_index)
   (setq _pose_x __pose_x)
   (setq _pose_y __pose_y)
   (setq _pose_z __pose_z)
   (setq _roll __roll)
   (setq _pitch __pitch)
   (setq _yaw __yaw)
   self)
  (:sensor_index
   (&optional __sensor_index)
   (if __sensor_index (setq _sensor_index __sensor_index)) _sensor_index)
  (:pose_x
   (&optional __pose_x)
   (if __pose_x (setq _pose_x __pose_x)) _pose_x)
  (:pose_y
   (&optional __pose_y)
   (if __pose_y (setq _pose_y __pose_y)) _pose_y)
  (:pose_z
   (&optional __pose_z)
   (if __pose_z (setq _pose_z __pose_z)) _pose_z)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; int16[] _sensor_index
    (* 2    (length _sensor_index)) 4
    ;; float32[] _pose_x
    (* 4    (length _pose_x)) 4
    ;; float32[] _pose_y
    (* 4    (length _pose_y)) 4
    ;; float32[] _pose_z
    (* 4    (length _pose_z)) 4
    ;; float32[] _roll
    (* 4    (length _roll)) 4
    ;; float32[] _pitch
    (* 4    (length _pitch)) 4
    ;; float32[] _yaw
    (* 4    (length _yaw)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16[] _sensor_index
     (write-long (length _sensor_index) s)
     (dotimes (i (length _sensor_index))
       (write-word (elt _sensor_index i) s)
       )
     ;; float32[] _pose_x
     (write-long (length _pose_x) s)
     (dotimes (i (length _pose_x))
       (sys::poke (elt _pose_x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _pose_y
     (write-long (length _pose_y) s)
     (dotimes (i (length _pose_y))
       (sys::poke (elt _pose_y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _pose_z
     (write-long (length _pose_z) s)
     (dotimes (i (length _pose_z))
       (sys::poke (elt _pose_z i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _roll
     (write-long (length _roll) s)
     (dotimes (i (length _roll))
       (sys::poke (elt _roll i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _pitch
     (write-long (length _pitch) s)
     (dotimes (i (length _pitch))
       (sys::poke (elt _pitch i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _yaw
     (write-long (length _yaw) s)
     (dotimes (i (length _yaw))
       (sys::poke (elt _yaw i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16[] _sensor_index
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sensor_index (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _sensor_index i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; float32[] _pose_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pose_x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _pose_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pose_y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _pose_z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pose_z i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _roll
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _roll (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _roll i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _pitch
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pitch (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pitch i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _yaw
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _yaw (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _yaw i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get morai_msgs::SensorPosControl :md5sum-) "c36e176ce32bd324b9a1dc3a4d0952d8")
(setf (get morai_msgs::SensorPosControl :datatype-) "morai_msgs/SensorPosControl")
(setf (get morai_msgs::SensorPosControl :definition-)
      "int16[] sensor_index

float32[] pose_x
float32[] pose_y
float32[] pose_z
float32[] roll
float32[] pitch
float32[] yaw


")



(provide :morai_msgs/SensorPosControl "c36e176ce32bd324b9a1dc3a4d0952d8")


