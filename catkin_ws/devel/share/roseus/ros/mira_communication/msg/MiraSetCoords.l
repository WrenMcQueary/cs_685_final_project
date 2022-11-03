;; Auto-generated. Do not edit!


(when (boundp 'mira_communication::MiraSetCoords)
  (if (not (find-package "MIRA_COMMUNICATION"))
    (make-package "MIRA_COMMUNICATION"))
  (shadow 'MiraSetCoords (find-package "MIRA_COMMUNICATION")))
(unless (find-package "MIRA_COMMUNICATION::MIRASETCOORDS")
  (make-package "MIRA_COMMUNICATION::MIRASETCOORDS"))

(in-package "ROS")
;;//! \htmlinclude MiraSetCoords.msg.html


(defclass mira_communication::MiraSetCoords
  :super ros::object
  :slots (_x _y _z _speed ))

(defmethod mira_communication::MiraSetCoords
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:speed __speed) 0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _speed (round __speed))
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
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; int8 _speed
    1
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
     ;; int8 _speed
       (write-byte _speed s)
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
   ;; int8 _speed
     (setq _speed (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _speed 127) (setq _speed (- _speed 256)))
   ;;
   self)
  )

(setf (get mira_communication::MiraSetCoords :md5sum-) "8ea3ad4a8a93b7084b136640e2eeae90")
(setf (get mira_communication::MiraSetCoords :datatype-) "mira_communication/MiraSetCoords")
(setf (get mira_communication::MiraSetCoords :definition-)
      "float32 x
float32 y
float32 z

int8 speed


")



(provide :mira_communication/MiraSetCoords "8ea3ad4a8a93b7084b136640e2eeae90")


