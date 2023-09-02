;; Auto-generated. Do not edit!


(when (boundp 'amore_vision::buoy)
  (if (not (find-package "AMORE_VISION"))
    (make-package "AMORE_VISION"))
  (shadow 'buoy (find-package "AMORE_VISION")))
(unless (find-package "AMORE_VISION::BUOY")
  (make-package "AMORE_VISION::BUOY"))

(in-package "ROS")
;;//! \htmlinclude buoy.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass amore_vision::buoy
  :super ros::object
  :slots (_centroid _color _label ))

(defmethod amore_vision::buoy
  (:init
   (&key
    ((:centroid __centroid) (instance geometry_msgs::Point32 :init))
    ((:color __color) "")
    ((:label __label) "")
    )
   (send-super :init)
   (setq _centroid __centroid)
   (setq _color (string __color))
   (setq _label (string __label))
   self)
  (:centroid
   (&rest __centroid)
   (if (keywordp (car __centroid))
       (send* _centroid __centroid)
     (progn
       (if __centroid (setq _centroid (car __centroid)))
       _centroid)))
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point32 _centroid
    (send _centroid :serialization-length)
    ;; string _color
    4 (length _color)
    ;; string _label
    4 (length _label)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point32 _centroid
       (send _centroid :serialize s)
     ;; string _color
       (write-long (length _color) s) (princ _color s)
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point32 _centroid
     (send _centroid :deserialize buf ptr-) (incf ptr- (send _centroid :serialization-length))
   ;; string _color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get amore_vision::buoy :md5sum-) "205d7f01bdec538ed3caf910fa5c88f1")
(setf (get amore_vision::buoy :datatype-) "amore_vision/buoy")
(setf (get amore_vision::buoy :definition-)
      "geometry_msgs/Point32 centroid
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



(provide :amore_vision/buoy "205d7f01bdec538ed3caf910fa5c88f1")


