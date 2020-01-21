
(cl:in-package :asdf)

(defsystem "rover_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DepthCamReading" :depends-on ("_package_DepthCamReading"))
    (:file "_package_DepthCamReading" :depends-on ("_package"))
    (:file "DigArmSetting" :depends-on ("_package_DigArmSetting"))
    (:file "_package_DigArmSetting" :depends-on ("_package"))
    (:file "DigMotorSetting" :depends-on ("_package_DigMotorSetting"))
    (:file "_package_DigMotorSetting" :depends-on ("_package"))
    (:file "FWDReading" :depends-on ("_package_FWDReading"))
    (:file "_package_FWDReading" :depends-on ("_package"))
    (:file "FWDSetting" :depends-on ("_package_FWDSetting"))
    (:file "_package_FWDSetting" :depends-on ("_package"))
    (:file "TelemReading" :depends-on ("_package_TelemReading"))
    (:file "_package_TelemReading" :depends-on ("_package"))
  ))