; Auto-generated. Do not edit!


(cl:in-package mira_communication-msg)


;//! \htmlinclude MiraAngles.msg.html

(cl:defclass <MiraAngles> (roslisp-msg-protocol:ros-message)
  ((joint_1
    :reader joint_1
    :initarg :joint_1
    :type cl:float
    :initform 0.0)
   (joint_2
    :reader joint_2
    :initarg :joint_2
    :type cl:float
    :initform 0.0)
   (joint_3
    :reader joint_3
    :initarg :joint_3
    :type cl:float
    :initform 0.0))
)

(cl:defclass MiraAngles (<MiraAngles>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MiraAngles>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MiraAngles)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mira_communication-msg:<MiraAngles> is deprecated: use mira_communication-msg:MiraAngles instead.")))

(cl:ensure-generic-function 'joint_1-val :lambda-list '(m))
(cl:defmethod joint_1-val ((m <MiraAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mira_communication-msg:joint_1-val is deprecated.  Use mira_communication-msg:joint_1 instead.")
  (joint_1 m))

(cl:ensure-generic-function 'joint_2-val :lambda-list '(m))
(cl:defmethod joint_2-val ((m <MiraAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mira_communication-msg:joint_2-val is deprecated.  Use mira_communication-msg:joint_2 instead.")
  (joint_2 m))

(cl:ensure-generic-function 'joint_3-val :lambda-list '(m))
(cl:defmethod joint_3-val ((m <MiraAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mira_communication-msg:joint_3-val is deprecated.  Use mira_communication-msg:joint_3 instead.")
  (joint_3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MiraAngles>) ostream)
  "Serializes a message object of type '<MiraAngles>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'joint_3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MiraAngles>) istream)
  "Deserializes a message object of type '<MiraAngles>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint_3) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MiraAngles>)))
  "Returns string type for a message object of type '<MiraAngles>"
  "mira_communication/MiraAngles")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MiraAngles)))
  "Returns string type for a message object of type 'MiraAngles"
  "mira_communication/MiraAngles")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MiraAngles>)))
  "Returns md5sum for a message object of type '<MiraAngles>"
  "8fb7487773865b96db936ca595817338")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MiraAngles)))
  "Returns md5sum for a message object of type 'MiraAngles"
  "8fb7487773865b96db936ca595817338")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MiraAngles>)))
  "Returns full string definition for message of type '<MiraAngles>"
  (cl:format cl:nil "float32 joint_1~%float32 joint_2~%float32 joint_3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MiraAngles)))
  "Returns full string definition for message of type 'MiraAngles"
  (cl:format cl:nil "float32 joint_1~%float32 joint_2~%float32 joint_3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MiraAngles>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MiraAngles>))
  "Converts a ROS message object to a list"
  (cl:list 'MiraAngles
    (cl:cons ':joint_1 (joint_1 msg))
    (cl:cons ':joint_2 (joint_2 msg))
    (cl:cons ':joint_3 (joint_3 msg))
))
