; Auto-generated. Do not edit!


(cl:in-package amore_vision-msg)


;//! \htmlinclude state.msg.html

(cl:defclass <state> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (sim_mode
    :reader sim_mode
    :initarg :sim_mode
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass state (<state>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <state>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'state)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amore_vision-msg:<state> is deprecated: use amore_vision-msg:state instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:header-val is deprecated.  Use amore_vision-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:state-val is deprecated.  Use amore_vision-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'sim_mode-val :lambda-list '(m))
(cl:defmethod sim_mode-val ((m <state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:sim_mode-val is deprecated.  Use amore_vision-msg:sim_mode instead.")
  (sim_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <state>) ostream)
  "Serializes a message object of type '<state>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sim_mode) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <state>) istream)
  "Deserializes a message object of type '<state>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sim_mode) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<state>)))
  "Returns string type for a message object of type '<state>"
  "amore_vision/state")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'state)))
  "Returns string type for a message object of type 'state"
  "amore_vision/state")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<state>)))
  "Returns md5sum for a message object of type '<state>"
  "1c394a99f8c0696814238f350b4254a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'state)))
  "Returns md5sum for a message object of type 'state"
  "1c394a99f8c0696814238f350b4254a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<state>)))
  "Returns full string definition for message of type '<state>"
  (cl:format cl:nil "std_msgs/Header header~%std_msgs/Int32 state~%std_msgs/Bool sim_mode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'state)))
  "Returns full string definition for message of type 'state"
  (cl:format cl:nil "std_msgs/Header header~%std_msgs/Int32 state~%std_msgs/Bool sim_mode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <state>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sim_mode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <state>))
  "Converts a ROS message object to a list"
  (cl:list 'state
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
    (cl:cons ':sim_mode (sim_mode msg))
))
