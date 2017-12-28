; Auto-generated. Do not edit!


(cl:in-package scene_segmentation-srv)


;//! \htmlinclude SegmentImage-request.msg.html

(cl:defclass <SegmentImage-request> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass SegmentImage-request (<SegmentImage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SegmentImage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SegmentImage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scene_segmentation-srv:<SegmentImage-request> is deprecated: use scene_segmentation-srv:SegmentImage-request instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <SegmentImage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scene_segmentation-srv:image-val is deprecated.  Use scene_segmentation-srv:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SegmentImage-request>) ostream)
  "Serializes a message object of type '<SegmentImage-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SegmentImage-request>) istream)
  "Deserializes a message object of type '<SegmentImage-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SegmentImage-request>)))
  "Returns string type for a service object of type '<SegmentImage-request>"
  "scene_segmentation/SegmentImageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SegmentImage-request)))
  "Returns string type for a service object of type 'SegmentImage-request"
  "scene_segmentation/SegmentImageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SegmentImage-request>)))
  "Returns md5sum for a message object of type '<SegmentImage-request>"
  "f507632f63ad609c9a8e01b0f4807734")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SegmentImage-request)))
  "Returns md5sum for a message object of type 'SegmentImage-request"
  "f507632f63ad609c9a8e01b0f4807734")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SegmentImage-request>)))
  "Returns full string definition for message of type '<SegmentImage-request>"
  (cl:format cl:nil "~%sensor_msgs/Image image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SegmentImage-request)))
  "Returns full string definition for message of type 'SegmentImage-request"
  (cl:format cl:nil "~%sensor_msgs/Image image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SegmentImage-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SegmentImage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SegmentImage-request
    (cl:cons ':image (image msg))
))
;//! \htmlinclude SegmentImage-response.msg.html

(cl:defclass <SegmentImage-response> (roslisp-msg-protocol:ros-message)
  ((ss
    :reader ss
    :initarg :ss
    :type duckietown_msgs-msg:SceneSegments
    :initform (cl:make-instance 'duckietown_msgs-msg:SceneSegments)))
)

(cl:defclass SegmentImage-response (<SegmentImage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SegmentImage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SegmentImage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scene_segmentation-srv:<SegmentImage-response> is deprecated: use scene_segmentation-srv:SegmentImage-response instead.")))

(cl:ensure-generic-function 'ss-val :lambda-list '(m))
(cl:defmethod ss-val ((m <SegmentImage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scene_segmentation-srv:ss-val is deprecated.  Use scene_segmentation-srv:ss instead.")
  (ss m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SegmentImage-response>) ostream)
  "Serializes a message object of type '<SegmentImage-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ss) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SegmentImage-response>) istream)
  "Deserializes a message object of type '<SegmentImage-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ss) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SegmentImage-response>)))
  "Returns string type for a service object of type '<SegmentImage-response>"
  "scene_segmentation/SegmentImageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SegmentImage-response)))
  "Returns string type for a service object of type 'SegmentImage-response"
  "scene_segmentation/SegmentImageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SegmentImage-response>)))
  "Returns md5sum for a message object of type '<SegmentImage-response>"
  "f507632f63ad609c9a8e01b0f4807734")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SegmentImage-response)))
  "Returns md5sum for a message object of type 'SegmentImage-response"
  "f507632f63ad609c9a8e01b0f4807734")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SegmentImage-response>)))
  "Returns full string definition for message of type '<SegmentImage-response>"
  (cl:format cl:nil "~%duckietown_msgs/SceneSegments ss~%~%================================================================================~%MSG: duckietown_msgs/SceneSegments~%sensor_msgs/Image segimage~%duckietown_msgs/Rect[] rects~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: duckietown_msgs/Rect~%# all in pixel coordinate~%# (x, y, w, h) defines a rectangle~%int32 x~%int32 y~%int32 w~%int32 h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SegmentImage-response)))
  "Returns full string definition for message of type 'SegmentImage-response"
  (cl:format cl:nil "~%duckietown_msgs/SceneSegments ss~%~%================================================================================~%MSG: duckietown_msgs/SceneSegments~%sensor_msgs/Image segimage~%duckietown_msgs/Rect[] rects~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: duckietown_msgs/Rect~%# all in pixel coordinate~%# (x, y, w, h) defines a rectangle~%int32 x~%int32 y~%int32 w~%int32 h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SegmentImage-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ss))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SegmentImage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SegmentImage-response
    (cl:cons ':ss (ss msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SegmentImage)))
  'SegmentImage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SegmentImage)))
  'SegmentImage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SegmentImage)))
  "Returns string type for a service object of type '<SegmentImage>"
  "scene_segmentation/SegmentImage")