; Auto-generated. Do not edit!


(cl:in-package lidar_2020-msg)


;//! \htmlinclude alert_range.msg.html

(cl:defclass <alert_range> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (num
    :reader num
    :initarg :num
    :type cl:fixnum
    :initform 0)
   (ranging_value
    :reader ranging_value
    :initarg :ranging_value
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (alert
    :reader alert
    :initarg :alert
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass alert_range (<alert_range>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <alert_range>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'alert_range)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lidar_2020-msg:<alert_range> is deprecated: use lidar_2020-msg:alert_range instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <alert_range>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_2020-msg:header-val is deprecated.  Use lidar_2020-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <alert_range>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_2020-msg:num-val is deprecated.  Use lidar_2020-msg:num instead.")
  (num m))

(cl:ensure-generic-function 'ranging_value-val :lambda-list '(m))
(cl:defmethod ranging_value-val ((m <alert_range>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_2020-msg:ranging_value-val is deprecated.  Use lidar_2020-msg:ranging_value instead.")
  (ranging_value m))

(cl:ensure-generic-function 'alert-val :lambda-list '(m))
(cl:defmethod alert-val ((m <alert_range>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidar_2020-msg:alert-val is deprecated.  Use lidar_2020-msg:alert instead.")
  (alert m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <alert_range>) ostream)
  "Serializes a message object of type '<alert_range>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ranging_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'ranging_value))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'alert))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'alert))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <alert_range>) istream)
  "Deserializes a message object of type '<alert_range>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ranging_value) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ranging_value)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'alert) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'alert)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<alert_range>)))
  "Returns string type for a message object of type '<alert_range>"
  "lidar_2020/alert_range")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'alert_range)))
  "Returns string type for a message object of type 'alert_range"
  "lidar_2020/alert_range")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<alert_range>)))
  "Returns md5sum for a message object of type '<alert_range>"
  "d0c52c82e08087063181441d7bcd4d6e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'alert_range)))
  "Returns md5sum for a message object of type 'alert_range"
  "d0c52c82e08087063181441d7bcd4d6e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<alert_range>)))
  "Returns full string definition for message of type '<alert_range>"
  (cl:format cl:nil "std_msgs/Header header~%int16 num~%float32[] ranging_value~%bool[] alert~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'alert_range)))
  "Returns full string definition for message of type 'alert_range"
  (cl:format cl:nil "std_msgs/Header header~%int16 num~%float32[] ranging_value~%bool[] alert~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <alert_range>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ranging_value) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'alert) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <alert_range>))
  "Converts a ROS message object to a list"
  (cl:list 'alert_range
    (cl:cons ':header (header msg))
    (cl:cons ':num (num msg))
    (cl:cons ':ranging_value (ranging_value msg))
    (cl:cons ':alert (alert msg))
))
