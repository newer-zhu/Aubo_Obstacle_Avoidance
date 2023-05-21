; Auto-generated. Do not edit!


(cl:in-package aubo_msgs-msg)


;//! \htmlinclude TraPoint.msg.html

(cl:defclass <TraPoint> (roslisp-msg-protocol:ros-message)
  ((bus
    :reader bus
    :initarg :bus
    :type cl:fixnum
    :initform 0)
   (num_of_trapoint
    :reader num_of_trapoint
    :initarg :num_of_trapoint
    :type cl:integer
    :initform 0)
   (trapoints
    :reader trapoints
    :initarg :trapoints
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass TraPoint (<TraPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TraPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TraPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aubo_msgs-msg:<TraPoint> is deprecated: use aubo_msgs-msg:TraPoint instead.")))

(cl:ensure-generic-function 'bus-val :lambda-list '(m))
(cl:defmethod bus-val ((m <TraPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aubo_msgs-msg:bus-val is deprecated.  Use aubo_msgs-msg:bus instead.")
  (bus m))

(cl:ensure-generic-function 'num_of_trapoint-val :lambda-list '(m))
(cl:defmethod num_of_trapoint-val ((m <TraPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aubo_msgs-msg:num_of_trapoint-val is deprecated.  Use aubo_msgs-msg:num_of_trapoint instead.")
  (num_of_trapoint m))

(cl:ensure-generic-function 'trapoints-val :lambda-list '(m))
(cl:defmethod trapoints-val ((m <TraPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aubo_msgs-msg:trapoints-val is deprecated.  Use aubo_msgs-msg:trapoints instead.")
  (trapoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TraPoint>) ostream)
  "Serializes a message object of type '<TraPoint>"
  (cl:let* ((signed (cl:slot-value msg 'bus)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_of_trapoint)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trapoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'trapoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TraPoint>) istream)
  "Deserializes a message object of type '<TraPoint>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bus) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_of_trapoint) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trapoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trapoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TraPoint>)))
  "Returns string type for a message object of type '<TraPoint>"
  "aubo_msgs/TraPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TraPoint)))
  "Returns string type for a message object of type 'TraPoint"
  "aubo_msgs/TraPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TraPoint>)))
  "Returns md5sum for a message object of type '<TraPoint>"
  "58b7060898c2855ab033e4f3ac0333d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TraPoint)))
  "Returns md5sum for a message object of type 'TraPoint"
  "58b7060898c2855ab033e4f3ac0333d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TraPoint>)))
  "Returns full string definition for message of type '<TraPoint>"
  (cl:format cl:nil "int8 bus~%int32 num_of_trapoint~%float32[] trapoints~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TraPoint)))
  "Returns full string definition for message of type 'TraPoint"
  (cl:format cl:nil "int8 bus~%int32 num_of_trapoint~%float32[] trapoints~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TraPoint>))
  (cl:+ 0
     1
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trapoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TraPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'TraPoint
    (cl:cons ':bus (bus msg))
    (cl:cons ':num_of_trapoint (num_of_trapoint msg))
    (cl:cons ':trapoints (trapoints msg))
))
