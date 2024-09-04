;; Auto-generated. Do not edit!


(when (boundp 'amore_vision::ang_mag)
  (if (not (find-package "AMORE_VISION"))
    (make-package "AMORE_VISION"))
  (shadow 'ang_mag (find-package "AMORE_VISION")))
(unless (find-package "AMORE_VISION::ANG_MAG")
  (make-package "AMORE_VISION::ANG_MAG"))

(in-package "ROS")
;;//! \htmlinclude ang_mag.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass amore_vision::ang_mag
  :super ros::object
  :slots (_ang _mag ))

(defmethod amore_vision::ang_mag
  (:init
   (&key
    ((:ang __ang) (instance std_msgs::Float32 :init))
    ((:mag __mag) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _ang __ang)
   (setq _mag __mag)
   self)
  (:ang
   (&rest __ang)
   (if (keywordp (car __ang))
       (send* _ang __ang)
     (progn
       (if __ang (setq _ang (car __ang)))
       _ang)))
  (:mag
   (&rest __mag)
   (if (keywordp (car __mag))
       (send* _mag __mag)
     (progn
       (if __mag (setq _mag (car __mag)))
       _mag)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32 _ang
    (send _ang :serialization-length)
    ;; std_msgs/Float32 _mag
    (send _mag :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32 _ang
       (send _ang :serialize s)
     ;; std_msgs/Float32 _mag
       (send _mag :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32 _ang
     (send _ang :deserialize buf ptr-) (incf ptr- (send _ang :serialization-length))
   ;; std_msgs/Float32 _mag
     (send _mag :deserialize buf ptr-) (incf ptr- (send _mag :serialization-length))
   ;;
   self)
  )

(setf (get amore_vision::ang_mag :md5sum-) "a2bc60f9ba55d7f3e348a4f6da89e008")
(setf (get amore_vision::ang_mag :datatype-) "amore_vision/ang_mag")
(setf (get amore_vision::ang_mag :definition-)
      "std_msgs/Float32 ang
std_msgs/Float32 mag

================================================================================
MSG: std_msgs/Float32
float32 data
")



(provide :amore_vision/ang_mag "a2bc60f9ba55d7f3e348a4f6da89e008")


