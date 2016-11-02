; Auto-generated. Do not edit!


(cl:in-package intraface-msg)


;//! \htmlinclude IrisGaze.msg.html

(cl:defclass <IrisGaze> (roslisp-msg-protocol:ros-message)
  ((leftIris_x
    :reader leftIris_x
    :initarg :leftIris_x
    :type cl:float
    :initform 0.0)
   (leftIris_y
    :reader leftIris_y
    :initarg :leftIris_y
    :type cl:float
    :initform 0.0)
   (rightIris_x
    :reader rightIris_x
    :initarg :rightIris_x
    :type cl:float
    :initform 0.0)
   (rightIris_y
    :reader rightIris_y
    :initarg :rightIris_y
    :type cl:float
    :initform 0.0)
   (leftGaze_x
    :reader leftGaze_x
    :initarg :leftGaze_x
    :type cl:float
    :initform 0.0)
   (leftGaze_y
    :reader leftGaze_y
    :initarg :leftGaze_y
    :type cl:float
    :initform 0.0)
   (rightGaze_x
    :reader rightGaze_x
    :initarg :rightGaze_x
    :type cl:float
    :initform 0.0)
   (rightGaze_y
    :reader rightGaze_y
    :initarg :rightGaze_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass IrisGaze (<IrisGaze>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IrisGaze>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IrisGaze)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intraface-msg:<IrisGaze> is deprecated: use intraface-msg:IrisGaze instead.")))

(cl:ensure-generic-function 'leftIris_x-val :lambda-list '(m))
(cl:defmethod leftIris_x-val ((m <IrisGaze>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intraface-msg:leftIris_x-val is deprecated.  Use intraface-msg:leftIris_x instead.")
  (leftIris_x m))

(cl:ensure-generic-function 'leftIris_y-val :lambda-list '(m))
(cl:defmethod leftIris_y-val ((m <IrisGaze>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intraface-msg:leftIris_y-val is deprecated.  Use intraface-msg:leftIris_y instead.")
  (leftIris_y m))

(cl:ensure-generic-function 'rightIris_x-val :lambda-list '(m))
(cl:defmethod rightIris_x-val ((m <IrisGaze>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intraface-msg:rightIris_x-val is deprecated.  Use intraface-msg:rightIris_x instead.")
  (rightIris_x m))

(cl:ensure-generic-function 'rightIris_y-val :lambda-list '(m))
(cl:defmethod rightIris_y-val ((m <IrisGaze>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intraface-msg:rightIris_y-val is deprecated.  Use intraface-msg:rightIris_y instead.")
  (rightIris_y m))

(cl:ensure-generic-function 'leftGaze_x-val :lambda-list '(m))
(cl:defmethod leftGaze_x-val ((m <IrisGaze>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intraface-msg:leftGaze_x-val is deprecated.  Use intraface-msg:leftGaze_x instead.")
  (leftGaze_x m))

(cl:ensure-generic-function 'leftGaze_y-val :lambda-list '(m))
(cl:defmethod leftGaze_y-val ((m <IrisGaze>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intraface-msg:leftGaze_y-val is deprecated.  Use intraface-msg:leftGaze_y instead.")
  (leftGaze_y m))

(cl:ensure-generic-function 'rightGaze_x-val :lambda-list '(m))
(cl:defmethod rightGaze_x-val ((m <IrisGaze>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intraface-msg:rightGaze_x-val is deprecated.  Use intraface-msg:rightGaze_x instead.")
  (rightGaze_x m))

(cl:ensure-generic-function 'rightGaze_y-val :lambda-list '(m))
(cl:defmethod rightGaze_y-val ((m <IrisGaze>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intraface-msg:rightGaze_y-val is deprecated.  Use intraface-msg:rightGaze_y instead.")
  (rightGaze_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IrisGaze>) ostream)
  "Serializes a message object of type '<IrisGaze>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'leftIris_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'leftIris_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rightIris_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rightIris_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'leftGaze_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'leftGaze_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rightGaze_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rightGaze_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IrisGaze>) istream)
  "Deserializes a message object of type '<IrisGaze>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leftIris_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leftIris_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rightIris_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rightIris_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leftGaze_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leftGaze_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rightGaze_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rightGaze_y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IrisGaze>)))
  "Returns string type for a message object of type '<IrisGaze>"
  "intraface/IrisGaze")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IrisGaze)))
  "Returns string type for a message object of type 'IrisGaze"
  "intraface/IrisGaze")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IrisGaze>)))
  "Returns md5sum for a message object of type '<IrisGaze>"
  "4d30626ef82a86d36dfcc4ba23117633")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IrisGaze)))
  "Returns md5sum for a message object of type 'IrisGaze"
  "4d30626ef82a86d36dfcc4ba23117633")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IrisGaze>)))
  "Returns full string definition for message of type '<IrisGaze>"
  (cl:format cl:nil "### Iris and Gaze information~%~%~%## Irises~%#left iris positions [pixels]~%float32 leftIris_x~%float32 leftIris_y~%~%#right iries position [pixels]~%float32 rightIris_x~%float32 rightIris_y~%~%## Gaze~%#left gaze orientation offset [pixels]~%float32 leftGaze_x~%float32 leftGaze_y~%~%#right gaze orientation offset [pixels]~%float32 rightGaze_x~%float32 rightGaze_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IrisGaze)))
  "Returns full string definition for message of type 'IrisGaze"
  (cl:format cl:nil "### Iris and Gaze information~%~%~%## Irises~%#left iris positions [pixels]~%float32 leftIris_x~%float32 leftIris_y~%~%#right iries position [pixels]~%float32 rightIris_x~%float32 rightIris_y~%~%## Gaze~%#left gaze orientation offset [pixels]~%float32 leftGaze_x~%float32 leftGaze_y~%~%#right gaze orientation offset [pixels]~%float32 rightGaze_x~%float32 rightGaze_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IrisGaze>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IrisGaze>))
  "Converts a ROS message object to a list"
  (cl:list 'IrisGaze
    (cl:cons ':leftIris_x (leftIris_x msg))
    (cl:cons ':leftIris_y (leftIris_y msg))
    (cl:cons ':rightIris_x (rightIris_x msg))
    (cl:cons ':rightIris_y (rightIris_y msg))
    (cl:cons ':leftGaze_x (leftGaze_x msg))
    (cl:cons ':leftGaze_y (leftGaze_y msg))
    (cl:cons ':rightGaze_x (rightGaze_x msg))
    (cl:cons ':rightGaze_y (rightGaze_y msg))
))
