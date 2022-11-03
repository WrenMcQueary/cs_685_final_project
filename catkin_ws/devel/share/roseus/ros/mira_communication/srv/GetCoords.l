;; Auto-generated. Do not edit!


(when (boundp 'mira_communication::GetCoords)
  (if (not (find-package "MIRA_COMMUNICATION"))
    (make-package "MIRA_COMMUNICATION"))
  (shadow 'GetCoords (find-package "MIRA_COMMUNICATION")))
(unless (find-package "MIRA_COMMUNICATION::GETCOORDS")
  (make-package "MIRA_COMMUNICATION::GETCOORDS"))
(unless (find-package "MIRA_COMMUNICATION::GETCOORDSREQUEST")
  (make-package "MIRA_COMMUNICATION::GETCOORDSREQUEST"))
(unless (find-package "MIRA_COMMUNICATION::GETCOORDSRESPONSE")
  (make-package "MIRA_COMMUNICATION::GETCOORDSRESPONSE"))

(in-package "ROS")





(defclass mira_communication::GetCoordsRequest
  :super ros::object
  :slots ())

(defmethod mira_communication::GetCoordsRequest
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

(defclass mira_communication::GetCoordsResponse
  :super ros::object
  :slots (_x _y _z ))

(defmethod mira_communication::GetCoordsResponse
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mira_communication::GetCoords
  :super ros::object
  :slots ())

(setf (get mira_communication::GetCoords :md5sum-) "cc153912f1453b708d221682bc23d9ac")
(setf (get mira_communication::GetCoords :datatype-) "mira_communication/GetCoords")
(setf (get mira_communication::GetCoords :request) mira_communication::GetCoordsRequest)
(setf (get mira_communication::GetCoords :response) mira_communication::GetCoordsResponse)

(defmethod mira_communication::GetCoordsRequest
  (:response () (instance mira_communication::GetCoordsResponse :init)))

(setf (get mira_communication::GetCoordsRequest :md5sum-) "cc153912f1453b708d221682bc23d9ac")
(setf (get mira_communication::GetCoordsRequest :datatype-) "mira_communication/GetCoordsRequest")
(setf (get mira_communication::GetCoordsRequest :definition-)
      "
---

float32 x
float32 y
float32 z

")

(setf (get mira_communication::GetCoordsResponse :md5sum-) "cc153912f1453b708d221682bc23d9ac")
(setf (get mira_communication::GetCoordsResponse :datatype-) "mira_communication/GetCoordsResponse")
(setf (get mira_communication::GetCoordsResponse :definition-)
      "
---

float32 x
float32 y
float32 z

")



(provide :mira_communication/GetCoords "cc153912f1453b708d221682bc23d9ac")


