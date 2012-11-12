
(cl:in-package :asdf)

(defsystem "odometry_listener-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "fovis_odometry" :depends-on ("_package_fovis_odometry"))
    (:file "_package_fovis_odometry" :depends-on ("_package"))
  ))