;; Auto-generated. Do not edit!


(when (boundp 'mira_communication::GetAngles)
  (if (not (find-package "MIRA_COMMUNICATION"))
    (make-package "MIRA_COMMUNICATION"))
  (shadow 'GetAngles (find-package "MIRA_COMMUNICATION")))
(unless (find-package "MIRA_COMMUNICATION::GETANGLES")
  (make-package "MIRA_COMMUNICATION::GETANGLES"))
(unless (find-package "MIRA_COMMUNICATION::GETANGLESREQUEST")
  (make-package "MIRA_COMMUNICATION::GETANGLESREQUEST"))
(unless (find-package "MIRA_COMMUNICATION::GETANGLESRESPONSE")
  (make-package "MIRA_COMMUNICATION::GETANGLESRESPONSE"))

(in-package "ROS")





(defclass mira_communication::GetAnglesRequest
  :super ros::object
  :slots ())

(defmethod mira_communication::GetAnglesRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass mira_communication::GetAnglesResponse
  :super ros::object
  :slots (_joint_1 _joint_2 _joint_3 ))

(defmethod mira_communication::GetAnglesResponse
  (:init
   (&key
    ((:joint_1 __joint_1) 0.0)
    ((:joint_2 __joint_2) 0.0)
    ((:joint_3 __joint_3) 0.0)
    )
   (send-super :init)
   (setq _joint_1 (float __joint_1))
   (setq _joint_2 (float __joint_2))
   (setq _joint_3 (float __joint_3))
   self)
  (:joint_1
   (&optional __joint_1)
   (if __joint_1 (setq _joint_1 __joint_1)) _joint_1)
  (:joint_2
   (&optional __joint_2)
   (if __joint_2 (setq _joint_2 __joint_2)) _joint_2)
  (:joint_3
   (&optional __joint_3)
   (if __joint_3 (setq _joint_3 __joint_3)) _joint_3)
  (:serialization-length
   ()
   (+
    ;; float32 _joint_1
    4
    ;; float32 _joint_2
    4
    ;; float32 _joint_3
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _joint_1
       (sys::poke _joint_1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _joint_2
       (sys::poke _joint_2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _joint_3
       (sys::poke _joint_3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _joint_1
     (setq _joint_1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _joint_2
     (setq _joint_2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _joint_3
     (setq _joint_3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mira_communication::GetAngles
  :super ros::object
  :slots ())

(setf (get mira_communication::GetAngles :md5sum-) "8fb7487773865b96db936ca595817338")
(setf (get mira_communication::GetAngles :datatype-) "mira_communication/GetAngles")
(setf (get mira_communication::GetAngles :request) mira_communication::GetAnglesRequest)
(setf (get mira_communication::GetAngles :response) mira_communication::GetAnglesResponse)

(defmethod mira_communication::GetAnglesRequest
  (:response () (instance mira_communication::GetAnglesResponse :init)))

(setf (get mira_communication::GetAnglesRequest :md5sum-) "8fb7487773865b96db936ca595817338")
(setf (get mira_communication::GetAnglesRequest :datatype-) "mira_communication/GetAnglesRequest")
(setf (get mira_communication::GetAnglesRequest :definition-)
      "
---

float32 joint_1
float32 joint_2
float32 joint_3




")

(setf (get mira_communication::GetAnglesResponse :md5sum-) "8fb7487773865b96db936ca595817338")
(setf (get mira_communication::GetAnglesResponse :datatype-) "mira_communication/GetAnglesResponse")
(setf (get mira_communication::GetAnglesResponse :definition-)
      "
---

float32 joint_1
float32 joint_2
float32 joint_3




")



(provide :mira_communication/GetAngles "8fb7487773865b96db936ca595817338")


