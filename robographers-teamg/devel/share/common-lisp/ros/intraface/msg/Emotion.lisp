; Auto-generated. Do not edit!


(cl:in-package intraface-msg)


;//! \htmlinclude Emotion.msg.html

(cl:defclass <Emotion> (roslisp-msg-protocol:ros-message)
  ((tag
    :reader tag
    :initarg :tag
    :type cl:string
    :initform "")
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass Emotion (<Emotion>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Emotion>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Emotion)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intraface-msg:<Emotion> is deprecated: use intraface-msg:Emotion instead.")))

(cl:ensure-generic-function 'tag-val :lambda-list '(m))
(cl:defmethod tag-val ((m <Emotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intraface-msg:tag-val is deprecated.  Use intraface-msg:tag instead.")
  (tag m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <Emotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intraface-msg:confidence-val is deprecated.  Use intraface-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Emotion>) ostream)
  "Serializes a message object of type '<Emotion>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tag))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Emotion>) istream)
  "Deserializes a message object of type '<Emotion>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tag) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tag) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Emotion>)))
  "Returns string type for a message object of type '<Emotion>"
  "intraface/Emotion")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Emotion)))
  "Returns string type for a message object of type 'Emotion"
  "intraface/Emotion")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Emotion>)))
  "Returns md5sum for a message object of type '<Emotion>"
  "5d43fa116b23bb95f464029ea5c22924")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Emotion)))
  "Returns md5sum for a message object of type 'Emotion"
  "5d43fa116b23bb95f464029ea5c22924")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Emotion>)))
  "Returns full string definition for message of type '<Emotion>"
  (cl:format cl:nil "## Contains an emotion data info~%~%#emotions confidence~%string tag~%~%#emotions confidence~%float32 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Emotion)))
  "Returns full string definition for message of type 'Emotion"
  (cl:format cl:nil "## Contains an emotion data info~%~%#emotions confidence~%string tag~%~%#emotions confidence~%float32 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Emotion>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'tag))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Emotion>))
  "Converts a ROS message object to a list"
  (cl:list 'Emotion
    (cl:cons ':tag (tag msg))
    (cl:cons ':confidence (confidence msg))
))
