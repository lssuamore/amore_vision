; Auto-generated. Do not edit!


(cl:in-package amore_vision-msg)


;//! \htmlinclude look_up_table.msg.html

(cl:defclass <look_up_table> (roslisp-msg-protocol:ros-message)
  ((labeled_buoy_list
    :reader labeled_buoy_list
    :initarg :labeled_buoy_list
    :type (cl:vector amore_vision-msg:buoy)
   :initform (cl:make-array 0 :element-type 'amore_vision-msg:buoy :initial-element (cl:make-instance 'amore_vision-msg:buoy))))
)

(cl:defclass look_up_table (<look_up_table>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <look_up_table>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'look_up_table)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amore_vision-msg:<look_up_table> is deprecated: use amore_vision-msg:look_up_table instead.")))

(cl:ensure-generic-function 'labeled_buoy_list-val :lambda-list '(m))
(cl:defmethod labeled_buoy_list-val ((m <look_up_table>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:labeled_buoy_list-val is deprecated.  Use amore_vision-msg:labeled_buoy_list instead.")
  (labeled_buoy_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <look_up_table>) ostream)
  "Serializes a message object of type '<look_up_table>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'labeled_buoy_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'labeled_buoy_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <look_up_table>) istream)
  "Deserializes a message object of type '<look_up_table>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'labeled_buoy_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'labeled_buoy_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'amore_vision-msg:buoy))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<look_up_table>)))
  "Returns string type for a message object of type '<look_up_table>"
  "amore_vision/look_up_table")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'look_up_table)))
  "Returns string type for a message object of type 'look_up_table"
  "amore_vision/look_up_table")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<look_up_table>)))
  "Returns md5sum for a message object of type '<look_up_table>"
  "6a566061cda1f744e70300cded2a4c97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'look_up_table)))
  "Returns md5sum for a message object of type 'look_up_table"
  "6a566061cda1f744e70300cded2a4c97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<look_up_table>)))
  "Returns full string definition for message of type '<look_up_table>"
  (cl:format cl:nil "buoy[] labeled_buoy_list~%================================================================================~%MSG: amore_vision/buoy~%geometry_msgs/Point32 centroid~%string color~%string label~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'look_up_table)))
  "Returns full string definition for message of type 'look_up_table"
  (cl:format cl:nil "buoy[] labeled_buoy_list~%================================================================================~%MSG: amore_vision/buoy~%geometry_msgs/Point32 centroid~%string color~%string label~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <look_up_table>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'labeled_buoy_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <look_up_table>))
  "Converts a ROS message object to a list"
  (cl:list 'look_up_table
    (cl:cons ':labeled_buoy_list (labeled_buoy_list msg))
))
