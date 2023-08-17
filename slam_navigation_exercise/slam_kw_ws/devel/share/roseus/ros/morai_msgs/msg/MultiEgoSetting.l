;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::MultiEgoSetting)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'MultiEgoSetting (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::MULTIEGOSETTING")
  (make-package "MORAI_MSGS::MULTIEGOSETTING"))

(in-package "ROS")
;;//! \htmlinclude MultiEgoSetting.msg.html


(defclass morai_msgs::MultiEgoSetting
  :super ros::object
  :slots (_number_of_ego_vehicle _camera_index _ego_index _global_position_x _global_position_y _global_position_z _global_roll _global_pitch _global_yaw _velocity _gear _ctrl_mode ))

(defmethod morai_msgs::MultiEgoSetting
  (:init
   (&key
    ((:number_of_ego_vehicle __number_of_ego_vehicle) 0)
    ((:camera_index __camera_index) 0)
    ((:ego_index __ego_index) (make-array 0 :initial-element 0 :element-type :integer))
    ((:global_position_x __global_position_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:global_position_y __global_position_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:global_position_z __global_position_z) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:global_roll __global_roll) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:global_pitch __global_pitch) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:global_yaw __global_yaw) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocity __velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:gear __gear) (make-array 0 :initial-element 0 :element-type :integer))
    ((:ctrl_mode __ctrl_mode) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _number_of_ego_vehicle (round __number_of_ego_vehicle))
   (setq _camera_index (round __camera_index))
   (setq _ego_index __ego_index)
   (setq _global_position_x __global_position_x)
   (setq _global_position_y __global_position_y)
   (setq _global_position_z __global_position_z)
   (setq _global_roll __global_roll)
   (setq _global_pitch __global_pitch)
   (setq _global_yaw __global_yaw)
   (setq _velocity __velocity)
   (setq _gear __gear)
   (setq _ctrl_mode __ctrl_mode)
   self)
  (:number_of_ego_vehicle
   (&optional __number_of_ego_vehicle)
   (if __number_of_ego_vehicle (setq _number_of_ego_vehicle __number_of_ego_vehicle)) _number_of_ego_vehicle)
  (:camera_index
   (&optional __camera_index)
   (if __camera_index (setq _camera_index __camera_index)) _camera_index)
  (:ego_index
   (&optional __ego_index)
   (if __ego_index (setq _ego_index __ego_index)) _ego_index)
  (:global_position_x
   (&optional __global_position_x)
   (if __global_position_x (setq _global_position_x __global_position_x)) _global_position_x)
  (:global_position_y
   (&optional __global_position_y)
   (if __global_position_y (setq _global_position_y __global_position_y)) _global_position_y)
  (:global_position_z
   (&optional __global_position_z)
   (if __global_position_z (setq _global_position_z __global_position_z)) _global_position_z)
  (:global_roll
   (&optional __global_roll)
   (if __global_roll (setq _global_roll __global_roll)) _global_roll)
  (:global_pitch
   (&optional __global_pitch)
   (if __global_pitch (setq _global_pitch __global_pitch)) _global_pitch)
  (:global_yaw
   (&optional __global_yaw)
   (if __global_yaw (setq _global_yaw __global_yaw)) _global_yaw)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:ctrl_mode
   (&optional __ctrl_mode)
   (if __ctrl_mode (setq _ctrl_mode __ctrl_mode)) _ctrl_mode)
  (:serialization-length
   ()
   (+
    ;; int32 _number_of_ego_vehicle
    4
    ;; int32 _camera_index
    4
    ;; int32[] _ego_index
    (* 4    (length _ego_index)) 4
    ;; float64[] _global_position_x
    (* 8    (length _global_position_x)) 4
    ;; float64[] _global_position_y
    (* 8    (length _global_position_y)) 4
    ;; float64[] _global_position_z
    (* 8    (length _global_position_z)) 4
    ;; float32[] _global_roll
    (* 4    (length _global_roll)) 4
    ;; float32[] _global_pitch
    (* 4    (length _global_pitch)) 4
    ;; float32[] _global_yaw
    (* 4    (length _global_yaw)) 4
    ;; float32[] _velocity
    (* 4    (length _velocity)) 4
    ;; int8[] _gear
    (* 1    (length _gear)) 4
    ;; int8[] _ctrl_mode
    (* 1    (length _ctrl_mode)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _number_of_ego_vehicle
       (write-long _number_of_ego_vehicle s)
     ;; int32 _camera_index
       (write-long _camera_index s)
     ;; int32[] _ego_index
     (write-long (length _ego_index) s)
     (dotimes (i (length _ego_index))
       (write-long (elt _ego_index i) s)
       )
     ;; float64[] _global_position_x
     (write-long (length _global_position_x) s)
     (dotimes (i (length _global_position_x))
       (sys::poke (elt _global_position_x i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _global_position_y
     (write-long (length _global_position_y) s)
     (dotimes (i (length _global_position_y))
       (sys::poke (elt _global_position_y i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _global_position_z
     (write-long (length _global_position_z) s)
     (dotimes (i (length _global_position_z))
       (sys::poke (elt _global_position_z i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float32[] _global_roll
     (write-long (length _global_roll) s)
     (dotimes (i (length _global_roll))
       (sys::poke (elt _global_roll i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _global_pitch
     (write-long (length _global_pitch) s)
     (dotimes (i (length _global_pitch))
       (sys::poke (elt _global_pitch i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _global_yaw
     (write-long (length _global_yaw) s)
     (dotimes (i (length _global_yaw))
       (sys::poke (elt _global_yaw i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _velocity
     (write-long (length _velocity) s)
     (dotimes (i (length _velocity))
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int8[] _gear
     (write-long (length _gear) s)
     (dotimes (i (length _gear))
       (write-byte (elt _gear i) s)
       )
     ;; int8[] _ctrl_mode
     (write-long (length _ctrl_mode) s)
     (dotimes (i (length _ctrl_mode))
       (write-byte (elt _ctrl_mode i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _number_of_ego_vehicle
     (setq _number_of_ego_vehicle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _camera_index
     (setq _camera_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _ego_index
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ego_index (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ego_index i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _global_position_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _global_position_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _global_position_x i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _global_position_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _global_position_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _global_position_y i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _global_position_z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _global_position_z (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _global_position_z i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float32[] _global_roll
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _global_roll (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _global_roll i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _global_pitch
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _global_pitch (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _global_pitch i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _global_yaw
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _global_yaw (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _global_yaw i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int8[] _gear
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gear (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _gear i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _gear i) 127) (setf (elt _gear i) (- (elt _gear i) 256)))
     ))
   ;; int8[] _ctrl_mode
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ctrl_mode (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ctrl_mode i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _ctrl_mode i) 127) (setf (elt _ctrl_mode i) (- (elt _ctrl_mode i) 256)))
     ))
   ;;
   self)
  )

(setf (get morai_msgs::MultiEgoSetting :md5sum-) "5679503f20b811382c17da7f41e8d5d6")
(setf (get morai_msgs::MultiEgoSetting :datatype-) "morai_msgs/MultiEgoSetting")
(setf (get morai_msgs::MultiEgoSetting :definition-)
      "int32 number_of_ego_vehicle
int32 camera_index
int32[] ego_index
float64[] global_position_x
float64[] global_position_y
float64[] global_position_z
float32[] global_roll
float32[] global_pitch
float32[] global_yaw
float32[] velocity
int8[] gear
int8[] ctrl_mode

")



(provide :morai_msgs/MultiEgoSetting "5679503f20b811382c17da7f41e8d5d6")


