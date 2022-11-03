; Auto-generated. Do not edit!


(cl:in-package mira_communication-msg)


;//! \htmlinclude MiraPumpStatus.msg.html

(cl:defclass <MiraPumpStatus> (roslisp-msg-protocol:ros-message)
  ((Status
    :reader Status
    :initarg :Status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MiraPumpStatus (<MiraPumpStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MiraPumpStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MiraPumpStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mira_communication-msg:<MiraPumpStatus> is deprecated: use mira_communication-msg:MiraPumpStatus instead.")))

(cl:ensure-generic-function 'Status-val :lambda-list '(m))
(cl:defmethod Status-val ((m <MiraPumpStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mira_communication-msg:Status-val is deprecated.  Use mira_communication-msg:Status instead.")
  (Status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MiraPumpStatus>) ostream)
  "Serializes a message object of type '<MiraPumpStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MiraPumpStatus>) istream)
  "Deserializes a message object of type '<MiraPumpStatus>"
    (cl:setf (cl:slot-value msg 'Status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MiraPumpStatus>)))
  "Returns string type for a message object of type '<MiraPumpStatus>"
  "mira_communication/MiraPumpStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MiraPumpStatus)))
  "Returns string type for a message object of type 'MiraPumpStatus"
  "mira_communication/MiraPumpStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MiraPumpStatus>)))
  "Returns md5sum for a message object of type '<MiraPumpStatus>"
  "513e93c68ef2f26ff494445b932bb052")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MiraPumpStatus)))
  "Returns md5sum for a message object of type 'MiraPumpStatus"
  "513e93c68ef2f26ff494445b932bb052")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MiraPumpStatus>)))
  "Returns full string definition for message of type '<MiraPumpStatus>"
  (cl:format cl:nil "bool Status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MiraPumpStatus)))
  "Returns full string definition for message of type 'MiraPumpStatus"
  (cl:format cl:nil "bool Status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MiraPumpStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MiraPumpStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MiraPumpStatus
    (cl:cons ':Status (Status msg))
))
