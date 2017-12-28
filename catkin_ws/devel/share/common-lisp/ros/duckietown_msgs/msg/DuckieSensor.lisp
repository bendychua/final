; Auto-generated. Do not edit!


(cl:in-package duckietown_msgs-msg)


;//! \htmlinclude DuckieSensor.msg.html

(cl:defclass <DuckieSensor> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0)
   (fvalue
    :reader fvalue
    :initarg :fvalue
    :type cl:float
    :initform 0.0)
   (is_analog
    :reader is_analog
    :initarg :is_analog
    :type cl:boolean
    :initform cl:nil)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass DuckieSensor (<DuckieSensor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DuckieSensor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DuckieSensor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name duckietown_msgs-msg:<DuckieSensor> is deprecated: use duckietown_msgs-msg:DuckieSensor instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DuckieSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duckietown_msgs-msg:value-val is deprecated.  Use duckietown_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'fvalue-val :lambda-list '(m))
(cl:defmethod fvalue-val ((m <DuckieSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duckietown_msgs-msg:fvalue-val is deprecated.  Use duckietown_msgs-msg:fvalue instead.")
  (fvalue m))

(cl:ensure-generic-function 'is_analog-val :lambda-list '(m))
(cl:defmethod is_analog-val ((m <DuckieSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duckietown_msgs-msg:is_analog-val is deprecated.  Use duckietown_msgs-msg:is_analog instead.")
  (is_analog m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <DuckieSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duckietown_msgs-msg:name-val is deprecated.  Use duckietown_msgs-msg:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DuckieSensor>) ostream)
  "Serializes a message object of type '<DuckieSensor>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'fvalue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_analog) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DuckieSensor>) istream)
  "Deserializes a message object of type '<DuckieSensor>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fvalue) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_analog) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DuckieSensor>)))
  "Returns string type for a message object of type '<DuckieSensor>"
  "duckietown_msgs/DuckieSensor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DuckieSensor)))
  "Returns string type for a message object of type 'DuckieSensor"
  "duckietown_msgs/DuckieSensor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DuckieSensor>)))
  "Returns md5sum for a message object of type '<DuckieSensor>"
  "3337f0684bf5f2b309fb6921917219f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DuckieSensor)))
  "Returns md5sum for a message object of type 'DuckieSensor"
  "3337f0684bf5f2b309fb6921917219f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DuckieSensor>)))
  "Returns full string definition for message of type '<DuckieSensor>"
  (cl:format cl:nil "# Sensors send value and type messages~%# For analog sensors value = 0..4097 and fvalue = 0.0..1.0~%# For digital sensors value= 0..1 and fvalue = 0.0~%uint16 value~%float32 fvalue~%bool is_analog~%string name~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DuckieSensor)))
  "Returns full string definition for message of type 'DuckieSensor"
  (cl:format cl:nil "# Sensors send value and type messages~%# For analog sensors value = 0..4097 and fvalue = 0.0..1.0~%# For digital sensors value= 0..1 and fvalue = 0.0~%uint16 value~%float32 fvalue~%bool is_analog~%string name~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DuckieSensor>))
  (cl:+ 0
     2
     4
     1
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DuckieSensor>))
  "Converts a ROS message object to a list"
  (cl:list 'DuckieSensor
    (cl:cons ':value (value msg))
    (cl:cons ':fvalue (fvalue msg))
    (cl:cons ':is_analog (is_analog msg))
    (cl:cons ':name (name msg))
))
