
(cl:in-package :asdf)

(defsystem "robographers-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AprilTag" :depends-on ("_package_AprilTag"))
    (:file "_package_AprilTag" :depends-on ("_package"))
    (:file "AprilTagList" :depends-on ("_package_AprilTagList"))
    (:file "_package_AprilTagList" :depends-on ("_package"))
  ))