
(cl:in-package :asdf)

(defsystem "memsense_imu-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ImuMAG" :depends-on ("_package_ImuMAG"))
    (:file "_package_ImuMAG" :depends-on ("_package"))
  ))