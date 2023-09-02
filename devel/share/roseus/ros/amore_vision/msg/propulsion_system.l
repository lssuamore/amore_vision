;; Auto-generated. Do not edit!


(when (boundp 'amore_vision::propulsion_system)
  (if (not (find-package "AMORE_VISION"))
    (make-package "AMORE_VISION"))
  (shadow 'propulsion_system (find-package "AMORE_VISION")))
(unless (find-package "AMORE_VISION::PROPULSION_SYSTEM")
  (make-package "AMORE_VISION::PROPULSION_SYSTEM"))

(in-package "ROS")
;;//! \htmlinclude propulsion_system.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass amore_vision::propulsion_system
  :super ros::object
  :slots (_header _goal_position _goal_psi _usv_position _usv_psi _usv_latitude _usv_longitude _e_xy_allowed _e_psi_allowed ))

(defmethod amore_vision::propulsion_system
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:goal_position __goal_position) (instance geometry_msgs::Point :init))
    ((:goal_psi __goal_psi) (instance std_msgs::Float64 :init))
    ((:usv_position __usv_position) (instance geometry_msgs::Point :init))
    ((:usv_psi __usv_psi) (instance std_msgs::Float64 :init))
    ((:usv_latitude __usv_latitude) (instance std_msgs::Float64 :init))
    ((:usv_longitude __usv_longitude) (instance std_msgs::Float64 :init))
    ((:e_xy_allowed __e_xy_allowed) (instance std_msgs::Float64 :init))
    ((:e_psi_allowed __e_psi_allowed) (instance std_msgs::Float64 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _goal_position __goal_position)
   (setq _goal_psi __goal_psi)
   (setq _usv_position __usv_position)
   (setq _usv_psi __usv_psi)
   (setq _usv_latitude __usv_latitude)
   (setq _usv_longitude __usv_longitude)
   (setq _e_xy_allowed __e_xy_allowed)
   (setq _e_psi_allowed __e_psi_allowed)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:goal_position
   (&rest __goal_position)
   (if (keywordp (car __goal_position))
       (send* _goal_position __goal_position)
     (progn
       (if __goal_position (setq _goal_position (car __goal_position)))
       _goal_position)))
  (:goal_psi
   (&rest __goal_psi)
   (if (keywordp (car __goal_psi))
       (send* _goal_psi __goal_psi)
     (progn
       (if __goal_psi (setq _goal_psi (car __goal_psi)))
       _goal_psi)))
  (:usv_position
   (&rest __usv_position)
   (if (keywordp (car __usv_position))
       (send* _usv_position __usv_position)
     (progn
       (if __usv_position (setq _usv_position (car __usv_position)))
       _usv_position)))
  (:usv_psi
   (&rest __usv_psi)
   (if (keywordp (car __usv_psi))
       (send* _usv_psi __usv_psi)
     (progn
       (if __usv_psi (setq _usv_psi (car __usv_psi)))
       _usv_psi)))
  (:usv_latitude
   (&rest __usv_latitude)
   (if (keywordp (car __usv_latitude))
       (send* _usv_latitude __usv_latitude)
     (progn
       (if __usv_latitude (setq _usv_latitude (car __usv_latitude)))
       _usv_latitude)))
  (:usv_longitude
   (&rest __usv_longitude)
   (if (keywordp (car __usv_longitude))
       (send* _usv_longitude __usv_longitude)
     (progn
       (if __usv_longitude (setq _usv_longitude (car __usv_longitude)))
       _usv_longitude)))
  (:e_xy_allowed
   (&rest __e_xy_allowed)
   (if (keywordp (car __e_xy_allowed))
       (send* _e_xy_allowed __e_xy_allowed)
     (progn
       (if __e_xy_allowed (setq _e_xy_allowed (car __e_xy_allowed)))
       _e_xy_allowed)))
  (:e_psi_allowed
   (&rest __e_psi_allowed)
   (if (keywordp (car __e_psi_allowed))
       (send* _e_psi_allowed __e_psi_allowed)
     (progn
       (if __e_psi_allowed (setq _e_psi_allowed (car __e_psi_allowed)))
       _e_psi_allowed)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point _goal_position
    (send _goal_position :serialization-length)
    ;; std_msgs/Float64 _goal_psi
    (send _goal_psi :serialization-length)
    ;; geometry_msgs/Point _usv_position
    (send _usv_position :serialization-length)
    ;; std_msgs/Float64 _usv_psi
    (send _usv_psi :serialization-length)
    ;; std_msgs/Float64 _usv_latitude
    (send _usv_latitude :serialization-length)
    ;; std_msgs/Float64 _usv_longitude
    (send _usv_longitude :serialization-length)
    ;; std_msgs/Float64 _e_xy_allowed
    (send _e_xy_allowed :serialization-length)
    ;; std_msgs/Float64 _e_psi_allowed
    (send _e_psi_allowed :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Point _goal_position
       (send _goal_position :serialize s)
     ;; std_msgs/Float64 _goal_psi
       (send _goal_psi :serialize s)
     ;; geometry_msgs/Point _usv_position
       (send _usv_position :serialize s)
     ;; std_msgs/Float64 _usv_psi
       (send _usv_psi :serialize s)
     ;; std_msgs/Float64 _usv_latitude
       (send _usv_latitude :serialize s)
     ;; std_msgs/Float64 _usv_longitude
       (send _usv_longitude :serialize s)
     ;; std_msgs/Float64 _e_xy_allowed
       (send _e_xy_allowed :serialize s)
     ;; std_msgs/Float64 _e_psi_allowed
       (send _e_psi_allowed :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Point _goal_position
     (send _goal_position :deserialize buf ptr-) (incf ptr- (send _goal_position :serialization-length))
   ;; std_msgs/Float64 _goal_psi
     (send _goal_psi :deserialize buf ptr-) (incf ptr- (send _goal_psi :serialization-length))
   ;; geometry_msgs/Point _usv_position
     (send _usv_position :deserialize buf ptr-) (incf ptr- (send _usv_position :serialization-length))
   ;; std_msgs/Float64 _usv_psi
     (send _usv_psi :deserialize buf ptr-) (incf ptr- (send _usv_psi :serialization-length))
   ;; std_msgs/Float64 _usv_latitude
     (send _usv_latitude :deserialize buf ptr-) (incf ptr- (send _usv_latitude :serialization-length))
   ;; std_msgs/Float64 _usv_longitude
     (send _usv_longitude :deserialize buf ptr-) (incf ptr- (send _usv_longitude :serialization-length))
   ;; std_msgs/Float64 _e_xy_allowed
     (send _e_xy_allowed :deserialize buf ptr-) (incf ptr- (send _e_xy_allowed :serialization-length))
   ;; std_msgs/Float64 _e_psi_allowed
     (send _e_psi_allowed :deserialize buf ptr-) (incf ptr- (send _e_psi_allowed :serialization-length))
   ;;
   self)
  )

(setf (get amore_vision::propulsion_system :md5sum-) "71d621936073a6985aace9a419610593")
(setf (get amore_vision::propulsion_system :datatype-) "amore_vision/propulsion_system")
(setf (get amore_vision::propulsion_system :definition-)
      "std_msgs/Header header
geometry_msgs/Point goal_position
std_msgs/Float64 goal_psi
geometry_msgs/Point usv_position
std_msgs/Float64 usv_psi
std_msgs/Float64 usv_latitude
std_msgs/Float64 usv_longitude
std_msgs/Float64 e_xy_allowed
std_msgs/Float64 e_psi_allowed

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: std_msgs/Float64
float64 data
")



(provide :amore_vision/propulsion_system "71d621936073a6985aace9a419610593")


