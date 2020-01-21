; Auto-generated. Do not edit!


(cl:in-package rover_msgs-msg)


;//! \htmlinclude DepthCamReading.msg.html

(cl:defclass <DepthCamReading> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DepthCamReading (<DepthCamReading>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DepthCamReading>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DepthCamReading)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rover_msgs-msg:<DepthCamReading> is deprecated: use rover_msgs-msg:DepthCamReading instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DepthCamReading>) ostream)
  "Serializes a message object of type '<DepthCamReading>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DepthCamReading>) istream)
  "Deserializes a message object of type '<DepthCamReading>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DepthCamReading>)))
  "Returns string type for a message object of type '<DepthCamReading>"
  "rover_msgs/DepthCamReading")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DepthCamReading)))
  "Returns string type for a message object of type 'DepthCamReading"
  "rover_msgs/DepthCamReading")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DepthCamReading>)))
  "Returns md5sum for a message object of type '<DepthCamReading>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DepthCamReading)))
  "Returns md5sum for a message object of type 'DepthCamReading"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DepthCamReading>)))
  "Returns full string definition for message of type '<DepthCamReading>"
  (cl:format cl:nil "# do not know what to put here~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DepthCamReading)))
  "Returns full string definition for message of type 'DepthCamReading"
  (cl:format cl:nil "# do not know what to put here~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DepthCamReading>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DepthCamReading>))
  "Converts a ROS message object to a list"
  (cl:list 'DepthCamReading
))
