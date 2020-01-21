;; Auto-generated. Do not edit!


(when (boundp 'rover_msgs::DepthCamReading)
  (if (not (find-package "ROVER_MSGS"))
    (make-package "ROVER_MSGS"))
  (shadow 'DepthCamReading (find-package "ROVER_MSGS")))
(unless (find-package "ROVER_MSGS::DEPTHCAMREADING")
  (make-package "ROVER_MSGS::DEPTHCAMREADING"))

(in-package "ROS")
;;//! \htmlinclude DepthCamReading.msg.html


(defclass rover_msgs::DepthCamReading
  :super ros::object
  :slots ())

(defmethod rover_msgs::DepthCamReading
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get rover_msgs::DepthCamReading :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get rover_msgs::DepthCamReading :datatype-) "rover_msgs/DepthCamReading")
(setf (get rover_msgs::DepthCamReading :definition-)
      "# do not know what to put here

")



(provide :rover_msgs/DepthCamReading "d41d8cd98f00b204e9800998ecf8427e")


