;; Auto-generated. Do not edit!


(when (boundp 'aubo_msgs::GoalPoint)
  (if (not (find-package "AUBO_MSGS"))
    (make-package "AUBO_MSGS"))
  (shadow 'GoalPoint (find-package "AUBO_MSGS")))
(unless (find-package "AUBO_MSGS::GOALPOINT")
  (make-package "AUBO_MSGS::GOALPOINT"))

(in-package "ROS")
;;//! \htmlinclude GoalPoint.msg.html


(defclass aubo_msgs::GoalPoint
  :super ros::object
  :slots (_bus _joint1 _joint2 _joint3 _joint4 _joint5 _joint6 ))

(defmethod aubo_msgs::GoalPoint
  (:init
   (&key
    ((:bus __bus) 0)
    ((:joint1 __joint1) 0.0)
    ((:joint2 __joint2) 0.0)
    ((:joint3 __joint3) 0.0)
    ((:joint4 __joint4) 0.0)
    ((:joint5 __joint5) 0.0)
    ((:joint6 __joint6) 0.0)
    )
   (send-super :init)
   (setq _bus (round __bus))
   (setq _joint1 (float __joint1))
   (setq _joint2 (float __joint2))
   (setq _joint3 (float __joint3))
   (setq _joint4 (float __joint4))
   (setq _joint5 (float __joint5))
   (setq _joint6 (float __joint6))
   self)
  (:bus
   (&optional __bus)
   (if __bus (setq _bus __bus)) _bus)
  (:joint1
   (&optional __joint1)
   (if __joint1 (setq _joint1 __joint1)) _joint1)
  (:joint2
   (&optional __joint2)
   (if __joint2 (setq _joint2 __joint2)) _joint2)
  (:joint3
   (&optional __joint3)
   (if __joint3 (setq _joint3 __joint3)) _joint3)
  (:joint4
   (&optional __joint4)
   (if __joint4 (setq _joint4 __joint4)) _joint4)
  (:joint5
   (&optional __joint5)
   (if __joint5 (setq _joint5 __joint5)) _joint5)
  (:joint6
   (&optional __joint6)
   (if __joint6 (setq _joint6 __joint6)) _joint6)
  (:serialization-length
   ()
   (+
    ;; int8 _bus
    1
    ;; float32 _joint1
    4
    ;; float32 _joint2
    4
    ;; float32 _joint3
    4
    ;; float32 _joint4
    4
    ;; float32 _joint5
    4
    ;; float32 _joint6
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _bus
       (write-byte _bus s)
     ;; float32 _joint1
       (sys::poke _joint1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _joint2
       (sys::poke _joint2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _joint3
       (sys::poke _joint3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _joint4
       (sys::poke _joint4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _joint5
       (sys::poke _joint5 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _joint6
       (sys::poke _joint6 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _bus
     (setq _bus (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _bus 127) (setq _bus (- _bus 256)))
   ;; float32 _joint1
     (setq _joint1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _joint2
     (setq _joint2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _joint3
     (setq _joint3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _joint4
     (setq _joint4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _joint5
     (setq _joint5 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _joint6
     (setq _joint6 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get aubo_msgs::GoalPoint :md5sum-) "b4f50b6b5ea74aab23aa569e10ad3edc")
(setf (get aubo_msgs::GoalPoint :datatype-) "aubo_msgs/GoalPoint")
(setf (get aubo_msgs::GoalPoint :definition-)
      "int8 bus
float32 joint1
float32 joint2
float32 joint3
float32 joint4
float32 joint5
float32 joint6

")



(provide :aubo_msgs/GoalPoint "b4f50b6b5ea74aab23aa569e10ad3edc")


