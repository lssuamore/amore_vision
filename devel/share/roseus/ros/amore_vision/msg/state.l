;; Auto-generated. Do not edit!


(when (boundp 'amore_vision::state)
  (if (not (find-package "AMORE_VISION"))
    (make-package "AMORE_VISION"))
  (shadow 'state (find-package "AMORE_VISION")))
(unless (find-package "AMORE_VISION::STATE")
  (make-package "AMORE_VISION::STATE"))

(in-package "ROS")
;;//! \htmlinclude state.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass amore_vision::state
  :super ros::object
  :slots (_header _state _sim_mode ))

(defmethod amore_vision::state
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) (instance std_msgs::Int32 :init))
    ((:sim_mode __sim_mode) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _state __state)
   (setq _sim_mode __sim_mode)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:sim_mode
   (&rest __sim_mode)
   (if (keywordp (car __sim_mode))
       (send* _sim_mode __sim_mode)
     (progn
       (if __sim_mode (setq _sim_mode (car __sim_mode)))
       _sim_mode)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Int32 _state
    (send _state :serialization-length)
    ;; std_msgs/Bool _sim_mode
    (send _sim_mode :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Int32 _state
       (send _state :serialize s)
     ;; std_msgs/Bool _sim_mode
       (send _sim_mode :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Int32 _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;; std_msgs/Bool _sim_mode
     (send _sim_mode :deserialize buf ptr-) (incf ptr- (send _sim_mode :serialization-length))
   ;;
   self)
  )

(setf (get amore_vision::state :md5sum-) "1c394a99f8c0696814238f350b4254a1")
(setf (get amore_vision::state :datatype-) "amore_vision/state")
(setf (get amore_vision::state :definition-)
      "std_msgs/Header header
std_msgs/Int32 state
std_msgs/Bool sim_mode

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
MSG: std_msgs/Int32
int32 data
================================================================================
MSG: std_msgs/Bool
bool data
")



(provide :amore_vision/state "1c394a99f8c0696814238f350b4254a1")


