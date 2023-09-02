; Auto-generated. Do not edit!


(cl:in-package amore_vision-msg)


;//! \htmlinclude cluster_list.msg.html

(cl:defclass <cluster_list> (roslisp-msg-protocol:ros-message)
  ((cluster_list
    :reader cluster_list
    :initarg :cluster_list
    :type (cl:vector amore_vision-msg:cluster)
   :initform (cl:make-array 0 :element-type 'amore_vision-msg:cluster :initial-element (cl:make-instance 'amore_vision-msg:cluster))))
)

(cl:defclass cluster_list (<cluster_list>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cluster_list>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cluster_list)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amore_vision-msg:<cluster_list> is deprecated: use amore_vision-msg:cluster_list instead.")))

(cl:ensure-generic-function 'cluster_list-val :lambda-list '(m))
(cl:defmethod cluster_list-val ((m <cluster_list>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:cluster_list-val is deprecated.  Use amore_vision-msg:cluster_list instead.")
  (cluster_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cluster_list>) ostream)
  "Serializes a message object of type '<cluster_list>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cluster_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cluster_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cluster_list>) istream)
  "Deserializes a message object of type '<cluster_list>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cluster_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cluster_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'amore_vision-msg:cluster))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cluster_list>)))
  "Returns string type for a message object of type '<cluster_list>"
  "amore_vision/cluster_list")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cluster_list)))
  "Returns string type for a message object of type 'cluster_list"
  "amore_vision/cluster_list")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cluster_list>)))
  "Returns md5sum for a message object of type '<cluster_list>"
  "c64c04dd922d096b96a3d3f178bc1aaa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cluster_list)))
  "Returns md5sum for a message object of type 'cluster_list"
  "c64c04dd922d096b96a3d3f178bc1aaa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cluster_list>)))
  "Returns full string definition for message of type '<cluster_list>"
  (cl:format cl:nil "cluster[] cluster_list~%================================================================================~%MSG: amore_vision/cluster~%depth_points[] raw_cluster~%int32 num_points~%geometry_msgs/Point32 centroid~%std_msgs/String label~%float32 distance~%================================================================================~%MSG: amore_vision/depth_points~%float32[4] labeled_point~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cluster_list)))
  "Returns full string definition for message of type 'cluster_list"
  (cl:format cl:nil "cluster[] cluster_list~%================================================================================~%MSG: amore_vision/cluster~%depth_points[] raw_cluster~%int32 num_points~%geometry_msgs/Point32 centroid~%std_msgs/String label~%float32 distance~%================================================================================~%MSG: amore_vision/depth_points~%float32[4] labeled_point~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cluster_list>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cluster_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cluster_list>))
  "Converts a ROS message object to a list"
  (cl:list 'cluster_list
    (cl:cons ':cluster_list (cluster_list msg))
))
