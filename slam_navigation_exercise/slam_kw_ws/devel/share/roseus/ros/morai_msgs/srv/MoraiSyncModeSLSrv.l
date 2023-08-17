;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::MoraiSyncModeSLSrv)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'MoraiSyncModeSLSrv (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::MORAISYNCMODESLSRV")
  (make-package "MORAI_MSGS::MORAISYNCMODESLSRV"))
(unless (find-package "MORAI_MSGS::MORAISYNCMODESLSRVREQUEST")
  (make-package "MORAI_MSGS::MORAISYNCMODESLSRVREQUEST"))
(unless (find-package "MORAI_MSGS::MORAISYNCMODESLSRVRESPONSE")
  (make-package "MORAI_MSGS::MORAISYNCMODESLSRVRESPONSE"))

(in-package "ROS")





(defclass morai_msgs::MoraiSyncModeSLSrvRequest
  :super ros::object
  :slots (_request ))

(defmethod morai_msgs::MoraiSyncModeSLSrvRequest
  (:init
   (&key
    ((:request __request) (instance morai_msgs::SyncModeScenarioLoad :init))
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
    ;; morai_msgs/SyncModeScenarioLoad _request
    (send _request :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; morai_msgs/SyncModeScenarioLoad _request
       (send _request :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; morai_msgs/SyncModeScenarioLoad _request
     (send _request :deserialize buf ptr-) (incf ptr- (send _request :serialization-length))
   ;;
   self)
  )

(defclass morai_msgs::MoraiSyncModeSLSrvResponse
  :super ros::object
  :slots (_response ))

(defmethod morai_msgs::MoraiSyncModeSLSrvResponse
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

(defclass morai_msgs::MoraiSyncModeSLSrv
  :super ros::object
  :slots ())

(setf (get morai_msgs::MoraiSyncModeSLSrv :md5sum-) "892af6bb455c083a88752e9286fb2b85")
(setf (get morai_msgs::MoraiSyncModeSLSrv :datatype-) "morai_msgs/MoraiSyncModeSLSrv")
(setf (get morai_msgs::MoraiSyncModeSLSrv :request) morai_msgs::MoraiSyncModeSLSrvRequest)
(setf (get morai_msgs::MoraiSyncModeSLSrv :response) morai_msgs::MoraiSyncModeSLSrvResponse)

(defmethod morai_msgs::MoraiSyncModeSLSrvRequest
  (:response () (instance morai_msgs::MoraiSyncModeSLSrvResponse :init)))

(setf (get morai_msgs::MoraiSyncModeSLSrvRequest :md5sum-) "892af6bb455c083a88752e9286fb2b85")
(setf (get morai_msgs::MoraiSyncModeSLSrvRequest :datatype-) "morai_msgs/MoraiSyncModeSLSrvRequest")
(setf (get morai_msgs::MoraiSyncModeSLSrvRequest :definition-)
      "SyncModeScenarioLoad request

================================================================================
MSG: morai_msgs/SyncModeScenarioLoad
uint64 frame

string file_name
bool load_network_connection_data
bool delete_all
bool load_ego_vehicle_data
bool load_surrounding_vehicle_data
bool load_pedestrian_data
bool load_obstacle_data
bool set_pause
---
SyncModeResultResponse response


================================================================================
MSG: morai_msgs/SyncModeResultResponse
bool result
")

(setf (get morai_msgs::MoraiSyncModeSLSrvResponse :md5sum-) "892af6bb455c083a88752e9286fb2b85")
(setf (get morai_msgs::MoraiSyncModeSLSrvResponse :datatype-) "morai_msgs/MoraiSyncModeSLSrvResponse")
(setf (get morai_msgs::MoraiSyncModeSLSrvResponse :definition-)
      "SyncModeScenarioLoad request

================================================================================
MSG: morai_msgs/SyncModeScenarioLoad
uint64 frame

string file_name
bool load_network_connection_data
bool delete_all
bool load_ego_vehicle_data
bool load_surrounding_vehicle_data
bool load_pedestrian_data
bool load_obstacle_data
bool set_pause
---
SyncModeResultResponse response


================================================================================
MSG: morai_msgs/SyncModeResultResponse
bool result
")



(provide :morai_msgs/MoraiSyncModeSLSrv "892af6bb455c083a88752e9286fb2b85")


