; Auto-generated. Do not edit!


(cl:in-package amore_vision-msg)


;//! \htmlinclude distances.msg.html

(cl:defclass <distances> (roslisp-msg-protocol:ros-message)
  ((distances
    :reader distances
    :initarg :distances
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass distances (<distances>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <distances>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'distances)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amore_vision-msg:<distances> is deprecated: use amore_vision-msg:distances instead.")))

(cl:ensure-generic-function 'distances-val :lambda-list '(m))
(cl:defmethod distances-val ((m <distances>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:distances-val is deprecated.  Use amore_vision-msg:distances instead.")
  (distances m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <distances>) ostream)
  "Serializes a message object of type '<distances>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'distances))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'distances))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <distances>) istream)
  "Deserializes a message object of type '<distances>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'distances) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'distances)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<distances>)))
  "Returns string type for a message object of type '<distances>"
  "amore_vision/distances")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'distances)))
  "Returns string type for a message object of type 'distances"
  "amore_vision/distances")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<distances>)))
  "Returns md5sum for a message object of type '<distances>"
  "f68b787273c43ae659a92281e8955cfb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'distances)))
  "Returns md5sum for a message object of type 'distances"
  "f68b787273c43ae659a92281e8955cfb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<distances>)))
  "Returns full string definition for message of type '<distances>"
  (cl:format cl:nil "float32[] distances~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'distances)))
  "Returns full string definition for message of type 'distances"
  (cl:format cl:nil "float32[] distances~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <distances>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'distances) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <distances>))
  "Converts a ROS message object to a list"
  (cl:list 'distances
    (cl:cons ':distances (distances msg))
))
