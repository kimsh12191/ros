; Auto-generated. Do not edit!


(cl:in-package basics-srv)


;//! \htmlinclude WordCountT-request.msg.html

(cl:defclass <WordCountT-request> (roslisp-msg-protocol:ros-message)
  ((words
    :reader words
    :initarg :words
    :type cl:string
    :initform ""))
)

(cl:defclass WordCountT-request (<WordCountT-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WordCountT-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WordCountT-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name basics-srv:<WordCountT-request> is deprecated: use basics-srv:WordCountT-request instead.")))

(cl:ensure-generic-function 'words-val :lambda-list '(m))
(cl:defmethod words-val ((m <WordCountT-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader basics-srv:words-val is deprecated.  Use basics-srv:words instead.")
  (words m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WordCountT-request>) ostream)
  "Serializes a message object of type '<WordCountT-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'words))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'words))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WordCountT-request>) istream)
  "Deserializes a message object of type '<WordCountT-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'words) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'words) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WordCountT-request>)))
  "Returns string type for a service object of type '<WordCountT-request>"
  "basics/WordCountTRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WordCountT-request)))
  "Returns string type for a service object of type 'WordCountT-request"
  "basics/WordCountTRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WordCountT-request>)))
  "Returns md5sum for a message object of type '<WordCountT-request>"
  "58903d21a3264f3408d79ba79e9f7c7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WordCountT-request)))
  "Returns md5sum for a message object of type 'WordCountT-request"
  "58903d21a3264f3408d79ba79e9f7c7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WordCountT-request>)))
  "Returns full string definition for message of type '<WordCountT-request>"
  (cl:format cl:nil "string words~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WordCountT-request)))
  "Returns full string definition for message of type 'WordCountT-request"
  (cl:format cl:nil "string words~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WordCountT-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'words))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WordCountT-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WordCountT-request
    (cl:cons ':words (words msg))
))
;//! \htmlinclude WordCountT-response.msg.html

(cl:defclass <WordCountT-response> (roslisp-msg-protocol:ros-message)
  ((count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0))
)

(cl:defclass WordCountT-response (<WordCountT-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WordCountT-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WordCountT-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name basics-srv:<WordCountT-response> is deprecated: use basics-srv:WordCountT-response instead.")))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <WordCountT-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader basics-srv:count-val is deprecated.  Use basics-srv:count instead.")
  (count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WordCountT-response>) ostream)
  "Serializes a message object of type '<WordCountT-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WordCountT-response>) istream)
  "Deserializes a message object of type '<WordCountT-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WordCountT-response>)))
  "Returns string type for a service object of type '<WordCountT-response>"
  "basics/WordCountTResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WordCountT-response)))
  "Returns string type for a service object of type 'WordCountT-response"
  "basics/WordCountTResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WordCountT-response>)))
  "Returns md5sum for a message object of type '<WordCountT-response>"
  "58903d21a3264f3408d79ba79e9f7c7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WordCountT-response)))
  "Returns md5sum for a message object of type 'WordCountT-response"
  "58903d21a3264f3408d79ba79e9f7c7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WordCountT-response>)))
  "Returns full string definition for message of type '<WordCountT-response>"
  (cl:format cl:nil "uint32 count~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WordCountT-response)))
  "Returns full string definition for message of type 'WordCountT-response"
  (cl:format cl:nil "uint32 count~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WordCountT-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WordCountT-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WordCountT-response
    (cl:cons ':count (count msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WordCountT)))
  'WordCountT-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WordCountT)))
  'WordCountT-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WordCountT)))
  "Returns string type for a service object of type '<WordCountT>"
  "basics/WordCountT")