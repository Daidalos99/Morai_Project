;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::MoraiSyncModeCtrlCmdSrv)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'MoraiSyncModeCtrlCmdSrv (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::MORAISYNCMODECTRLCMDSRV")
  (make-package "MORAI_MSGS::MORAISYNCMODECTRLCMDSRV"))
(unless (find-package "MORAI_MSGS::MORAISYNCMODECTRLCMDSRVREQUEST")
  (make-package "MORAI_MSGS::MORAISYNCMODECTRLCMDSRVREQUEST"))
(unless (find-package "MORAI_MSGS::MORAISYNCMODECTRLCMDSRVRESPONSE")
  (make-package "MORAI_MSGS::MORAISYNCMODECTRLCMDSRVRESPONSE"))

(in-package "ROS")





(defclass morai_msgs::MoraiSyncModeCtrlCmdSrvRequest
  :super ros::object
  :slots (_request ))

(defmethod morai_msgs::MoraiSyncModeCtrlCmdSrvRequest
  (:init
   (&key
    ((:request __request) (instance morai_msgs::SyncModeCtrlCmd :init))
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
    ;; morai_msgs/SyncModeCtrlCmd _request
    (send _request :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; morai_msgs/SyncModeCtrlCmd _request
       (send _request :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; morai_msgs/SyncModeCtrlCmd _request
     (send _request :deserialize buf ptr-) (incf ptr- (send _request :serialization-length))
   ;;
   self)
  )

(defclass morai_msgs::MoraiSyncModeCtrlCmdSrvResponse
  :super ros::object
  :slots (_response ))

(defmethod morai_msgs::MoraiSyncModeCtrlCmdSrvResponse
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

(defclass morai_msgs::MoraiSyncModeCtrlCmdSrv
  :super ros::object
  :slots ())

(setf (get morai_msgs::MoraiSyncModeCtrlCmdSrv :md5sum-) "1a537319e4c18b20b4792b07c454053f")
(setf (get morai_msgs::MoraiSyncModeCtrlCmdSrv :datatype-) "morai_msgs/MoraiSyncModeCtrlCmdSrv")
(setf (get morai_msgs::MoraiSyncModeCtrlCmdSrv :request) morai_msgs::MoraiSyncModeCtrlCmdSrvRequest)
(setf (get morai_msgs::MoraiSyncModeCtrlCmdSrv :response) morai_msgs::MoraiSyncModeCtrlCmdSrvResponse)

(defmethod morai_msgs::MoraiSyncModeCtrlCmdSrvRequest
  (:response () (instance morai_msgs::MoraiSyncModeCtrlCmdSrvResponse :init)))

(setf (get morai_msgs::MoraiSyncModeCtrlCmdSrvRequest :md5sum-) "1a537319e4c18b20b4792b07c454053f")
(setf (get morai_msgs::MoraiSyncModeCtrlCmdSrvRequest :datatype-) "morai_msgs/MoraiSyncModeCtrlCmdSrvRequest")
(setf (get morai_msgs::MoraiSyncModeCtrlCmdSrvRequest :definition-)
      "SyncModeCtrlCmd request

================================================================================
MSG: morai_msgs/SyncModeCtrlCmd
uint64 frame

CtrlCmd command

bool sensor_capture

================================================================================
MSG: morai_msgs/CtrlCmd
int32 longlCmdType

float64 accel
float64 brake
float64 steering

float64 velocity
float64 acceleration

---
SyncModeResultResponse response


================================================================================
MSG: morai_msgs/SyncModeResultResponse
bool result
")

(setf (get morai_msgs::MoraiSyncModeCtrlCmdSrvResponse :md5sum-) "1a537319e4c18b20b4792b07c454053f")
(setf (get morai_msgs::MoraiSyncModeCtrlCmdSrvResponse :datatype-) "morai_msgs/MoraiSyncModeCtrlCmdSrvResponse")
(setf (get morai_msgs::MoraiSyncModeCtrlCmdSrvResponse :definition-)
      "SyncModeCtrlCmd request

================================================================================
MSG: morai_msgs/SyncModeCtrlCmd
uint64 frame

CtrlCmd command

bool sensor_capture

================================================================================
MSG: morai_msgs/CtrlCmd
int32 longlCmdType

float64 accel
float64 brake
float64 steering

float64 velocity
float64 acceleration

---
SyncModeResultResponse response


================================================================================
MSG: morai_msgs/SyncModeResultResponse
bool result
")



(provide :morai_msgs/MoraiSyncModeCtrlCmdSrv "1a537319e4c18b20b4792b07c454053f")


