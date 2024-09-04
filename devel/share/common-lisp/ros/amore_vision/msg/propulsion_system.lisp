; Auto-generated. Do not edit!


(cl:in-package amore_vision-msg)


;//! \htmlinclude propulsion_system.msg.html

(cl:defclass <propulsion_system> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_position
    :reader goal_position
    :initarg :goal_position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (goal_psi
    :reader goal_psi
    :initarg :goal_psi
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (usv_position
    :reader usv_position
    :initarg :usv_position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (usv_psi
    :reader usv_psi
    :initarg :usv_psi
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (usv_latitude
    :reader usv_latitude
    :initarg :usv_latitude
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (usv_longitude
    :reader usv_longitude
    :initarg :usv_longitude
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (e_xy_allowed
    :reader e_xy_allowed
    :initarg :e_xy_allowed
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (e_psi_allowed
    :reader e_psi_allowed
    :initarg :e_psi_allowed
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64)))
)

(cl:defclass propulsion_system (<propulsion_system>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <propulsion_system>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'propulsion_system)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amore_vision-msg:<propulsion_system> is deprecated: use amore_vision-msg:propulsion_system instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <propulsion_system>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:header-val is deprecated.  Use amore_vision-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_position-val :lambda-list '(m))
(cl:defmethod goal_position-val ((m <propulsion_system>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:goal_position-val is deprecated.  Use amore_vision-msg:goal_position instead.")
  (goal_position m))

(cl:ensure-generic-function 'goal_psi-val :lambda-list '(m))
(cl:defmethod goal_psi-val ((m <propulsion_system>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:goal_psi-val is deprecated.  Use amore_vision-msg:goal_psi instead.")
  (goal_psi m))

(cl:ensure-generic-function 'usv_position-val :lambda-list '(m))
(cl:defmethod usv_position-val ((m <propulsion_system>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:usv_position-val is deprecated.  Use amore_vision-msg:usv_position instead.")
  (usv_position m))

(cl:ensure-generic-function 'usv_psi-val :lambda-list '(m))
(cl:defmethod usv_psi-val ((m <propulsion_system>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:usv_psi-val is deprecated.  Use amore_vision-msg:usv_psi instead.")
  (usv_psi m))

(cl:ensure-generic-function 'usv_latitude-val :lambda-list '(m))
(cl:defmethod usv_latitude-val ((m <propulsion_system>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:usv_latitude-val is deprecated.  Use amore_vision-msg:usv_latitude instead.")
  (usv_latitude m))

(cl:ensure-generic-function 'usv_longitude-val :lambda-list '(m))
(cl:defmethod usv_longitude-val ((m <propulsion_system>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:usv_longitude-val is deprecated.  Use amore_vision-msg:usv_longitude instead.")
  (usv_longitude m))

(cl:ensure-generic-function 'e_xy_allowed-val :lambda-list '(m))
(cl:defmethod e_xy_allowed-val ((m <propulsion_system>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:e_xy_allowed-val is deprecated.  Use amore_vision-msg:e_xy_allowed instead.")
  (e_xy_allowed m))

(cl:ensure-generic-function 'e_psi_allowed-val :lambda-list '(m))
(cl:defmethod e_psi_allowed-val ((m <propulsion_system>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:e_psi_allowed-val is deprecated.  Use amore_vision-msg:e_psi_allowed instead.")
  (e_psi_allowed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <propulsion_system>) ostream)
  "Serializes a message object of type '<propulsion_system>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_psi) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'usv_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'usv_psi) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'usv_latitude) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'usv_longitude) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'e_xy_allowed) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'e_psi_allowed) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <propulsion_system>) istream)
  "Deserializes a message object of type '<propulsion_system>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_psi) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'usv_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'usv_psi) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'usv_latitude) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'usv_longitude) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'e_xy_allowed) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'e_psi_allowed) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<propulsion_system>)))
  "Returns string type for a message object of type '<propulsion_system>"
  "amore_vision/propulsion_system")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'propulsion_system)))
  "Returns string type for a message object of type 'propulsion_system"
  "amore_vision/propulsion_system")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<propulsion_system>)))
  "Returns md5sum for a message object of type '<propulsion_system>"
  "71d621936073a6985aace9a419610593")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'propulsion_system)))
  "Returns md5sum for a message object of type 'propulsion_system"
  "71d621936073a6985aace9a419610593")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<propulsion_system>)))
  "Returns full string definition for message of type '<propulsion_system>"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/Point goal_position~%std_msgs/Float64 goal_psi~%geometry_msgs/Point usv_position~%std_msgs/Float64 usv_psi~%std_msgs/Float64 usv_latitude~%std_msgs/Float64 usv_longitude~%std_msgs/Float64 e_xy_allowed~%std_msgs/Float64 e_psi_allowed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'propulsion_system)))
  "Returns full string definition for message of type 'propulsion_system"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/Point goal_position~%std_msgs/Float64 goal_psi~%geometry_msgs/Point usv_position~%std_msgs/Float64 usv_psi~%std_msgs/Float64 usv_latitude~%std_msgs/Float64 usv_longitude~%std_msgs/Float64 e_xy_allowed~%std_msgs/Float64 e_psi_allowed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <propulsion_system>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_psi))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'usv_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'usv_psi))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'usv_latitude))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'usv_longitude))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'e_xy_allowed))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'e_psi_allowed))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <propulsion_system>))
  "Converts a ROS message object to a list"
  (cl:list 'propulsion_system
    (cl:cons ':header (header msg))
    (cl:cons ':goal_position (goal_position msg))
    (cl:cons ':goal_psi (goal_psi msg))
    (cl:cons ':usv_position (usv_position msg))
    (cl:cons ':usv_psi (usv_psi msg))
    (cl:cons ':usv_latitude (usv_latitude msg))
    (cl:cons ':usv_longitude (usv_longitude msg))
    (cl:cons ':e_xy_allowed (e_xy_allowed msg))
    (cl:cons ':e_psi_allowed (e_psi_allowed msg))
))
