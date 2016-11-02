
(cl:in-package :asdf)

(defsystem "intraface-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Emotions" :depends-on ("_package_Emotions"))
    (:file "_package_Emotions" :depends-on ("_package"))
    (:file "IrisGaze" :depends-on ("_package_IrisGaze"))
    (:file "_package_IrisGaze" :depends-on ("_package"))
    (:file "Emotion" :depends-on ("_package_Emotion"))
    (:file "_package_Emotion" :depends-on ("_package"))
    (:file "Landmarks" :depends-on ("_package_Landmarks"))
    (:file "_package_Landmarks" :depends-on ("_package"))
  ))