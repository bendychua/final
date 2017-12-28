
(cl:in-package :asdf)

(defsystem "imu_test-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "angular" :depends-on ("_package_angular"))
    (:file "_package_angular" :depends-on ("_package"))
  ))