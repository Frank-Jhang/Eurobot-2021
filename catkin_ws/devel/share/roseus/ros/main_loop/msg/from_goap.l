;; Auto-generated. Do not edit!


(when (boundp 'main_loop::from_goap)
  (if (not (find-package "MAIN_LOOP"))
    (make-package "MAIN_LOOP"))
  (shadow 'from_goap (find-package "MAIN_LOOP")))
(unless (find-package "MAIN_LOOP::FROM_GOAP")
  (make-package "MAIN_LOOP::FROM_GOAP"))

(in-package "ROS")
;;//! \htmlinclude from_goap.msg.html


(defclass main_loop::from_goap
  :super ros::object
  :slots (_desire_degree _desire_speed _desire_mode _desire_pos _desire_servo_state _desire_stepper _desire_hand _is_wait _mission_name ))

(defmethod main_loop::from_goap
  (:init
   (&key
    ((:desire_degree __desire_degree) 0)
    ((:desire_speed __desire_speed) 0)
    ((:desire_mode __desire_mode) 0)
    ((:desire_pos __desire_pos) (make-array 0 :initial-element 0 :element-type :integer))
    ((:desire_servo_state __desire_servo_state) 0)
    ((:desire_stepper __desire_stepper) 0)
    ((:desire_hand __desire_hand) 0)
    ((:is_wait __is_wait) 0)
    ((:mission_name __mission_name) "")
    )
   (send-super :init)
   (setq _desire_degree (round __desire_degree))
   (setq _desire_speed (round __desire_speed))
   (setq _desire_mode (round __desire_mode))
   (setq _desire_pos __desire_pos)
   (setq _desire_servo_state (round __desire_servo_state))
   (setq _desire_stepper (round __desire_stepper))
   (setq _desire_hand (round __desire_hand))
   (setq _is_wait (round __is_wait))
   (setq _mission_name (string __mission_name))
   self)
  (:desire_degree
   (&optional __desire_degree)
   (if __desire_degree (setq _desire_degree __desire_degree)) _desire_degree)
  (:desire_speed
   (&optional __desire_speed)
   (if __desire_speed (setq _desire_speed __desire_speed)) _desire_speed)
  (:desire_mode
   (&optional __desire_mode)
   (if __desire_mode (setq _desire_mode __desire_mode)) _desire_mode)
  (:desire_pos
   (&optional __desire_pos)
   (if __desire_pos (setq _desire_pos __desire_pos)) _desire_pos)
  (:desire_servo_state
   (&optional __desire_servo_state)
   (if __desire_servo_state (setq _desire_servo_state __desire_servo_state)) _desire_servo_state)
  (:desire_stepper
   (&optional __desire_stepper)
   (if __desire_stepper (setq _desire_stepper __desire_stepper)) _desire_stepper)
  (:desire_hand
   (&optional __desire_hand)
   (if __desire_hand (setq _desire_hand __desire_hand)) _desire_hand)
  (:is_wait
   (&optional __is_wait)
   (if __is_wait (setq _is_wait __is_wait)) _is_wait)
  (:mission_name
   (&optional __mission_name)
   (if __mission_name (setq _mission_name __mission_name)) _mission_name)
  (:serialization-length
   ()
   (+
    ;; int32 _desire_degree
    4
    ;; int32 _desire_speed
    4
    ;; int32 _desire_mode
    4
    ;; int32[] _desire_pos
    (* 4    (length _desire_pos)) 4
    ;; int32 _desire_servo_state
    4
    ;; int32 _desire_stepper
    4
    ;; int32 _desire_hand
    4
    ;; int32 _is_wait
    4
    ;; string _mission_name
    4 (length _mission_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _desire_degree
       (write-long _desire_degree s)
     ;; int32 _desire_speed
       (write-long _desire_speed s)
     ;; int32 _desire_mode
       (write-long _desire_mode s)
     ;; int32[] _desire_pos
     (write-long (length _desire_pos) s)
     (dotimes (i (length _desire_pos))
       (write-long (elt _desire_pos i) s)
       )
     ;; int32 _desire_servo_state
       (write-long _desire_servo_state s)
     ;; int32 _desire_stepper
       (write-long _desire_stepper s)
     ;; int32 _desire_hand
       (write-long _desire_hand s)
     ;; int32 _is_wait
       (write-long _is_wait s)
     ;; string _mission_name
       (write-long (length _mission_name) s) (princ _mission_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _desire_degree
     (setq _desire_degree (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _desire_speed
     (setq _desire_speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _desire_mode
     (setq _desire_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _desire_pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _desire_pos (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _desire_pos i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32 _desire_servo_state
     (setq _desire_servo_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _desire_stepper
     (setq _desire_stepper (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _desire_hand
     (setq _desire_hand (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _is_wait
     (setq _is_wait (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _mission_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mission_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get main_loop::from_goap :md5sum-) "064f4f70eb75843b4e3f71d5f45d392e")
(setf (get main_loop::from_goap :datatype-) "main_loop/from_goap")
(setf (get main_loop::from_goap :definition-)
      "int32 desire_degree
int32 desire_speed
int32 desire_mode
int32[] desire_pos
int32 desire_servo_state
int32 desire_stepper
int32 desire_hand
int32 is_wait
string mission_name 

")



(provide :main_loop/from_goap "064f4f70eb75843b4e3f71d5f45d392e")


