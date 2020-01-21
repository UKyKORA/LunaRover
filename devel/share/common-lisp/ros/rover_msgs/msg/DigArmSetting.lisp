; Auto-generated. Do not edit!


(cl:in-package rover_msgs-msg)


;//! \htmlinclude DigArmSetting.msg.html

(cl:defclass <DigArmSetting> (roslisp-msg-protocol:ros-message)
  ((max_speed
    :reader max_speed
    :initarg :max_speed
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type cl:integer
    :initform 0))
)

(cl:defclass DigArmSetting (<DigArmSetting>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DigArmSetting>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DigArmSetting)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rover_msgs-msg:<DigArmSetting> is deprecated: use rover_msgs-msg:DigArmSetting instead.")))

(cl:ensure-generic-function 'max_speed-val :lambda-list '(m))
(cl:defmethod max_speed-val ((m <DigArmSetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_msgs-msg:max_speed-val is deprecated.  Use rover_msgs-msg:max_speed instead.")
  (max_speed m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <DigArmSetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_msgs-msg:position-val is deprecated.  Use rover_msgs-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DigArmSetting>) ostream)
  "Serializes a message object of type '<DigArmSetting>"
  (cl:let* ((signed (cl:slot-value msg 'max_speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DigArmSetting>) istream)
  "Deserializes a message object of type '<DigArmSetting>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max_speed) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DigArmSetting>)))
  "Returns string type for a message object of type '<DigArmSetting>"
  "rover_msgs/DigArmSetting")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DigArmSetting)))
  "Returns string type for a message object of type 'DigArmSetting"
  "rover_msgs/DigArmSetting")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DigArmSetting>)))
  "Returns md5sum for a message object of type '<DigArmSetting>"
  "000b6f5563447cd704349a21ac608512")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DigArmSetting)))
  "Returns md5sum for a message object of type 'DigArmSetting"
  "000b6f5563447cd704349a21ac608512")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DigArmSetting>)))
  "Returns full string definition for message of type '<DigArmSetting>"
  (cl:format cl:nil "int32 max_speed # max speed for the actuator arm~%int32 position # position we want it at~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DigArmSetting)))
  "Returns full string definition for message of type 'DigArmSetting"
  (cl:format cl:nil "int32 max_speed # max speed for the actuator arm~%int32 position # position we want it at~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DigArmSetting>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DigArmSetting>))
  "Converts a ROS message object to a list"
  (cl:list 'DigArmSetting
    (cl:cons ':max_speed (max_speed msg))
    (cl:cons ':position (position msg))
))
