;; Auto-generated. Do not edit!


(when (boundp 'mira_communication::MiraGripperStatus)
  (if (not (find-package "MIRA_COMMUNICATION"))
    (make-package "MIRA_COMMUNICATION"))
  (shadow 'MiraGripperStatus (find-package "MIRA_COMMUNICATION")))
(unless (find-package "MIRA_COMMUNICATION::MIRAGRIPPERSTATUS")
  (make-package "MIRA_COMMUNICATION::MIRAGRIPPERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MiraGripperStatus.msg.html


(defclass mira_communication::MiraGripperStatus
  :super ros::object
  :slots (_Status ))

(defmethod mira_communication::MiraGripperStatus
  (:init
   (&key
    ((:Status __Status) nil)
    )
   (send-super :init)
   (setq _Status __Status)
   self)
  (:Status
   (&optional (__Status :null))
   (if (not (eq __Status :null)) (setq _Status __Status)) _Status)
  (:serialization-length
   ()
   (+
    ;; bool _Status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _Status
       (if _Status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _Status
     (setq _Status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mira_communication::MiraGripperStatus :md5sum-) "513e93c68ef2f26ff494445b932bb052")
(setf (get mira_communication::MiraGripperStatus :datatype-) "mira_communication/MiraGripperStatus")
(setf (get mira_communication::MiraGripperStatus :definition-)
      "bool Status
")



(provide :mira_communication/MiraGripperStatus "513e93c68ef2f26ff494445b932bb052")


