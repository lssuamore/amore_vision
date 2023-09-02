; Auto-generated. Do not edit!


(cl:in-package amore_vision-msg)


;//! \htmlinclude to_cam.msg.html

(cl:defclass <to_cam> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (y
    :reader y
    :initarg :y
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (quantity
    :reader quantity
    :initarg :quantity
    :type cl:integer
    :initform 0))
)

(cl:defclass to_cam (<to_cam>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <to_cam>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'to_cam)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amore_vision-msg:<to_cam> is deprecated: use amore_vision-msg:to_cam instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <to_cam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:x-val is deprecated.  Use amore_vision-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <to_cam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:y-val is deprecated.  Use amore_vision-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'quantity-val :lambda-list '(m))
(cl:defmethod quantity-val ((m <to_cam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:quantity-val is deprecated.  Use amore_vision-msg:quantity instead.")
  (quantity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <to_cam>) ostream)
  "Serializes a message object of type '<to_cam>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'x))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'y))
  (cl:let* ((signed (cl:slot-value msg 'quantity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <to_cam>) istream)
  "Deserializes a message object of type '<to_cam>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'x) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'x)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'y) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'y)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'quantity) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<to_cam>)))
  "Returns string type for a message object of type '<to_cam>"
  "amore_vision/to_cam")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'to_cam)))
  "Returns string type for a message object of type 'to_cam"
  "amore_vision/to_cam")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<to_cam>)))
  "Returns md5sum for a message object of type '<to_cam>"
  "d855056e0e6fe3b83d73c1f04a752222")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'to_cam)))
  "Returns md5sum for a message object of type 'to_cam"
  "d855056e0e6fe3b83d73c1f04a752222")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<to_cam>)))
  "Returns full string definition for message of type '<to_cam>"
  (cl:format cl:nil "float32[] x~%float32[] y~%int32 quantity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'to_cam)))
  "Returns full string definition for message of type 'to_cam"
  (cl:format cl:nil "float32[] x~%float32[] y~%int32 quantity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <to_cam>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <to_cam>))
  "Converts a ROS message object to a list"
  (cl:list 'to_cam
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':quantity (quantity msg))
))
