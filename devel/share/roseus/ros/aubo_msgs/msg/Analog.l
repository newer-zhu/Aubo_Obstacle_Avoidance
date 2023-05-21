;; Auto-generated. Do not edit!


(when (boundp 'aubo_msgs::Analog)
  (if (not (find-package "AUBO_MSGS"))
    (make-package "AUBO_MSGS"))
  (shadow 'Analog (find-package "AUBO_MSGS")))
(unless (find-package "AUBO_MSGS::ANALOG")
  (make-package "AUBO_MSGS::ANALOG"))

(in-package "ROS")
;;//! \htmlinclude Analog.msg.html


(defclass aubo_msgs::Analog
  :super ros::object
  :slots (_pin _state ))

(defmethod aubo_msgs::Analog
  (:init
   (&key
    ((:pin __pin) 0)
    ((:state __state) 0.0)
    )
   (send-super :init)
   (setq _pin (round __pin))
   (setq _state (float __state))
   self)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _pin
    1
    ;; float32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _pin
       (write-byte _pin s)
     ;; float32 _state
       (sys::poke _state (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _pin
     (setq _pin (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _state
     (setq _state (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get aubo_msgs::Analog :md5sum-) "341541c8828d055b6dcc443d40207a7d")
(setf (get aubo_msgs::Analog :datatype-) "aubo_msgs/Analog")
(setf (get aubo_msgs::Analog :definition-)
      "uint8 pin
float32 state

")



(provide :aubo_msgs/Analog "341541c8828d055b6dcc443d40207a7d")


