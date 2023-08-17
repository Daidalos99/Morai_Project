;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::MoraiSyncModeCmdSrv)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'MoraiSyncModeCmdSrv (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::MORAISYNCMODECMDSRV")
  (make-package "MORAI_MSGS::MORAISYNCMODECMDSRV"))
(unless (find-package "MORAI_MSGS::MORAISYNCMODECMDSRVREQUEST")
  (make-package "MORAI_MSGS::MORAISYNCMODECMDSRVREQUEST"))
(unless (find-package "MORAI_MSGS::MORAISYNCMODECMDSRVRESPONSE")
  (make-package "MORAI_MSGS::MORAISYNCMODECMDSRVRESPONSE"))

(in-package "ROS")





(defclass morai_msgs::MoraiSyncModeCmdSrvRequest
  :super ros::object
  :slots (_request ))

(defmethod morai_msgs::MoraiSyncModeCmdSrvRequest
  (:init
   (&key
    ((:request __request) (instance morai_msgs::SyncModeCmd :init))
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
    ;; morai_msgs/SyncModeCmd _request
    (send _request :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; morai_msgs/SyncModeCmd _request
       (send _request :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; morai_msgs/SyncModeCmd _request
     (send _request :deserialize buf ptr-) (incf ptr- (send _request :serialization-length))
   ;;
   self)
  )

(defclass morai_msgs::MoraiSyncModeCmdSrvResponse
  :super ros::object
  :slots (_response ))

(defmethod morai_msgs::MoraiSyncModeCmdSrvResponse
  (:init
   (&key
    ((:response __response) (instance morai_msgs::SyncModeCmdResponse :init))
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
    ;; morai_msgs/SyncModeCmdResponse _response
    (send _response :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; morai_msgs/SyncModeCmdResponse _response
       (send _response :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; morai_msgs/SyncModeCmdResponse _response
     (send _response :deserialize buf ptr-) (incf ptr- (send _response :serialization-length))
   ;;
   self)
  )

(defclass morai_msgs::MoraiSyncModeCmdSrv
  :super ros::object
  :slots ())

(setf (get morai_msgs::MoraiSyncModeCmdSrv :md5sum-) "df0fcb0eae8a1f37d527d8331f8eb734")
(setf (get morai_msgs::MoraiSyncModeCmdSrv :datatype-) "morai_msgs/MoraiSyncModeCmdSrv")
(setf (get morai_msgs::MoraiSyncModeCmdSrv :request) morai_msgs::MoraiSyncModeCmdSrvRequest)
(setf (get morai_msgs::MoraiSyncModeCmdSrv :response) morai_msgs::MoraiSyncModeCmdSrvResponse)

(defmethod morai_msgs::MoraiSyncModeCmdSrvRequest
  (:response () (instance morai_msgs::MoraiSyncModeCmdSrvResponse :init)))

(setf (get morai_msgs::MoraiSyncModeCmdSrvRequest :md5sum-) "df0fcb0eae8a1f37d527d8331f8eb734")
(setf (get morai_msgs::MoraiSyncModeCmdSrvRequest :datatype-) "morai_msgs/MoraiSyncModeCmdSrvRequest")
(setf (get morai_msgs::MoraiSyncModeCmdSrvRequest :definition-)
      "SyncModeCmd request

================================================================================
MSG: morai_msgs/SyncModeCmd
string user_id
bool start_sync_mode
uint32 time_step
---
SyncModeCmdResponse response


================================================================================
MSG: morai_msgs/SyncModeCmdResponse
string user_id
uint64 frame
bool result
uint32 time_step
")

(setf (get morai_msgs::MoraiSyncModeCmdSrvResponse :md5sum-) "df0fcb0eae8a1f37d527d8331f8eb734")
(setf (get morai_msgs::MoraiSyncModeCmdSrvResponse :datatype-) "morai_msgs/MoraiSyncModeCmdSrvResponse")
(setf (get morai_msgs::MoraiSyncModeCmdSrvResponse :definition-)
      "SyncModeCmd request

================================================================================
MSG: morai_msgs/SyncModeCmd
string user_id
bool start_sync_mode
uint32 time_step
---
SyncModeCmdResponse response


================================================================================
MSG: morai_msgs/SyncModeCmdResponse
string user_id
uint64 frame
bool result
uint32 time_step
")



(provide :morai_msgs/MoraiSyncModeCmdSrv "df0fcb0eae8a1f37d527d8331f8eb734")


