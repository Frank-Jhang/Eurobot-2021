; Auto-generated. Do not edit!


(cl:in-package main_loop-msg)


;//! \htmlinclude main_state.msg.html

(cl:defclass <main_state> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (robot_state
    :reader robot_state
    :initarg :robot_state
    :type cl:string
    :initform "")
   (robot_case
    :reader robot_case
    :initarg :robot_case
    :type cl:string
    :initform "")
   (pos
    :reader pos
    :initarg :pos
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (is_blocked
    :reader is_blocked
    :initarg :is_blocked
    :type cl:boolean
    :initform cl:nil)
   (servo_state
    :reader servo_state
    :initarg :servo_state
    :type cl:integer
    :initform 0)
   (stepper_state
    :reader stepper_state
    :initarg :stepper_state
    :type cl:integer
    :initform 0)
   (hand_state
    :reader hand_state
    :initarg :hand_state
    :type cl:integer
    :initform 0)
   (action_done
    :reader action_done
    :initarg :action_done
    :type cl:integer
    :initform 0)
   (kill_mission
    :reader kill_mission
    :initarg :kill_mission
    :type cl:integer
    :initform 0)
   (goal_covered_counter
    :reader goal_covered_counter
    :initarg :goal_covered_counter
    :type cl:integer
    :initform 0))
)

(cl:defclass main_state (<main_state>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <main_state>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'main_state)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name main_loop-msg:<main_state> is deprecated: use main_loop-msg:main_state instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <main_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:status-val is deprecated.  Use main_loop-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'robot_state-val :lambda-list '(m))
(cl:defmethod robot_state-val ((m <main_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:robot_state-val is deprecated.  Use main_loop-msg:robot_state instead.")
  (robot_state m))

(cl:ensure-generic-function 'robot_case-val :lambda-list '(m))
(cl:defmethod robot_case-val ((m <main_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:robot_case-val is deprecated.  Use main_loop-msg:robot_case instead.")
  (robot_case m))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <main_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:pos-val is deprecated.  Use main_loop-msg:pos instead.")
  (pos m))

(cl:ensure-generic-function 'is_blocked-val :lambda-list '(m))
(cl:defmethod is_blocked-val ((m <main_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:is_blocked-val is deprecated.  Use main_loop-msg:is_blocked instead.")
  (is_blocked m))

(cl:ensure-generic-function 'servo_state-val :lambda-list '(m))
(cl:defmethod servo_state-val ((m <main_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:servo_state-val is deprecated.  Use main_loop-msg:servo_state instead.")
  (servo_state m))

(cl:ensure-generic-function 'stepper_state-val :lambda-list '(m))
(cl:defmethod stepper_state-val ((m <main_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:stepper_state-val is deprecated.  Use main_loop-msg:stepper_state instead.")
  (stepper_state m))

(cl:ensure-generic-function 'hand_state-val :lambda-list '(m))
(cl:defmethod hand_state-val ((m <main_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:hand_state-val is deprecated.  Use main_loop-msg:hand_state instead.")
  (hand_state m))

(cl:ensure-generic-function 'action_done-val :lambda-list '(m))
(cl:defmethod action_done-val ((m <main_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:action_done-val is deprecated.  Use main_loop-msg:action_done instead.")
  (action_done m))

(cl:ensure-generic-function 'kill_mission-val :lambda-list '(m))
(cl:defmethod kill_mission-val ((m <main_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:kill_mission-val is deprecated.  Use main_loop-msg:kill_mission instead.")
  (kill_mission m))

(cl:ensure-generic-function 'goal_covered_counter-val :lambda-list '(m))
(cl:defmethod goal_covered_counter-val ((m <main_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-msg:goal_covered_counter-val is deprecated.  Use main_loop-msg:goal_covered_counter instead.")
  (goal_covered_counter m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <main_state>) ostream)
  "Serializes a message object of type '<main_state>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_case))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_case))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pos))))
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
   (cl:slot-value msg 'pos))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_blocked) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'servo_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'stepper_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'hand_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'action_done)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'kill_mission)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'goal_covered_counter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <main_state>) istream)
  "Deserializes a message object of type '<main_state>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_case) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_case) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:setf (cl:slot-value msg 'is_blocked) (cl:not (cl:zerop (cl:read-byte istream))))
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
      (cl:setf (cl:slot-value msg 'stepper_state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hand_state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action_done) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kill_mission) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_covered_counter) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<main_state>)))
  "Returns string type for a message object of type '<main_state>"
  "main_loop/main_state")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'main_state)))
  "Returns string type for a message object of type 'main_state"
  "main_loop/main_state")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<main_state>)))
  "Returns md5sum for a message object of type '<main_state>"
  "71019ac3a3fa7fa9229e3eb63069ffbc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'main_state)))
  "Returns md5sum for a message object of type 'main_state"
  "71019ac3a3fa7fa9229e3eb63069ffbc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<main_state>)))
  "Returns full string definition for message of type '<main_state>"
  (cl:format cl:nil "int32 status~%string robot_state~%string robot_case~%int32[] pos~%bool is_blocked~%int32 servo_state~%int32 stepper_state~%int32 hand_state~%int32 action_done~%int32 kill_mission~%int32 goal_covered_counter~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'main_state)))
  "Returns full string definition for message of type 'main_state"
  (cl:format cl:nil "int32 status~%string robot_state~%string robot_case~%int32[] pos~%bool is_blocked~%int32 servo_state~%int32 stepper_state~%int32 hand_state~%int32 action_done~%int32 kill_mission~%int32 goal_covered_counter~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <main_state>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'robot_state))
     4 (cl:length (cl:slot-value msg 'robot_case))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <main_state>))
  "Converts a ROS message object to a list"
  (cl:list 'main_state
    (cl:cons ':status (status msg))
    (cl:cons ':robot_state (robot_state msg))
    (cl:cons ':robot_case (robot_case msg))
    (cl:cons ':pos (pos msg))
    (cl:cons ':is_blocked (is_blocked msg))
    (cl:cons ':servo_state (servo_state msg))
    (cl:cons ':stepper_state (stepper_state msg))
    (cl:cons ':hand_state (hand_state msg))
    (cl:cons ':action_done (action_done msg))
    (cl:cons ':kill_mission (kill_mission msg))
    (cl:cons ':goal_covered_counter (goal_covered_counter msg))
))
