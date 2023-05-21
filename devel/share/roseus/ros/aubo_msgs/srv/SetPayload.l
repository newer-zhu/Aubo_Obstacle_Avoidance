;; Auto-generated. Do not edit!


(when (boundp 'aubo_msgs::SetPayload)
  (if (not (find-package "AUBO_MSGS"))
    (make-package "AUBO_MSGS"))
  (shadow 'SetPayload (find-package "AUBO_MSGS")))
(unless (find-package "AUBO_MSGS::SETPAYLOAD")
  (make-package "AUBO_MSGS::SETPAYLOAD"))
(unless (find-package "AUBO_MSGS::SETPAYLOADREQUEST")
  (make-package "AUBO_MSGS::SETPAYLOADREQUEST"))
(unless (find-package "AUBO_MSGS::SETPAYLOADRESPONSE")
  (make-package "AUBO_MSGS::SETPAYLOADRESPONSE"))

(in-package "ROS")





(defclass aubo_msgs::SetPayloadRequest
  :super ros::object
  :slots (_payload ))

(defmethod aubo_msgs::SetPayloadRequest
  (:init
   (&key
    ((:payload __payload) 0.0)
    )
   (send-super :init)
   (setq _payload (float __payload))
   self)
  (:payload
   (&optional __payload)
   (if __payload (setq _payload __payload)) _payload)
  (:serialization-length
   ()
   (+
    ;; float32 _payload
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _payload
       (sys::poke _payload (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _payload
     (setq _payload (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass aubo_msgs::SetPayloadResponse
  :super ros::object
  :slots (_success ))

(defmethod aubo_msgs::SetPayloadResponse
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

(defclass aubo_msgs::SetPayload
  :super ros::object
  :slots ())

(setf (get aubo_msgs::SetPayload :md5sum-) "7f12eb632882cb73e5721178d0073e39")
(setf (get aubo_msgs::SetPayload :datatype-) "aubo_msgs/SetPayload")
(setf (get aubo_msgs::SetPayload :request) aubo_msgs::SetPayloadRequest)
(setf (get aubo_msgs::SetPayload :response) aubo_msgs::SetPayloadResponse)

(defmethod aubo_msgs::SetPayloadRequest
  (:response () (instance aubo_msgs::SetPayloadResponse :init)))

(setf (get aubo_msgs::SetPayloadRequest :md5sum-) "7f12eb632882cb73e5721178d0073e39")
(setf (get aubo_msgs::SetPayloadRequest :datatype-) "aubo_msgs/SetPayloadRequest")
(setf (get aubo_msgs::SetPayloadRequest :definition-)
      "float32 payload
---
bool success

")

(setf (get aubo_msgs::SetPayloadResponse :md5sum-) "7f12eb632882cb73e5721178d0073e39")
(setf (get aubo_msgs::SetPayloadResponse :datatype-) "aubo_msgs/SetPayloadResponse")
(setf (get aubo_msgs::SetPayloadResponse :definition-)
      "float32 payload
---
bool success

")



(provide :aubo_msgs/SetPayload "7f12eb632882cb73e5721178d0073e39")


