;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::MoraiSyncModeRemoveObjectSrv)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'MoraiSyncModeRemoveObjectSrv (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::MORAISYNCMODEREMOVEOBJECTSRV")
  (make-package "MORAI_MSGS::MORAISYNCMODEREMOVEOBJECTSRV"))
(unless (find-package "MORAI_MSGS::MORAISYNCMODEREMOVEOBJECTSRVREQUEST")
  (make-package "MORAI_MSGS::MORAISYNCMODEREMOVEOBJECTSRVREQUEST"))
(unless (find-package "MORAI_MSGS::MORAISYNCMODEREMOVEOBJECTSRVRESPONSE")
  (make-package "MORAI_MSGS::MORAISYNCMODEREMOVEOBJECTSRVRESPONSE"))

(in-package "ROS")





(defclass morai_msgs::MoraiSyncModeRemoveObjectSrvRequest
  :super ros::object
  :slots (_request ))

(defmethod morai_msgs::MoraiSyncModeRemoveObjectSrvRequest
  (:init
   (&key
    ((:request __request) (instance morai_msgs::SyncModeRemoveObject :init))
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
    ;; morai_msgs/SyncModeRemoveObject _request
    (send _request :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; morai_msgs/SyncModeRemoveObject _request
       (send _request :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; morai_msgs/SyncModeRemoveObject _request
     (send _request :deserialize buf ptr-) (incf ptr- (send _request :serialization-length))
   ;;
   self)
  )

(defclass morai_msgs::MoraiSyncModeRemoveObjectSrvResponse
  :super ros::object
  :slots (_response ))

(defmethod morai_msgs::MoraiSyncModeRemoveObjectSrvResponse
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

(defclass morai_msgs::MoraiSyncModeRemoveObjectSrv
  :super ros::object
  :slots ())

(setf (get morai_msgs::MoraiSyncModeRemoveObjectSrv :md5sum-) "d499baec7083a3731b7e7fc183807dce")
(setf (get morai_msgs::MoraiSyncModeRemoveObjectSrv :datatype-) "morai_msgs/MoraiSyncModeRemoveObjectSrv")
(setf (get morai_msgs::MoraiSyncModeRemoveObjectSrv :request) morai_msgs::MoraiSyncModeRemoveObjectSrvRequest)
(setf (get morai_msgs::MoraiSyncModeRemoveObjectSrv :response) morai_msgs::MoraiSyncModeRemoveObjectSrvResponse)

(defmethod morai_msgs::MoraiSyncModeRemoveObjectSrvRequest
  (:response () (instance morai_msgs::MoraiSyncModeRemoveObjectSrvResponse :init)))

(setf (get morai_msgs::MoraiSyncModeRemoveObjectSrvRequest :md5sum-) "d499baec7083a3731b7e7fc183807dce")
(setf (get morai_msgs::MoraiSyncModeRemoveObjectSrvRequest :datatype-) "morai_msgs/MoraiSyncModeRemoveObjectSrvRequest")
(setf (get morai_msgs::MoraiSyncModeRemoveObjectSrvRequest :definition-)
      "SyncModeRemoveObject request

================================================================================
MSG: morai_msgs/SyncModeRemoveObject
int32 unique_id
uint64 frame
---
SyncModeResultResponse response


================================================================================
MSG: morai_msgs/SyncModeResultResponse
bool result
")

(setf (get morai_msgs::MoraiSyncModeRemoveObjectSrvResponse :md5sum-) "d499baec7083a3731b7e7fc183807dce")
(setf (get morai_msgs::MoraiSyncModeRemoveObjectSrvResponse :datatype-) "morai_msgs/MoraiSyncModeRemoveObjectSrvResponse")
(setf (get morai_msgs::MoraiSyncModeRemoveObjectSrvResponse :definition-)
      "SyncModeRemoveObject request

================================================================================
MSG: morai_msgs/SyncModeRemoveObject
int32 unique_id
uint64 frame
---
SyncModeResultResponse response


================================================================================
MSG: morai_msgs/SyncModeResultResponse
bool result
")



(provide :morai_msgs/MoraiSyncModeRemoveObjectSrv "d499baec7083a3731b7e7fc183807dce")


