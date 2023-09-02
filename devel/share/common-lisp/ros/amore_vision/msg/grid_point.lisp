; Auto-generated. Do not edit!


(cl:in-package amore_vision-msg)


;//! \htmlinclude grid_point.msg.html

(cl:defclass <grid_point> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (percent
    :reader percent
    :initarg :percent
    :type cl:fixnum
    :initform 0)
   (min_x
    :reader min_x
    :initarg :min_x
    :type cl:fixnum
    :initform 0)
   (min_y
    :reader min_y
    :initarg :min_y
    :type cl:fixnum
    :initform 0)
   (max_x
    :reader max_x
    :initarg :max_x
    :type cl:fixnum
    :initform 0)
   (max_y
    :reader max_y
    :initarg :max_y
    :type cl:fixnum
    :initform 0)
   (grid_size
    :reader grid_size
    :initarg :grid_size
    :type cl:float
    :initform 0.0))
)

(cl:defclass grid_point (<grid_point>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <grid_point>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'grid_point)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name amore_vision-msg:<grid_point> is deprecated: use amore_vision-msg:grid_point instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <grid_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:x-val is deprecated.  Use amore_vision-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <grid_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:y-val is deprecated.  Use amore_vision-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <grid_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:status-val is deprecated.  Use amore_vision-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'percent-val :lambda-list '(m))
(cl:defmethod percent-val ((m <grid_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:percent-val is deprecated.  Use amore_vision-msg:percent instead.")
  (percent m))

(cl:ensure-generic-function 'min_x-val :lambda-list '(m))
(cl:defmethod min_x-val ((m <grid_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:min_x-val is deprecated.  Use amore_vision-msg:min_x instead.")
  (min_x m))

(cl:ensure-generic-function 'min_y-val :lambda-list '(m))
(cl:defmethod min_y-val ((m <grid_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:min_y-val is deprecated.  Use amore_vision-msg:min_y instead.")
  (min_y m))

(cl:ensure-generic-function 'max_x-val :lambda-list '(m))
(cl:defmethod max_x-val ((m <grid_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:max_x-val is deprecated.  Use amore_vision-msg:max_x instead.")
  (max_x m))

(cl:ensure-generic-function 'max_y-val :lambda-list '(m))
(cl:defmethod max_y-val ((m <grid_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:max_y-val is deprecated.  Use amore_vision-msg:max_y instead.")
  (max_y m))

(cl:ensure-generic-function 'grid_size-val :lambda-list '(m))
(cl:defmethod grid_size-val ((m <grid_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader amore_vision-msg:grid_size-val is deprecated.  Use amore_vision-msg:grid_size instead.")
  (grid_size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <grid_point>) ostream)
  "Serializes a message object of type '<grid_point>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'percent)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'min_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'min_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'max_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'max_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'grid_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <grid_point>) istream)
  "Deserializes a message object of type '<grid_point>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'percent) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'min_x) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'min_y) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max_x) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max_y) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'grid_size) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<grid_point>)))
  "Returns string type for a message object of type '<grid_point>"
  "amore_vision/grid_point")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'grid_point)))
  "Returns string type for a message object of type 'grid_point"
  "amore_vision/grid_point")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<grid_point>)))
  "Returns md5sum for a message object of type '<grid_point>"
  "435092f9725ac07bcd4486688f70bed6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'grid_point)))
  "Returns md5sum for a message object of type 'grid_point"
  "435092f9725ac07bcd4486688f70bed6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<grid_point>)))
  "Returns full string definition for message of type '<grid_point>"
  (cl:format cl:nil "float32 x ~%float32 y~%int8 status~%int8 percent~%int8 min_x ~%int8 min_y~%int8 max_x ~%int8 max_y~%float32 grid_size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'grid_point)))
  "Returns full string definition for message of type 'grid_point"
  (cl:format cl:nil "float32 x ~%float32 y~%int8 status~%int8 percent~%int8 min_x ~%int8 min_y~%int8 max_x ~%int8 max_y~%float32 grid_size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <grid_point>))
  (cl:+ 0
     4
     4
     1
     1
     1
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <grid_point>))
  "Converts a ROS message object to a list"
  (cl:list 'grid_point
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':status (status msg))
    (cl:cons ':percent (percent msg))
    (cl:cons ':min_x (min_x msg))
    (cl:cons ':min_y (min_y msg))
    (cl:cons ':max_x (max_x msg))
    (cl:cons ':max_y (max_y msg))
    (cl:cons ':grid_size (grid_size msg))
))
