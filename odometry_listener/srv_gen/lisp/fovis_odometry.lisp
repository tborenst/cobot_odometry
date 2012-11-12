; Auto-generated. Do not edit!


(cl:in-package odometry_listener-srv)


;//! \htmlinclude fovis_odometry-request.msg.html

(cl:defclass <fovis_odometry-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass fovis_odometry-request (<fovis_odometry-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fovis_odometry-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fovis_odometry-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name odometry_listener-srv:<fovis_odometry-request> is deprecated: use odometry_listener-srv:fovis_odometry-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fovis_odometry-request>) ostream)
  "Serializes a message object of type '<fovis_odometry-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fovis_odometry-request>) istream)
  "Deserializes a message object of type '<fovis_odometry-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fovis_odometry-request>)))
  "Returns string type for a service object of type '<fovis_odometry-request>"
  "odometry_listener/fovis_odometryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fovis_odometry-request)))
  "Returns string type for a service object of type 'fovis_odometry-request"
  "odometry_listener/fovis_odometryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fovis_odometry-request>)))
  "Returns md5sum for a message object of type '<fovis_odometry-request>"
  "48f9ecff202410b4091f28b4c838b809")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fovis_odometry-request)))
  "Returns md5sum for a message object of type 'fovis_odometry-request"
  "48f9ecff202410b4091f28b4c838b809")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fovis_odometry-request>)))
  "Returns full string definition for message of type '<fovis_odometry-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fovis_odometry-request)))
  "Returns full string definition for message of type 'fovis_odometry-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fovis_odometry-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fovis_odometry-request>))
  "Converts a ROS message object to a list"
  (cl:list 'fovis_odometry-request
))
;//! \htmlinclude fovis_odometry-response.msg.html

(cl:defclass <fovis_odometry-response> (roslisp-msg-protocol:ros-message)
  ((X
    :reader X
    :initarg :X
    :type cl:float
    :initform 0.0)
   (Y
    :reader Y
    :initarg :Y
    :type cl:float
    :initform 0.0)
   (R
    :reader R
    :initarg :R
    :type cl:float
    :initform 0.0))
)

(cl:defclass fovis_odometry-response (<fovis_odometry-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fovis_odometry-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fovis_odometry-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name odometry_listener-srv:<fovis_odometry-response> is deprecated: use odometry_listener-srv:fovis_odometry-response instead.")))

(cl:ensure-generic-function 'X-val :lambda-list '(m))
(cl:defmethod X-val ((m <fovis_odometry-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader odometry_listener-srv:X-val is deprecated.  Use odometry_listener-srv:X instead.")
  (X m))

(cl:ensure-generic-function 'Y-val :lambda-list '(m))
(cl:defmethod Y-val ((m <fovis_odometry-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader odometry_listener-srv:Y-val is deprecated.  Use odometry_listener-srv:Y instead.")
  (Y m))

(cl:ensure-generic-function 'R-val :lambda-list '(m))
(cl:defmethod R-val ((m <fovis_odometry-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader odometry_listener-srv:R-val is deprecated.  Use odometry_listener-srv:R instead.")
  (R m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fovis_odometry-response>) ostream)
  "Serializes a message object of type '<fovis_odometry-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'R))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fovis_odometry-response>) istream)
  "Deserializes a message object of type '<fovis_odometry-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'X) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'R) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fovis_odometry-response>)))
  "Returns string type for a service object of type '<fovis_odometry-response>"
  "odometry_listener/fovis_odometryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fovis_odometry-response)))
  "Returns string type for a service object of type 'fovis_odometry-response"
  "odometry_listener/fovis_odometryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fovis_odometry-response>)))
  "Returns md5sum for a message object of type '<fovis_odometry-response>"
  "48f9ecff202410b4091f28b4c838b809")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fovis_odometry-response)))
  "Returns md5sum for a message object of type 'fovis_odometry-response"
  "48f9ecff202410b4091f28b4c838b809")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fovis_odometry-response>)))
  "Returns full string definition for message of type '<fovis_odometry-response>"
  (cl:format cl:nil "float64 X~%float64 Y~%float64 R~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fovis_odometry-response)))
  "Returns full string definition for message of type 'fovis_odometry-response"
  (cl:format cl:nil "float64 X~%float64 Y~%float64 R~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fovis_odometry-response>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fovis_odometry-response>))
  "Converts a ROS message object to a list"
  (cl:list 'fovis_odometry-response
    (cl:cons ':X (X msg))
    (cl:cons ':Y (Y msg))
    (cl:cons ':R (R msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'fovis_odometry)))
  'fovis_odometry-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'fovis_odometry)))
  'fovis_odometry-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fovis_odometry)))
  "Returns string type for a service object of type '<fovis_odometry>"
  "odometry_listener/fovis_odometry")