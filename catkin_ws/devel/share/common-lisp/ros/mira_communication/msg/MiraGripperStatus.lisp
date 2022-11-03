; Auto-generated. Do not edit!


(cl:in-package mira_communication-msg)


;//! \htmlinclude MiraGripperStatus.msg.html

(cl:defclass <MiraGripperStatus> (roslisp-msg-protocol:ros-message)
  ((Status
    :reader Status
    :initarg :Status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MiraGripperStatus (<MiraGripperStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MiraGripperStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MiraGripperStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mira_communication-msg:<MiraGripperStatus> is deprecated: use mira_communication-msg:MiraGripperStatus instead.")))

(cl:ensure-generic-function 'Status-val :lambda-list '(m))
(cl:defmethod Status-val ((m <MiraGripperStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mira_communication-msg:Status-val is deprecated.  Use mira_communication-msg:Status instead.")
  (Status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MiraGripperStatus>) ostream)
  "Serializes a message object of type '<MiraGripperStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MiraGripperStatus>) istream)
  "Deserializes a message object of type '<MiraGripperStatus>"
    (cl:setf (cl:slot-value msg 'Status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MiraGripperStatus>)))
  "Returns string type for a message object of type '<MiraGripperStatus>"
  "mira_communication/MiraGripperStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MiraGripperStatus)))
  "Returns string type for a message object of type 'MiraGripperStatus"
  "mira_communication/MiraGripperStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MiraGripperStatus>)))
  "Returns md5sum for a message object of type '<MiraGripperStatus>"
  "513e93c68ef2f26ff494445b932bb052")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MiraGripperStatus)))
  "Returns md5sum for a message object of type 'MiraGripperStatus"
  "513e93c68ef2f26ff494445b932bb052")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MiraGripperStatus>)))
  "Returns full string definition for message of type '<MiraGripperStatus>"
  (cl:format cl:nil "bool Status~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MiraGripperStatus)))
  "Returns full string definition for message of type 'MiraGripperStatus"
  (cl:format cl:nil "bool Status~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MiraGripperStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MiraGripperStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MiraGripperStatus
    (cl:cons ':Status (Status msg))
))
