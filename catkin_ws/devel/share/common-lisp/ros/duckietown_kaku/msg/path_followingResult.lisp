; Auto-generated. Do not edit!


(cl:in-package duckietown_kaku-msg)


;//! \htmlinclude path_followingResult.msg.html

(cl:defclass <path_followingResult> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass path_followingResult (<path_followingResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <path_followingResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'path_followingResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name duckietown_kaku-msg:<path_followingResult> is deprecated: use duckietown_kaku-msg:path_followingResult instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <path_followingResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duckietown_kaku-msg:state-val is deprecated.  Use duckietown_kaku-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <path_followingResult>) ostream)
  "Serializes a message object of type '<path_followingResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <path_followingResult>) istream)
  "Deserializes a message object of type '<path_followingResult>"
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<path_followingResult>)))
  "Returns string type for a message object of type '<path_followingResult>"
  "duckietown_kaku/path_followingResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'path_followingResult)))
  "Returns string type for a message object of type 'path_followingResult"
  "duckietown_kaku/path_followingResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<path_followingResult>)))
  "Returns md5sum for a message object of type '<path_followingResult>"
  "001fde3cab9e313a150416ff09c08ee4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'path_followingResult)))
  "Returns md5sum for a message object of type 'path_followingResult"
  "001fde3cab9e313a150416ff09c08ee4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<path_followingResult>)))
  "Returns full string definition for message of type '<path_followingResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'path_followingResult)))
  "Returns full string definition for message of type 'path_followingResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <path_followingResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <path_followingResult>))
  "Converts a ROS message object to a list"
  (cl:list 'path_followingResult
    (cl:cons ':state (state msg))
))