;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::ScenarioLoad)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'ScenarioLoad (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::SCENARIOLOAD")
  (make-package "MORAI_MSGS::SCENARIOLOAD"))

(in-package "ROS")
;;//! \htmlinclude ScenarioLoad.msg.html


(defclass morai_msgs::ScenarioLoad
  :super ros::object
  :slots (_file_name _load_network_connection_data _delete_all _load_ego_vehicle_data _load_surrounding_vehicle_data _load_pedestrian_data _load_obstacle_data _set_pause ))

(defmethod morai_msgs::ScenarioLoad
  (:init
   (&key
    ((:file_name __file_name) "")
    ((:load_network_connection_data __load_network_connection_data) nil)
    ((:delete_all __delete_all) nil)
    ((:load_ego_vehicle_data __load_ego_vehicle_data) nil)
    ((:load_surrounding_vehicle_data __load_surrounding_vehicle_data) nil)
    ((:load_pedestrian_data __load_pedestrian_data) nil)
    ((:load_obstacle_data __load_obstacle_data) nil)
    ((:set_pause __set_pause) nil)
    )
   (send-super :init)
   (setq _file_name (string __file_name))
   (setq _load_network_connection_data __load_network_connection_data)
   (setq _delete_all __delete_all)
   (setq _load_ego_vehicle_data __load_ego_vehicle_data)
   (setq _load_surrounding_vehicle_data __load_surrounding_vehicle_data)
   (setq _load_pedestrian_data __load_pedestrian_data)
   (setq _load_obstacle_data __load_obstacle_data)
   (setq _set_pause __set_pause)
   self)
  (:file_name
   (&optional __file_name)
   (if __file_name (setq _file_name __file_name)) _file_name)
  (:load_network_connection_data
   (&optional (__load_network_connection_data :null))
   (if (not (eq __load_network_connection_data :null)) (setq _load_network_connection_data __load_network_connection_data)) _load_network_connection_data)
  (:delete_all
   (&optional (__delete_all :null))
   (if (not (eq __delete_all :null)) (setq _delete_all __delete_all)) _delete_all)
  (:load_ego_vehicle_data
   (&optional (__load_ego_vehicle_data :null))
   (if (not (eq __load_ego_vehicle_data :null)) (setq _load_ego_vehicle_data __load_ego_vehicle_data)) _load_ego_vehicle_data)
  (:load_surrounding_vehicle_data
   (&optional (__load_surrounding_vehicle_data :null))
   (if (not (eq __load_surrounding_vehicle_data :null)) (setq _load_surrounding_vehicle_data __load_surrounding_vehicle_data)) _load_surrounding_vehicle_data)
  (:load_pedestrian_data
   (&optional (__load_pedestrian_data :null))
   (if (not (eq __load_pedestrian_data :null)) (setq _load_pedestrian_data __load_pedestrian_data)) _load_pedestrian_data)
  (:load_obstacle_data
   (&optional (__load_obstacle_data :null))
   (if (not (eq __load_obstacle_data :null)) (setq _load_obstacle_data __load_obstacle_data)) _load_obstacle_data)
  (:set_pause
   (&optional (__set_pause :null))
   (if (not (eq __set_pause :null)) (setq _set_pause __set_pause)) _set_pause)
  (:serialization-length
   ()
   (+
    ;; string _file_name
    4 (length _file_name)
    ;; bool _load_network_connection_data
    1
    ;; bool _delete_all
    1
    ;; bool _load_ego_vehicle_data
    1
    ;; bool _load_surrounding_vehicle_data
    1
    ;; bool _load_pedestrian_data
    1
    ;; bool _load_obstacle_data
    1
    ;; bool _set_pause
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _file_name
       (write-long (length _file_name) s) (princ _file_name s)
     ;; bool _load_network_connection_data
       (if _load_network_connection_data (write-byte -1 s) (write-byte 0 s))
     ;; bool _delete_all
       (if _delete_all (write-byte -1 s) (write-byte 0 s))
     ;; bool _load_ego_vehicle_data
       (if _load_ego_vehicle_data (write-byte -1 s) (write-byte 0 s))
     ;; bool _load_surrounding_vehicle_data
       (if _load_surrounding_vehicle_data (write-byte -1 s) (write-byte 0 s))
     ;; bool _load_pedestrian_data
       (if _load_pedestrian_data (write-byte -1 s) (write-byte 0 s))
     ;; bool _load_obstacle_data
       (if _load_obstacle_data (write-byte -1 s) (write-byte 0 s))
     ;; bool _set_pause
       (if _set_pause (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _file_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _load_network_connection_data
     (setq _load_network_connection_data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _delete_all
     (setq _delete_all (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _load_ego_vehicle_data
     (setq _load_ego_vehicle_data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _load_surrounding_vehicle_data
     (setq _load_surrounding_vehicle_data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _load_pedestrian_data
     (setq _load_pedestrian_data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _load_obstacle_data
     (setq _load_obstacle_data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _set_pause
     (setq _set_pause (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get morai_msgs::ScenarioLoad :md5sum-) "6f3a3dd0165dd2974e952deb6192160a")
(setf (get morai_msgs::ScenarioLoad :datatype-) "morai_msgs/ScenarioLoad")
(setf (get morai_msgs::ScenarioLoad :definition-)
      "string file_name
bool load_network_connection_data
bool delete_all
bool load_ego_vehicle_data
bool load_surrounding_vehicle_data
bool load_pedestrian_data
bool load_obstacle_data
bool set_pause

")



(provide :morai_msgs/ScenarioLoad "6f3a3dd0165dd2974e952deb6192160a")


