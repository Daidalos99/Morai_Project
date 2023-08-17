;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::MoraiVehicleSpecSrv)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'MoraiVehicleSpecSrv (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::MORAIVEHICLESPECSRV")
  (make-package "MORAI_MSGS::MORAIVEHICLESPECSRV"))
(unless (find-package "MORAI_MSGS::MORAIVEHICLESPECSRVREQUEST")
  (make-package "MORAI_MSGS::MORAIVEHICLESPECSRVREQUEST"))
(unless (find-package "MORAI_MSGS::MORAIVEHICLESPECSRVRESPONSE")
  (make-package "MORAI_MSGS::MORAIVEHICLESPECSRVRESPONSE"))

(in-package "ROS")





(defclass morai_msgs::MoraiVehicleSpecSrvRequest
  :super ros::object
  :slots (_request ))

(defmethod morai_msgs::MoraiVehicleSpecSrvRequest
  (:init
   (&key
    ((:request __request) (instance morai_msgs::VehicleSpecIndex :init))
    )
   (send-super :init)
   (setq _request __request)
   self)
  (:request
   (&rest __request)
   (if (keywordp (car __request))
       (send* _request __request)
     (progn
       (if __request (setq _request (car __request)))
       _request)))
  (:serialization-length
   ()
   (+
    ;; morai_msgs/VehicleSpecIndex _request
    (send _request :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; morai_msgs/VehicleSpecIndex _request
       (send _request :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; morai_msgs/VehicleSpecIndex _request
     (send _request :deserialize buf ptr-) (incf ptr- (send _request :serialization-length))
   ;;
   self)
  )

(defclass morai_msgs::MoraiVehicleSpecSrvResponse
  :super ros::object
  :slots (_response ))

(defmethod morai_msgs::MoraiVehicleSpecSrvResponse
  (:init
   (&key
    ((:response __response) (instance morai_msgs::VehicleSpec :init))
    )
   (send-super :init)
   (setq _response __response)
   self)
  (:response
   (&rest __response)
   (if (keywordp (car __response))
       (send* _response __response)
     (progn
       (if __response (setq _response (car __response)))
       _response)))
  (:serialization-length
   ()
   (+
    ;; morai_msgs/VehicleSpec _response
    (send _response :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; morai_msgs/VehicleSpec _response
       (send _response :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; morai_msgs/VehicleSpec _response
     (send _response :deserialize buf ptr-) (incf ptr- (send _response :serialization-length))
   ;;
   self)
  )

(defclass morai_msgs::MoraiVehicleSpecSrv
  :super ros::object
  :slots ())

(setf (get morai_msgs::MoraiVehicleSpecSrv :md5sum-) "00e763d6a7313045c7676986f63a8fd8")
(setf (get morai_msgs::MoraiVehicleSpecSrv :datatype-) "morai_msgs/MoraiVehicleSpecSrv")
(setf (get morai_msgs::MoraiVehicleSpecSrv :request) morai_msgs::MoraiVehicleSpecSrvRequest)
(setf (get morai_msgs::MoraiVehicleSpecSrv :response) morai_msgs::MoraiVehicleSpecSrvResponse)

(defmethod morai_msgs::MoraiVehicleSpecSrvRequest
  (:response () (instance morai_msgs::MoraiVehicleSpecSrvResponse :init)))

(setf (get morai_msgs::MoraiVehicleSpecSrvRequest :md5sum-) "00e763d6a7313045c7676986f63a8fd8")
(setf (get morai_msgs::MoraiVehicleSpecSrvRequest :datatype-) "morai_msgs/MoraiVehicleSpecSrvRequest")
(setf (get morai_msgs::MoraiVehicleSpecSrvRequest :definition-)
      "VehicleSpecIndex request

================================================================================
MSG: morai_msgs/VehicleSpecIndex
int32 unique_id
---
VehicleSpec response


================================================================================
MSG: morai_msgs/VehicleSpec
geometry_msgs/Vector3 size
float32 wheel_base
float64 max_steering

float32 overhang 
float32 rear_overhang

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
")

(setf (get morai_msgs::MoraiVehicleSpecSrvResponse :md5sum-) "00e763d6a7313045c7676986f63a8fd8")
(setf (get morai_msgs::MoraiVehicleSpecSrvResponse :datatype-) "morai_msgs/MoraiVehicleSpecSrvResponse")
(setf (get morai_msgs::MoraiVehicleSpecSrvResponse :definition-)
      "VehicleSpecIndex request

================================================================================
MSG: morai_msgs/VehicleSpecIndex
int32 unique_id
---
VehicleSpec response


================================================================================
MSG: morai_msgs/VehicleSpec
geometry_msgs/Vector3 size
float32 wheel_base
float64 max_steering

float32 overhang 
float32 rear_overhang

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
")



(provide :morai_msgs/MoraiVehicleSpecSrv "00e763d6a7313045c7676986f63a8fd8")


