;; Auto-generated. Do not edit!


(when (boundp 'rover_msgs::FWDReading)
  (if (not (find-package "ROVER_MSGS"))
    (make-package "ROVER_MSGS"))
  (shadow 'FWDReading (find-package "ROVER_MSGS")))
(unless (find-package "ROVER_MSGS::FWDREADING")
  (make-package "ROVER_MSGS::FWDREADING"))

(in-package "ROS")
;;//! \htmlinclude FWDReading.msg.html


(defclass rover_msgs::FWDReading
  :super ros::object
  :slots (_front_left _front_right _back_left _back_right ))

(defmethod rover_msgs::FWDReading
  (:init
   (&key
    ((:front_left __front_left) 0)
    ((:front_right __front_right) 0)
    ((:back_left __back_left) 0)
    ((:back_right __back_right) 0)
    )
   (send-super :init)
   (setq _front_left (round __front_left))
   (setq _front_right (round __front_right))
   (setq _back_left (round __back_left))
   (setq _back_right (round __back_right))
   self)
  (:front_left
   (&optional __front_left)
   (if __front_left (setq _front_left __front_left)) _front_left)
  (:front_right
   (&optional __front_right)
   (if __front_right (setq _front_right __front_right)) _front_right)
  (:back_left
   (&optional __back_left)
   (if __back_left (setq _back_left __back_left)) _back_left)
  (:back_right
   (&optional __back_right)
   (if __back_right (setq _back_right __back_right)) _back_right)
  (:serialization-length
   ()
   (+
    ;; int32 _front_left
    4
    ;; int32 _front_right
    4
    ;; int32 _back_left
    4
    ;; int32 _back_right
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _front_left
       (write-long _front_left s)
     ;; int32 _front_right
       (write-long _front_right s)
     ;; int32 _back_left
       (write-long _back_left s)
     ;; int32 _back_right
       (write-long _back_right s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _front_left
     (setq _front_left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _front_right
     (setq _front_right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _back_left
     (setq _back_left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _back_right
     (setq _back_right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rover_msgs::FWDReading :md5sum-) "68a4add6eda239765346c3ac2d3b82e1")
(setf (get rover_msgs::FWDReading :datatype-) "rover_msgs/FWDReading")
(setf (get rover_msgs::FWDReading :definition-)
      "int32 front_left  # front left 
int32 front_right # front right
int32 back_left   # back left
int32 back_right  # back right

")



(provide :rover_msgs/FWDReading "68a4add6eda239765346c3ac2d3b82e1")


