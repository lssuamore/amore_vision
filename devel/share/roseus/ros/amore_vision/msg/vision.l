;; Auto-generated. Do not edit!


(when (boundp 'amore_vision::vision)
  (if (not (find-package "AMORE_VISION"))
    (make-package "AMORE_VISION"))
  (shadow 'vision (find-package "AMORE_VISION")))
(unless (find-package "AMORE_VISION::VISION")
  (make-package "AMORE_VISION::VISION"))

(in-package "ROS")
;;//! \htmlinclude vision.msg.html


(defclass amore_vision::vision
  :super ros::object
  :slots (_object_avoid _x_avoid _y_avoid _quantity_avoid _object_classify _x_classify _y_classify _quantity_classify ))

(defmethod amore_vision::vision
  (:init
   (&key
    ((:object_avoid __object_avoid) "")
    ((:x_avoid __x_avoid) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y_avoid __y_avoid) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:quantity_avoid __quantity_avoid) 0)
    ((:object_classify __object_classify) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:x_classify __x_classify) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y_classify __y_classify) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:quantity_classify __quantity_classify) 0)
    )
   (send-super :init)
   (setq _object_avoid (string __object_avoid))
   (setq _x_avoid __x_avoid)
   (setq _y_avoid __y_avoid)
   (setq _quantity_avoid (round __quantity_avoid))
   (setq _object_classify __object_classify)
   (setq _x_classify __x_classify)
   (setq _y_classify __y_classify)
   (setq _quantity_classify (round __quantity_classify))
   self)
  (:object_avoid
   (&optional __object_avoid)
   (if __object_avoid (setq _object_avoid __object_avoid)) _object_avoid)
  (:x_avoid
   (&optional __x_avoid)
   (if __x_avoid (setq _x_avoid __x_avoid)) _x_avoid)
  (:y_avoid
   (&optional __y_avoid)
   (if __y_avoid (setq _y_avoid __y_avoid)) _y_avoid)
  (:quantity_avoid
   (&optional __quantity_avoid)
   (if __quantity_avoid (setq _quantity_avoid __quantity_avoid)) _quantity_avoid)
  (:object_classify
   (&optional __object_classify)
   (if __object_classify (setq _object_classify __object_classify)) _object_classify)
  (:x_classify
   (&optional __x_classify)
   (if __x_classify (setq _x_classify __x_classify)) _x_classify)
  (:y_classify
   (&optional __y_classify)
   (if __y_classify (setq _y_classify __y_classify)) _y_classify)
  (:quantity_classify
   (&optional __quantity_classify)
   (if __quantity_classify (setq _quantity_classify __quantity_classify)) _quantity_classify)
  (:serialization-length
   ()
   (+
    ;; string _object_avoid
    4 (length _object_avoid)
    ;; float32[] _x_avoid
    (* 4    (length _x_avoid)) 4
    ;; float32[] _y_avoid
    (* 4    (length _y_avoid)) 4
    ;; int32 _quantity_avoid
    4
    ;; string[] _object_classify
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _object_classify)) 4
    ;; float32[] _x_classify
    (* 4    (length _x_classify)) 4
    ;; float32[] _y_classify
    (* 4    (length _y_classify)) 4
    ;; int32 _quantity_classify
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object_avoid
       (write-long (length _object_avoid) s) (princ _object_avoid s)
     ;; float32[] _x_avoid
     (write-long (length _x_avoid) s)
     (dotimes (i (length _x_avoid))
       (sys::poke (elt _x_avoid i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _y_avoid
     (write-long (length _y_avoid) s)
     (dotimes (i (length _y_avoid))
       (sys::poke (elt _y_avoid i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32 _quantity_avoid
       (write-long _quantity_avoid s)
     ;; string[] _object_classify
     (write-long (length _object_classify) s)
     (dolist (elem _object_classify)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32[] _x_classify
     (write-long (length _x_classify) s)
     (dotimes (i (length _x_classify))
       (sys::poke (elt _x_classify i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _y_classify
     (write-long (length _y_classify) s)
     (dotimes (i (length _y_classify))
       (sys::poke (elt _y_classify i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32 _quantity_classify
       (write-long _quantity_classify s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object_avoid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_avoid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _x_avoid
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x_avoid (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x_avoid i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _y_avoid
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y_avoid (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y_avoid i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32 _quantity_avoid
     (setq _quantity_avoid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string[] _object_classify
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _object_classify (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _object_classify i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32[] _x_classify
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x_classify (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x_classify i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _y_classify
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y_classify (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y_classify i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32 _quantity_classify
     (setq _quantity_classify (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get amore_vision::vision :md5sum-) "9a1cd59d7d13b9f729c9d5dfe01965f7")
(setf (get amore_vision::vision :datatype-) "amore_vision/vision")
(setf (get amore_vision::vision :definition-)
      "string object_avoid
float32[] x_avoid
float32[] y_avoid
int32 quantity_avoid
string[] object_classify
float32[] x_classify
float32[] y_classify
int32 quantity_classify

")



(provide :amore_vision/vision "9a1cd59d7d13b9f729c9d5dfe01965f7")


