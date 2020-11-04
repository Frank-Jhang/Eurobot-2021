; Auto-generated. Do not edit!


(cl:in-package main_loop-msg)


;//! \htmlinclude agent.msg.html

(cl:defclass <agent> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (emergency
    :reader emergency
    :initarg :emergency
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (my_pos_x
    :reader my_pos_x
    :initarg :my_pos_x
    :type cl:integer
    :initform 0)
   (my_pos_y
    :reader my_pos_y
    :initarg :my_pos_y
    :type cl:integer
    :initform 0)
   (my_degree
    :reader my_degree
    :initarg :my_degree
    :type cl:integer
    :initform 0)
   (enemy1_x
    :reader enemy1_x
    :initarg :enemy1_x
    :type cl:integer
    :initform 0)
   (enemy1_y
    :reader enemy1_y
    :initarg :enemy1_y
    :type cl:integer
    :initform 0)
   (enemy2_x
    :reader enemy2_x
    :initarg :enemy2_x
    :type cl:integer
    :initform 0)
   (enemy2_y
    :reader enemy2_y
    :initarg :enemy2_y
    :type cl:integer
    :initform 0)
   (ally_x
    :reader ally_x
    :initarg :ally_x
    :type cl:integer
    :initform 0)
   (ally_y
    :reader ally_y
    :initarg :ally_y
    :type cl:integer
    :initform 0)
   (servo_state
    :reader servo_state
    :initarg :servo_state
    :type cl:integer
    :initform 0)
   (stepper
    :reader stepper
    :initarg :stepper
    :type cl:integer
    :initform 0)
   (hand
    :reader hand
    :initarg :hand
    :type cl:integer
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0))
)

