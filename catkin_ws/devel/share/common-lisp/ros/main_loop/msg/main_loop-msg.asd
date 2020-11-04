
(cl:in-package :asdf)

(defsystem "main_loop-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "agent" :depends-on ("_package_agent"))
    (:file "_package_agent" :depends-on ("_package"))
    (:file "from_goap" :depends-on ("_package_from_goap"))
    (:file "_package_from_goap" :depends-on ("_package"))
    (:file "main_state" :depends-on ("_package_main_state"))
    (:file "_package_main_state" :depends-on ("_package"))
    (:file "string_with_header" :depends-on ("_package_string_with_header"))
    (:file "_package_string_with_header" :depends-on ("_package"))
  ))