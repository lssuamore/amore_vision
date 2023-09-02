;; Auto-generated. Do not edit!


(when (boundp 'amore_vision::control_efforts)
  (if (not (find-package "AMORE_VISION"))
    (make-package "AMORE_VISION"))
  (shadow 'control_efforts (find-package "AMORE_VISION")))
(unless (find-package "AMORE_VISION::CONTROL_EFFORTS")
  (make-package "AMORE_VISION::CONTROL_EFFORTS"))

(in-package "ROS")
;;//! \htmlinclude control_efforts.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass amore_vision::control_efforts
  :super ros::object
  :slots (_t_x _t_x_P _t_x_I _t_x_D _t_y _t_y_P _t_y_I _t_y_D _m_z _m_z_P _m_z_I _m_z_D ))

(defmethod amore_vision::control_efforts
  (:init
   (&key
    ((:t_x __t_x) (instance std_msgs::Float32 :init))
    ((:t_x_P __t_x_P) (instance std_msgs::Float32 :init))
    ((:t_x_I __t_x_I) (instance std_msgs::Float32 :init))
    ((:t_x_D __t_x_D) (instance std_msgs::Float32 :init))
    ((:t_y __t_y) (instance std_msgs::Float32 :init))
    ((:t_y_P __t_y_P) (instance std_msgs::Float32 :init))
    ((:t_y_I __t_y_I) (instance std_msgs::Float32 :init))
    ((:t_y_D __t_y_D) (instance std_msgs::Float32 :init))
    ((:m_z __m_z) (instance std_msgs::Float32 :init))
    ((:m_z_P __m_z_P) (instance std_msgs::Float32 :init))
    ((:m_z_I __m_z_I) (instance std_msgs::Float32 :init))
    ((:m_z_D __m_z_D) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _t_x __t_x)
   (setq _t_x_P __t_x_P)
   (setq _t_x_I __t_x_I)
   (setq _t_x_D __t_x_D)
   (setq _t_y __t_y)
   (setq _t_y_P __t_y_P)
   (setq _t_y_I __t_y_I)
   (setq _t_y_D __t_y_D)
   (setq _m_z __m_z)
   (setq _m_z_P __m_z_P)
   (setq _m_z_I __m_z_I)
   (setq _m_z_D __m_z_D)
   self)
  (:t_x
   (&rest __t_x)
   (if (keywordp (car __t_x))
       (send* _t_x __t_x)
     (progn
       (if __t_x (setq _t_x (car __t_x)))
       _t_x)))
  (:t_x_P
   (&rest __t_x_P)
   (if (keywordp (car __t_x_P))
       (send* _t_x_P __t_x_P)
     (progn
       (if __t_x_P (setq _t_x_P (car __t_x_P)))
       _t_x_P)))
  (:t_x_I
   (&rest __t_x_I)
   (if (keywordp (car __t_x_I))
       (send* _t_x_I __t_x_I)
     (progn
       (if __t_x_I (setq _t_x_I (car __t_x_I)))
       _t_x_I)))
  (:t_x_D
   (&rest __t_x_D)
   (if (keywordp (car __t_x_D))
       (send* _t_x_D __t_x_D)
     (progn
       (if __t_x_D (setq _t_x_D (car __t_x_D)))
       _t_x_D)))
  (:t_y
   (&rest __t_y)
   (if (keywordp (car __t_y))
       (send* _t_y __t_y)
     (progn
       (if __t_y (setq _t_y (car __t_y)))
       _t_y)))
  (:t_y_P
   (&rest __t_y_P)
   (if (keywordp (car __t_y_P))
       (send* _t_y_P __t_y_P)
     (progn
       (if __t_y_P (setq _t_y_P (car __t_y_P)))
       _t_y_P)))
  (:t_y_I
   (&rest __t_y_I)
   (if (keywordp (car __t_y_I))
       (send* _t_y_I __t_y_I)
     (progn
       (if __t_y_I (setq _t_y_I (car __t_y_I)))
       _t_y_I)))
  (:t_y_D
   (&rest __t_y_D)
   (if (keywordp (car __t_y_D))
       (send* _t_y_D __t_y_D)
     (progn
       (if __t_y_D (setq _t_y_D (car __t_y_D)))
       _t_y_D)))
  (:m_z
   (&rest __m_z)
   (if (keywordp (car __m_z))
       (send* _m_z __m_z)
     (progn
       (if __m_z (setq _m_z (car __m_z)))
       _m_z)))
  (:m_z_P
   (&rest __m_z_P)
   (if (keywordp (car __m_z_P))
       (send* _m_z_P __m_z_P)
     (progn
       (if __m_z_P (setq _m_z_P (car __m_z_P)))
       _m_z_P)))
  (:m_z_I
   (&rest __m_z_I)
   (if (keywordp (car __m_z_I))
       (send* _m_z_I __m_z_I)
     (progn
       (if __m_z_I (setq _m_z_I (car __m_z_I)))
       _m_z_I)))
  (:m_z_D
   (&rest __m_z_D)
   (if (keywordp (car __m_z_D))
       (send* _m_z_D __m_z_D)
     (progn
       (if __m_z_D (setq _m_z_D (car __m_z_D)))
       _m_z_D)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32 _t_x
    (send _t_x :serialization-length)
    ;; std_msgs/Float32 _t_x_P
    (send _t_x_P :serialization-length)
    ;; std_msgs/Float32 _t_x_I
    (send _t_x_I :serialization-length)
    ;; std_msgs/Float32 _t_x_D
    (send _t_x_D :serialization-length)
    ;; std_msgs/Float32 _t_y
    (send _t_y :serialization-length)
    ;; std_msgs/Float32 _t_y_P
    (send _t_y_P :serialization-length)
    ;; std_msgs/Float32 _t_y_I
    (send _t_y_I :serialization-length)
    ;; std_msgs/Float32 _t_y_D
    (send _t_y_D :serialization-length)
    ;; std_msgs/Float32 _m_z
    (send _m_z :serialization-length)
    ;; std_msgs/Float32 _m_z_P
    (send _m_z_P :serialization-length)
    ;; std_msgs/Float32 _m_z_I
    (send _m_z_I :serialization-length)
    ;; std_msgs/Float32 _m_z_D
    (send _m_z_D :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32 _t_x
       (send _t_x :serialize s)
     ;; std_msgs/Float32 _t_x_P
       (send _t_x_P :serialize s)
     ;; std_msgs/Float32 _t_x_I
       (send _t_x_I :serialize s)
     ;; std_msgs/Float32 _t_x_D
       (send _t_x_D :serialize s)
     ;; std_msgs/Float32 _t_y
       (send _t_y :serialize s)
     ;; std_msgs/Float32 _t_y_P
       (send _t_y_P :serialize s)
     ;; std_msgs/Float32 _t_y_I
       (send _t_y_I :serialize s)
     ;; std_msgs/Float32 _t_y_D
       (send _t_y_D :serialize s)
     ;; std_msgs/Float32 _m_z
       (send _m_z :serialize s)
     ;; std_msgs/Float32 _m_z_P
       (send _m_z_P :serialize s)
     ;; std_msgs/Float32 _m_z_I
       (send _m_z_I :serialize s)
     ;; std_msgs/Float32 _m_z_D
       (send _m_z_D :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32 _t_x
     (send _t_x :deserialize buf ptr-) (incf ptr- (send _t_x :serialization-length))
   ;; std_msgs/Float32 _t_x_P
     (send _t_x_P :deserialize buf ptr-) (incf ptr- (send _t_x_P :serialization-length))
   ;; std_msgs/Float32 _t_x_I
     (send _t_x_I :deserialize buf ptr-) (incf ptr- (send _t_x_I :serialization-length))
   ;; std_msgs/Float32 _t_x_D
     (send _t_x_D :deserialize buf ptr-) (incf ptr- (send _t_x_D :serialization-length))
   ;; std_msgs/Float32 _t_y
     (send _t_y :deserialize buf ptr-) (incf ptr- (send _t_y :serialization-length))
   ;; std_msgs/Float32 _t_y_P
     (send _t_y_P :deserialize buf ptr-) (incf ptr- (send _t_y_P :serialization-length))
   ;; std_msgs/Float32 _t_y_I
     (send _t_y_I :deserialize buf ptr-) (incf ptr- (send _t_y_I :serialization-length))
   ;; std_msgs/Float32 _t_y_D
     (send _t_y_D :deserialize buf ptr-) (incf ptr- (send _t_y_D :serialization-length))
   ;; std_msgs/Float32 _m_z
     (send _m_z :deserialize buf ptr-) (incf ptr- (send _m_z :serialization-length))
   ;; std_msgs/Float32 _m_z_P
     (send _m_z_P :deserialize buf ptr-) (incf ptr- (send _m_z_P :serialization-length))
   ;; std_msgs/Float32 _m_z_I
     (send _m_z_I :deserialize buf ptr-) (incf ptr- (send _m_z_I :serialization-length))
   ;; std_msgs/Float32 _m_z_D
     (send _m_z_D :deserialize buf ptr-) (incf ptr- (send _m_z_D :serialization-length))
   ;;
   self)
  )

(setf (get amore_vision::control_efforts :md5sum-) "925fe81e944ee95c22ed3341a39c98ea")
(setf (get amore_vision::control_efforts :datatype-) "amore_vision/control_efforts")
(setf (get amore_vision::control_efforts :definition-)
      "std_msgs/Float32 t_x
	std_msgs/Float32 t_x_P
	std_msgs/Float32 t_x_I
	std_msgs/Float32 t_x_D
std_msgs/Float32 t_y
	std_msgs/Float32 t_y_P
	std_msgs/Float32 t_y_I
	std_msgs/Float32 t_y_D
std_msgs/Float32 m_z
	std_msgs/Float32 m_z_P
	std_msgs/Float32 m_z_I
	std_msgs/Float32 m_z_D

================================================================================
MSG: std_msgs/Float32
float32 data
")



(provide :amore_vision/control_efforts "925fe81e944ee95c22ed3341a39c98ea")


