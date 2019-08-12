
(cl:in-package :asdf)

(defsystem "basics-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :basics-msg
)
  :components ((:file "_package")
    (:file "WordCountT" :depends-on ("_package_WordCountT"))
    (:file "_package_WordCountT" :depends-on ("_package"))
    (:file "WordCountTest" :depends-on ("_package_WordCountTest"))
    (:file "_package_WordCountTest" :depends-on ("_package"))
  ))