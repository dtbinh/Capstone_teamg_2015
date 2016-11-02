; Auto-generated. Do not edit!


(cl:in-package intraface-msg)


;//! \htmlinclude Emotions.msg.html

(cl:defclass <Emotions> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (emotions
    :reader emotions
    :initarg :emotions
    :type (cl:vector intraface-msg:Emotion)
   :initform (cl:make-array 0 :element-type 'intraface-msg:Emotion :initial-element (cl:make-instance 'intraface-msg:Emotion))))
)

(cl:defclass Emotions (<Emotions>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Emotions>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Emotions)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intraface-msg:<Emotions> is deprecated: use intraface-msg:Emotions instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Emotions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intraface-msg:header-val is deprecated.  Use intraface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'emotions-val :lambda-list '(m))
(cl:defmethod emotions-val ((m <Emotions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intraface-msg:emotions-val is deprecated.  Use intraface-msg:emotions instead.")
  (emotions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Emotions>) ostream)
  "Serializes a message object of type '<Emotions>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'emotions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'emotions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Emotions>) istream)
  "Deserializes a message object of type '<Emotions>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'emotions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'emotions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'intraface-msg:Emotion))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Emotions>)))
  "Returns string type for a message object of type '<Emotions>"
  "intraface/Emotions")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Emotions)))
  "Returns string type for a message object of type 'Emotions"
  "intraface/Emotions")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Emotions>)))
  "Returns md5sum for a message object of type '<Emotions>"
  "25a449b64ef4f8821018398c98ff573c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Emotions)))
  "Returns md5sum for a message object of type 'Emotions"
  "25a449b64ef4f8821018398c98ff573c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Emotions>)))
  "Returns full string definition for message of type '<Emotions>"
  (cl:format cl:nil "## Contains all the predicted emotions info~%Header header~%~%#array containing all the computed emotions~%intraface/Emotion[] emotions~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: intraface/Emotion~%## Contains an emotion data info~%~%#emotions confidence~%string tag~%~%#emotions confidence~%float32 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Emotions)))
  "Returns full string definition for message of type 'Emotions"
  (cl:format cl:nil "## Contains all the predicted emotions info~%Header header~%~%#array containing all the computed emotions~%intraface/Emotion[] emotions~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: intraface/Emotion~%## Contains an emotion data info~%~%#emotions confidence~%string tag~%~%#emotions confidence~%float32 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Emotions>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'emotions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Emotions>))
  "Converts a ROS message object to a list"
  (cl:list 'Emotions
    (cl:cons ':header (header msg))
    (cl:cons ':emotions (emotions msg))
))
