; Auto-generated. Do not edit!


(cl:in-package duckietown_kaku-msg)


;//! \htmlinclude gripper_grabResult.msg.html

(cl:defclass <gripper_grabResult> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass gripper_grabResult (<gripper_grabResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gripper_grabResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gripper_grabResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name duckietown_kaku-msg:<gripper_grabResult> is deprecated: use duckietown_kaku-msg:gripper_grabResult instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <gripper_grabResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duckietown_kaku-msg:state-val is deprecated.  Use duckietown_kaku-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gripper_grabResult>) ostream)
  "Serializes a message object of type '<gripper_grabResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gripper_grabResult>) istream)
  "Deserializes a message object of type '<gripper_grabResult>"
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gripper_grabResult>)))
  "Returns string type for a message object of type '<gripper_grabResult>"
  "duckietown_kaku/gripper_grabResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gripper_grabResult)))
  "Returns string type for a message object of type 'gripper_grabResult"
  "duckietown_kaku/gripper_grabResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gripper_grabResult>)))
  "Returns md5sum for a message object of type '<gripper_grabResult>"
  "001fde3cab9e313a150416ff09c08ee4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gripper_grabResult)))
  "Returns md5sum for a message object of type 'gripper_grabResult"
  "001fde3cab9e313a150416ff09c08ee4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gripper_grabResult>)))
  "Returns full string definition for message of type '<gripper_grabResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gripper_grabResult)))
  "Returns full string definition for message of type 'gripper_grabResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gripper_grabResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gripper_grabResult>))
  "Converts a ROS message object to a list"
  (cl:list 'gripper_grabResult
    (cl:cons ':state (state msg))
))
