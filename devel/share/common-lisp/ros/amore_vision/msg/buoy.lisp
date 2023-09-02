; Auto-generated. Do not edit!


(cl:in-package amore_vision-msg)


;//! \htmlinclude buoy.msg.html

(cl:defclass <buoy> (roslisp-msg-protocol:ros-message)
  ((centroid
    :reader centroid
    :initarg :centroid
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (color
    :reader color
    :initarg :color
    :type cl:string
    :initform "")
   (label
    :reader label
    :initarg :label
    :type cl:string
    :initform ""))
)

(cl:defclass buoy (<buoy>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <buoy>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'buoy)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amore_vision-msg:<buoy> is deprecated: use amore_vision-msg:buoy instead.")))

(cl:ensure-generic-function 'centroid-val :lambda-list '(m))
(cl:defmethod centroid-val ((m <buoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:centroid-val is deprecated.  Use amore_vision-msg:centroid instead.")
  (centroid m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <buoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:color-val is deprecated.  Use amore_vision-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <buoy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:label-val is deprecated.  Use amore_vision-msg:label instead.")
  (label m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <buoy>) ostream)
  "Serializes a message object of type '<buoy>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'centroid) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <buoy>) istream)
  "Deserializes a message object of type '<buoy>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'centroid) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'color) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<buoy>)))
  "Returns string type for a message object of type '<buoy>"
  "amore_vision/buoy")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'buoy)))
  "Returns string type for a message object of type 'buoy"
  "amore_vision/buoy")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<buoy>)))
  "Returns md5sum for a message object of type '<buoy>"
  "205d7f01bdec538ed3caf910fa5c88f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'buoy)))
  "Returns md5sum for a message object of type 'buoy"
  "205d7f01bdec538ed3caf910fa5c88f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<buoy>)))
  "Returns full string definition for message of type '<buoy>"
  (cl:format cl:nil "geometry_msgs/Point32 centroid~%string color~%string label~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'buoy)))
  "Returns full string definition for message of type 'buoy"
  (cl:format cl:nil "geometry_msgs/Point32 centroid~%string color~%string label~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <buoy>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'centroid))
     4 (cl:length (cl:slot-value msg 'color))
     4 (cl:length (cl:slot-value msg 'label))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <buoy>))
  "Converts a ROS message object to a list"
  (cl:list 'buoy
    (cl:cons ':centroid (centroid msg))
    (cl:cons ':color (color msg))
    (cl:cons ':label (label msg))
))
