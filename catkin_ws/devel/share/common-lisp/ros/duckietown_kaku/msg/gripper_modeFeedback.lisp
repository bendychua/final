; Auto-generated. Do not edit!


(cl:in-package duckietown_kaku-msg)


;//! \htmlinclude gripper_modeFeedback.msg.html

(cl:defclass <gripper_modeFeedback> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass gripper_modeFeedback (<gripper_modeFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gripper_modeFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gripper_modeFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name duckietown_kaku-msg:<gripper_modeFeedback> is deprecated: use duckietown_kaku-msg:gripper_modeFeedback instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <gripper_modeFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duckietown_kaku-msg:distance-val is deprecated.  Use duckietown_kaku-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gripper_modeFeedback>) ostream)
  "Serializes a message object of type '<gripper_modeFeedback>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gripper_modeFeedback>) istream)
  "Deserializes a message object of type '<gripper_modeFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gripper_modeFeedback>)))
  "Returns string type for a message object of type '<gripper_modeFeedback>"
  "duckietown_kaku/gripper_modeFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gripper_modeFeedback)))
  "Returns string type for a message object of type 'gripper_modeFeedback"
  "duckietown_kaku/gripper_modeFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gripper_modeFeedback>)))
  "Returns md5sum for a message object of type '<gripper_modeFeedback>"
  "6e77fb10f0c8b4833ec273aa9ac74459")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gripper_modeFeedback)))
  "Returns md5sum for a message object of type 'gripper_modeFeedback"
  "6e77fb10f0c8b4833ec273aa9ac74459")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gripper_modeFeedback>)))
  "Returns full string definition for message of type '<gripper_modeFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%float32 distance ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gripper_modeFeedback)))
  "Returns full string definition for message of type 'gripper_modeFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%float32 distance ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gripper_modeFeedback>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gripper_modeFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'gripper_modeFeedback
    (cl:cons ':distance (distance msg))
))