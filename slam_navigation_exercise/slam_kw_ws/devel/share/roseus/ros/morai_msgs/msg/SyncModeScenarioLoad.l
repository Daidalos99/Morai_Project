;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::SyncModeScenarioLoad)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'SyncModeScenarioLoad (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::SYNCMODESCENARIOLOAD")
  (make-package "MORAI_MSGS::SYNCMODESCENARIOLOAD"))

(in-package "ROS")
;;//! \htmlinclude SyncModeScenarioLoad.msg.html


(defclass morai_msgs::SyncModeScenarioLoad
  :super ros::object
  :slots (_frame _file_name _load_network_connection_data _delete_all _load_ego_vehicle_data _load_surrounding_vehicle_data _load_pedestrian_data _load_obstacle_data _set_pause ))

(defmethod morai_msgs::SyncModeScenarioLoad
  (:init
   (&key
    ((:frame __frame) 0)
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
   (setq _frame (round __frame))
   (setq _file_name (string __file_name))
   (setq _load_network_connection_data __load_network_connection_data)
   (setq _delete_all __delete_all)
   (setq _load_ego_vehicle_data __load_ego_vehicle_data)
   (setq _load_surrounding_vehicle_data __load_surrounding_vehicle_data)
   (setq _load_pedestrian_data __load_pedestrian_data)
   (setq _load_obstacle_data __load_obstacle_data)
   (setq _set_pause __set_pause)
   self)
  (:frame
   (&optional __frame)
   (if __frame (setq _frame __frame)) _frame)
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
    ;; uint64 _frame
    8
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
     ;; uint64 _frame
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _frame (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _frame) (= (length (_frame . bv)) 2)) ;; bignum
              (write-long (ash (elt (_frame . bv) 0) 0) s)
              (write-long (ash (elt (_frame . bv) 1) -1) s))
             ((and (class _frame) (= (length (_frame . bv)) 1)) ;; big1
              (write-long (elt (_frame . bv) 0) s)
              (write-long (if (>= _frame 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _frame s)(write-long (if (>= _frame 0) 0 #xffffffff) s)))
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
   ;; uint64 _frame
     
#+(or :alpha :irix6 :x86_64)
      (setf _frame (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _frame (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
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

(setf (get morai_msgs::SyncModeScenarioLoad :md5sum-) "18d7884b2197b3f6a512fde8a7dedc57")
(setf (get morai_msgs::SyncModeScenarioLoad :datatype-) "morai_msgs/SyncModeScenarioLoad")
(setf (get morai_msgs::SyncModeScenarioLoad :definition-)
      "uint64 frame

string file_name
bool load_network_connection_data
bool delete_all
bool load_ego_vehicle_data
bool load_surrounding_vehicle_data
bool load_pedestrian_data
bool load_obstacle_data
bool set_pause

")



(provide :morai_msgs/SyncModeScenarioLoad "18d7884b2197b3f6a512fde8a7dedc57")


