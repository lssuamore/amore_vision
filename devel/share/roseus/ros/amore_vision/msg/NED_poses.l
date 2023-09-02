;; Auto-generated. Do not edit!


(when (boundp 'amore_vision::NED_poses)
  (if (not (find-package "AMORE_VISION"))
    (make-package "AMORE_VISION"))
  (shadow 'NED_poses (find-package "AMORE_VISION")))
(unless (find-package "AMORE_VISION::NED_POSES")
  (make-package "AMORE_VISION::NED_POSES"))

(in-package "ROS")
;;//! \htmlinclude NED_poses.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass amore_vision::NED_poses
  :super ros::object
  :slots (_poses _quantity ))

(defmethod amore_vision::NED_poses
  (:init
   (&key
    ((:poses __poses) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:quantity __quantity) 0)
    )
   (send-super :init)
   (setq _poses __poses)
   (setq _quantity (round __quantity))
   self)
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:quantity
   (&optional __quantity)
   (if __quantity (setq _quantity __quantity)) _quantity)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ;; int32 _quantity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;; int32 _quantity
       (write-long _quantity s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _quantity
     (setq _quantity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get amore_vision::NED_poses :md5sum-) "f0ed5e05a989aa92228d75bc8d6fdd0b")
(setf (get amore_vision::NED_poses :datatype-) "amore_vision/NED_poses")
(setf (get amore_vision::NED_poses :definition-)
      "geometry_msgs/Point[] poses
int32 quantity

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :amore_vision/NED_poses "f0ed5e05a989aa92228d75bc8d6fdd0b")


