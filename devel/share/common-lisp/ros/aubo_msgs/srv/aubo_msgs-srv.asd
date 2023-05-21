
(cl:in-package :asdf)

(defsystem "aubo_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GetFK" :depends-on ("_package_GetFK"))
    (:file "_package_GetFK" :depends-on ("_package"))
    (:file "GetIK" :depends-on ("_package_GetIK"))
    (:file "_package_GetIK" :depends-on ("_package"))
    (:file "SetIO" :depends-on ("_package_SetIO"))
    (:file "_package_SetIO" :depends-on ("_package"))
    (:file "SetPayload" :depends-on ("_package_SetPayload"))
    (:file "_package_SetPayload" :depends-on ("_package"))
  ))