
(cl:in-package :asdf)

(defsystem "lidar_2020-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "alert_range" :depends-on ("_package_alert_range"))
    (:file "_package_alert_range" :depends-on ("_package"))
  ))