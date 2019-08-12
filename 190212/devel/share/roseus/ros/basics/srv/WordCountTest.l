;; Auto-generated. Do not edit!


(when (boundp 'basics::WordCountTest)
  (if (not (find-package "BASICS"))
    (make-package "BASICS"))
  (shadow 'WordCountTest (find-package "BASICS")))
(unless (find-package "BASICS::WORDCOUNTTEST")
  (make-package "BASICS::WORDCOUNTTEST"))
(unless (find-package "BASICS::WORDCOUNTTESTREQUEST")
  (make-package "BASICS::WORDCOUNTTESTREQUEST"))
(unless (find-package "BASICS::WORDCOUNTTESTRESPONSE")
  (make-package "BASICS::WORDCOUNTTESTRESPONSE"))

(in-package "ROS")





(defclass basics::WordCountTestRequest
  :super ros::object
  :slots (_words ))

(defmethod basics::WordCountTestRequest
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

(defclass basics::WordCountTestResponse
  :super ros::object
  :slots (_count ))

(defmethod basics::WordCountTestResponse
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

(defclass basics::WordCountTest
  :super ros::object
  :slots ())

(setf (get basics::WordCountTest :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get basics::WordCountTest :datatype-) "basics/WordCountTest")
(setf (get basics::WordCountTest :request) basics::WordCountTestRequest)
(setf (get basics::WordCountTest :response) basics::WordCountTestResponse)

(defmethod basics::WordCountTestRequest
  (:response () (instance basics::WordCountTestResponse :init)))

(setf (get basics::WordCountTestRequest :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get basics::WordCountTestRequest :datatype-) "basics/WordCountTestRequest")
(setf (get basics::WordCountTestRequest :definition-)
      "string words
---
uint32 count

")

(setf (get basics::WordCountTestResponse :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get basics::WordCountTestResponse :datatype-) "basics/WordCountTestResponse")
(setf (get basics::WordCountTestResponse :definition-)
      "string words
---
uint32 count

")



(provide :basics/WordCountTest "58903d21a3264f3408d79ba79e9f7c7e")


