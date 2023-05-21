; Auto-generated. Do not edit!


(cl:in-package aubo_msgs-msg)


;//! \htmlinclude Analog.msg.html

(cl:defclass <Analog> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:float
    :initform 0.0))
)

(cl:defclass Analog (<Analog>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Analog>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Analog)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aubo_msgs-msg:<Analog> is deprecated: use aubo_msgs-msg:Analog instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <Analog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aubo_msgs-msg:pin-val is deprecated.  Use aubo_msgs-msg:pin instead.")
  (pin m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Analog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aubo_msgs-msg:state-val is deprecated.  Use aubo_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Analog>) ostream)
  "Serializes a message object of type '<Analog>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Analog>) istream)
  "Deserializes a message object of type '<Analog>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pin)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'state) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Analog>)))
  "Returns string type for a message object of type '<Analog>"
  "aubo_msgs/Analog")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Analog)))
  "Returns string type for a message object of type 'Analog"
  "aubo_msgs/Analog")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Analog>)))
  "Returns md5sum for a message object of type '<Analog>"
  "341541c8828d055b6dcc443d40207a7d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Analog)))
  "Returns md5sum for a message object of type 'Analog"
  "341541c8828d055b6dcc443d40207a7d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Analog>)))
  "Returns full string definition for message of type '<Analog>"
  (cl:format cl:nil "uint8 pin~%float32 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Analog)))
  "Returns full string definition for message of type 'Analog"
  (cl:format cl:nil "uint8 pin~%float32 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Analog>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Analog>))
  "Converts a ROS message object to a list"
  (cl:list 'Analog
    (cl:cons ':pin (pin msg))
    (cl:cons ':state (state msg))
))
