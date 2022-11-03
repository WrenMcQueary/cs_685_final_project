;; Auto-generated. Do not edit!


(when (boundp 'mira_communication::PumpStatus)
  (if (not (find-package "MIRA_COMMUNICATION"))
    (make-package "MIRA_COMMUNICATION"))
  (shadow 'PumpStatus (find-package "MIRA_COMMUNICATION")))
(unless (find-package "MIRA_COMMUNICATION::PUMPSTATUS")
  (make-package "MIRA_COMMUNICATION::PUMPSTATUS"))
(unless (find-package "MIRA_COMMUNICATION::PUMPSTATUSREQUEST")
  (make-package "MIRA_COMMUNICATION::PUMPSTATUSREQUEST"))
(unless (find-package "MIRA_COMMUNICATION::PUMPSTATUSRESPONSE")
  (make-package "MIRA_COMMUNICATION::PUMPSTATUSRESPONSE"))

(in-package "ROS")





(defclass mira_communication::PumpStatusRequest
  :super ros::object
  :slots (_Status ))

(defmethod mira_communication::PumpStatusRequest
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

(defclass mira_communication::PumpStatusResponse
  :super ros::object
  :slots (_Flag ))

(defmethod mira_communication::PumpStatusResponse
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

(defclass mira_communication::PumpStatus
  :super ros::object
  :slots ())

(setf (get mira_communication::PumpStatus :md5sum-) "c57caedf4aafd0b59704d2f3b16e0f35")
(setf (get mira_communication::PumpStatus :datatype-) "mira_communication/PumpStatus")
(setf (get mira_communication::PumpStatus :request) mira_communication::PumpStatusRequest)
(setf (get mira_communication::PumpStatus :response) mira_communication::PumpStatusResponse)

(defmethod mira_communication::PumpStatusRequest
  (:response () (instance mira_communication::PumpStatusResponse :init)))

(setf (get mira_communication::PumpStatusRequest :md5sum-) "c57caedf4aafd0b59704d2f3b16e0f35")
(setf (get mira_communication::PumpStatusRequest :datatype-) "mira_communication/PumpStatusRequest")
(setf (get mira_communication::PumpStatusRequest :definition-)
      "bool Status

---

bool Flag
")

(setf (get mira_communication::PumpStatusResponse :md5sum-) "c57caedf4aafd0b59704d2f3b16e0f35")
(setf (get mira_communication::PumpStatusResponse :datatype-) "mira_communication/PumpStatusResponse")
(setf (get mira_communication::PumpStatusResponse :definition-)
      "bool Status

---

bool Flag
")



(provide :mira_communication/PumpStatus "c57caedf4aafd0b59704d2f3b16e0f35")


