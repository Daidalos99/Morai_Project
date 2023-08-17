;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::MoraiScenarioLoadSrv)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'MoraiScenarioLoadSrv (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::MORAISCENARIOLOADSRV")
  (make-package "MORAI_MSGS::MORAISCENARIOLOADSRV"))
(unless (find-package "MORAI_MSGS::MORAISCENARIOLOADSRVREQUEST")
  (make-package "MORAI_MSGS::MORAISCENARIOLOADSRVREQUEST"))
(unless (find-package "MORAI_MSGS::MORAISCENARIOLOADSRVRESPONSE")
  (make-package "MORAI_MSGS::MORAISCENARIOLOADSRVRESPONSE"))

(in-package "ROS")





(defclass morai_msgs::MoraiScenarioLoadSrvRequest
  :super ros::object
  :slots (_request ))

(defmethod morai_msgs::MoraiScenarioLoadSrvRequest
  (:init
   (&key
    ((:request __request) (instance morai_msgs::ScenarioLoad :init))
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
    ;; morai_msgs/ScenarioLoad _request
    (send _request :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; morai_msgs/ScenarioLoad _request
       (send _request :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; morai_msgs/ScenarioLoad _request
     (send _request :deserialize buf ptr-) (incf ptr- (send _request :serialization-length))
   ;;
   self)
  )

(defclass morai_msgs::MoraiScenarioLoadSrvResponse
  :super ros::object
  :slots (_response ))

(defmethod morai_msgs::MoraiScenarioLoadSrvResponse
  (:init
   (&key
    ((:response __response) (instance morai_msgs::MoraiSrvResponse :init))
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
    ;; morai_msgs/MoraiSrvResponse _response
    (send _response :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; morai_msgs/MoraiSrvResponse _response
       (send _response :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; morai_msgs/MoraiSrvResponse _response
     (send _response :deserialize buf ptr-) (incf ptr- (send _response :serialization-length))
   ;;
   self)
  )

(defclass morai_msgs::MoraiScenarioLoadSrv
  :super ros::object
  :slots ())

(setf (get morai_msgs::MoraiScenarioLoadSrv :md5sum-) "25b7997ab4e17f67a86b3d83c84ac51d")
(setf (get morai_msgs::MoraiScenarioLoadSrv :datatype-) "morai_msgs/MoraiScenarioLoadSrv")
(setf (get morai_msgs::MoraiScenarioLoadSrv :request) morai_msgs::MoraiScenarioLoadSrvRequest)
(setf (get morai_msgs::MoraiScenarioLoadSrv :response) morai_msgs::MoraiScenarioLoadSrvResponse)

(defmethod morai_msgs::MoraiScenarioLoadSrvRequest
  (:response () (instance morai_msgs::MoraiScenarioLoadSrvResponse :init)))

(setf (get morai_msgs::MoraiScenarioLoadSrvRequest :md5sum-) "25b7997ab4e17f67a86b3d83c84ac51d")
(setf (get morai_msgs::MoraiScenarioLoadSrvRequest :datatype-) "morai_msgs/MoraiScenarioLoadSrvRequest")
(setf (get morai_msgs::MoraiScenarioLoadSrvRequest :definition-)
      "ScenarioLoad request

================================================================================
MSG: morai_msgs/ScenarioLoad
string file_name
bool load_network_connection_data
bool delete_all
bool load_ego_vehicle_data
bool load_surrounding_vehicle_data
bool load_pedestrian_data
bool load_obstacle_data
bool set_pause
---
MoraiSrvResponse response


================================================================================
MSG: morai_msgs/MoraiSrvResponse
bool result
")

(setf (get morai_msgs::MoraiScenarioLoadSrvResponse :md5sum-) "25b7997ab4e17f67a86b3d83c84ac51d")
(setf (get morai_msgs::MoraiScenarioLoadSrvResponse :datatype-) "morai_msgs/MoraiScenarioLoadSrvResponse")
(setf (get morai_msgs::MoraiScenarioLoadSrvResponse :definition-)
      "ScenarioLoad request

================================================================================
MSG: morai_msgs/ScenarioLoad
string file_name
bool load_network_connection_data
bool delete_all
bool load_ego_vehicle_data
bool load_surrounding_vehicle_data
bool load_pedestrian_data
bool load_obstacle_data
bool set_pause
---
MoraiSrvResponse response


================================================================================
MSG: morai_msgs/MoraiSrvResponse
bool result
")



(provide :morai_msgs/MoraiScenarioLoadSrv "25b7997ab4e17f67a86b3d83c84ac51d")


