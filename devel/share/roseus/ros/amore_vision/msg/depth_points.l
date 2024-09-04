;; Auto-generated. Do not edit!


(when (boundp 'amore_vision::depth_points)
  (if (not (find-package "AMORE_VISION"))
    (make-package "AMORE_VISION"))
  (shadow 'depth_points (find-package "AMORE_VISION")))
(unless (find-package "AMORE_VISION::DEPTH_POINTS")
  (make-package "AMORE_VISION::DEPTH_POINTS"))

(in-package "ROS")
;;//! \htmlinclude depth_points.msg.html


(defclass amore_vision::depth_points
  :super ros::object
  :slots (_labeled_point ))

(defmethod amore_vision::depth_points
  (:init
   (&key
    ((:labeled_point __labeled_point) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _labeled_point __labeled_point)
   self)
  (:labeled_point
   (&optional __labeled_point)
   (if __labeled_point (setq _labeled_point __labeled_point)) _labeled_point)
  (:serialization-length
   ()
   (+
    ;; float32[4] _labeled_point
    (* 4    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[4] _labeled_point
     (dotimes (i 4)
       (sys::poke (elt _labeled_point i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[4] _labeled_point
   (dotimes (i (length _labeled_point))
     (setf (elt _labeled_point i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get amore_vision::depth_points :md5sum-) "242571970d31da06fb7d6fd8a07d1e48")
(setf (get amore_vision::depth_points :datatype-) "amore_vision/depth_points")
(setf (get amore_vision::depth_points :definition-)
      "float32[4] labeled_point
")



(provide :amore_vision/depth_points "242571970d31da06fb7d6fd8a07d1e48")


