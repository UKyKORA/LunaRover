; Auto-generated. Do not edit!


(cl:in-package rover_msgs-msg)


;//! \htmlinclude FWDReading.msg.html

(cl:defclass <FWDReading> (roslisp-msg-protocol:ros-message)
  ((front_left
    :reader front_left
    :initarg :front_left
    :type cl:integer
    :initform 0)
   (front_right
    :reader front_right
    :initarg :front_right
    :type cl:integer
    :initform 0)
   (back_left
    :reader back_left
    :initarg :back_left
    :type cl:integer
    :initform 0)
   (back_right
    :reader back_right
    :initarg :back_right
    :type cl:integer
    :initform 0))
)

(cl:defclass FWDReading (<FWDReading>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FWDReading>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FWDReading)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rover_msgs-msg:<FWDReading> is deprecated: use rover_msgs-msg:FWDReading instead.")))

(cl:ensure-generic-function 'front_left-val :lambda-list '(m))
(cl:defmethod front_left-val ((m <FWDReading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_msgs-msg:front_left-val is deprecated.  Use rover_msgs-msg:front_left instead.")
  (front_left m))

(cl:ensure-generic-function 'front_right-val :lambda-list '(m))
(cl:defmethod front_right-val ((m <FWDReading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_msgs-msg:front_right-val is deprecated.  Use rover_msgs-msg:front_right instead.")
  (front_right m))

(cl:ensure-generic-function 'back_left-val :lambda-list '(m))
(cl:defmethod back_left-val ((m <FWDReading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_msgs-msg:back_left-val is deprecated.  Use rover_msgs-msg:back_left instead.")
  (back_left m))

(cl:ensure-generic-function 'back_right-val :lambda-list '(m))
(cl:defmethod back_right-val ((m <FWDReading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover_msgs-msg:back_right-val is deprecated.  Use rover_msgs-msg:back_right instead.")
  (back_right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FWDReading>) ostream)
  "Serializes a message object of type '<FWDReading>"
  (cl:let* ((signed (cl:slot-value msg 'front_left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'front_right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'back_left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'back_right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FWDReading>) istream)
  "Deserializes a message object of type '<FWDReading>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'front_left) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'front_right) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'back_left) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'back_right) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FWDReading>)))
  "Returns string type for a message object of type '<FWDReading>"
  "rover_msgs/FWDReading")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FWDReading)))
  "Returns string type for a message object of type 'FWDReading"
  "rover_msgs/FWDReading")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FWDReading>)))
  "Returns md5sum for a message object of type '<FWDReading>"
  "68a4add6eda239765346c3ac2d3b82e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FWDReading)))
  "Returns md5sum for a message object of type 'FWDReading"
  "68a4add6eda239765346c3ac2d3b82e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FWDReading>)))
  "Returns full string definition for message of type '<FWDReading>"
  (cl:format cl:nil "int32 front_left  # front left ~%int32 front_right # front right~%int32 back_left   # back left~%int32 back_right  # back right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FWDReading)))
  "Returns full string definition for message of type 'FWDReading"
  (cl:format cl:nil "int32 front_left  # front left ~%int32 front_right # front right~%int32 back_left   # back left~%int32 back_right  # back right~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FWDReading>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FWDReading>))
  "Converts a ROS message object to a list"
  (cl:list 'FWDReading
    (cl:cons ':front_left (front_left msg))
    (cl:cons ':front_right (front_right msg))
    (cl:cons ':back_left (back_left msg))
    (cl:cons ':back_right (back_right msg))
))
