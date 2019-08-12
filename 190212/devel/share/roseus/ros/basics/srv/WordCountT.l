;; Auto-generated. Do not edit!


(when (boundp 'basics::WordCountT)
  (if (not (find-package "BASICS"))
    (make-package "BASICS"))
  (shadow 'WordCountT (find-package "BASICS")))
(unless (find-package "BASICS::WORDCOUNTT")
  (make-package "BASICS::WORDCOUNTT"))
(unless (find-package "BASICS::WORDCOUNTTREQUEST")
  (make-package "BASICS::WORDCOUNTTREQUEST"))
(unless (find-package "BASICS::WORDCOUNTTRESPONSE")
  (make-package "BASICS::WORDCOUNTTRESPONSE"))

(in-package "ROS")





(defclass basics::WordCountTRequest
  :super ros::object
  :slots (_words ))

(defmethod basics::WordCountTRequest
  (:init
   (&key
    ((:words __words) "")
    )
   (send-super :init)
   (setq _words (string __words))
   self)
  (:words
   (&optional __words)
   (if __words (setq _words __words)) _words)
  (:serialization-length
   ()
   (+
    ;; string _words
    4 (length _words)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _words
       (write-long (length _words) s) (princ _words s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _words
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _words (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass basics::WordCountTResponse
  :super ros::object
  :slots (_count ))

(defmethod basics::WordCountTResponse
  (:init
   (&key
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _count (round __count))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; uint32 _count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _count
       (write-long _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass basics::WordCountT
  :super ros::object
  :slots ())

(setf (get basics::WordCountT :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get basics::WordCountT :datatype-) "basics/WordCountT")
(setf (get basics::WordCountT :request) basics::WordCountTRequest)
(setf (get basics::WordCountT :response) basics::WordCountTResponse)

(defmethod basics::WordCountTRequest
  (:response () (instance basics::WordCountTResponse :init)))

(setf (get basics::WordCountTRequest :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get basics::WordCountTRequest :datatype-) "basics/WordCountTRequest")
(setf (get basics::WordCountTRequest :definition-)
      "string words
---
uint32 count

")

(setf (get basics::WordCountTResponse :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get basics::WordCountTResponse :datatype-) "basics/WordCountTResponse")
(setf (get basics::WordCountTResponse :definition-)
      "string words
---
uint32 count

")



(provide :basics/WordCountT "58903d21a3264f3408d79ba79e9f7c7e")


