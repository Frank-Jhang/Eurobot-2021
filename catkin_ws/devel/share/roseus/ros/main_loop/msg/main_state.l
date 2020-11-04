;; Auto-generated. Do not edit!


(when (boundp 'main_loop::main_state)
  (if (not (find-package "MAIN_LOOP"))
    (make-package "MAIN_LOOP"))
  (shadow 'main_state (find-package "MAIN_LOOP")))
(unless (find-package "MAIN_LOOP::MAIN_STATE")
  (make-package "MAIN_LOOP::MAIN_STATE"))

(in-package "ROS")
;;//! \htmlinclude main_state.msg.html


(defclass main_loop::main_state
  :super ros::object
  :slots (_status _robot_state _robot_case _pos _is_blocked _servo_state _stepper_state _hand_state _action_done _kill_mission _goal_covered_counter ))

(defmethod main_loop::main_state
  (:init
   (&key
    ((:status __status) 0)
    ((:robot_state __robot_state) "")
    ((:robot_case __robot_case) "")
    ((:pos __pos) (make-array 0 :initial-element 0 :element-type :integer))
    ((:is_blocked __is_blocked) nil)
    ((:servo_state __servo_state) 0)
    ((:stepper_state __stepper_state) 0)
    ((:hand_state __hand_state) 0)
    ((:action_done __action_done) 0)
    ((:kill_mission __kill_mission) 0)
    ((:goal_covered_counter __goal_covered_counter) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _robot_state (string __robot_state))
   (setq _robot_case (string __robot_case))
   (setq _pos __pos)
   (setq _is_blocked __is_blocked)
   (setq _servo_state (round __servo_state))
   (setq _stepper_state (round __stepper_state))
   (setq _hand_state (round __hand_state))
   (setq _action_done (round __action_done))
   (setq _kill_mission (round __kill_mission))
   (setq _goal_covered_counter (round __goal_covered_counter))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:robot_state
   (&optional __robot_state)
   (if __robot_state (setq _robot_state __robot_state)) _robot_state)
  (:robot_case
   (&optional __robot_case)
   (if __robot_case (setq _robot_case __robot_case)) _robot_case)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:is_blocked
   (&optional __is_blocked)
   (if __is_blocked (setq _is_blocked __is_blocked)) _is_blocked)
  (:servo_state
   (&optional __servo_state)
   (if __servo_state (setq _servo_state __servo_state)) _servo_state)
  (:stepper_state
   (&optional __stepper_state)
   (if __stepper_state (setq _stepper_state __stepper_state)) _stepper_state)
  (:hand_state
   (&optional __hand_state)
   (if __hand_state (setq _hand_state __hand_state)) _hand_state)
  (:action_done
   (&optional __action_done)
   (if __action_done (setq _action_done __action_done)) _action_done)
  (:kill_mission
   (&optional __kill_mission)
   (if __kill_mission (setq _kill_mission __kill_mission)) _kill_mission)
  (:goal_covered_counter
   (&optional __goal_covered_counter)
   (if __goal_covered_counter (setq _goal_covered_counter __goal_covered_counter)) _goal_covered_counter)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _robot_state
    4 (length _robot_state)
    ;; string _robot_case
    4 (length _robot_case)
    ;; int32[] _pos
    (* 4    (length _pos)) 4
    ;; bool _is_blocked
    1
    ;; int32 _servo_state
    4
    ;; int32 _stepper_state
    4
    ;; int32 _hand_state
    4
    ;; int32 _action_done
    4
    ;; int32 _kill_mission
    4
    ;; int32 _goal_covered_counter
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _robot_state
       (write-long (length _robot_state) s) (princ _robot_state s)
     ;; string _robot_case
       (write-long (length _robot_case) s) (princ _robot_case s)
     ;; int32[] _pos
     (write-long (length _pos) s)
     (dotimes (i (length _pos))
       (write-long (elt _pos i) s)
       )
     ;; bool _is_blocked
       (if _is_blocked (write-byte -1 s) (write-byte 0 s))
     ;; int32 _servo_state
       (write-long _servo_state s)
     ;; int32 _stepper_state
       (write-long _stepper_state s)
     ;; int32 _hand_state
       (write-long _hand_state s)
     ;; int32 _action_done
       (write-long _action_done s)
     ;; int32 _kill_mission
       (write-long _kill_mission s)
     ;; int32 _goal_covered_counter
       (write-long _goal_covered_counter s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _robot_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _robot_case
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_case (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32[] _pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pos (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pos i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; bool _is_blocked
     (setq _is_blocked (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _servo_state
     (setq _servo_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _stepper_state
     (setq _stepper_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _hand_state
     (setq _hand_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _action_done
     (setq _action_done (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _kill_mission
     (setq _kill_mission (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _goal_covered_counter
     (setq _goal_covered_counter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get main_loop::main_state :md5sum-) "71019ac3a3fa7fa9229e3eb63069ffbc")
(setf (get main_loop::main_state :datatype-) "main_loop/main_state")
(setf (get main_loop::main_state :definition-)
      "int32 status
string robot_state
string robot_case
int32[] pos
bool is_blocked
int32 servo_state
int32 stepper_state
int32 hand_state
int32 action_done
int32 kill_mission
int32 goal_covered_counter



")



(provide :main_loop/main_state "71019ac3a3fa7fa9229e3eb63069ffbc")


