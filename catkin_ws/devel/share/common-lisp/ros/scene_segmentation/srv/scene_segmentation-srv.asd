
(cl:in-package :asdf)

(defsystem "scene_segmentation-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :duckietown_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "SegmentImage" :depends-on ("_package_SegmentImage"))
    (:file "_package_SegmentImage" :depends-on ("_package"))
  ))