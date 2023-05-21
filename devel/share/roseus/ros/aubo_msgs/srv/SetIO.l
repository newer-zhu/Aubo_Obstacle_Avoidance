;; Auto-generated. Do not edit!


(when (boundp 'aubo_msgs::SetIO)
  (if (not (find-package "AUBO_MSGS"))
    (make-package "AUBO_MSGS"))
  (shadow 'SetIO (find-package "AUBO_MSGS")))
(unless (find-package "AUBO_MSGS::SETIO")
  (make-package "AUBO_MSGS::SETIO"))
(unless (find-package "AUBO_MSGS::SETIOREQUEST")
  (make-package "AUBO_MSGS::SETIOREQUEST"))
(unless (find-package "AUBO_MSGS::SETIORESPONSE")
  (make-package "AUBO_MSGS::SETIORESPONSE"))

(in-package "ROS")





(intern "*FUN_SET_ROBOTBOARDUSERDO*" (find-package "AUBO_MSGS::SETIOREQUEST"))
(shadow '*FUN_SET_ROBOTBOARDUSERDO* (find-package "AUBO_MSGS::SETIOREQUEST"))
(defconstant aubo_msgs::SetIORequest::*FUN_SET_ROBOTBOARDUSERDO* 1)
(intern "*FUN_SET_ROBOTBOARDUSERAO*" (find-package "AUBO_MSGS::SETIOREQUEST"))
(shadow '*FUN_SET_ROBOTBOARDUSERAO* (find-package "AUBO_MSGS::SETIOREQUEST"))
(defconstant aubo_msgs::SetIORequest::*FUN_SET_ROBOTBOARDUSERAO* 2)
(intern "*FUN_SET_TOOLDIGITALIO*" (find-package "AUBO_MSGS::SETIOREQUEST"))
(shadow '*FUN_SET_TOOLDIGITALIO* (find-package "AUBO_MSGS::SETIOREQUEST"))
(defconstant aubo_msgs::SetIORequest::*FUN_SET_TOOLDIGITALIO* 3)
(intern "*FUN_SET_ROBOTTOOLAO*" (find-package "AUBO_MSGS::SETIOREQUEST"))
(shadow '*FUN_SET_ROBOTTOOLAO* (find-package "AUBO_MSGS::SETIOREQUEST"))
(defconstant aubo_msgs::SetIORequest::*FUN_SET_ROBOTTOOLAO* 4)
(intern "*FUN_SET_TOOLPOWERTYPE*" (find-package "AUBO_MSGS::SETIOREQUEST"))
(shadow '*FUN_SET_TOOLPOWERTYPE* (find-package "AUBO_MSGS::SETIOREQUEST"))
(defconstant aubo_msgs::SetIORequest::*FUN_SET_TOOLPOWERTYPE* 5)
(defclass aubo_msgs::SetIORequest
  :super ros::object
  :slots (_fun _pin _state ))

(defmethod aubo_msgs::SetIORequest
  (:init
   (&key
    ((:fun __fun) 0)
    ((:pin __pin) 0)
    ((:state __state) 0.0)
    )
   (send-super :init)
   (setq _fun (round __fun))
   (setq _pin (round __pin))
   (setq _state (float __state))
   self)
  (:fun
   (&optional __fun)
   (if __fun (setq _fun __fun)) _fun)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int8 _fun
    1
    ;; int8 _pin
    1
    ;; float32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _fun
       (write-byte _fun s)
     ;; int8 _pin
       (write-byte _pin s)
     ;; float32 _state
       (sys::poke _state (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _fun
     (setq _fun (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _fun 127) (setq _fun (- _fun 256)))
   ;; int8 _pin
     (setq _pin (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _pin 127) (setq _pin (- _pin 256)))
   ;; float32 _state
     (setq _state (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass aubo_msgs::SetIOResponse
  :super ros::object
  :slots (_success ))

(defmethod aubo_msgs::SetIOResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass aubo_msgs::SetIO
  :super ros::object
  :slots ())

(setf (get aubo_msgs::SetIO :md5sum-) "344aecce520e21c4db398a398eb12110")
(setf (get aubo_msgs::SetIO :datatype-) "aubo_msgs/SetIO")
(setf (get aubo_msgs::SetIO :request) aubo_msgs::SetIORequest)
(setf (get aubo_msgs::SetIO :response) aubo_msgs::SetIOResponse)

(defmethod aubo_msgs::SetIORequest
  (:response () (instance aubo_msgs::SetIOResponse :init)))

(setf (get aubo_msgs::SetIORequest :md5sum-) "344aecce520e21c4db398a398eb12110")
(setf (get aubo_msgs::SetIORequest :datatype-) "aubo_msgs/SetIORequest")
(setf (get aubo_msgs::SetIORequest :definition-)
      "int8 FUN_SET_RobotBoardUserDO = 1
int8 FUN_SET_RobotBoardUserAO = 2
int8 FUN_SET_ToolDigitalIO = 3
int8 FUN_SET_RobotToolAO = 4
int8 FUN_SET_ToolPowerType = 5
int8 fun
int8 pin
float32 state
---
bool success

")

(setf (get aubo_msgs::SetIOResponse :md5sum-) "344aecce520e21c4db398a398eb12110")
(setf (get aubo_msgs::SetIOResponse :datatype-) "aubo_msgs/SetIOResponse")
(setf (get aubo_msgs::SetIOResponse :definition-)
      "int8 FUN_SET_RobotBoardUserDO = 1
int8 FUN_SET_RobotBoardUserAO = 2
int8 FUN_SET_ToolDigitalIO = 3
int8 FUN_SET_RobotToolAO = 4
int8 FUN_SET_ToolPowerType = 5
int8 fun
int8 pin
float32 state
---
bool success

")



(provide :aubo_msgs/SetIO "344aecce520e21c4db398a398eb12110")


