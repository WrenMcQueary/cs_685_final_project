; Auto-generated. Do not edit!


(cl:in-package mira_communication-msg)


;//! \htmlinclude MiraCoords.msg.html

(cl:defclass <MiraCoords> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0))
)

(cl:defclass MiraCoords (<MiraCoords>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MiraCoords>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MiraCoords)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mira_communication-msg:<MiraCoords> is deprecated: use mira_communication-msg:MiraCoords instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <MiraCoords>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mira_communication-msg:x-val is deprecated.  Use mira_communication-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <MiraCoords>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mira_communication-msg:y-val is deprecated.  Use mira_communication-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <MiraCoords>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mira_communication-msg:z-val is deprecated.  Use mira_communication-msg:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MiraCoords>) ostream)
  "Serializes a message object of type '<MiraCoords>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MiraCoords>) istream)
  "Deserializes a message object of type '<MiraCoords>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MiraCoords>)))
  "Returns string type for a message object of type '<MiraCoords>"
  "mira_communication/MiraCoords")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MiraCoords)))
  "Returns string type for a message object of type 'MiraCoords"
  "mira_communication/MiraCoords")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MiraCoords>)))
  "Returns md5sum for a message object of type '<MiraCoords>"
  "cc153912f1453b708d221682bc23d9ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MiraCoords)))
  "Returns md5sum for a message object of type 'MiraCoords"
  "cc153912f1453b708d221682bc23d9ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MiraCoords>)))
  "Returns full string definition for message of type '<MiraCoords>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MiraCoords)))
  "Returns full string definition for message of type 'MiraCoords"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MiraCoords>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MiraCoords>))
  "Converts a ROS message object to a list"
  (cl:list 'MiraCoords
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
