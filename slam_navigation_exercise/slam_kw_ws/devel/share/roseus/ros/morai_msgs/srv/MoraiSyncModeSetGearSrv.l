;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::MoraiSyncModeSetGearSrv)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'MoraiSyncModeSetGearSrv (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::MORAISYNCMODESETGEARSRV")
  (make-package "MORAI_MSGS::MORAISYNCMODESETGEARSRV"))
(unless (find-package "MORAI_MSGS::MORAISYNCMODESETGEARSRVREQUEST")
  (make-package "MORAI_MSGS::MORAISYNCMODESETGEARSRVREQUEST"))
(unless (find-package "MORAI_MSGS::MORAISYNCMODESETGEARSRVRESPONSE")
  (make-package "MORAI_MSGS::MORAISYNCMODESETGEARSRVRESPONSE"))

(in-package "ROS")





(defclass morai_msgs::MoraiSyncModeSetGearSrvRequest
  :super ros::object
  :slots (_request ))

(defmethod morai_msgs::MoraiSyncModeSetGearSrvRequest
  (:init
   (&key
    ((:request __request) (instance morai_msgs::SyncModeSetGear :init))
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
    ;; morai_msgs/SyncModeSetGear _request
    (send _request :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; morai_msgs/SyncModeSetGear _request
       (send _request :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; morai_msgs/SyncModeSetGear _request
     (send _request :deserialize buf ptr-) (incf ptr- (send _request :serialization-length))
   ;;
   self)
  )

(defclass morai_msgs::MoraiSyncModeSetGearSrvResponse
  :super ros::object
  :slots (_response ))

(defmethod morai_msgs::MoraiSyncModeSetGearSrvResponse
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

(defclass morai_msgs::MoraiSyncModeSetGearSrv
  :super ros::object
  :slots ())

(setf (get morai_msgs::MoraiSyncModeSetGearSrv :md5sum-) "933dd1db4e5ca4203b1f770f04800d0a")
(setf (get morai_msgs::MoraiSyncModeSetGearSrv :datatype-) "morai_msgs/MoraiSyncModeSetGearSrv")
(setf (get morai_msgs::MoraiSyncModeSetGearSrv :request) morai_msgs::MoraiSyncModeSetGearSrvRequest)
(setf (get morai_msgs::MoraiSyncModeSetGearSrv :response) morai_msgs::MoraiSyncModeSetGearSrvResponse)

(defmethod morai_msgs::MoraiSyncModeSetGearSrvRequest
  (:response () (instance morai_msgs::MoraiSyncModeSetGearSrvResponse :init)))

(setf (get morai_msgs::MoraiSyncModeSetGearSrvRequest :md5sum-) "933dd1db4e5ca4203b1f770f04800d0a")
(setf (get morai_msgs::MoraiSyncModeSetGearSrvRequest :datatype-) "morai_msgs/MoraiSyncModeSetGearSrvRequest")
(setf (get morai_msgs::MoraiSyncModeSetGearSrvRequest :definition-)
      "SyncModeSetGear request

================================================================================
MSG: morai_msgs/SyncModeSetGear
int32 gear
uint64 frame
---
SyncModeResultResponse response


================================================================================
MSG: morai_msgs/SyncModeResultResponse
bool result
")

(setf (get morai_msgs::MoraiSyncModeSetGearSrvResponse :md5sum-) "933dd1db4e5ca4203b1f770f04800d0a")
(setf (get morai_msgs::MoraiSyncModeSetGearSrvResponse :datatype-) "morai_msgs/MoraiSyncModeSetGearSrvResponse")
(setf (get morai_msgs::MoraiSyncModeSetGearSrvResponse :definition-)
      "SyncModeSetGear request

================================================================================
MSG: morai_msgs/SyncModeSetGear
int32 gear
uint64 frame
---
SyncModeResultResponse response


================================================================================
MSG: morai_msgs/SyncModeResultResponse
bool result
")



(provide :morai_msgs/MoraiSyncModeSetGearSrv "933dd1db4e5ca4203b1f770f04800d0a")


