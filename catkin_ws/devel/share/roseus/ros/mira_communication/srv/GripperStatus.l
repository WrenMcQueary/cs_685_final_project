;; Auto-generated. Do not edit!


(when (boundp 'mira_communication::GripperStatus)
  (if (not (find-package "MIRA_COMMUNICATION"))
    (make-package "MIRA_COMMUNICATION"))
  (shadow 'GripperStatus (find-package "MIRA_COMMUNICATION")))
(unless (find-package "MIRA_COMMUNICATION::GRIPPERSTATUS")
  (make-package "MIRA_COMMUNICATION::GRIPPERSTATUS"))
(unless (find-package "MIRA_COMMUNICATION::GRIPPERSTATUSREQUEST")
  (make-package "MIRA_COMMUNICATION::GRIPPERSTATUSREQUEST"))
(unless (find-package "MIRA_COMMUNICATION::GRIPPERSTATUSRESPONSE")
  (make-package "MIRA_COMMUNICATION::GRIPPERSTATUSRESPONSE"))

(in-package "ROS")





(defclass mira_communication::GripperStatusRequest
  :super ros::object
  :slots (_Status ))

(defmethod mira_communication::GripperStatusRequest
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

(defclass mira_communication::GripperStatusResponse
  :super ros::object
  :slots (_Flag ))

(defmethod mira_communication::GripperStatusResponse
  (:init
   (&key
    ((:Flag __Flag) nil)
    )
   (send-super :init)
   (setq _Flag __Flag)
   self)
  (:Flag
   (&optional (__Flag :null))
   (if (not (eq __Flag :null)) (setq _Flag __Flag)) _Flag)
  (:serialization-length
   ()
   (+
    ;; bool _Flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _Flag
       (if _Flag (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _Flag
     (setq _Flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mira_communication::GripperStatus
  :super ros::object
  :slots ())

(setf (get mira_communication::GripperStatus :md5sum-) "c57caedf4aafd0b59704d2f3b16e0f35")
(setf (get mira_communication::GripperStatus :datatype-) "mira_communication/GripperStatus")
(setf (get mira_communication::GripperStatus :request) mira_communication::GripperStatusRequest)
(setf (get mira_communication::GripperStatus :response) mira_communication::GripperStatusResponse)

(defmethod mira_communication::GripperStatusRequest
  (:response () (instance mira_communication::GripperStatusResponse :init)))

(setf (get mira_communication::GripperStatusRequest :md5sum-) "c57caedf4aafd0b59704d2f3b16e0f35")
(setf (get mira_communication::GripperStatusRequest :datatype-) "mira_communication/GripperStatusRequest")
(setf (get mira_communication::GripperStatusRequest :definition-)
      "bool Status

---

bool Flag
")

(setf (get mira_communication::GripperStatusResponse :md5sum-) "c57caedf4aafd0b59704d2f3b16e0f35")
(setf (get mira_communication::GripperStatusResponse :datatype-) "mira_communication/GripperStatusResponse")
(setf (get mira_communication::GripperStatusResponse :definition-)
      "bool Status

---

bool Flag
")



(provide :mira_communication/GripperStatus "c57caedf4aafd0b59704d2f3b16e0f35")


