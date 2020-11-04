;; Auto-generated. Do not edit!


(when (boundp 'main_loop::agent)
  (if (not (find-package "MAIN_LOOP"))
    (make-package "MAIN_LOOP"))
  (shadow 'agent (find-package "MAIN_LOOP")))
(unless (find-package "MAIN_LOOP::AGENT")
  (make-package "MAIN_LOOP::AGENT"))

(in-package "ROS")
;;//! \htmlinclude agent.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass main_loop::agent
  :super ros::object
  :slots (_header _emergency _my_pos_x _my_pos_y _my_degree _enemy1_x _enemy1_y _enemy2_x _enemy2_y _ally_x _ally_y _servo_state _stepper _hand _status _time ))

(defmethod main_loop::agent
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:emergency __emergency) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:my_pos_x __my_pos_x) 0)
    ((:my_pos_y __my_pos_y) 0)
    ((:my_degree __my_degree) 0)
    ((:enemy1_x __enemy1_x) 0)
    ((:enemy1_y __enemy1_y) 0)
    ((:enemy2_x __enemy2_x) 0)
    ((:enemy2_y __enemy2_y) 0)
    ((:ally_x __ally_x) 0)
    ((:ally_y __ally_y) 0)
    ((:servo_state __servo_state) 0)
    ((:stepper __stepper) 0)
    ((:hand __hand) 0)
    ((:status __status) 0)
    ((:time __time) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _emergency __emergency)
   (setq _my_pos_x (round __my_pos_x))
   (setq _my_pos_y (round __my_pos_y))
   (setq _my_degree (round __my_degree))
   (setq _enemy1_x (round __enemy1_x))
   (setq _enemy1_y (round __enemy1_y))
   (setq _enemy2_x (round __enemy2_x))
   (setq _enemy2_y (round __enemy2_y))
   (setq _ally_x (round __ally_x))
   (setq _ally_y (round __ally_y))
   (setq _servo_state (round __servo_state))
   (setq _stepper (round __stepper))
   (setq _hand (round __hand))
   (setq _status (round __status))
   (setq _time (float __time))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:emergency
   (&optional __emergency)
   (if __emergency (setq _emergency __emergency)) _emergency)
  (:my_pos_x
   (&optional __my_pos_x)
   (if __my_pos_x (setq _my_pos_x __my_pos_x)) _my_pos_x)
  (:my_pos_y
   (&optional __my_pos_y)
   (if __my_pos_y (setq _my_pos_y __my_pos_y)) _my_pos_y)
  (:my_degree
   (&optional __my_degree)
   (if __my_degree (setq _my_degree __my_degree)) _my_degree)
  (:enemy1_x
   (&optional __enemy1_x)
   (if __enemy1_x (setq _enemy1_x __enemy1_x)) _enemy1_x)
  (:enemy1_y
   (&optional __enemy1_y)
   (if __enemy1_y (setq _enemy1_y __enemy1_y)) _enemy1_y)
  (:enemy2_x
   (&optional __enemy2_x)
   (if __enemy2_x (setq _enemy2_x __enemy2_x)) _enemy2_x)
  (:enemy2_y
   (&optional __enemy2_y)
   (if __enemy2_y (setq _enemy2_y __enemy2_y)) _enemy2_y)
  (:ally_x
   (&optional __ally_x)
   (if __ally_x (setq _ally_x __ally_x)) _ally_x)
  (:ally_y
   (&optional __ally_y)
   (if __ally_y (setq _ally_y __ally_y)) _ally_y)
  (:servo_state
   (&optional __servo_state)
   (if __servo_state (setq _servo_state __servo_state)) _servo_state)
  (:stepper
   (&optional __stepper)
   (if __stepper (setq _stepper __stepper)) _stepper)
  (:hand
   (&optional __hand)
   (if __hand (setq _hand __hand)) _hand)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool[] _emergency
    (* 1    (length _emergency)) 4
    ;; int32 _my_pos_x
    4
    ;; int32 _my_pos_y
    4
    ;; int32 _my_degree
    4
    ;; int32 _enemy1_x
    4
    ;; int32 _enemy1_y
    4
    ;; int32 _enemy2_x
    4
    ;; int32 _enemy2_y
    4
    ;; int32 _ally_x
    4
    ;; int32 _ally_y
    4
    ;; int32 _servo_state
    4
    ;; int32 _stepper
    4
    ;; int32 _hand
    4
    ;; int32 _status
    4
    ;; float32 _time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool[] _emergency
     (write-long (length _emergency) s)
     (dotimes (i (length _emergency))
       (if (elt _emergency i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; int32 _my_pos_x
       (write-long _my_pos_x s)
     ;; int32 _my_pos_y
       (write-long _my_pos_y s)
     ;; int32 _my_degree
       (write-long _my_degree s)
     ;; int32 _enemy1_x
       (write-long _enemy1_x s)
     ;; int32 _enemy1_y
       (write-long _enemy1_y s)
     ;; int32 _enemy2_x
       (write-long _enemy2_x s)
     ;; int32 _enemy2_y
       (write-long _enemy2_y s)
     ;; int32 _ally_x
       (write-long _ally_x s)
     ;; int32 _ally_y
       (write-long _ally_y s)
     ;; int32 _servo_state
       (write-long _servo_state s)
     ;; int32 _stepper
       (write-long _stepper s)
     ;; int32 _hand
       (write-long _hand s)
     ;; int32 _status
       (write-long _status s)
     ;; float32 _time
       (sys::poke _time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool[] _emergency
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _emergency (make-list n))
     (dotimes (i n)
     (setf (elt _emergency i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; int32 _my_pos_x
     (setq _my_pos_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _my_pos_y
     (setq _my_pos_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _my_degree
     (setq _my_degree (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _enemy1_x
     (setq _enemy1_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _enemy1_y
     (setq _enemy1_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _enemy2_x
     (setq _enemy2_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _enemy2_y
     (setq _enemy2_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ally_x
     (setq _ally_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ally_y
     (setq _ally_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _servo_state
     (setq _servo_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _stepper
     (setq _stepper (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _hand
     (setq _hand (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _time
     (setq _time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get main_loop::agent :md5sum-) "92681a13a8cbeccba49e2d6d6d4c723f")
(setf (get main_loop::agent :datatype-) "main_loop/agent")
(setf (get main_loop::agent :definition-)
      "std_msgs/Header header
bool[] emergency
int32 my_pos_x
int32 my_pos_y
int32 my_degree
int32 enemy1_x
int32 enemy1_y 
int32 enemy2_x
int32 enemy2_y
int32 ally_x
int32 ally_y
int32 servo_state
int32 stepper
int32 hand
int32 status
float32 time 


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
string frame_id

")



(provide :main_loop/agent "92681a13a8cbeccba49e2d6d6d4c723f")


