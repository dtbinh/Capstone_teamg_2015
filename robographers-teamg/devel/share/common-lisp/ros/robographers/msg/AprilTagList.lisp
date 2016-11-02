; Auto-generated. Do not edit!


(cl:in-package robographers-msg)


;//! \htmlinclude AprilTagList.msg.html

(cl:defclass <AprilTagList> (roslisp-msg-protocol:ros-message)
  ((april_tags
    :reader april_tags
    :initarg :april_tags
    :type (cl:vector robographers-msg:AprilTag)
   :initform (cl:make-array 0 :element-type 'robographers-msg:AprilTag :initial-element (cl:make-instance 'robographers-msg:AprilTag))))
)

(cl:defclass AprilTagList (<AprilTagList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AprilTagList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AprilTagList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robographers-msg:<AprilTagList> is deprecated: use robographers-msg:AprilTagList instead.")))

(cl:ensure-generic-function 'april_tags-val :lambda-list '(m))
(cl:defmethod april_tags-val ((m <AprilTagList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robographers-msg:april_tags-val is deprecated.  Use robographers-msg:april_tags instead.")
  (april_tags m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AprilTagList>) ostream)
  "Serializes a message object of type '<AprilTagList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'april_tags))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'april_tags))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AprilTagList>) istream)
  "Deserializes a message object of type '<AprilTagList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'april_tags) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'april_tags)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robographers-msg:AprilTag))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AprilTagList>)))
  "Returns string type for a message object of type '<AprilTagList>"
  "robographers/AprilTagList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AprilTagList)))
  "Returns string type for a message object of type 'AprilTagList"
  "robographers/AprilTagList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AprilTagList>)))
  "Returns md5sum for a message object of type '<AprilTagList>"
  "213573b69d7bd9ad75dae95f24eb462e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AprilTagList)))
  "Returns md5sum for a message object of type 'AprilTagList"
  "213573b69d7bd9ad75dae95f24eb462e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AprilTagList>)))
  "Returns full string definition for message of type '<AprilTagList>"
  (cl:format cl:nil "AprilTag[] april_tags~%================================================================================~%MSG: robographers/AprilTag~%uint32 	id~%uint32 	hamming_distance~%float64 distance~%float64 x~%float64 y~%float64 z~%float64 yaw~%float64 pitch~%float64 roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AprilTagList)))
  "Returns full string definition for message of type 'AprilTagList"
  (cl:format cl:nil "AprilTag[] april_tags~%================================================================================~%MSG: robographers/AprilTag~%uint32 	id~%uint32 	hamming_distance~%float64 distance~%float64 x~%float64 y~%float64 z~%float64 yaw~%float64 pitch~%float64 roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AprilTagList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'april_tags) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AprilTagList>))
  "Converts a ROS message object to a list"
  (cl:list 'AprilTagList
    (cl:cons ':april_tags (april_tags msg))
))
