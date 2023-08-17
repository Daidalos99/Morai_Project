;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::MoraiMapSpecSrv)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'MoraiMapSpecSrv (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::MORAIMAPSPECSRV")
  (make-package "MORAI_MSGS::MORAIMAPSPECSRV"))
(unless (find-package "MORAI_MSGS::MORAIMAPSPECSRVREQUEST")
  (make-package "MORAI_MSGS::MORAIMAPSPECSRVREQUEST"))
(unless (find-package "MORAI_MSGS::MORAIMAPSPECSRVRESPONSE")
  (make-package "MORAI_MSGS::MORAIMAPSPECSRVRESPONSE"))

(in-package "ROS")





(defclass morai_msgs::MoraiMapSpecSrvRequest
  :super ros::object
  :slots (_request ))

(defmethod morai_msgs::MoraiMapSpecSrvRequest
  (:init
   (&key
    ((:request __request) (instance morai_msgs::MapSpecIndex :init))
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
    ;; morai_msgs/MapSpecIndex _request
    (send _request :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; morai_msgs/MapSpecIndex _request
       (send _request :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; morai_msgs/MapSpecIndex _request
     (send _request :deserialize buf ptr-) (incf ptr- (send _request :serialization-length))
   ;;
   self)
  )

(defclass morai_msgs::MoraiMapSpecSrvResponse
  :super ros::object
  :slots (_response ))

(defmethod morai_msgs::MoraiMapSpecSrvResponse
  (:init
   (&key
    ((:response __response) (instance morai_msgs::MapSpec :init))
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
    ;; morai_msgs/MapSpec _response
    (send _response :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; morai_msgs/MapSpec _response
       (send _response :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; morai_msgs/MapSpec _response
     (send _response :deserialize buf ptr-) (incf ptr- (send _response :serialization-length))
   ;;
   self)
  )

(defclass morai_msgs::MoraiMapSpecSrv
  :super ros::object
  :slots ())

(setf (get morai_msgs::MoraiMapSpecSrv :md5sum-) "05d746a24a1f7725a363510d4264a323")
(setf (get morai_msgs::MoraiMapSpecSrv :datatype-) "morai_msgs/MoraiMapSpecSrv")
(setf (get morai_msgs::MoraiMapSpecSrv :request) morai_msgs::MoraiMapSpecSrvRequest)
(setf (get morai_msgs::MoraiMapSpecSrv :response) morai_msgs::MoraiMapSpecSrvResponse)

(defmethod morai_msgs::MoraiMapSpecSrvRequest
  (:response () (instance morai_msgs::MoraiMapSpecSrvResponse :init)))

(setf (get morai_msgs::MoraiMapSpecSrvRequest :md5sum-) "05d746a24a1f7725a363510d4264a323")
(setf (get morai_msgs::MoraiMapSpecSrvRequest :datatype-) "morai_msgs/MoraiMapSpecSrvRequest")
(setf (get morai_msgs::MoraiMapSpecSrvRequest :definition-)
      "MapSpecIndex request

================================================================================
MSG: morai_msgs/MapSpecIndex
---
MapSpec response

================================================================================
MSG: morai_msgs/MapSpec
int32 plane_coordinate_system
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
")

(setf (get morai_msgs::MoraiMapSpecSrvResponse :md5sum-) "05d746a24a1f7725a363510d4264a323")
(setf (get morai_msgs::MoraiMapSpecSrvResponse :datatype-) "morai_msgs/MoraiMapSpecSrvResponse")
(setf (get morai_msgs::MoraiMapSpecSrvResponse :definition-)
      "MapSpecIndex request

================================================================================
MSG: morai_msgs/MapSpecIndex
---
MapSpec response

================================================================================
MSG: morai_msgs/MapSpec
int32 plane_coordinate_system
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
")



(provide :morai_msgs/MoraiMapSpecSrv "05d746a24a1f7725a363510d4264a323")


