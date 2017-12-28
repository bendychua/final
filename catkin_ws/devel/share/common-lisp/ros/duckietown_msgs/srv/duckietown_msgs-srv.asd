
(cl:in-package :asdf)

(defsystem "duckietown_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetValue" :depends-on ("_package_SetValue"))
    (:file "_package_SetValue" :depends-on ("_package"))
    (:file "SetFSMState" :depends-on ("_package_SetFSMState"))
    (:file "_package_SetFSMState" :depends-on ("_package"))
  ))