;; Auto-generated. Do not edit!


(when (boundp 'rover_msgs::DigArmSetting)
  (if (not (find-package "ROVER_MSGS"))
    (make-package "ROVER_MSGS"))
  (shadow 'DigArmSetting (find-package "ROVER_MSGS")))
(unless (find-package "ROVER_MSGS::DIGARMSETTING")
  (make-package "ROVER_MSGS::DIGARMSETTING"))

(in-package "ROS")
;;//! \htmlinclude DigArmSetting.msg.html


(defclass rover_msgs::DigArmSetting
  :super ros::object
  :slots (_max_speed _position ))

(defmethod rover_msgs::DigArmSetting
  (:init
   (&key
    ((:max_speed __max_speed) 0)
    ((:position __position) 0)
    )
   (send-super :init)
   (setq _max_speed (round __max_speed))
   (setq _position (round __position))
   self)
  (:max_speed
   (&optional __max_speed)
   (if __max_speed (setq _max_speed __max_speed)) _max_speed)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; int32 _max_speed
    4
    ;; int32 _position
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _max_speed
       (write-long _max_speed s)
     ;; int32 _position
       (write-long _position s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _max_speed
     (setq _max_speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _position
     (setq _position (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rover_msgs::DigArmSetting :md5sum-) "000b6f5563447cd704349a21ac608512")
(setf (get rover_msgs::DigArmSetting :datatype-) "rover_msgs/DigArmSetting")
(setf (get rover_msgs::DigArmSetting :definition-)
      "int32 max_speed # max speed for the actuator arm
int32 position # position we want it at

")



(provide :rover_msgs/DigArmSetting "000b6f5563447cd704349a21ac608512")


