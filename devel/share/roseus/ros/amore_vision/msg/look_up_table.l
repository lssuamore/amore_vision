;; Auto-generated. Do not edit!


(when (boundp 'amore_vision::look_up_table)
  (if (not (find-package "AMORE_VISION"))
    (make-package "AMORE_VISION"))
  (shadow 'look_up_table (find-package "AMORE_VISION")))
(unless (find-package "AMORE_VISION::LOOK_UP_TABLE")
  (make-package "AMORE_VISION::LOOK_UP_TABLE"))

(in-package "ROS")
;;//! \htmlinclude look_up_table.msg.html


(defclass amore_vision::look_up_table
  :super ros::object
  :slots (_labeled_buoy_list ))

(defmethod amore_vision::look_up_table
  (:init
   (&key
    ((:labeled_buoy_list __labeled_buoy_list) (let (r) (dotimes (i 0) (push (instance amore_vision::buoy :init) r)) r))
    )
   (send-super :init)
   (setq _labeled_buoy_list __labeled_buoy_list)
   self)
  (:labeled_buoy_list
   (&rest __labeled_buoy_list)
   (if (keywordp (car __labeled_buoy_list))
       (send* _labeled_buoy_list __labeled_buoy_list)
     (progn
       (if __labeled_buoy_list (setq _labeled_buoy_list (car __labeled_buoy_list)))
       _labeled_buoy_list)))
  (:serialization-length
   ()
   (+
    ;; amore_vision/buoy[] _labeled_buoy_list
    (apply #'+ (send-all _labeled_buoy_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; amore_vision/buoy[] _labeled_buoy_list
     (write-long (length _labeled_buoy_list) s)
     (dolist (elem _labeled_buoy_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; amore_vision/buoy[] _labeled_buoy_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _labeled_buoy_list (let (r) (dotimes (i n) (push (instance amore_vision::buoy :init) r)) r))
     (dolist (elem- _labeled_buoy_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get amore_vision::look_up_table :md5sum-) "6a566061cda1f744e70300cded2a4c97")
(setf (get amore_vision::look_up_table :datatype-) "amore_vision/look_up_table")
(setf (get amore_vision::look_up_table :definition-)
      "buoy[] labeled_buoy_list
================================================================================
MSG: amore_vision/buoy
geometry_msgs/Point32 centroid
string color
string label
================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :amore_vision/look_up_table "6a566061cda1f744e70300cded2a4c97")


