;; Auto-generated. Do not edit!


(when (boundp 'aubo_msgs::Digital)
  (if (not (find-package "AUBO_MSGS"))
    (make-package "AUBO_MSGS"))
  (shadow 'Digital (find-package "AUBO_MSGS")))
(unless (find-package "AUBO_MSGS::DIGITAL")
  (make-package "AUBO_MSGS::DIGITAL"))

(in-package "ROS")
;;//! \htmlinclude Digital.msg.html


(defclass aubo_msgs::Digital
  :super ros::object
  :slots (_pin _flag _state ))

(defmethod aubo_msgs::Digital
  (:init
   (&key
    ((:pin __pin) 0)
    ((:flag __flag) nil)
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _pin (round __pin))
   (setq _flag __flag)
   (setq _state __state)
   self)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _pin
    1
    ;; bool _flag
    1
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _pin
       (write-byte _pin s)
     ;; bool _flag
       (if _flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _pin
     (setq _pin (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _flag
     (setq _flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get aubo_msgs::Digital :md5sum-) "27fea16c33a8e446fcacfee31d199a86")
(setf (get aubo_msgs::Digital :datatype-) "aubo_msgs/Digital")
(setf (get aubo_msgs::Digital :definition-)
      "uint8 pin
bool flag
bool state

")



(provide :aubo_msgs/Digital "27fea16c33a8e446fcacfee31d199a86")


