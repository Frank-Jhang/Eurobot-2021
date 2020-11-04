; Auto-generated. Do not edit!


(cl:in-package main_loop-srv)


;//! \htmlinclude goap_-request.msg.html

(cl:defclass <goap_-request> (roslisp-msg-protocol:ros-message)
  ((action_done
    :reader action_done
    :initarg :action_done
    :type cl:boolean
    :initform cl:nil)
   (pos
    :reader pos
    :initarg :pos
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (north_or_south
    :reader north_or_south
    :initarg :north_or_south
    :type cl:integer
    :initform 0)
   (time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0)
   (mission_name
    :reader mission_name
    :initarg :mission_name
    :type cl:string
    :initform "")
   (mission_child_name
    :reader mission_child_name
    :initarg :mission_child_name
    :type cl:string
    :initform ""))
)

(cl:defclass goap_-request (<goap_-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <goap_-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'goap_-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name main_loop-srv:<goap_-request> is deprecated: use main_loop-srv:goap_-request instead.")))

(cl:ensure-generic-function 'action_done-val :lambda-list '(m))
(cl:defmethod action_done-val ((m <goap_-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:action_done-val is deprecated.  Use main_loop-srv:action_done instead.")
  (action_done m))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <goap_-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:pos-val is deprecated.  Use main_loop-srv:pos instead.")
  (pos m))

(cl:ensure-generic-function 'north_or_south-val :lambda-list '(m))
(cl:defmethod north_or_south-val ((m <goap_-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:north_or_south-val is deprecated.  Use main_loop-srv:north_or_south instead.")
  (north_or_south m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <goap_-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:time-val is deprecated.  Use main_loop-srv:time instead.")
  (time m))

(cl:ensure-generic-function 'mission_name-val :lambda-list '(m))
(cl:defmethod mission_name-val ((m <goap_-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:mission_name-val is deprecated.  Use main_loop-srv:mission_name instead.")
  (mission_name m))

(cl:ensure-generic-function 'mission_child_name-val :lambda-list '(m))
(cl:defmethod mission_child_name-val ((m <goap_-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:mission_child_name-val is deprecated.  Use main_loop-srv:mission_child_name instead.")
  (mission_child_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <goap_-request>) ostream)
  "Serializes a message object of type '<goap_-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'action_done) 1 0)) ostream)
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
  (cl:let* ((signed (cl:slot-value msg 'north_or_south)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mission_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mission_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mission_child_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mission_child_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <goap_-request>) istream)
  "Deserializes a message object of type '<goap_-request>"
    (cl:setf (cl:slot-value msg 'action_done) (cl:not (cl:zerop (cl:read-byte istream))))
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'north_or_south) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mission_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mission_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mission_child_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mission_child_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<goap_-request>)))
  "Returns string type for a service object of type '<goap_-request>"
  "main_loop/goap_Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'goap_-request)))
  "Returns string type for a service object of type 'goap_-request"
  "main_loop/goap_Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<goap_-request>)))
  "Returns md5sum for a message object of type '<goap_-request>"
  "bea0114d84bf82ce48ef39139983607f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'goap_-request)))
  "Returns md5sum for a message object of type 'goap_-request"
  "bea0114d84bf82ce48ef39139983607f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<goap_-request>)))
  "Returns full string definition for message of type '<goap_-request>"
  (cl:format cl:nil "bool action_done~%int32[] pos~%~%int32 north_or_south~%~%float32 time~%string mission_name~%string mission_child_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'goap_-request)))
  "Returns full string definition for message of type 'goap_-request"
  (cl:format cl:nil "bool action_done~%int32[] pos~%~%int32 north_or_south~%~%float32 time~%string mission_name~%string mission_child_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <goap_-request>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4 (cl:length (cl:slot-value msg 'mission_name))
     4 (cl:length (cl:slot-value msg 'mission_child_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <goap_-request>))
  "Converts a ROS message object to a list"
  (cl:list 'goap_-request
    (cl:cons ':action_done (action_done msg))
    (cl:cons ':pos (pos msg))
    (cl:cons ':north_or_south (north_or_south msg))
    (cl:cons ':time (time msg))
    (cl:cons ':mission_name (mission_name msg))
    (cl:cons ':mission_child_name (mission_child_name msg))
))
;//! \htmlinclude goap_-response.msg.html

(cl:defclass <goap_-response> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:integer
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0)
   (degree
    :reader degree
    :initarg :degree
    :type cl:integer
    :initform 0)
   (pos
    :reader pos
    :initarg :pos
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (ST2
    :reader ST2
    :initarg :ST2
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (is_wait
    :reader is_wait
    :initarg :is_wait
    :type cl:integer
    :initform 0)
   (mission_name
    :reader mission_name
    :initarg :mission_name
    :type cl:string
    :initform "")
   (mission_child_name
    :reader mission_child_name
    :initarg :mission_child_name
    :type cl:string
    :initform ""))
)

(cl:defclass goap_-response (<goap_-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <goap_-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'goap_-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name main_loop-srv:<goap_-response> is deprecated: use main_loop-srv:goap_-response instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <goap_-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:speed-val is deprecated.  Use main_loop-srv:speed instead.")
  (speed m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <goap_-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:mode-val is deprecated.  Use main_loop-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'degree-val :lambda-list '(m))
(cl:defmethod degree-val ((m <goap_-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:degree-val is deprecated.  Use main_loop-srv:degree instead.")
  (degree m))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <goap_-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:pos-val is deprecated.  Use main_loop-srv:pos instead.")
  (pos m))

(cl:ensure-generic-function 'ST2-val :lambda-list '(m))
(cl:defmethod ST2-val ((m <goap_-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:ST2-val is deprecated.  Use main_loop-srv:ST2 instead.")
  (ST2 m))

(cl:ensure-generic-function 'is_wait-val :lambda-list '(m))
(cl:defmethod is_wait-val ((m <goap_-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:is_wait-val is deprecated.  Use main_loop-srv:is_wait instead.")
  (is_wait m))

(cl:ensure-generic-function 'mission_name-val :lambda-list '(m))
(cl:defmethod mission_name-val ((m <goap_-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:mission_name-val is deprecated.  Use main_loop-srv:mission_name instead.")
  (mission_name m))

(cl:ensure-generic-function 'mission_child_name-val :lambda-list '(m))
(cl:defmethod mission_child_name-val ((m <goap_-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader main_loop-srv:mission_child_name-val is deprecated.  Use main_loop-srv:mission_child_name instead.")
  (mission_child_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <goap_-response>) ostream)
  "Serializes a message object of type '<goap_-response>"
  (cl:let* ((signed (cl:slot-value msg 'speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'degree)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ST2))))
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
   (cl:slot-value msg 'ST2))
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mission_child_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mission_child_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <goap_-response>) istream)
  "Deserializes a message object of type '<goap_-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'degree) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ST2) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ST2)))
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
      (cl:setf (cl:slot-value msg 'is_wait) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mission_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mission_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mission_child_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mission_child_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<goap_-response>)))
  "Returns string type for a service object of type '<goap_-response>"
  "main_loop/goap_Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'goap_-response)))
  "Returns string type for a service object of type 'goap_-response"
  "main_loop/goap_Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<goap_-response>)))
  "Returns md5sum for a message object of type '<goap_-response>"
  "bea0114d84bf82ce48ef39139983607f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'goap_-response)))
  "Returns md5sum for a message object of type 'goap_-response"
  "bea0114d84bf82ce48ef39139983607f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<goap_-response>)))
  "Returns full string definition for message of type '<goap_-response>"
  (cl:format cl:nil "int32 speed~%int32 mode~%int32 degree~%int32[] pos~%int32[] ST2~%int32 is_wait~%string mission_name~%string mission_child_name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'goap_-response)))
  "Returns full string definition for message of type 'goap_-response"
  (cl:format cl:nil "int32 speed~%int32 mode~%int32 degree~%int32[] pos~%int32[] ST2~%int32 is_wait~%string mission_name~%string mission_child_name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <goap_-response>))
  (cl:+ 0
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ST2) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4 (cl:length (cl:slot-value msg 'mission_name))
     4 (cl:length (cl:slot-value msg 'mission_child_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <goap_-response>))
  "Converts a ROS message object to a list"
  (cl:list 'goap_-response
    (cl:cons ':speed (speed msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':degree (degree msg))
    (cl:cons ':pos (pos msg))
    (cl:cons ':ST2 (ST2 msg))
    (cl:cons ':is_wait (is_wait msg))
    (cl:cons ':mission_name (mission_name msg))
    (cl:cons ':mission_child_name (mission_child_name msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'goap_)))
  'goap_-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'goap_)))
  'goap_-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'goap_)))
  "Returns string type for a service object of type '<goap_>"
  "main_loop/goap_")