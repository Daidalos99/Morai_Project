;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::PREventSrv)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'PREventSrv (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::PREVENTSRV")
  (make-package "MORAI_MSGS::PREVENTSRV"))
(unless (find-package "MORAI_MSGS::PREVENTSRVREQUEST")
  (make-package "MORAI_MSGS::PREVENTSRVREQUEST"))
(unless (find-package "MORAI_MSGS::PREVENTSRVRESPONSE")
  (make-package "MORAI_MSGS::PREVENTSRVRESPONSE"))

(in-package "ROS")





(defclass morai_msgs::PREventSrvRequest
  :super ros::object
  :slots (_request ))

(defmethod morai_msgs::PREventSrvRequest
  (:init
   (&key
    ((:request __request) (instance morai_msgs::PREvent :init))
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
    ;; morai_msgs/PREvent _request
    (send _request :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; morai_msgs/PREvent _request
       (send _request :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; morai_msgs/PREvent _request
     (send _request :deserialize buf ptr-) (incf ptr- (send _request :serialization-length))
   ;;
   self)
  )

(defclass morai_msgs::PREventSrvResponse
  :super ros::object
  :slots (_response ))

(defmethod morai_msgs::PREventSrvResponse
  (:init
   (&key
    ((:response __response) (instance morai_msgs::PREvent :init))
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
    ;; morai_msgs/PREvent _response
    (send _response :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; morai_msgs/PREvent _response
       (send _response :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; morai_msgs/PREvent _response
     (send _response :deserialize buf ptr-) (incf ptr- (send _response :serialization-length))
   ;;
   self)
  )

(defclass morai_msgs::PREventSrv
  :super ros::object
  :slots ())

(setf (get morai_msgs::PREventSrv :md5sum-) "a5cf1a2f9ad9d91c7dbbba6c3b888bda")
(setf (get morai_msgs::PREventSrv :datatype-) "morai_msgs/PREventSrv")
(setf (get morai_msgs::PREventSrv :request) morai_msgs::PREventSrvRequest)
(setf (get morai_msgs::PREventSrv :response) morai_msgs::PREventSrvResponse)

(defmethod morai_msgs::PREventSrvRequest
  (:response () (instance morai_msgs::PREventSrvResponse :init)))

(setf (get morai_msgs::PREventSrvRequest :md5sum-) "a5cf1a2f9ad9d91c7dbbba6c3b888bda")
(setf (get morai_msgs::PREventSrvRequest :datatype-) "morai_msgs/PREventSrvRequest")
(setf (get morai_msgs::PREventSrvRequest :definition-)
      "PREvent request

================================================================================
MSG: morai_msgs/PREvent
bool mountVehicle
---
PREvent response


================================================================================
MSG: morai_msgs/PREvent
bool mountVehicle
")

(setf (get morai_msgs::PREventSrvResponse :md5sum-) "a5cf1a2f9ad9d91c7dbbba6c3b888bda")
(setf (get morai_msgs::PREventSrvResponse :datatype-) "morai_msgs/PREventSrvResponse")
(setf (get morai_msgs::PREventSrvResponse :definition-)
      "PREvent request

================================================================================
MSG: morai_msgs/PREvent
bool mountVehicle
---
PREvent response


================================================================================
MSG: morai_msgs/PREvent
bool mountVehicle
")



(provide :morai_msgs/PREventSrv "a5cf1a2f9ad9d91c7dbbba6c3b888bda")


