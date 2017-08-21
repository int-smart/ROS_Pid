; Auto-generated. Do not edit!


(cl:in-package pid-msg)


;//! \htmlinclude pid_msg.msg.html

(cl:defclass <pid_msg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (actual_accel
    :reader actual_accel
    :initarg :actual_accel
    :type cl:float
    :initform 0.0)
   (actual_steer
    :reader actual_steer
    :initarg :actual_steer
    :type cl:float
    :initform 0.0)
   (actual_brake
    :reader actual_brake
    :initarg :actual_brake
    :type cl:float
    :initform 0.0))
)

(cl:defclass pid_msg (<pid_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pid_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pid_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pid-msg:<pid_msg> is deprecated: use pid-msg:pid_msg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <pid_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pid-msg:header-val is deprecated.  Use pid-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'actual_accel-val :lambda-list '(m))
(cl:defmethod actual_accel-val ((m <pid_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pid-msg:actual_accel-val is deprecated.  Use pid-msg:actual_accel instead.")
  (actual_accel m))

(cl:ensure-generic-function 'actual_steer-val :lambda-list '(m))
(cl:defmethod actual_steer-val ((m <pid_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pid-msg:actual_steer-val is deprecated.  Use pid-msg:actual_steer instead.")
  (actual_steer m))

(cl:ensure-generic-function 'actual_brake-val :lambda-list '(m))
(cl:defmethod actual_brake-val ((m <pid_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pid-msg:actual_brake-val is deprecated.  Use pid-msg:actual_brake instead.")
  (actual_brake m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pid_msg>) ostream)
  "Serializes a message object of type '<pid_msg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'actual_accel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'actual_steer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'actual_brake))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pid_msg>) istream)
  "Deserializes a message object of type '<pid_msg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'actual_accel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'actual_steer) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'actual_brake) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pid_msg>)))
  "Returns string type for a message object of type '<pid_msg>"
  "pid/pid_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pid_msg)))
  "Returns string type for a message object of type 'pid_msg"
  "pid/pid_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pid_msg>)))
  "Returns md5sum for a message object of type '<pid_msg>"
  "d7471688fc81dda7cfcf18609748b819")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pid_msg)))
  "Returns md5sum for a message object of type 'pid_msg"
  "d7471688fc81dda7cfcf18609748b819")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pid_msg>)))
  "Returns full string definition for message of type '<pid_msg>"
  (cl:format cl:nil "Header header~%float32 actual_accel~%float32 actual_steer~%float32 actual_brake~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pid_msg)))
  "Returns full string definition for message of type 'pid_msg"
  (cl:format cl:nil "Header header~%float32 actual_accel~%float32 actual_steer~%float32 actual_brake~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pid_msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pid_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'pid_msg
    (cl:cons ':header (header msg))
    (cl:cons ':actual_accel (actual_accel msg))
    (cl:cons ':actual_steer (actual_steer msg))
    (cl:cons ':actual_brake (actual_brake msg))
))
