; Auto-generated. Do not edit!


(cl:in-package ground_projection-srv)


;//! \htmlinclude GetGroundCoord-request.msg.html

(cl:defclass <GetGroundCoord-request> (roslisp-msg-protocol:ros-message)
  ((normalized_uv
    :reader normalized_uv
    :initarg :normalized_uv
    :type duckietown_msgs-msg:Vector2D
    :initform (cl:make-instance 'duckietown_msgs-msg:Vector2D)))
)

(cl:defclass GetGroundCoord-request (<GetGroundCoord-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGroundCoord-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGroundCoord-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ground_projection-srv:<GetGroundCoord-request> is deprecated: use ground_projection-srv:GetGroundCoord-request instead.")))

(cl:ensure-generic-function 'normalized_uv-val :lambda-list '(m))
(cl:defmethod normalized_uv-val ((m <GetGroundCoord-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ground_projection-srv:normalized_uv-val is deprecated.  Use ground_projection-srv:normalized_uv instead.")
  (normalized_uv m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGroundCoord-request>) ostream)
  "Serializes a message object of type '<GetGroundCoord-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'normalized_uv) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGroundCoord-request>) istream)
  "Deserializes a message object of type '<GetGroundCoord-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'normalized_uv) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGroundCoord-request>)))
  "Returns string type for a service object of type '<GetGroundCoord-request>"
  "ground_projection/GetGroundCoordRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGroundCoord-request)))
  "Returns string type for a service object of type 'GetGroundCoord-request"
  "ground_projection/GetGroundCoordRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGroundCoord-request>)))
  "Returns md5sum for a message object of type '<GetGroundCoord-request>"
  "556869c22d708d07f00608b52f833756")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGroundCoord-request)))
  "Returns md5sum for a message object of type 'GetGroundCoord-request"
  "556869c22d708d07f00608b52f833756")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGroundCoord-request>)))
  "Returns full string definition for message of type '<GetGroundCoord-request>"
  (cl:format cl:nil "~%~%duckietown_msgs/Vector2D normalized_uv~%~%================================================================================~%MSG: duckietown_msgs/Vector2D~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGroundCoord-request)))
  "Returns full string definition for message of type 'GetGroundCoord-request"
  (cl:format cl:nil "~%~%duckietown_msgs/Vector2D normalized_uv~%~%================================================================================~%MSG: duckietown_msgs/Vector2D~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGroundCoord-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'normalized_uv))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGroundCoord-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGroundCoord-request
    (cl:cons ':normalized_uv (normalized_uv msg))
))
;//! \htmlinclude GetGroundCoord-response.msg.html

(cl:defclass <GetGroundCoord-response> (roslisp-msg-protocol:ros-message)
  ((gp
    :reader gp
    :initarg :gp
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass GetGroundCoord-response (<GetGroundCoord-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGroundCoord-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGroundCoord-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ground_projection-srv:<GetGroundCoord-response> is deprecated: use ground_projection-srv:GetGroundCoord-response instead.")))

(cl:ensure-generic-function 'gp-val :lambda-list '(m))
(cl:defmethod gp-val ((m <GetGroundCoord-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ground_projection-srv:gp-val is deprecated.  Use ground_projection-srv:gp instead.")
  (gp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGroundCoord-response>) ostream)
  "Serializes a message object of type '<GetGroundCoord-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gp) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGroundCoord-response>) istream)
  "Deserializes a message object of type '<GetGroundCoord-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gp) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGroundCoord-response>)))
  "Returns string type for a service object of type '<GetGroundCoord-response>"
  "ground_projection/GetGroundCoordResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGroundCoord-response)))
  "Returns string type for a service object of type 'GetGroundCoord-response"
  "ground_projection/GetGroundCoordResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGroundCoord-response>)))
  "Returns md5sum for a message object of type '<GetGroundCoord-response>"
  "556869c22d708d07f00608b52f833756")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGroundCoord-response)))
  "Returns md5sum for a message object of type 'GetGroundCoord-response"
  "556869c22d708d07f00608b52f833756")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGroundCoord-response>)))
  "Returns full string definition for message of type '<GetGroundCoord-response>"
  (cl:format cl:nil "~%geometry_msgs/Point gp~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGroundCoord-response)))
  "Returns full string definition for message of type 'GetGroundCoord-response"
  (cl:format cl:nil "~%geometry_msgs/Point gp~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGroundCoord-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gp))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGroundCoord-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGroundCoord-response
    (cl:cons ':gp (gp msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetGroundCoord)))
  'GetGroundCoord-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetGroundCoord)))
  'GetGroundCoord-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGroundCoord)))
  "Returns string type for a service object of type '<GetGroundCoord>"
  "ground_projection/GetGroundCoord")