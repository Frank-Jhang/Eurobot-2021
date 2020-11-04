; Auto-generated. Do not edit!


(cl:in-package main_loop-msg)


;//! \htmlinclude from_goap.msg.html

(cl:defclass <from_goap> (roslisp-msg-protocol:ros-message)
  ((desire_degree
    :reader desire_degree
    :initarg :desire_degree
    :type cl:integer
    :initform 0)
   (desire_speed
    :reader desire_speed
    :initarg :desire_speed
    :type cl:integer
    :initform 0)
   (desire_mode
    :reader desire_mode
    :initarg :desire_mode
    :type cl:integer
    :initform 0)
   (desire_pos
    :reader desire_pos
    :initarg :desire_pos
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (desire_servo_state
    :reader desire_servo_state
    :initarg :desire_servo_state
    :type cl:integer
    :initform 0)
   (desire_stepper
    :reader desire_stepper
    :initarg :desire_stepper
    :type cl:integer
    :initform 0)
   (desire_hand
    :reader desire_hand
    :initarg :desire_hand
    :type cl:integer
    :initform 0)
   (is_wait
    :reader is_wait
    :initarg :is_wait
    :type cl:integer
    :initform 0)
   (mission_name
    :reader mission_name
    :initarg :mission_name
    :type cl:string
    :initform ""))
)

(cl:defclass from_goap (<from_goap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <from_goap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'from_goap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name main_loop-msg:<from_goap> is deprecated: use main_loop-msg:from_goap instead.")))

(cl:ensure-generic-function 'desire_degree-val :lambda-list '(m))
(cl:defmethod desire_degree-val ((m <from_goap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:desire_degree-val is deprecated.  Use main_loop-msg:desire_degree instead.")
  (desire_degree m))

(cl:ensure-generic-function 'desire_speed-val :lambda-list '(m))
(cl:defmethod desire_speed-val ((m <from_goap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:desire_speed-val is deprecated.  Use main_loop-msg:desire_speed instead.")
  (desire_speed m))

(cl:ensure-generic-function 'desire_mode-val :lambda-list '(m))
(cl:defmethod desire_mode-val ((m <from_goap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:desire_mode-val is deprecated.  Use main_loop-msg:desire_mode instead.")
  (desire_mode m))

(cl:ensure-generic-function 'desire_pos-val :lambda-list '(m))
(cl:defmethod desire_pos-val ((m <from_goap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:desire_pos-val is deprecated.  Use main_loop-msg:desire_pos instead.")
  (desire_pos m))

(cl:ensure-generic-function 'desire_servo_state-val :lambda-list '(m))
(cl:defmethod desire_servo_state-val ((m <from_goap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:desire_servo_state-val is deprecated.  Use main_loop-msg:desire_servo_state instead.")
  (desire_servo_state m))

(cl:ensure-generic-function 'desire_stepper-val :lambda-list '(m))
(cl:defmethod desire_stepper-val ((m <from_goap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:desire_stepper-val is deprecated.  Use main_loop-msg:desire_stepper instead.")
  (desire_stepper m))

(cl:ensure-generic-function 'desire_hand-val :lambda-list '(m))
(cl:defmethod desire_hand-val ((m <from_goap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:desire_hand-val is deprecated.  Use main_loop-msg:desire_hand instead.")
  (desire_hand m))

(cl:ensure-generic-function 'is_wait-val :lambda-list '(m))
(cl:defmethod is_wait-val ((m <from_goap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:is_wait-val is deprecated.  Use main_loop-msg:is_wait instead.")
  (is_wait m))

(cl:ensure-generic-function 'mission_name-val :lambda-list '(m))
(cl:defmethod mission_name-val ((m <from_goap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:mission_name-val is deprecated.  Use main_loop-msg:mission_name instead.")
  (mission_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <from_goap>) ostream)
  "Serializes a message object of type '<from_goap>"
  (cl:let* ((signed (cl:slot-value msg 'desire_degree)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'desire_speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'desire_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'desire_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'desire_pos))
  (cl:let* ((signed (cl:slot-value msg 'desire_servo_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'desire_stepper)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'desire_hand)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'is_wait)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mission_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mission_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <from_goap>) istream)
  "Deserializes a message object of type '<from_goap>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'desire_degree) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'desire_speed) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'desire_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'desire_pos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'desire_pos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'desire_servo_state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'desire_stepper) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'desire_hand) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'is_wait) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mission_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mission_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<from_goap>)))
  "Returns string type for a message object of type '<from_goap>"
  "main_loop/from_goap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'from_goap)))
  "Returns string type for a message object of type 'from_goap"
  "main_loop/from_goap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<from_goap>)))
  "Returns md5sum for a message object of type '<from_goap>"
  "064f4f70eb75843b4e3f71d5f45d392e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'from_goap)))
  "Returns md5sum for a message object of type 'from_goap"
  "064f4f70eb75843b4e3f71d5f45d392e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<from_goap>)))
  "Returns full string definition for message of type '<from_goap>"
  (cl:format cl:nil "int32 desire_degree~%int32 desire_speed~%int32 desire_mode~%int32[] desire_pos~%int32 desire_servo_state~%int32 desire_stepper~%int32 desire_hand~%int32 is_wait~%string mission_name ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'from_goap)))
  "Returns full string definition for message of type 'from_goap"
  (cl:format cl:nil "int32 desire_degree~%int32 desire_speed~%int32 desire_mode~%int32[] desire_pos~%int32 desire_servo_state~%int32 desire_stepper~%int32 desire_hand~%int32 is_wait~%string mission_name ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <from_goap>))
  (cl:+ 0
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'desire_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'mission_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <from_goap>))
  "Converts a ROS message object to a list"
  (cl:list 'from_goap
    (cl:cons ':desire_degree (desire_degree msg))
    (cl:cons ':desire_speed (desire_speed msg))
    (cl:cons ':desire_mode (desire_mode msg))
    (cl:cons ':desire_pos (desire_pos msg))
    (cl:cons ':desire_servo_state (desire_servo_state msg))
    (cl:cons ':desire_stepper (desire_stepper msg))
    (cl:cons ':desire_hand (desire_hand msg))
    (cl:cons ':is_wait (is_wait msg))
    (cl:cons ':mission_name (mission_name msg))
))
