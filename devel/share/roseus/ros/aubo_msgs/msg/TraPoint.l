;; Auto-generated. Do not edit!


(when (boundp 'aubo_msgs::TraPoint)
  (if (not (find-package "AUBO_MSGS"))
    (make-package "AUBO_MSGS"))
  (shadow 'TraPoint (find-package "AUBO_MSGS")))
(unless (find-package "AUBO_MSGS::TRAPOINT")
  (make-package "AUBO_MSGS::TRAPOINT"))

(in-package "ROS")
;;//! \htmlinclude TraPoint.msg.html


(defclass aubo_msgs::TraPoint
  :super ros::object
  :slots (_bus _num_of_trapoint _trapoints ))

(defmethod aubo_msgs::TraPoint
  (:init
   (&key
    ((:bus __bus) 0)
    ((:num_of_trapoint __num_of_trapoint) 0)
    ((:trapoints __trapoints) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _bus (round __bus))
   (setq _num_of_trapoint (round __num_of_trapoint))
   (setq _trapoints __trapoints)
   self)
  (:bus
   (&optional __bus)
   (if __bus (setq _bus __bus)) _bus)
  (:num_of_trapoint
   (&optional __num_of_trapoint)
   (if __num_of_trapoint (setq _num_of_trapoint __num_of_trapoint)) _num_of_trapoint)
  (:trapoints
   (&optional __trapoints)
   (if __trapoints (setq _trapoints __trapoints)) _trapoints)
  (:serialization-length
   ()
   (+
    ;; int8 _bus
    1
    ;; int32 _num_of_trapoint
    4
    ;; float32[] _trapoints
    (* 4    (length _trapoints)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _bus
       (write-byte _bus s)
     ;; int32 _num_of_trapoint
       (write-long _num_of_trapoint s)
     ;; float32[] _trapoints
     (write-long (length _trapoints) s)
     (dotimes (i (length _trapoints))
       (sys::poke (elt _trapoints i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _bus
     (setq _bus (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _bus 127) (setq _bus (- _bus 256)))
   ;; int32 _num_of_trapoint
     (setq _num_of_trapoint (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _trapoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trapoints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _trapoints i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get aubo_msgs::TraPoint :md5sum-) "58b7060898c2855ab033e4f3ac0333d2")
(setf (get aubo_msgs::TraPoint :datatype-) "aubo_msgs/TraPoint")
(setf (get aubo_msgs::TraPoint :definition-)
      "int8 bus
int32 num_of_trapoint
float32[] trapoints

")



(provide :aubo_msgs/TraPoint "58b7060898c2855ab033e4f3ac0333d2")


