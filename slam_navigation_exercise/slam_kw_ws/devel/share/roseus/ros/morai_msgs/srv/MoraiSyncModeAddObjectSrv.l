;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::MoraiSyncModeAddObjectSrv)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'MoraiSyncModeAddObjectSrv (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::MORAISYNCMODEADDOBJECTSRV")
  (make-package "MORAI_MSGS::MORAISYNCMODEADDOBJECTSRV"))
(unless (find-package "MORAI_MSGS::MORAISYNCMODEADDOBJECTSRVREQUEST")
  (make-package "MORAI_MSGS::MORAISYNCMODEADDOBJECTSRVREQUEST"))
(unless (find-package "MORAI_MSGS::MORAISYNCMODEADDOBJECTSRVRESPONSE")
  (make-package "MORAI_MSGS::MORAISYNCMODEADDOBJECTSRVRESPONSE"))

(in-package "ROS")





(defclass morai_msgs::MoraiSyncModeAddObjectSrvRequest
  :super ros::object
  :slots (_request ))

(defmethod morai_msgs::MoraiSyncModeAddObjectSrvRequest
  (:init
   (&key
    ((:request __request) (instance morai_msgs::SyncModeAddObject :init))
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
    ;; morai_msgs/SyncModeAddObject _request
    (send _request :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; morai_msgs/SyncModeAddObject _request
       (send _request :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; morai_msgs/SyncModeAddObject _request
     (send _request :deserialize buf ptr-) (incf ptr- (send _request :serialization-length))
   ;;
   self)
  )

(defclass morai_msgs::MoraiSyncModeAddObjectSrvResponse
  :super ros::object
  :slots (_response ))

(defmethod morai_msgs::MoraiSyncModeAddObjectSrvResponse
  (:init
   (&key
    ((:response __response) (instance morai_msgs::SyncModeResultResponse :init))
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
    ;; morai_msgs/SyncModeResultResponse _response
    (send _response :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; morai_msgs/SyncModeResultResponse _response
       (send _response :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; morai_msgs/SyncModeResultResponse _response
     (send _response :deserialize buf ptr-) (incf ptr- (send _response :serialization-length))
   ;;
   self)
  )

(defclass morai_msgs::MoraiSyncModeAddObjectSrv
  :super ros::object
  :slots ())

(setf (get morai_msgs::MoraiSyncModeAddObjectSrv :md5sum-) "c1fef4ccdc9874029ce22686c7e98f83")
(setf (get morai_msgs::MoraiSyncModeAddObjectSrv :datatype-) "morai_msgs/MoraiSyncModeAddObjectSrv")
(setf (get morai_msgs::MoraiSyncModeAddObjectSrv :request) morai_msgs::MoraiSyncModeAddObjectSrvRequest)
(setf (get morai_msgs::MoraiSyncModeAddObjectSrv :response) morai_msgs::MoraiSyncModeAddObjectSrvResponse)

(defmethod morai_msgs::MoraiSyncModeAddObjectSrvRequest
  (:response () (instance morai_msgs::MoraiSyncModeAddObjectSrvResponse :init)))

(setf (get morai_msgs::MoraiSyncModeAddObjectSrvRequest :md5sum-) "c1fef4ccdc9874029ce22686c7e98f83")
(setf (get morai_msgs::MoraiSyncModeAddObjectSrvRequest :datatype-) "morai_msgs/MoraiSyncModeAddObjectSrvRequest")
(setf (get morai_msgs::MoraiSyncModeAddObjectSrvRequest :definition-)
      "SyncModeAddObject request

================================================================================
MSG: morai_msgs/SyncModeAddObject
string name
geometry_msgs/Vector3 position
float64 heading
uint64 frame

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
---
SyncModeResultResponse response


================================================================================
MSG: morai_msgs/SyncModeResultResponse
bool result
")

(setf (get morai_msgs::MoraiSyncModeAddObjectSrvResponse :md5sum-) "c1fef4ccdc9874029ce22686c7e98f83")
(setf (get morai_msgs::MoraiSyncModeAddObjectSrvResponse :datatype-) "morai_msgs/MoraiSyncModeAddObjectSrvResponse")
(setf (get morai_msgs::MoraiSyncModeAddObjectSrvResponse :definition-)
      "SyncModeAddObject request

================================================================================
MSG: morai_msgs/SyncModeAddObject
string name
geometry_msgs/Vector3 position
float64 heading
uint64 frame

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
---
SyncModeResultResponse response


================================================================================
MSG: morai_msgs/SyncModeResultResponse
bool result
")



(provide :morai_msgs/MoraiSyncModeAddObjectSrv "c1fef4ccdc9874029ce22686c7e98f83")


