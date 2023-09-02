;; Auto-generated. Do not edit!


(when (boundp 'amore_vision::cluster_list)
  (if (not (find-package "AMORE_VISION"))
    (make-package "AMORE_VISION"))
  (shadow 'cluster_list (find-package "AMORE_VISION")))
(unless (find-package "AMORE_VISION::CLUSTER_LIST")
  (make-package "AMORE_VISION::CLUSTER_LIST"))

(in-package "ROS")
;;//! \htmlinclude cluster_list.msg.html


(defclass amore_vision::cluster_list
  :super ros::object
  :slots (_cluster_list ))

(defmethod amore_vision::cluster_list
  (:init
   (&key
    ((:cluster_list __cluster_list) (let (r) (dotimes (i 0) (push (instance amore_vision::cluster :init) r)) r))
    )
   (send-super :init)
   (setq _cluster_list __cluster_list)
   self)
  (:cluster_list
   (&rest __cluster_list)
   (if (keywordp (car __cluster_list))
       (send* _cluster_list __cluster_list)
     (progn
       (if __cluster_list (setq _cluster_list (car __cluster_list)))
       _cluster_list)))
  (:serialization-length
   ()
   (+
    ;; amore_vision/cluster[] _cluster_list
    (apply #'+ (send-all _cluster_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; amore_vision/cluster[] _cluster_list
     (write-long (length _cluster_list) s)
     (dolist (elem _cluster_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; amore_vision/cluster[] _cluster_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cluster_list (let (r) (dotimes (i n) (push (instance amore_vision::cluster :init) r)) r))
     (dolist (elem- _cluster_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get amore_vision::cluster_list :md5sum-) "c64c04dd922d096b96a3d3f178bc1aaa")
(setf (get amore_vision::cluster_list :datatype-) "amore_vision/cluster_list")
(setf (get amore_vision::cluster_list :definition-)
      "cluster[] cluster_list
================================================================================
MSG: amore_vision/cluster
depth_points[] raw_cluster
int32 num_points
geometry_msgs/Point32 centroid
std_msgs/String label
float32 distance
================================================================================
MSG: amore_vision/depth_points
float32[4] labeled_point
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
================================================================================
MSG: std_msgs/String
string data

")



(provide :amore_vision/cluster_list "c64c04dd922d096b96a3d3f178bc1aaa")