(cl:defclass agent (<agent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <agent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'agent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name main_loop-msg:<agent> is deprecated: use main_loop-msg:agent instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <agent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:header-val is deprecated.  Use main_loop-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'emergency-val :lambda-list '(m))
(cl:defmethod emergency-val ((m <agent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:emergency-val is deprecated.  Use main_loop-msg:emergency instead.")
  (emergency m))

(cl:ensure-generic-function 'my_pos_x-val :lambda-list '(m))
(cl:defmethod my_pos_x-val ((m <agent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:my_pos_x-val is deprecated.  Use main_loop-msg:my_pos_x instead.")
  (my_pos_x m))

(cl:ensure-generic-function 'my_pos_y-val :lambda-list '(m))
(cl:defmethod my_pos_y-val ((m <agent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:my_pos_y-val is deprecated.  Use main_loop-msg:my_pos_y instead.")
  (my_pos_y m))

(cl:ensure-generic-function 'my_degree-val :lambda-list '(m))
(cl:defmethod my_degree-val ((m <agent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:my_degree-val is deprecated.  Use main_loop-msg:my_degree instead.")
  (my_degree m))

(cl:ensure-generic-function 'enemy1_x-val :lambda-list '(m))
(cl:defmethod enemy1_x-val ((m <agent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:enemy1_x-val is deprecated.  Use main_loop-msg:enemy1_x instead.")
  (enemy1_x m))

(cl:ensure-generic-function 'enemy1_y-val :lambda-list '(m))
(cl:defmethod enemy1_y-val ((m <agent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:enemy1_y-val is deprecated.  Use main_loop-msg:enemy1_y instead.")
  (enemy1_y m))

(cl:ensure-generic-function 'enemy2_x-val :lambda-list '(m))
(cl:defmethod enemy2_x-val ((m <agent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:enemy2_x-val is deprecated.  Use main_loop-msg:enemy2_x instead.")
  (enemy2_x m))

(cl:ensure-generic-function 'enemy2_y-val :lambda-list '(m))
(cl:defmethod enemy2_y-val ((m <agent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:enemy2_y-val is deprecated.  Use main_loop-msg:enemy2_y instead.")
  (enemy2_y m))

(cl:ensure-generic-function 'ally_x-val :lambda-list '(m))
(cl:defmethod ally_x-val ((m <agent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:ally_x-val is deprecated.  Use main_loop-msg:ally_x instead.")
  (ally_x m))

(cl:ensure-generic-function 'ally_y-val :lambda-list '(m))
(cl:defmethod ally_y-val ((m <agent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:ally_y-val is deprecated.  Use main_loop-msg:ally_y instead.")
  (ally_y m))

(cl:ensure-generic-function 'servo_state-val :lambda-list '(m))
(cl:defmethod servo_state-val ((m <agent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:servo_state-val is deprecated.  Use main_loop-msg:servo_state instead.")
  (servo_state m))

(cl:ensure-generic-function 'stepper-val :lambda-list '(m))
(cl:defmethod stepper-val ((m <agent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:stepper-val is deprecated.  Use main_loop-msg:stepper instead.")
  (stepper m))

(cl:ensure-generic-function 'hand-val :lambda-list '(m))
(cl:defmethod hand-val ((m <agent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:hand-val is deprecated.  Use main_loop-msg:hand instead.")
  (hand m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <agent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:status-val is deprecated.  Use main_loop-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <agent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:time-val is deprecated.  Use main_loop-msg:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <agent>) ostream)
  "Serializes a message object of type '<agent>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'emergency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'emergency))
  (cl:let* ((signed (cl:slot-value msg 'my_pos_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'my_pos_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'my_degree)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'enemy1_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'enemy1_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'enemy2_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'enemy2_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ally_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ally_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'servo_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'stepper)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'hand)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <agent>) istream)
  "Deserializes a message object of type '<agent>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'emergency) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'emergency)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'my_pos_x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'my_pos_y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'my_degree) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'enemy1_x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'enemy1_y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'enemy2_x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'enemy2_y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ally_x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ally_y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'servo_state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stepper) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hand) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<agent>)))
  "Returns string type for a message object of type '<agent>"
  "main_loop/agent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'agent)))
  "Returns string type for a message object of type 'agent"
  "main_loop/agent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<agent>)))
  "Returns md5sum for a message object of type '<agent>"
  "92681a13a8cbeccba49e2d6d6d4c723f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'agent)))
  "Returns md5sum for a message object of type 'agent"
  "92681a13a8cbeccba49e2d6d6d4c723f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<agent>)))
  "Returns full string definition for message of type '<agent>"
  (cl:format cl:nil "std_msgs/Header header~%bool[] emergency~%int32 my_pos_x~%int32 my_pos_y~%int32 my_degree~%int32 enemy1_x~%int32 enemy1_y ~%int32 enemy2_x~%int32 enemy2_y~%int32 ally_x~%int32 ally_y~%int32 servo_state~%int32 stepper~%int32 hand~%int32 status~%float32 time ~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'agent)))
  "Returns full string definition for message of type 'agent"
  (cl:format cl:nil "std_msgs/Header header~%bool[] emergency~%int32 my_pos_x~%int32 my_pos_y~%int32 my_degree~%int32 enemy1_x~%int32 enemy1_y ~%int32 enemy2_x~%int32 enemy2_y~%int32 ally_x~%int32 ally_y~%int32 servo_state~%int32 stepper~%int32 hand~%int32 status~%float32 time ~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <agent>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'emergency) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <agent>))
  "Converts a ROS message object to a list"
  (cl:list 'agent
    (cl:cons ':header (header msg))
    (cl:cons ':emergency (emergency msg))
    (cl:cons ':my_pos_x (my_pos_x msg))
    (cl:cons ':my_pos_y (my_pos_y msg))
    (cl:cons ':my_degree (my_degree msg))
    (cl:cons ':enemy1_x (enemy1_x msg))
    (cl:cons ':enemy1_y (enemy1_y msg))
    (cl:cons ':enemy2_x (enemy2_x msg))
    (cl:cons ':enemy2_y (enemy2_y msg))
    (cl:cons ':ally_x (ally_x msg))
    (cl:cons ':ally_y (ally_y msg))
    (cl:cons ':servo_state (servo_state msg))
    (cl:cons ':stepper (stepper msg))
    (cl:cons ':hand (hand msg))
    (cl:cons ':status (status msg))
    (cl:cons ':time (time msg))
))
