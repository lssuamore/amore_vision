;; Auto-generated. Do not edit!


(when (boundp 'amore_vision::distances)
  (if (not (find-package "AMORE_VISION"))
    (make-package "AMORE_VISION"))
  (shadow 'distances (find-package "AMORE_VISION")))
(unless (find-package "AMORE_VISION::DISTANCES")
  (make-package "AMORE_VISION::DISTANCES"))

(in-package "ROS")
;;//! \htmlinclude distances.msg.html


(defclass amore_vision::distances
  :super ros::object
  :slots (_distances ))

(defmethod amore_vision::distances
  (:init
   (&key
    ((:distances __distances) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _distances __distances)
   self)
  (:distances
   (&optional __distances)
   (if __distances (setq _distances __distances)) _distances)
  (:serialization-length
   ()
   (+
    ;; float32[] _distances
    (* 4    (length _distances)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _distances
     (write-long (length _distances) s)
     (dotimes (i (length _distances))
       (sys::poke (elt _distances i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _distances
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _distances (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _distances i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get amore_vision::distances :md5sum-) "f68b787273c43ae659a92281e8955cfb")
(setf (get amore_vision::distances :datatype-) "amore_vision/distances")
(setf (get amore_vision::distances :definition-)
      "float32[] distances
")



(provide :amore_vision/distances "f68b787273c43ae659a92281e8955cfb")


