; Auto-generated. Do not edit!


(cl:in-package mira_communication-srv)


;//! \htmlinclude GetCoords-request.msg.html

(cl:defclass <GetCoords-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetCoords-request (<GetCoords-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCoords-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCoords-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mira_communication-srv:<GetCoords-request> is deprecated: use mira_communication-srv:GetCoords-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCoords-request>) ostream)
  "Serializes a message object of type '<GetCoords-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCoords-request>) istream)
  "Deserializes a message object of type '<GetCoords-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCoords-request>)))
  "Returns string type for a service object of type '<GetCoords-request>"
  "mira_communication/GetCoordsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCoords-request)))
  "Returns string type for a service object of type 'GetCoords-request"
  "mira_communication/GetCoordsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCoords-request>)))
  "Returns md5sum for a message object of type '<GetCoords-request>"
  "cc153912f1453b708d221682bc23d9ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCoords-request)))
  "Returns md5sum for a message object of type 'GetCoords-request"
  "cc153912f1453b708d221682bc23d9ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCoords-request>)))
  "Returns full string definition for message of type '<GetCoords-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCoords-request)))
  "Returns full string definition for message of type 'GetCoords-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCoords-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCoords-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCoords-request
))
;//! \htmlinclude GetCoords-response.msg.html

(cl:defclass <GetCoords-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass GetCoords-response (<GetCoords-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCoords-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCoords-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mira_communication-srv:<GetCoords-response> is deprecated: use mira_communication-srv:GetCoords-response instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <GetCoords-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mira_communication-srv:x-val is deprecated.  Use mira_communication-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <GetCoords-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mira_communication-srv:y-val is deprecated.  Use mira_communication-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <GetCoords-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mira_communication-srv:z-val is deprecated.  Use mira_communication-srv:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCoords-response>) ostream)
  "Serializes a message object of type '<GetCoords-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCoords-response>) istream)
  "Deserializes a message object of type '<GetCoords-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCoords-response>)))
  "Returns string type for a service object of type '<GetCoords-response>"
  "mira_communication/GetCoordsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCoords-response)))
  "Returns string type for a service object of type 'GetCoords-response"
  "mira_communication/GetCoordsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCoords-response>)))
  "Returns md5sum for a message object of type '<GetCoords-response>"
  "cc153912f1453b708d221682bc23d9ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCoords-response)))
  "Returns md5sum for a message object of type 'GetCoords-response"
  "cc153912f1453b708d221682bc23d9ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCoords-response>)))
  "Returns full string definition for message of type '<GetCoords-response>"
  (cl:format cl:nil "~%float32 x~%float32 y~%float32 z~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCoords-response)))
  "Returns full string definition for message of type 'GetCoords-response"
  (cl:format cl:nil "~%float32 x~%float32 y~%float32 z~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCoords-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCoords-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCoords-response
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCoords)))
  'GetCoords-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCoords)))
  'GetCoords-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCoords)))
  "Returns string type for a service object of type '<GetCoords>"
  "mira_communication/GetCoords")