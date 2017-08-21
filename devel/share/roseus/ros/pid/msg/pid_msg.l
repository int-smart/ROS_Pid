;; Auto-generated. Do not edit!


(when (boundp 'pid::pid_msg)
  (if (not (find-package "PID"))
    (make-package "PID"))
  (shadow 'pid_msg (find-package "PID")))
(unless (find-package "PID::PID_MSG")
  (make-package "PID::PID_MSG"))

(in-package "ROS")
;;//! \htmlinclude pid_msg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pid::pid_msg
  :super ros::object
  :slots (_header _actual_accel _actual_steer _actual_brake ))

(defmethod pid::pid_msg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:actual_accel __actual_accel) 0.0)
    ((:actual_steer __actual_steer) 0.0)
    ((:actual_brake __actual_brake) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _actual_accel (float __actual_accel))
   (setq _actual_steer (float __actual_steer))
   (setq _actual_brake (float __actual_brake))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:actual_accel
   (&optional __actual_accel)
   (if __actual_accel (setq _actual_accel __actual_accel)) _actual_accel)
  (:actual_steer
   (&optional __actual_steer)
   (if __actual_steer (setq _actual_steer __actual_steer)) _actual_steer)
  (:actual_brake
   (&optional __actual_brake)
   (if __actual_brake (setq _actual_brake __actual_brake)) _actual_brake)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _actual_accel
    4
    ;; float32 _actual_steer
    4
    ;; float32 _actual_brake
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _actual_accel
       (sys::poke _actual_accel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _actual_steer
       (sys::poke _actual_steer (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _actual_brake
       (sys::poke _actual_brake (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _actual_accel
     (setq _actual_accel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _actual_steer
     (setq _actual_steer (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _actual_brake
     (setq _actual_brake (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pid::pid_msg :md5sum-) "d7471688fc81dda7cfcf18609748b819")
(setf (get pid::pid_msg :datatype-) "pid/pid_msg")
(setf (get pid::pid_msg :definition-)
      "Header header
float32 actual_accel
float32 actual_steer
float32 actual_brake


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :pid/pid_msg "d7471688fc81dda7cfcf18609748b819")


