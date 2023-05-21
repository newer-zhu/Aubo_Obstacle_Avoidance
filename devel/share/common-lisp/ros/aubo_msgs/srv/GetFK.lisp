; Auto-generated. Do not edit!


(cl:in-package aubo_msgs-srv)


;//! \htmlinclude GetFK-request.msg.html

(cl:defclass <GetFK-request> (roslisp-msg-protocol:ros-message)
  ((joint
    :reader joint
    :initarg :joint
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GetFK-request (<GetFK-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFK-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFK-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aubo_msgs-srv:<GetFK-request> is deprecated: use aubo_msgs-srv:GetFK-request instead.")))

(cl:ensure-generic-function 'joint-val :lambda-list '(m))
(cl:defmethod joint-val ((m <GetFK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aubo_msgs-srv:joint-val is deprecated.  Use aubo_msgs-srv:joint instead.")
  (joint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFK-request>) ostream)
  "Serializes a message object of type '<GetFK-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joint))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFK-request>) istream)
  "Deserializes a message object of type '<GetFK-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFK-request>)))
  "Returns string type for a service object of type '<GetFK-request>"
  "aubo_msgs/GetFKRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFK-request)))
  "Returns string type for a service object of type 'GetFK-request"
  "aubo_msgs/GetFKRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFK-request>)))
  "Returns md5sum for a message object of type '<GetFK-request>"
  "ce6ffdfba920b489febbc60ddc59a871")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFK-request)))
  "Returns md5sum for a message object of type 'GetFK-request"
  "ce6ffdfba920b489febbc60ddc59a871")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFK-request>)))
  "Returns full string definition for message of type '<GetFK-request>"
  (cl:format cl:nil "float32[] joint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFK-request)))
  "Returns full string definition for message of type 'GetFK-request"
  (cl:format cl:nil "float32[] joint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFK-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFK-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFK-request
    (cl:cons ':joint (joint msg))
))
;//! \htmlinclude GetFK-response.msg.html

(cl:defclass <GetFK-response> (roslisp-msg-protocol:ros-message)
  ((pos
    :reader pos
    :initarg :pos
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (ori
    :reader ori
    :initarg :ori
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GetFK-response (<GetFK-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFK-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFK-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aubo_msgs-srv:<GetFK-response> is deprecated: use aubo_msgs-srv:GetFK-response instead.")))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <GetFK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aubo_msgs-srv:pos-val is deprecated.  Use aubo_msgs-srv:pos instead.")
  (pos m))

(cl:ensure-generic-function 'ori-val :lambda-list '(m))
(cl:defmethod ori-val ((m <GetFK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aubo_msgs-srv:ori-val is deprecated.  Use aubo_msgs-srv:ori instead.")
  (ori m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFK-response>) ostream)
  "Serializes a message object of type '<GetFK-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'pos))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ori))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'ori))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFK-response>) istream)
  "Deserializes a message object of type '<GetFK-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ori) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ori)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFK-response>)))
  "Returns string type for a service object of type '<GetFK-response>"
  "aubo_msgs/GetFKResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFK-response)))
  "Returns string type for a service object of type 'GetFK-response"
  "aubo_msgs/GetFKResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFK-response>)))
  "Returns md5sum for a message object of type '<GetFK-response>"
  "ce6ffdfba920b489febbc60ddc59a871")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFK-response)))
  "Returns md5sum for a message object of type 'GetFK-response"
  "ce6ffdfba920b489febbc60ddc59a871")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFK-response>)))
  "Returns full string definition for message of type '<GetFK-response>"
  (cl:format cl:nil "float32[] pos~%float32[] ori~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFK-response)))
  "Returns full string definition for message of type 'GetFK-response"
  (cl:format cl:nil "float32[] pos~%float32[] ori~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFK-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ori) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFK-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFK-response
    (cl:cons ':pos (pos msg))
    (cl:cons ':ori (ori msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetFK)))
  'GetFK-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetFK)))
  'GetFK-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFK)))
  "Returns string type for a service object of type '<GetFK>"
  "aubo_msgs/GetFK")