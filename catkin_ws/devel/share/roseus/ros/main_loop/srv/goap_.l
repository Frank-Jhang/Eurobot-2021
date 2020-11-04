;; Auto-generated. Do not edit!


(when (boundp 'main_loop::goap_)
  (if (not (find-package "MAIN_LOOP"))
    (make-package "MAIN_LOOP"))
  (shadow 'goap_ (find-package "MAIN_LOOP")))
(unless (find-package "MAIN_LOOP::GOAP_")
  (make-package "MAIN_LOOP::GOAP_"))
(unless (find-package "MAIN_LOOP::GOAP_REQUEST")
  (make-package "MAIN_LOOP::GOAP_REQUEST"))
(unless (find-package "MAIN_LOOP::GOAP_RESPONSE")
  (make-package "MAIN_LOOP::GOAP_RESPONSE"))

(in-package "ROS")





(defclass main_loop::goap_Request
  :super ros::object
  :slots (_action_done _pos _north_or_south _time _mission_name _mission_child_name ))

(defmethod main_loop::goap_Request
  (:init
   (&key
    ((:action_done __action_done) nil)
    ((:pos __pos) (make-array 0 :initial-element 0 :element-type :integer))
    ((:north_or_south __north_or_south) 0)
    ((:time __time) 0.0)
    ((:mission_name __mission_name) "")
    ((:mission_child_name __mission_child_name) "")
    )
   (send-super :init)
   (setq _action_done __action_done)
   (setq _pos __pos)
   (setq _north_or_south (round __north_or_south))
   (setq _time (float __time))
   (setq _mission_name (string __mission_name))
   (setq _mission_child_name (string __mission_child_name))
   self)
  (:action_done
   (&optional __action_done)
   (if __action_done (setq _action_done __action_done)) _action_done)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:north_or_south
   (&optional __north_or_south)
   (if __north_or_south (setq _north_or_south __north_or_south)) _north_or_south)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:mission_name
   (&optional __mission_name)
   (if __mission_name (setq _mission_name __mission_name)) _mission_name)
  (:mission_child_name
   (&optional __mission_child_name)
   (if __mission_child_name (setq _mission_child_name __mission_child_name)) _mission_child_name)
  (:serialization-length
   ()
   (+
    ;; bool _action_done
    1
    ;; int32[] _pos
    (* 4    (length _pos)) 4
    ;; int32 _north_or_south
    4
    ;; float32 _time
    4
    ;; string _mission_name
    4 (length _mission_name)
    ;; string _mission_child_name
    4 (length _mission_child_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _action_done
       (if _action_done (write-byte -1 s) (write-byte 0 s))
     ;; int32[] _pos
     (write-long (length _pos) s)
     (dotimes (i (length _pos))
       (write-long (elt _pos i) s)
       )
     ;; int32 _north_or_south
       (write-long _north_or_south s)
     ;; float32 _time
       (sys::poke _time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _mission_name
       (write-long (length _mission_name) s) (princ _mission_name s)
     ;; string _mission_child_name
       (write-long (length _mission_child_name) s) (princ _mission_child_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _action_done
     (setq _action_done (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32[] _pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pos (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pos i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32 _north_or_south
     (setq _north_or_south (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _time
     (setq _time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _mission_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mission_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mission_child_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mission_child_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass main_loop::goap_Response
  :super ros::object
  :slots (_speed _mode _degree _pos _ST2 _is_wait _mission_name _mission_child_name ))

(defmethod main_loop::goap_Response
  (:init
   (&key
    ((:speed __speed) 0)
    ((:mode __mode) 0)
    ((:degree __degree) 0)
    ((:pos __pos) (make-array 0 :initial-element 0 :element-type :integer))
    ((:ST2 __ST2) (make-array 0 :initial-element 0 :element-type :integer))
    ((:is_wait __is_wait) 0)
    ((:mission_name __mission_name) "")
    ((:mission_child_name __mission_child_name) "")
    )
   (send-super :init)
   (setq _speed (round __speed))
   (setq _mode (round __mode))
   (setq _degree (round __degree))
   (setq _pos __pos)
   (setq _ST2 __ST2)
   (setq _is_wait (round __is_wait))
   (setq _mission_name (string __mission_name))
   (setq _mission_child_name (string __mission_child_name))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:degree
   (&optional __degree)
   (if __degree (setq _degree __degree)) _degree)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:ST2
   (&optional __ST2)
   (if __ST2 (setq _ST2 __ST2)) _ST2)
  (:is_wait
   (&optional __is_wait)
   (if __is_wait (setq _is_wait __is_wait)) _is_wait)
  (:mission_name
   (&optional __mission_name)
   (if __mission_name (setq _mission_name __mission_name)) _mission_name)
  (:mission_child_name
   (&optional __mission_child_name)
   (if __mission_child_name (setq _mission_child_name __mission_child_name)) _mission_child_name)
  (:serialization-length
   ()
   (+
    ;; int32 _speed
    4
    ;; int32 _mode
    4
    ;; int32 _degree
    4
    ;; int32[] _pos
    (* 4    (length _pos)) 4
    ;; int32[] _ST2
    (* 4    (length _ST2)) 4
    ;; int32 _is_wait
    4
    ;; string _mission_name
    4 (length _mission_name)
    ;; string _mission_child_name
    4 (length _mission_child_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _speed
       (write-long _speed s)
     ;; int32 _mode
       (write-long _mode s)
     ;; int32 _degree
       (write-long _degree s)
     ;; int32[] _pos
     (write-long (length _pos) s)
     (dotimes (i (length _pos))
       (write-long (elt _pos i) s)
       )
     ;; int32[] _ST2
     (write-long (length _ST2) s)
     (dotimes (i (length _ST2))
       (write-long (elt _ST2 i) s)
       )
     ;; int32 _is_wait
       (write-long _is_wait s)
     ;; string _mission_name
       (write-long (length _mission_name) s) (princ _mission_name s)
     ;; string _mission_child_name
       (write-long (length _mission_child_name) s) (princ _mission_child_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _speed
     (setq _speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _degree
     (setq _degree (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pos (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pos i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _ST2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ST2 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ST2 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32 _is_wait
     (setq _is_wait (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _mission_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mission_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mission_child_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mission_child_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass main_loop::goap_
  :super ros::object
  :slots ())

(setf (get main_loop::goap_ :md5sum-) "bea0114d84bf82ce48ef39139983607f")
(setf (get main_loop::goap_ :datatype-) "main_loop/goap_")
(setf (get main_loop::goap_ :request) main_loop::goap_Request)
(setf (get main_loop::goap_ :response) main_loop::goap_Response)

(defmethod main_loop::goap_Request
  (:response () (instance main_loop::goap_Response :init)))

(setf (get main_loop::goap_Request :md5sum-) "bea0114d84bf82ce48ef39139983607f")
(setf (get main_loop::goap_Request :datatype-) "main_loop/goap_Request")
(setf (get main_loop::goap_Request :definition-)
      "bool action_done
int32[] pos

int32 north_or_south

float32 time
string mission_name
string mission_child_name
---
int32 speed
int32 mode
int32 degree
int32[] pos
int32[] ST2
int32 is_wait
string mission_name
string mission_child_name

")

(setf (get main_loop::goap_Response :md5sum-) "bea0114d84bf82ce48ef39139983607f")
(setf (get main_loop::goap_Response :datatype-) "main_loop/goap_Response")
(setf (get main_loop::goap_Response :definition-)
      "bool action_done
int32[] pos

int32 north_or_south

float32 time
string mission_name
string mission_child_name
---
int32 speed
int32 mode
int32 degree
int32[] pos
int32[] ST2
int32 is_wait
string mission_name
string mission_child_name

")



(provide :main_loop/goap_ "bea0114d84bf82ce48ef39139983607f")


