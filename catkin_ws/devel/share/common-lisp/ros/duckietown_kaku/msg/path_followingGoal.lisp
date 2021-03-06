; Auto-generated. Do not edit!


(cl:in-package duckietown_kaku-msg)


;//! \htmlinclude path_followingGoal.msg.html

(cl:defclass <path_followingGoal> (roslisp-msg-protocol:ros-message)
  ((waypoints
    :reader waypoints
    :initarg :waypoints
    :type geometry_msgs-msg:PoseArray
    :initform (cl:make-instance 'geometry_msgs-msg:PoseArray)))
)

(cl:defclass path_followingGoal (<path_followingGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <path_followingGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'path_followingGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name duckietown_kaku-msg:<path_followingGoal> is deprecated: use duckietown_kaku-msg:path_followingGoal instead.")))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <path_followingGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader duckietown_kaku-msg:waypoints-val is deprecated.  Use duckietown_kaku-msg:waypoints instead.")
  (waypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <path_followingGoal>) ostream)
  "Serializes a message object of type '<path_followingGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypoints) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <path_followingGoal>) istream)
  "Deserializes a message object of type '<path_followingGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypoints) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<path_followingGoal>)))
  "Returns string type for a message object of type '<path_followingGoal>"
  "duckietown_kaku/path_followingGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'path_followingGoal)))
  "Returns string type for a message object of type 'path_followingGoal"
  "duckietown_kaku/path_followingGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<path_followingGoal>)))
  "Returns md5sum for a message object of type '<path_followingGoal>"
  "ea70e23febd08605663de4b49bc50398")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'path_followingGoal)))
  "Returns md5sum for a message object of type 'path_followingGoal"
  "ea70e23febd08605663de4b49bc50398")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<path_followingGoal>)))
  "Returns full string definition for message of type '<path_followingGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%geometry_msgs/PoseArray waypoints ~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'path_followingGoal)))
  "Returns full string definition for message of type 'path_followingGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%geometry_msgs/PoseArray waypoints ~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <path_followingGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypoints))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <path_followingGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'path_followingGoal
    (cl:cons ':waypoints (waypoints msg))
))
