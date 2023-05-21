;; Auto-generated. Do not edit!


(when (boundp 'aubo_msgs::GetFK)
  (if (not (find-package "AUBO_MSGS"))
    (make-package "AUBO_MSGS"))
  (shadow 'GetFK (find-package "AUBO_MSGS")))
(unless (find-package "AUBO_MSGS::GETFK")
  (make-package "AUBO_MSGS::GETFK"))
(unless (find-package "AUBO_MSGS::GETFKREQUEST")
  (make-package "AUBO_MSGS::GETFKREQUEST"))
(unless (find-package "AUBO_MSGS::GETFKRESPONSE")
  (make-package "AUBO_MSGS::GETFKRESPONSE"))

(in-package "ROS")





(defclass aubo_msgs::GetFKRequest
  :super ros::object
  :slots (_joint ))

(defmethod aubo_msgs::GetFKRequest
  (:init
   (&key
    ((:joint __joint) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint __joint)
   self)
  (:joint
   (&optional __joint)
   (if __joint (setq _joint __joint)) _joint)
  (:serialization-length
   ()
   (+
    ;; float32[] _joint
    (* 4    (length _joint)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _joint
     (write-long (length _joint) s)
     (dotimes (i (length _joint))
       (sys::poke (elt _joint i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _joint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass aubo_msgs::GetFKResponse
  :super ros::object
  :slots (_pos _ori ))

(defmethod aubo_msgs::GetFKResponse
  (:init
   (&key
    ((:pos __pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ori __ori) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _pos __pos)
   (setq _ori __ori)
   self)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:ori
   (&optional __ori)
   (if __ori (setq _ori __ori)) _ori)
  (:serialization-length
   ()
   (+
    ;; float32[] _pos
    (* 4    (length _pos)) 4
    ;; float32[] _ori
    (* 4    (length _ori)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _pos
     (write-long (length _pos) s)
     (dotimes (i (length _pos))
       (sys::poke (elt _pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _ori
     (write-long (length _ori) s)
     (dotimes (i (length _ori))
       (sys::poke (elt _ori i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _ori
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ori (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ori i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass aubo_msgs::GetFK
  :super ros::object
  :slots ())

(setf (get aubo_msgs::GetFK :md5sum-) "ce6ffdfba920b489febbc60ddc59a871")
(setf (get aubo_msgs::GetFK :datatype-) "aubo_msgs/GetFK")
(setf (get aubo_msgs::GetFK :request) aubo_msgs::GetFKRequest)
(setf (get aubo_msgs::GetFK :response) aubo_msgs::GetFKResponse)

(defmethod aubo_msgs::GetFKRequest
  (:response () (instance aubo_msgs::GetFKResponse :init)))

(setf (get aubo_msgs::GetFKRequest :md5sum-) "ce6ffdfba920b489febbc60ddc59a871")
(setf (get aubo_msgs::GetFKRequest :datatype-) "aubo_msgs/GetFKRequest")
(setf (get aubo_msgs::GetFKRequest :definition-)
      "float32[] joint
---
float32[] pos
float32[] ori


")

(setf (get aubo_msgs::GetFKResponse :md5sum-) "ce6ffdfba920b489febbc60ddc59a871")
(setf (get aubo_msgs::GetFKResponse :datatype-) "aubo_msgs/GetFKResponse")
(setf (get aubo_msgs::GetFKResponse :definition-)
      "float32[] joint
---
float32[] pos
float32[] ori


")



(provide :aubo_msgs/GetFK "ce6ffdfba920b489febbc60ddc59a871")


