
(cl:in-package :asdf)

(defsystem "mira_communication-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MiraAngles" :depends-on ("_package_MiraAngles"))
    (:file "_package_MiraAngles" :depends-on ("_package"))
    (:file "MiraCoords" :depends-on ("_package_MiraCoords"))
    (:file "_package_MiraCoords" :depends-on ("_package"))
    (:file "MiraGripperStatus" :depends-on ("_package_MiraGripperStatus"))
    (:file "_package_MiraGripperStatus" :depends-on ("_package"))
    (:file "MiraPumpStatus" :depends-on ("_package_MiraPumpStatus"))
    (:file "_package_MiraPumpStatus" :depends-on ("_package"))
    (:file "MiraSetAngles" :depends-on ("_package_MiraSetAngles"))
    (:file "_package_MiraSetAngles" :depends-on ("_package"))
    (:file "MiraSetCoords" :depends-on ("_package_MiraSetCoords"))
    (:file "_package_MiraSetCoords" :depends-on ("_package"))
  ))