; Auto-generated. Do not edit!


(cl:in-package main_loop-srv)


;//! \htmlinclude path-request.msg.html

(cl:defclass <path-request> (roslisp-msg-protocol:ros-message)
  ((my_pos_x
    :reader my_pos_x
    :initarg :my_pos_x
    :type cl:integer
    :initform 0)
   (my_pos_y
    :reader my_pos_y
    :initarg :my_pos_y
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
   (goal_pos_x
    :reader goal_pos_x
    :initarg :goal_pos_x
    :type cl:integer
    :initform 0)
   (goal_pos_y
    :reader goal_pos_y
    :initarg :goal_pos_y
    :type cl:integer
    :initform 0))
)

(cl:defclass path-request (<path-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <path-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'path-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name main_loop-srv:<path-request> is deprecated: use main_loop-srv:path-request instead.")))

(cl:ensure-generic-function 'my_pos_x-val :lambda-list '(m))
(cl:defmethod my_pos_x-val ((m <path-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:my_pos_x-val is deprecated.  Use main_loop-srv:my_pos_x instead.")
  (my_pos_x m))

(cl:ensure-generic-function 'my_pos_y-val :lambda-list '(m))
(cl:defmethod my_pos_y-val ((m <path-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:my_pos_y-val is deprecated.  Use main_loop-srv:my_pos_y instead.")
  (my_pos_y m))

(cl:ensure-generic-function 'enemy1_x-val :lambda-list '(m))
(cl:defmethod enemy1_x-val ((m <path-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:enemy1_x-val is deprecated.  Use main_loop-srv:enemy1_x instead.")
  (enemy1_x m))

(cl:ensure-generic-function 'enemy1_y-val :lambda-list '(m))
(cl:defmethod enemy1_y-val ((m <path-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:enemy1_y-val is deprecated.  Use main_loop-srv:enemy1_y instead.")
  (enemy1_y m))

(cl:ensure-generic-function 'enemy2_x-val :lambda-list '(m))
(cl:defmethod enemy2_x-val ((m <path-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:enemy2_x-val is deprecated.  Use main_loop-srv:enemy2_x instead.")
  (enemy2_x m))

(cl:ensure-generic-function 'enemy2_y-val :lambda-list '(m))
(cl:defmethod enemy2_y-val ((m <path-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:enemy2_y-val is deprecated.  Use main_loop-srv:enemy2_y instead.")
  (enemy2_y m))

(cl:ensure-generic-function 'ally_x-val :lambda-list '(m))
(cl:defmethod ally_x-val ((m <path-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:ally_x-val is deprecated.  Use main_loop-srv:ally_x instead.")
  (ally_x m))

(cl:ensure-generic-function 'ally_y-val :lambda-list '(m))
(cl:defmethod ally_y-val ((m <path-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:ally_y-val is deprecated.  Use main_loop-srv:ally_y instead.")
  (ally_y m))

(cl:ensure-generic-function 'goal_pos_x-val :lambda-list '(m))
(cl:defmethod goal_pos_x-val ((m <path-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:goal_pos_x-val is deprecated.  Use main_loop-srv:goal_pos_x instead.")
  (goal_pos_x m))

(cl:ensure-generic-function 'goal_pos_y-val :lambda-list '(m))
(cl:defmethod goal_pos_y-val ((m <path-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:goal_pos_y-val is deprecated.  Use main_loop-srv:goal_pos_y instead.")
  (goal_pos_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <path-request>) ostream)
  "Serializes a message object of type '<path-request>"
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
  (cl:let* ((signed (cl:slot-value msg 'goal_pos_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'goal_pos_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <path-request>) istream)
  "Deserializes a message object of type '<path-request>"
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
      (cl:setf (cl:slot-value msg 'goal_pos_x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_pos_y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<path-request>)))
  "Returns string type for a service object of type '<path-request>"
  "main_loop/pathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'path-request)))
  "Returns string type for a service object of type 'path-request"
  "main_loop/pathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<path-request>)))
  "Returns md5sum for a message object of type '<path-request>"
  "aa24ea267d1480041af4f206230a297f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'path-request)))
  "Returns md5sum for a message object of type 'path-request"
  "aa24ea267d1480041af4f206230a297f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<path-request>)))
  "Returns full string definition for message of type '<path-request>"
  (cl:format cl:nil "int32 my_pos_x~%int32 my_pos_y~%int32 enemy1_x~%int32 enemy1_y~%int32 enemy2_x~%int32 enemy2_y~%int32 ally_x~%int32 ally_y~%int32 goal_pos_x~%int32 goal_pos_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'path-request)))
  "Returns full string definition for message of type 'path-request"
  (cl:format cl:nil "int32 my_pos_x~%int32 my_pos_y~%int32 enemy1_x~%int32 enemy1_y~%int32 enemy2_x~%int32 enemy2_y~%int32 ally_x~%int32 ally_y~%int32 goal_pos_x~%int32 goal_pos_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <path-request>))
  (cl:+ 0
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
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <path-request>))
  "Converts a ROS message object to a list"
  (cl:list 'path-request
    (cl:cons ':my_pos_x (my_pos_x msg))
    (cl:cons ':my_pos_y (my_pos_y msg))
    (cl:cons ':enemy1_x (enemy1_x msg))
    (cl:cons ':enemy1_y (enemy1_y msg))
    (cl:cons ':enemy2_x (enemy2_x msg))
    (cl:cons ':enemy2_y (enemy2_y msg))
    (cl:cons ':ally_x (ally_x msg))
    (cl:cons ':ally_y (ally_y msg))
    (cl:cons ':goal_pos_x (goal_pos_x msg))
    (cl:cons ':goal_pos_y (goal_pos_y msg))
))
;//! \htmlinclude path-response.msg.html

(cl:defclass <path-response> (roslisp-msg-protocol:ros-message)
  ((next_pos_x
    :reader next_pos_x
    :initarg :next_pos_x
    :type cl:integer
    :initform 0)
   (next_pos_y
    :reader next_pos_y
    :initarg :next_pos_y
    :type cl:integer
    :initform 0)
   (degree
    :reader degree
    :initarg :degree
    :type cl:float
    :initform 0.0)
   (blocked
    :reader blocked
    :initarg :blocked
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass path-response (<path-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <path-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'path-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name main_loop-srv:<path-response> is deprecated: use main_loop-srv:path-response instead.")))

(cl:ensure-generic-function 'next_pos_x-val :lambda-list '(m))
(cl:defmethod next_pos_x-val ((m <path-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:next_pos_x-val is deprecated.  Use main_loop-srv:next_pos_x instead.")
  (next_pos_x m))

(cl:ensure-generic-function 'next_pos_y-val :lambda-list '(m))
(cl:defmethod next_pos_y-val ((m <path-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:next_pos_y-val is deprecated.  Use main_loop-srv:next_pos_y instead.")
  (next_pos_y m))

(cl:ensure-generic-function 'degree-val :lambda-list '(m))
(cl:defmethod degree-val ((m <path-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:degree-val is deprecated.  Use main_loop-srv:degree instead.")
  (degree m))

(cl:ensure-generic-function 'blocked-val :lambda-list '(m))
(cl:defmethod blocked-val ((m <path-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:blocked-val is deprecated.  Use main_loop-srv:blocked instead.")
  (blocked m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <path-response>) ostream)
  "Serializes a message object of type '<path-response>"
  (cl:let* ((signed (cl:slot-value msg 'next_pos_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'next_pos_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'degree))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'blocked) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <path-response>) istream)
  "Deserializes a message object of type '<path-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'next_pos_x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'next_pos_y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'degree) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'blocked) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<path-response>)))
  "Returns string type for a service object of type '<path-response>"
  "main_loop/pathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'path-response)))
  "Returns string type for a service object of type 'path-response"
  "main_loop/pathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<path-response>)))
  "Returns md5sum for a message object of type '<path-response>"
  "aa24ea267d1480041af4f206230a297f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'path-response)))
  "Returns md5sum for a message object of type 'path-response"
  "aa24ea267d1480041af4f206230a297f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<path-response>)))
  "Returns full string definition for message of type '<path-response>"
  (cl:format cl:nil "int32 next_pos_x~%int32 next_pos_y~%float32 degree~%bool blocked~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'path-response)))
  "Returns full string definition for message of type 'path-response"
  (cl:format cl:nil "int32 next_pos_x~%int32 next_pos_y~%float32 degree~%bool blocked~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <path-response>))
  (cl:+ 0
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <path-response>))
  "Converts a ROS message object to a list"
  (cl:list 'path-response
    (cl:cons ':next_pos_x (next_pos_x msg))
    (cl:cons ':next_pos_y (next_pos_y msg))
    (cl:cons ':degree (degree msg))
    (cl:cons ':blocked (blocked msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'path)))
  'path-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'path)))
  'path-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'path)))
  "Returns string type for a service object of type '<path>"
  "main_loop/path")