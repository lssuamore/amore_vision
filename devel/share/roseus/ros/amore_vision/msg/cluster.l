;; Auto-generated. Do not edit!


(when (boundp 'amore_vision::cluster)
  (if (not (find-package "AMORE_VISION"))
    (make-package "AMORE_VISION"))
  (shadow 'cluster (find-package "AMORE_VISION")))
(unless (find-package "AMORE_VISION::CLUSTER")
  (make-package "AMORE_VISION::CLUSTER"))

(in-package "ROS")
;;//! \htmlinclude cluster.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass amore_vision::cluster
  :super ros::object
  :slots (_raw_cluster _num_points _centroid _label _distance ))

(defmethod amore_vision::cluster
  (:init
   (&key
    ((:raw_cluster __raw_cluster) (let (r) (dotimes (i 0) (push (instance amore_vision::depth_points :init) r)) r))
    ((:num_points __num_points) 0)
    ((:centroid __centroid) (instance geometry_msgs::Point32 :init))
    ((:label __label) (instance std_msgs::String :init))
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _raw_cluster __raw_cluster)
   (setq _num_points (round __num_points))
   (setq _centroid __centroid)
   (setq _label __label)
   (setq _distance (float __distance))
   self)
  (:raw_cluster
   (&rest __raw_cluster)
   (if (keywordp (car __raw_cluster))
       (send* _raw_cluster __raw_cluster)
     (progn
       (if __raw_cluster (setq _raw_cluster (car __raw_cluster)))
       _raw_cluster)))
  (:num_points
   (&optional __num_points)
   (if __num_points (setq _num_points __num_points)) _num_points)
  (:centroid
   (&rest __centroid)
   (if (keywordp (car __centroid))
       (send* _centroid __centroid)
     (progn
       (if __centroid (setq _centroid (car __centroid)))
       _centroid)))
  (:label
   (&rest __label)
   (if (keywordp (car __label))
       (send* _label __label)
     (progn
       (if __label (setq _label (car __label)))
       _label)))
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; amore_vision/depth_points[] _raw_cluster
    (apply #'+ (send-all _raw_cluster :serialization-length)) 4
    ;; int32 _num_points
    4
    ;; geometry_msgs/Point32 _centroid
    (send _centroid :serialization-length)
    ;; std_msgs/String _label
    (send _label :serialization-length)
    ;; float32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; amore_vision/depth_points[] _raw_cluster
     (write-long (length _raw_cluster) s)
     (dolist (elem _raw_cluster)
       (send elem :serialize s)
       )
     ;; int32 _num_points
       (write-long _num_points s)
     ;; geometry_msgs/Point32 _centroid
       (send _centroid :serialize s)
     ;; std_msgs/String _label
       (send _label :serialize s)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; amore_vision/depth_points[] _raw_cluster
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _raw_cluster (let (r) (dotimes (i n) (push (instance amore_vision::depth_points :init) r)) r))
     (dolist (elem- _raw_cluster)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _num_points
     (setq _num_points (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point32 _centroid
     (send _centroid :deserialize buf ptr-) (incf ptr- (send _centroid :serialization-length))
   ;; std_msgs/String _label
     (send _label :deserialize buf ptr-) (incf ptr- (send _label :serialization-length))
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get amore_vision::cluster :md5sum-) "fa742a7a0d63a1e1274fe5ece59d103c")
(setf (get amore_vision::cluster :datatype-) "amore_vision/cluster")
(setf (get amore_vision::cluster :definition-)
      "depth_points[] raw_cluster
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



(provide :amore_vision/cluster "fa742a7a0d63a1e1274fe5ece59d103c")


