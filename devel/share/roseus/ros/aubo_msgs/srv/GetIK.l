;; Auto-generated. Do not edit!


(when (boundp 'aubo_msgs::GetIK)
  (if (not (find-package "AUBO_MSGS"))
    (make-package "AUBO_MSGS"))
  (shadow 'GetIK (find-package "AUBO_MSGS")))
(unless (find-package "AUBO_MSGS::GETIK")
  (make-package "AUBO_MSGS::GETIK"))
(unless (find-package "AUBO_MSGS::GETIKREQUEST")
  (make-package "AUBO_MSGS::GETIKREQUEST"))
(unless (find-package "AUBO_MSGS::GETIKRESPONSE")
  (make-package "AUBO_MSGS::GETIKRESPONSE"))

(in-package "ROS")





(defclass aubo_msgs::GetIKRequest
  :super ros::object
  :slots (_ref_joint _pos _ori ))

(defmethod aubo_msgs::GetIKRequest
  (:init
   (&key
    ((:ref_joint __ref_joint) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pos __pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ori __ori) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _ref_joint __ref_joint)
   (setq _pos __pos)
   (setq _ori __ori)
   self)
  (:ref_joint
   (&optional __ref_joint)
   (if __ref_joint (setq _ref_joint __ref_joint)) _ref_joint)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:ori
   (&optional __ori)
   (if __ori (setq _ori __ori)) _ori)
  (:serialization-length
   ()
   (+
    ;; float32[] _ref_joint
    (* 4    (length _ref_joint)) 4
    ;; float32[] _pos
    (* 4    (length _pos)) 4
    ;; float32[] _ori
    (* 4    (length _ori)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _ref_joint
     (write-long (length _ref_joint) s)
     (dotimes (i (length _ref_joint))
       (sys::poke (elt _ref_joint i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
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
   ;; float32[] _ref_joint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ref_joint (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ref_joint i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
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

(defclass aubo_msgs::GetIKResponse
  :super ros::object
  :slots (_joint ))

(defmethod aubo_msgs::GetIKResponse
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

(defclass aubo_msgs::GetIK
  :super ros::object
  :slots ())

(setf (get aubo_msgs::GetIK :md5sum-) "bc7f0118878bed264062021158285cff")
(setf (get aubo_msgs::GetIK :datatype-) "aubo_msgs/GetIK")
(setf (get aubo_msgs::GetIK :request) aubo_msgs::GetIKRequest)
(setf (get aubo_msgs::GetIK :response) aubo_msgs::GetIKResponse)

(defmethod aubo_msgs::GetIKRequest
  (:response () (instance aubo_msgs::GetIKResponse :init)))

(setf (get aubo_msgs::GetIKRequest :md5sum-) "bc7f0118878bed264062021158285cff")
(setf (get aubo_msgs::GetIKRequest :datatype-) "aubo_msgs/GetIKRequest")
(setf (get aubo_msgs::GetIKRequest :definition-)
      "float32[] ref_joint
float32[] pos
float32[] ori
---
float32[] joint

")

(setf (get aubo_msgs::GetIKResponse :md5sum-) "bc7f0118878bed264062021158285cff")
(setf (get aubo_msgs::GetIKResponse :datatype-) "aubo_msgs/GetIKResponse")
(setf (get aubo_msgs::GetIKResponse :definition-)
      "float32[] ref_joint
float32[] pos
float32[] ori
---
float32[] joint

")



(provide :aubo_msgs/GetIK "bc7f0118878bed264062021158285cff")


