;; Auto-generated. Do not edit!


(when (boundp 'amore_vision::to_cam)
  (if (not (find-package "AMORE_VISION"))
    (make-package "AMORE_VISION"))
  (shadow 'to_cam (find-package "AMORE_VISION")))
(unless (find-package "AMORE_VISION::TO_CAM")
  (make-package "AMORE_VISION::TO_CAM"))

(in-package "ROS")
;;//! \htmlinclude to_cam.msg.html


(defclass amore_vision::to_cam
  :super ros::object
  :slots (_x _y _quantity ))

(defmethod amore_vision::to_cam
  (:init
   (&key
    ((:x __x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y __y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:quantity __quantity) 0)
    )
   (send-super :init)
   (setq _x __x)
   (setq _y __y)
   (setq _quantity (round __quantity))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:quantity
   (&optional __quantity)
   (if __quantity (setq _quantity __quantity)) _quantity)
  (:serialization-length
   ()
   (+
    ;; float32[] _x
    (* 4    (length _x)) 4
    ;; float32[] _y
    (* 4    (length _y)) 4
    ;; int32 _quantity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _x
     (write-long (length _x) s)
     (dotimes (i (length _x))
       (sys::poke (elt _x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _y
     (write-long (length _y) s)
     (dotimes (i (length _y))
       (sys::poke (elt _y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32 _quantity
       (write-long _quantity s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32 _quantity
     (setq _quantity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get amore_vision::to_cam :md5sum-) "d855056e0e6fe3b83d73c1f04a752222")
(setf (get amore_vision::to_cam :datatype-) "amore_vision/to_cam")
(setf (get amore_vision::to_cam :definition-)
      "float32[] x
float32[] y
int32 quantity

")



(provide :amore_vision/to_cam "d855056e0e6fe3b83d73c1f04a752222")


