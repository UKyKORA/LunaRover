;; Auto-generated. Do not edit!


(when (boundp 'rover_msgs::DigMotorSetting)
  (if (not (find-package "ROVER_MSGS"))
    (make-package "ROVER_MSGS"))
  (shadow 'DigMotorSetting (find-package "ROVER_MSGS")))
(unless (find-package "ROVER_MSGS::DIGMOTORSETTING")
  (make-package "ROVER_MSGS::DIGMOTORSETTING"))

(in-package "ROS")
;;//! \htmlinclude DigMotorSetting.msg.html


(defclass rover_msgs::DigMotorSetting
  :super ros::object
  :slots (_speed _max_current ))

(defmethod rover_msgs::DigMotorSetting
  (:init
   (&key
    ((:speed __speed) 0)
    ((:max_current __max_current) 0.0)
    )
   (send-super :init)
   (setq _speed (round __speed))
   (setq _max_current (float __max_current))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:max_current
   (&optional __max_current)
   (if __max_current (setq _max_current __max_current)) _max_current)
  (:serialization-length
   ()
   (+
    ;; int32 _speed
    4
    ;; float32 _max_current
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _speed
       (write-long _speed s)
     ;; float32 _max_current
       (sys::poke _max_current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _speed
     (setq _speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _max_current
     (setq _max_current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rover_msgs::DigMotorSetting :md5sum-) "3a59919c66a0b26d5009855b4eeaf211")
(setf (get rover_msgs::DigMotorSetting :datatype-) "rover_msgs/DigMotorSetting")
(setf (get rover_msgs::DigMotorSetting :definition-)
      "int32 speed # dig speed
float32 max_current # max current we want the arm to draw

")



(provide :rover_msgs/DigMotorSetting "3a59919c66a0b26d5009855b4eeaf211")


