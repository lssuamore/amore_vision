; Auto-generated. Do not edit!


(cl:in-package amore_vision-msg)


;//! \htmlinclude control_efforts.msg.html

(cl:defclass <control_efforts> (roslisp-msg-protocol:ros-message)
  ((t_x
    :reader t_x
    :initarg :t_x
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (t_x_P
    :reader t_x_P
    :initarg :t_x_P
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (t_x_I
    :reader t_x_I
    :initarg :t_x_I
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (t_x_D
    :reader t_x_D
    :initarg :t_x_D
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (t_y
    :reader t_y
    :initarg :t_y
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (t_y_P
    :reader t_y_P
    :initarg :t_y_P
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (t_y_I
    :reader t_y_I
    :initarg :t_y_I
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (t_y_D
    :reader t_y_D
    :initarg :t_y_D
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (m_z
    :reader m_z
    :initarg :m_z
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (m_z_P
    :reader m_z_P
    :initarg :m_z_P
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (m_z_I
    :reader m_z_I
    :initarg :m_z_I
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (m_z_D
    :reader m_z_D
    :initarg :m_z_D
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass control_efforts (<control_efforts>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <control_efforts>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'control_efforts)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amore_vision-msg:<control_efforts> is deprecated: use amore_vision-msg:control_efforts instead.")))

(cl:ensure-generic-function 't_x-val :lambda-list '(m))
(cl:defmethod t_x-val ((m <control_efforts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:t_x-val is deprecated.  Use amore_vision-msg:t_x instead.")
  (t_x m))

(cl:ensure-generic-function 't_x_P-val :lambda-list '(m))
(cl:defmethod t_x_P-val ((m <control_efforts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:t_x_P-val is deprecated.  Use amore_vision-msg:t_x_P instead.")
  (t_x_P m))

(cl:ensure-generic-function 't_x_I-val :lambda-list '(m))
(cl:defmethod t_x_I-val ((m <control_efforts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:t_x_I-val is deprecated.  Use amore_vision-msg:t_x_I instead.")
  (t_x_I m))

(cl:ensure-generic-function 't_x_D-val :lambda-list '(m))
(cl:defmethod t_x_D-val ((m <control_efforts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:t_x_D-val is deprecated.  Use amore_vision-msg:t_x_D instead.")
  (t_x_D m))

(cl:ensure-generic-function 't_y-val :lambda-list '(m))
(cl:defmethod t_y-val ((m <control_efforts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:t_y-val is deprecated.  Use amore_vision-msg:t_y instead.")
  (t_y m))

(cl:ensure-generic-function 't_y_P-val :lambda-list '(m))
(cl:defmethod t_y_P-val ((m <control_efforts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:t_y_P-val is deprecated.  Use amore_vision-msg:t_y_P instead.")
  (t_y_P m))

(cl:ensure-generic-function 't_y_I-val :lambda-list '(m))
(cl:defmethod t_y_I-val ((m <control_efforts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:t_y_I-val is deprecated.  Use amore_vision-msg:t_y_I instead.")
  (t_y_I m))

(cl:ensure-generic-function 't_y_D-val :lambda-list '(m))
(cl:defmethod t_y_D-val ((m <control_efforts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:t_y_D-val is deprecated.  Use amore_vision-msg:t_y_D instead.")
  (t_y_D m))

(cl:ensure-generic-function 'm_z-val :lambda-list '(m))
(cl:defmethod m_z-val ((m <control_efforts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:m_z-val is deprecated.  Use amore_vision-msg:m_z instead.")
  (m_z m))

(cl:ensure-generic-function 'm_z_P-val :lambda-list '(m))
(cl:defmethod m_z_P-val ((m <control_efforts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:m_z_P-val is deprecated.  Use amore_vision-msg:m_z_P instead.")
  (m_z_P m))

(cl:ensure-generic-function 'm_z_I-val :lambda-list '(m))
(cl:defmethod m_z_I-val ((m <control_efforts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:m_z_I-val is deprecated.  Use amore_vision-msg:m_z_I instead.")
  (m_z_I m))

(cl:ensure-generic-function 'm_z_D-val :lambda-list '(m))
(cl:defmethod m_z_D-val ((m <control_efforts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:m_z_D-val is deprecated.  Use amore_vision-msg:m_z_D instead.")
  (m_z_D m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <control_efforts>) ostream)
  "Serializes a message object of type '<control_efforts>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 't_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 't_x_P) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 't_x_I) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 't_x_D) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 't_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 't_y_P) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 't_y_I) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 't_y_D) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'm_z) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'm_z_P) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'm_z_I) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'm_z_D) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <control_efforts>) istream)
  "Deserializes a message object of type '<control_efforts>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 't_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 't_x_P) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 't_x_I) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 't_x_D) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 't_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 't_y_P) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 't_y_I) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 't_y_D) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'm_z) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'm_z_P) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'm_z_I) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'm_z_D) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<control_efforts>)))
  "Returns string type for a message object of type '<control_efforts>"
  "amore_vision/control_efforts")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'control_efforts)))
  "Returns string type for a message object of type 'control_efforts"
  "amore_vision/control_efforts")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<control_efforts>)))
  "Returns md5sum for a message object of type '<control_efforts>"
  "925fe81e944ee95c22ed3341a39c98ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'control_efforts)))
  "Returns md5sum for a message object of type 'control_efforts"
  "925fe81e944ee95c22ed3341a39c98ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<control_efforts>)))
  "Returns full string definition for message of type '<control_efforts>"
  (cl:format cl:nil "std_msgs/Float32 t_x~%	std_msgs/Float32 t_x_P~%	std_msgs/Float32 t_x_I~%	std_msgs/Float32 t_x_D~%std_msgs/Float32 t_y~%	std_msgs/Float32 t_y_P~%	std_msgs/Float32 t_y_I~%	std_msgs/Float32 t_y_D~%std_msgs/Float32 m_z~%	std_msgs/Float32 m_z_P~%	std_msgs/Float32 m_z_I~%	std_msgs/Float32 m_z_D~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'control_efforts)))
  "Returns full string definition for message of type 'control_efforts"
  (cl:format cl:nil "std_msgs/Float32 t_x~%	std_msgs/Float32 t_x_P~%	std_msgs/Float32 t_x_I~%	std_msgs/Float32 t_x_D~%std_msgs/Float32 t_y~%	std_msgs/Float32 t_y_P~%	std_msgs/Float32 t_y_I~%	std_msgs/Float32 t_y_D~%std_msgs/Float32 m_z~%	std_msgs/Float32 m_z_P~%	std_msgs/Float32 m_z_I~%	std_msgs/Float32 m_z_D~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <control_efforts>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 't_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 't_x_P))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 't_x_I))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 't_x_D))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 't_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 't_y_P))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 't_y_I))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 't_y_D))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'm_z))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'm_z_P))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'm_z_I))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'm_z_D))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <control_efforts>))
  "Converts a ROS message object to a list"
  (cl:list 'control_efforts
    (cl:cons ':t_x (t_x msg))
    (cl:cons ':t_x_P (t_x_P msg))
    (cl:cons ':t_x_I (t_x_I msg))
    (cl:cons ':t_x_D (t_x_D msg))
    (cl:cons ':t_y (t_y msg))
    (cl:cons ':t_y_P (t_y_P msg))
    (cl:cons ':t_y_I (t_y_I msg))
    (cl:cons ':t_y_D (t_y_D msg))
    (cl:cons ':m_z (m_z msg))
    (cl:cons ':m_z_P (m_z_P msg))
    (cl:cons ':m_z_I (m_z_I msg))
    (cl:cons ':m_z_D (m_z_D msg))
))
