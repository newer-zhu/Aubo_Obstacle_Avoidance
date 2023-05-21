;; Auto-generated. Do not edit!


(when (boundp 'aubo_msgs::IOState)
  (if (not (find-package "AUBO_MSGS"))
    (make-package "AUBO_MSGS"))
  (shadow 'IOState (find-package "AUBO_MSGS")))
(unless (find-package "AUBO_MSGS::IOSTATE")
  (make-package "AUBO_MSGS::IOSTATE"))

(in-package "ROS")
;;//! \htmlinclude IOState.msg.html


(defclass aubo_msgs::IOState
  :super ros::object
  :slots (_stamp _digital_in_states _digital_out_states _analog_in_states _analog_out_states _tool_io_states _tool_ai_states _safety_in_states _safety_out_states ))

(defmethod aubo_msgs::IOState
  (:init
   (&key
    ((:stamp __stamp) "")
    ((:digital_in_states __digital_in_states) (let (r) (dotimes (i 0) (push (instance aubo_msgs::Digital :init) r)) r))
    ((:digital_out_states __digital_out_states) (let (r) (dotimes (i 0) (push (instance aubo_msgs::Digital :init) r)) r))
    ((:analog_in_states __analog_in_states) (let (r) (dotimes (i 0) (push (instance aubo_msgs::Analog :init) r)) r))
    ((:analog_out_states __analog_out_states) (let (r) (dotimes (i 0) (push (instance aubo_msgs::Analog :init) r)) r))
    ((:tool_io_states __tool_io_states) (let (r) (dotimes (i 0) (push (instance aubo_msgs::Digital :init) r)) r))
    ((:tool_ai_states __tool_ai_states) (let (r) (dotimes (i 0) (push (instance aubo_msgs::Analog :init) r)) r))
    ((:safety_in_states __safety_in_states) (let (r) (dotimes (i 0) (push (instance aubo_msgs::Digital :init) r)) r))
    ((:safety_out_states __safety_out_states) (let (r) (dotimes (i 0) (push (instance aubo_msgs::Digital :init) r)) r))
    )
   (send-super :init)
   (setq _stamp (string __stamp))
   (setq _digital_in_states __digital_in_states)
   (setq _digital_out_states __digital_out_states)
   (setq _analog_in_states __analog_in_states)
   (setq _analog_out_states __analog_out_states)
   (setq _tool_io_states __tool_io_states)
   (setq _tool_ai_states __tool_ai_states)
   (setq _safety_in_states __safety_in_states)
   (setq _safety_out_states __safety_out_states)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:digital_in_states
   (&rest __digital_in_states)
   (if (keywordp (car __digital_in_states))
       (send* _digital_in_states __digital_in_states)
     (progn
       (if __digital_in_states (setq _digital_in_states (car __digital_in_states)))
       _digital_in_states)))
  (:digital_out_states
   (&rest __digital_out_states)
   (if (keywordp (car __digital_out_states))
       (send* _digital_out_states __digital_out_states)
     (progn
       (if __digital_out_states (setq _digital_out_states (car __digital_out_states)))
       _digital_out_states)))
  (:analog_in_states
   (&rest __analog_in_states)
   (if (keywordp (car __analog_in_states))
       (send* _analog_in_states __analog_in_states)
     (progn
       (if __analog_in_states (setq _analog_in_states (car __analog_in_states)))
       _analog_in_states)))
  (:analog_out_states
   (&rest __analog_out_states)
   (if (keywordp (car __analog_out_states))
       (send* _analog_out_states __analog_out_states)
     (progn
       (if __analog_out_states (setq _analog_out_states (car __analog_out_states)))
       _analog_out_states)))
  (:tool_io_states
   (&rest __tool_io_states)
   (if (keywordp (car __tool_io_states))
       (send* _tool_io_states __tool_io_states)
     (progn
       (if __tool_io_states (setq _tool_io_states (car __tool_io_states)))
       _tool_io_states)))
  (:tool_ai_states
   (&rest __tool_ai_states)
   (if (keywordp (car __tool_ai_states))
       (send* _tool_ai_states __tool_ai_states)
     (progn
       (if __tool_ai_states (setq _tool_ai_states (car __tool_ai_states)))
       _tool_ai_states)))
  (:safety_in_states
   (&rest __safety_in_states)
   (if (keywordp (car __safety_in_states))
       (send* _safety_in_states __safety_in_states)
     (progn
       (if __safety_in_states (setq _safety_in_states (car __safety_in_states)))
       _safety_in_states)))
  (:safety_out_states
   (&rest __safety_out_states)
   (if (keywordp (car __safety_out_states))
       (send* _safety_out_states __safety_out_states)
     (progn
       (if __safety_out_states (setq _safety_out_states (car __safety_out_states)))
       _safety_out_states)))
  (:serialization-length
   ()
   (+
    ;; string _stamp
    4 (length _stamp)
    ;; aubo_msgs/Digital[] _digital_in_states
    (apply #'+ (send-all _digital_in_states :serialization-length)) 4
    ;; aubo_msgs/Digital[] _digital_out_states
    (apply #'+ (send-all _digital_out_states :serialization-length)) 4
    ;; aubo_msgs/Analog[] _analog_in_states
    (apply #'+ (send-all _analog_in_states :serialization-length)) 4
    ;; aubo_msgs/Analog[] _analog_out_states
    (apply #'+ (send-all _analog_out_states :serialization-length)) 4
    ;; aubo_msgs/Digital[] _tool_io_states
    (apply #'+ (send-all _tool_io_states :serialization-length)) 4
    ;; aubo_msgs/Analog[] _tool_ai_states
    (apply #'+ (send-all _tool_ai_states :serialization-length)) 4
    ;; aubo_msgs/Digital[] _safety_in_states
    (apply #'+ (send-all _safety_in_states :serialization-length)) 4
    ;; aubo_msgs/Digital[] _safety_out_states
    (apply #'+ (send-all _safety_out_states :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _stamp
       (write-long (length _stamp) s) (princ _stamp s)
     ;; aubo_msgs/Digital[] _digital_in_states
     (write-long (length _digital_in_states) s)
     (dolist (elem _digital_in_states)
       (send elem :serialize s)
       )
     ;; aubo_msgs/Digital[] _digital_out_states
     (write-long (length _digital_out_states) s)
     (dolist (elem _digital_out_states)
       (send elem :serialize s)
       )
     ;; aubo_msgs/Analog[] _analog_in_states
     (write-long (length _analog_in_states) s)
     (dolist (elem _analog_in_states)
       (send elem :serialize s)
       )
     ;; aubo_msgs/Analog[] _analog_out_states
     (write-long (length _analog_out_states) s)
     (dolist (elem _analog_out_states)
       (send elem :serialize s)
       )
     ;; aubo_msgs/Digital[] _tool_io_states
     (write-long (length _tool_io_states) s)
     (dolist (elem _tool_io_states)
       (send elem :serialize s)
       )
     ;; aubo_msgs/Analog[] _tool_ai_states
     (write-long (length _tool_ai_states) s)
     (dolist (elem _tool_ai_states)
       (send elem :serialize s)
       )
     ;; aubo_msgs/Digital[] _safety_in_states
     (write-long (length _safety_in_states) s)
     (dolist (elem _safety_in_states)
       (send elem :serialize s)
       )
     ;; aubo_msgs/Digital[] _safety_out_states
     (write-long (length _safety_out_states) s)
     (dolist (elem _safety_out_states)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _stamp
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _stamp (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; aubo_msgs/Digital[] _digital_in_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _digital_in_states (let (r) (dotimes (i n) (push (instance aubo_msgs::Digital :init) r)) r))
     (dolist (elem- _digital_in_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; aubo_msgs/Digital[] _digital_out_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _digital_out_states (let (r) (dotimes (i n) (push (instance aubo_msgs::Digital :init) r)) r))
     (dolist (elem- _digital_out_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; aubo_msgs/Analog[] _analog_in_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _analog_in_states (let (r) (dotimes (i n) (push (instance aubo_msgs::Analog :init) r)) r))
     (dolist (elem- _analog_in_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; aubo_msgs/Analog[] _analog_out_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _analog_out_states (let (r) (dotimes (i n) (push (instance aubo_msgs::Analog :init) r)) r))
     (dolist (elem- _analog_out_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; aubo_msgs/Digital[] _tool_io_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tool_io_states (let (r) (dotimes (i n) (push (instance aubo_msgs::Digital :init) r)) r))
     (dolist (elem- _tool_io_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; aubo_msgs/Analog[] _tool_ai_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tool_ai_states (let (r) (dotimes (i n) (push (instance aubo_msgs::Analog :init) r)) r))
     (dolist (elem- _tool_ai_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; aubo_msgs/Digital[] _safety_in_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _safety_in_states (let (r) (dotimes (i n) (push (instance aubo_msgs::Digital :init) r)) r))
     (dolist (elem- _safety_in_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; aubo_msgs/Digital[] _safety_out_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _safety_out_states (let (r) (dotimes (i n) (push (instance aubo_msgs::Digital :init) r)) r))
     (dolist (elem- _safety_out_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get aubo_msgs::IOState :md5sum-) "9ec6dbb17bd90dfffb00b6e735866ab5")
(setf (get aubo_msgs::IOState :datatype-) "aubo_msgs/IOState")
(setf (get aubo_msgs::IOState :definition-)
      "string stamp 
Digital[] digital_in_states
Digital[] digital_out_states
Analog[] analog_in_states
Analog[] analog_out_states
Digital[] tool_io_states
Analog[] tool_ai_states
Digital[] safety_in_states
Digital[] safety_out_states

================================================================================
MSG: aubo_msgs/Digital
uint8 pin
bool flag
bool state

================================================================================
MSG: aubo_msgs/Analog
uint8 pin
float32 state

")



(provide :aubo_msgs/IOState "9ec6dbb17bd90dfffb00b6e735866ab5")


