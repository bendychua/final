; Auto-generated. Do not edit!


(cl:in-package ground_projection-srv)


;//! \htmlinclude EstimateHomography-request.msg.html

(cl:defclass <EstimateHomography-request> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass EstimateHomography-request (<EstimateHomography-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EstimateHomography-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EstimateHomography-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ground_projection-srv:<EstimateHomography-request> is deprecated: use ground_projection-srv:EstimateHomography-request instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <EstimateHomography-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ground_projection-srv:image-val is deprecated.  Use ground_projection-srv:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EstimateHomography-request>) ostream)
  "Serializes a message object of type '<EstimateHomography-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EstimateHomography-request>) istream)
  "Deserializes a message object of type '<EstimateHomography-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EstimateHomography-request>)))
  "Returns string type for a service object of type '<EstimateHomography-request>"
  "ground_projection/EstimateHomographyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EstimateHomography-request)))
  "Returns string type for a service object of type 'EstimateHomography-request"
  "ground_projection/EstimateHomographyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EstimateHomography-request>)))
  "Returns md5sum for a message object of type '<EstimateHomography-request>"
  "34b99d36bd80e36d9af1bab6493314dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EstimateHomography-request)))
  "Returns md5sum for a message object of type 'EstimateHomography-request"
  "34b99d36bd80e36d9af1bab6493314dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EstimateHomography-request>)))
  "Returns full string definition for message of type '<EstimateHomography-request>"
  (cl:format cl:nil "~%sensor_msgs/Image image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EstimateHomography-request)))
  "Returns full string definition for message of type 'EstimateHomography-request"
  (cl:format cl:nil "~%sensor_msgs/Image image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EstimateHomography-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EstimateHomography-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EstimateHomography-request
    (cl:cons ':image (image msg))
))
;//! \htmlinclude EstimateHomography-response.msg.html

(cl:defclass <EstimateHomography-response> (roslisp-msg-protocol:ros-message)
  ((homography
    :reader homography
    :initarg :homography
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass EstimateHomography-response (<EstimateHomography-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EstimateHomography-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EstimateHomography-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ground_projection-srv:<EstimateHomography-response> is deprecated: use ground_projection-srv:EstimateHomography-response instead.")))

(cl:ensure-generic-function 'homography-val :lambda-list '(m))
(cl:defmethod homography-val ((m <EstimateHomography-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ground_projection-srv:homography-val is deprecated.  Use ground_projection-srv:homography instead.")
  (homography m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EstimateHomography-response>) ostream)
  "Serializes a message object of type '<EstimateHomography-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'homography))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'homography))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EstimateHomography-response>) istream)
  "Deserializes a message object of type '<EstimateHomography-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'homography) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'homography)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EstimateHomography-response>)))
  "Returns string type for a service object of type '<EstimateHomography-response>"
  "ground_projection/EstimateHomographyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EstimateHomography-response)))
  "Returns string type for a service object of type 'EstimateHomography-response"
  "ground_projection/EstimateHomographyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EstimateHomography-response>)))
  "Returns md5sum for a message object of type '<EstimateHomography-response>"
  "34b99d36bd80e36d9af1bab6493314dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EstimateHomography-response)))
  "Returns md5sum for a message object of type 'EstimateHomography-response"
  "34b99d36bd80e36d9af1bab6493314dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EstimateHomography-response>)))
  "Returns full string definition for message of type '<EstimateHomography-response>"
  (cl:format cl:nil "~%float32[] homography~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EstimateHomography-response)))
  "Returns full string definition for message of type 'EstimateHomography-response"
  (cl:format cl:nil "~%float32[] homography~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EstimateHomography-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'homography) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EstimateHomography-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EstimateHomography-response
    (cl:cons ':homography (homography msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EstimateHomography)))
  'EstimateHomography-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EstimateHomography)))
  'EstimateHomography-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EstimateHomography)))
  "Returns string type for a service object of type '<EstimateHomography>"
  "ground_projection/EstimateHomography")