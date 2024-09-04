; Auto-generated. Do not edit!


(cl:in-package amore_vision-msg)


;//! \htmlinclude ang_mag.msg.html

(cl:defclass <ang_mag> (roslisp-msg-protocol:ros-message)
  ((ang
    :reader ang
    :initarg :ang
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (mag
    :reader mag
    :initarg :mag
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass ang_mag (<ang_mag>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ang_mag>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ang_mag)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amore_vision-msg:<ang_mag> is deprecated: use amore_vision-msg:ang_mag instead.")))

(cl:ensure-generic-function 'ang-val :lambda-list '(m))
(cl:defmethod ang-val ((m <ang_mag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:ang-val is deprecated.  Use amore_vision-msg:ang instead.")
  (ang m))

(cl:ensure-generic-function 'mag-val :lambda-list '(m))
(cl:defmethod mag-val ((m <ang_mag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:mag-val is deprecated.  Use amore_vision-msg:mag instead.")
  (mag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ang_mag>) ostream)
  "Serializes a message object of type '<ang_mag>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ang) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mag) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ang_mag>) istream)
  "Deserializes a message object of type '<ang_mag>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ang) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mag) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ang_mag>)))
  "Returns string type for a message object of type '<ang_mag>"
  "amore_vision/ang_mag")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ang_mag)))
  "Returns string type for a message object of type 'ang_mag"
  "amore_vision/ang_mag")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ang_mag>)))
  "Returns md5sum for a message object of type '<ang_mag>"
  "a2bc60f9ba55d7f3e348a4f6da89e008")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ang_mag)))
  "Returns md5sum for a message object of type 'ang_mag"
  "a2bc60f9ba55d7f3e348a4f6da89e008")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ang_mag>)))
  "Returns full string definition for message of type '<ang_mag>"
  (cl:format cl:nil "std_msgs/Float32 ang~%std_msgs/Float32 mag~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ang_mag)))
  "Returns full string definition for message of type 'ang_mag"
  (cl:format cl:nil "std_msgs/Float32 ang~%std_msgs/Float32 mag~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ang_mag>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ang))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mag))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ang_mag>))
  "Converts a ROS message object to a list"
  (cl:list 'ang_mag
    (cl:cons ':ang (ang msg))
    (cl:cons ':mag (mag msg))
))
