; Auto-generated. Do not edit!


(cl:in-package amore_vision-msg)


;//! \htmlinclude depth_points.msg.html

(cl:defclass <depth_points> (roslisp-msg-protocol:ros-message)
  ((labeled_point
    :reader labeled_point
    :initarg :labeled_point
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass depth_points (<depth_points>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <depth_points>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'depth_points)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amore_vision-msg:<depth_points> is deprecated: use amore_vision-msg:depth_points instead.")))

(cl:ensure-generic-function 'labeled_point-val :lambda-list '(m))
(cl:defmethod labeled_point-val ((m <depth_points>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:labeled_point-val is deprecated.  Use amore_vision-msg:labeled_point instead.")
  (labeled_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <depth_points>) ostream)
  "Serializes a message object of type '<depth_points>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'labeled_point))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <depth_points>) istream)
  "Deserializes a message object of type '<depth_points>"
  (cl:setf (cl:slot-value msg 'labeled_point) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'labeled_point)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<depth_points>)))
  "Returns string type for a message object of type '<depth_points>"
  "amore_vision/depth_points")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'depth_points)))
  "Returns string type for a message object of type 'depth_points"
  "amore_vision/depth_points")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<depth_points>)))
  "Returns md5sum for a message object of type '<depth_points>"
  "242571970d31da06fb7d6fd8a07d1e48")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'depth_points)))
  "Returns md5sum for a message object of type 'depth_points"
  "242571970d31da06fb7d6fd8a07d1e48")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<depth_points>)))
  "Returns full string definition for message of type '<depth_points>"
  (cl:format cl:nil "float32[4] labeled_point~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'depth_points)))
  "Returns full string definition for message of type 'depth_points"
  (cl:format cl:nil "float32[4] labeled_point~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <depth_points>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'labeled_point) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <depth_points>))
  "Converts a ROS message object to a list"
  (cl:list 'depth_points
    (cl:cons ':labeled_point (labeled_point msg))
))
