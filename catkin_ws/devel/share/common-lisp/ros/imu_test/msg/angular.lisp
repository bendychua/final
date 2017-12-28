; Auto-generated. Do not edit!


(cl:in-package imu_test-msg)


;//! \htmlinclude angular.msg.html

(cl:defclass <angular> (roslisp-msg-protocol:ros-message)
  ((roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0))
)

(cl:defclass angular (<angular>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <angular>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'angular)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imu_test-msg:<angular> is deprecated: use imu_test-msg:angular instead.")))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <angular>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu_test-msg:roll-val is deprecated.  Use imu_test-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <angular>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu_test-msg:pitch-val is deprecated.  Use imu_test-msg:pitch instead.")
  (pitch m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <angular>) ostream)
  "Serializes a message object of type '<angular>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <angular>) istream)
  "Deserializes a message object of type '<angular>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<angular>)))
  "Returns string type for a message object of type '<angular>"
  "imu_test/angular")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'angular)))
  "Returns string type for a message object of type 'angular"
  "imu_test/angular")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<angular>)))
  "Returns md5sum for a message object of type '<angular>"
  "c482a7bc02c0a82e3b3c8330e20ac46d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'angular)))
  "Returns md5sum for a message object of type 'angular"
  "c482a7bc02c0a82e3b3c8330e20ac46d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<angular>)))
  "Returns full string definition for message of type '<angular>"
  (cl:format cl:nil "float32 roll~%float32 pitch~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'angular)))
  "Returns full string definition for message of type 'angular"
  (cl:format cl:nil "float32 roll~%float32 pitch~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <angular>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <angular>))
  "Converts a ROS message object to a list"
  (cl:list 'angular
    (cl:cons ':roll (roll msg))
    (cl:cons ':pitch (pitch msg))
))
