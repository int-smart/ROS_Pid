
(cl:in-package :asdf)

(defsystem "pid-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "pid_msg" :depends-on ("_package_pid_msg"))
    (:file "_package_pid_msg" :depends-on ("_package"))
  ))