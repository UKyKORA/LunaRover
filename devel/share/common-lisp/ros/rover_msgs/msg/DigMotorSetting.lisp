; Auto-generated. Do not edit!


(cl:in-package rover_msgs-msg)


;//! \htmlinclude DigMotorSetting.msg.html

(cl:defclass <DigMotorSetting> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:integer
    :initform 0)
   (max_current
    :reader max_current
    :initarg :max_current
    :type cl:float
    :initform 0.0))
)

(cl:defclass DigMotorSetting (<DigMotorSetting>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DigMotorSetting>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DigMotorSetting)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rover_msgs-msg:<DigMotorSetting> is deprecated: use rover_msgs-msg:DigMotorSetting instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <DigMotorSetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_msgs-msg:speed-val is deprecated.  Use rover_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'max_current-val :lambda-list '(m))
(cl:defmethod max_current-val ((m <DigMotorSetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_msgs-msg:max_current-val is deprecated.  Use rover_msgs-msg:max_current instead.")
  (max_current m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DigMotorSetting>) ostream)
  "Serializes a message object of type '<DigMotorSetting>"
  (cl:let* ((signed (cl:slot-value msg 'speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DigMotorSetting>) istream)
  "Deserializes a message object of type '<DigMotorSetting>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_current) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DigMotorSetting>)))
  "Returns string type for a message object of type '<DigMotorSetting>"
  "rover_msgs/DigMotorSetting")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DigMotorSetting)))
  "Returns string type for a message object of type 'DigMotorSetting"
  "rover_msgs/DigMotorSetting")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DigMotorSetting>)))
  "Returns md5sum for a message object of type '<DigMotorSetting>"
  "3a59919c66a0b26d5009855b4eeaf211")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DigMotorSetting)))
  "Returns md5sum for a message object of type 'DigMotorSetting"
  "3a59919c66a0b26d5009855b4eeaf211")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DigMotorSetting>)))
  "Returns full string definition for message of type '<DigMotorSetting>"
  (cl:format cl:nil "int32 speed # dig speed~%float32 max_current # max current we want the arm to draw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DigMotorSetting)))
  "Returns full string definition for message of type 'DigMotorSetting"
  (cl:format cl:nil "int32 speed # dig speed~%float32 max_current # max current we want the arm to draw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DigMotorSetting>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DigMotorSetting>))
  "Converts a ROS message object to a list"
  (cl:list 'DigMotorSetting
    (cl:cons ':speed (speed msg))
    (cl:cons ':max_current (max_current msg))
))
