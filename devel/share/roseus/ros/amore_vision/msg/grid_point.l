;; Auto-generated. Do not edit!


(when (boundp 'amore_vision::grid_point)
  (if (not (find-package "AMORE_VISION"))
    (make-package "AMORE_VISION"))
  (shadow 'grid_point (find-package "AMORE_VISION")))
(unless (find-package "AMORE_VISION::GRID_POINT")
  (make-package "AMORE_VISION::GRID_POINT"))

(in-package "ROS")
;;//! \htmlinclude grid_point.msg.html


(defclass amore_vision::grid_point
  :super ros::object
  :slots (_x _y _status _percent _min_x _min_y _max_x _max_y _grid_size ))

(defmethod amore_vision::grid_point
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:status __status) 0)
    ((:percent __percent) 0)
    ((:min_x __min_x) 0)
    ((:min_y __min_y) 0)
    ((:max_x __max_x) 0)
    ((:max_y __max_y) 0)
    ((:grid_size __grid_size) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _status (round __status))
   (setq _percent (round __percent))
   (setq _min_x (round __min_x))
   (setq _min_y (round __min_y))
   (setq _max_x (round __max_x))
   (setq _max_y (round __max_y))
   (setq _grid_size (float __grid_size))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:percent
   (&optional __percent)
   (if __percent (setq _percent __percent)) _percent)
  (:min_x
   (&optional __min_x)
   (if __min_x (setq _min_x __min_x)) _min_x)
  (:min_y
   (&optional __min_y)
   (if __min_y (setq _min_y __min_y)) _min_y)
  (:max_x
   (&optional __max_x)
   (if __max_x (setq _max_x __max_x)) _max_x)
  (:max_y
   (&optional __max_y)
   (if __max_y (setq _max_y __max_y)) _max_y)
  (:grid_size
   (&optional __grid_size)
   (if __grid_size (setq _grid_size __grid_size)) _grid_size)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; int8 _status
    1
    ;; int8 _percent
    1
    ;; int8 _min_x
    1
    ;; int8 _min_y
    1
    ;; int8 _max_x
    1
    ;; int8 _max_y
    1
    ;; float32 _grid_size
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _status
       (write-byte _status s)
     ;; int8 _percent
       (write-byte _percent s)
     ;; int8 _min_x
       (write-byte _min_x s)
     ;; int8 _min_y
       (write-byte _min_y s)
     ;; int8 _max_x
       (write-byte _max_x s)
     ;; int8 _max_y
       (write-byte _max_y s)
     ;; float32 _grid_size
       (sys::poke _grid_size (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;; int8 _percent
     (setq _percent (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _percent 127) (setq _percent (- _percent 256)))
   ;; int8 _min_x
     (setq _min_x (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _min_x 127) (setq _min_x (- _min_x 256)))
   ;; int8 _min_y
     (setq _min_y (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _min_y 127) (setq _min_y (- _min_y 256)))
   ;; int8 _max_x
     (setq _max_x (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _max_x 127) (setq _max_x (- _max_x 256)))
   ;; int8 _max_y
     (setq _max_y (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _max_y 127) (setq _max_y (- _max_y 256)))
   ;; float32 _grid_size
     (setq _grid_size (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get amore_vision::grid_point :md5sum-) "435092f9725ac07bcd4486688f70bed6")
(setf (get amore_vision::grid_point :datatype-) "amore_vision/grid_point")
(setf (get amore_vision::grid_point :definition-)
      "float32 x 
float32 y
int8 status
int8 percent
int8 min_x 
int8 min_y
int8 max_x 
int8 max_y
float32 grid_size

")



(provide :amore_vision/grid_point "435092f9725ac07bcd4486688f70bed6")


