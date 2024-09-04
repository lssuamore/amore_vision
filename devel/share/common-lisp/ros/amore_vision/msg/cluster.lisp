; Auto-generated. Do not edit!


(cl:in-package amore_vision-msg)


;//! \htmlinclude cluster.msg.html

(cl:defclass <cluster> (roslisp-msg-protocol:ros-message)
  ((raw_cluster
    :reader raw_cluster
    :initarg :raw_cluster
    :type (cl:vector amore_vision-msg:depth_points)
   :initform (cl:make-array 0 :element-type 'amore_vision-msg:depth_points :initial-element (cl:make-instance 'amore_vision-msg:depth_points)))
   (num_points
    :reader num_points
    :initarg :num_points
    :type cl:integer
    :initform 0)
   (centroid
    :reader centroid
    :initarg :centroid
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (label
    :reader label
    :initarg :label
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass cluster (<cluster>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cluster>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cluster)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amore_vision-msg:<cluster> is deprecated: use amore_vision-msg:cluster instead.")))

(cl:ensure-generic-function 'raw_cluster-val :lambda-list '(m))
(cl:defmethod raw_cluster-val ((m <cluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:raw_cluster-val is deprecated.  Use amore_vision-msg:raw_cluster instead.")
  (raw_cluster m))

(cl:ensure-generic-function 'num_points-val :lambda-list '(m))
(cl:defmethod num_points-val ((m <cluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:num_points-val is deprecated.  Use amore_vision-msg:num_points instead.")
  (num_points m))

(cl:ensure-generic-function 'centroid-val :lambda-list '(m))
(cl:defmethod centroid-val ((m <cluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:centroid-val is deprecated.  Use amore_vision-msg:centroid instead.")
  (centroid m))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <cluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:label-val is deprecated.  Use amore_vision-msg:label instead.")
  (label m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <cluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:distance-val is deprecated.  Use amore_vision-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cluster>) ostream)
  "Serializes a message object of type '<cluster>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'raw_cluster))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'raw_cluster))
  (cl:let* ((signed (cl:slot-value msg 'num_points)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'centroid) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'label) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cluster>) istream)
  "Deserializes a message object of type '<cluster>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'raw_cluster) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'raw_cluster)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'amore_vision-msg:depth_points))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_points) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'centroid) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'label) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cluster>)))
  "Returns string type for a message object of type '<cluster>"
  "amore_vision/cluster")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cluster)))
  "Returns string type for a message object of type 'cluster"
  "amore_vision/cluster")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cluster>)))
  "Returns md5sum for a message object of type '<cluster>"
  "fa742a7a0d63a1e1274fe5ece59d103c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cluster)))
  "Returns md5sum for a message object of type 'cluster"
  "fa742a7a0d63a1e1274fe5ece59d103c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cluster>)))
  "Returns full string definition for message of type '<cluster>"
  (cl:format cl:nil "depth_points[] raw_cluster~%int32 num_points~%geometry_msgs/Point32 centroid~%std_msgs/String label~%float32 distance~%================================================================================~%MSG: amore_vision/depth_points~%float32[4] labeled_point~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cluster)))
  "Returns full string definition for message of type 'cluster"
  (cl:format cl:nil "depth_points[] raw_cluster~%int32 num_points~%geometry_msgs/Point32 centroid~%std_msgs/String label~%float32 distance~%================================================================================~%MSG: amore_vision/depth_points~%float32[4] labeled_point~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cluster>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'raw_cluster) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'centroid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'label))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cluster>))
  "Converts a ROS message object to a list"
  (cl:list 'cluster
    (cl:cons ':raw_cluster (raw_cluster msg))
    (cl:cons ':num_points (num_points msg))
    (cl:cons ':centroid (centroid msg))
    (cl:cons ':label (label msg))
    (cl:cons ':distance (distance msg))
))
