;; Auto-generated. Do not edit!


(when (boundp 'main_loop::path)
  (if (not (find-package "MAIN_LOOP"))
    (make-package "MAIN_LOOP"))
  (shadow 'path (find-package "MAIN_LOOP")))
(unless (find-package "MAIN_LOOP::PATH")
  (make-package "MAIN_LOOP::PATH"))
(unless (find-package "MAIN_LOOP::PATHREQUEST")
  (make-package "MAIN_LOOP::PATHREQUEST"))
(unless (find-package "MAIN_LOOP::PATHRESPONSE")
  (make-package "MAIN_LOOP::PATHRESPONSE"))

(in-package "ROS")





(defclass main_loop::pathRequest
  :super ros::object
  :slots (_my_pos_x _my_pos_y _enemy1_x _enemy1_y _enemy2_x _enemy2_y _ally_x _ally_y _goal_pos_x _goal_pos_y ))

(defmethod main_loop::pathRequest
  (:init
   (&key
    ((:my_pos_x __my_pos_x) 0)
    ((:my_pos_y __my_pos_y) 0)
    ((:enemy1_x __enemy1_x) 0)
    ((:enemy1_y __enemy1_y) 0)
    ((:enemy2_x __enemy2_x) 0)
    ((:enemy2_y __enemy2_y) 0)
    ((:ally_x __ally_x) 0)
    ((:ally_y __ally_y) 0)
    ((:goal_pos_x __goal_pos_x) 0)
    ((:goal_pos_y __goal_pos_y) 0)
    )
   (send-super :init)
   (setq _my_pos_x (round __my_pos_x))
   (setq _my_pos_y (round __my_pos_y))
   (setq _enemy1_x (round __enemy1_x))
   (setq _enemy1_y (round __enemy1_y))
   (setq _enemy2_x (round __enemy2_x))
   (setq _enemy2_y (round __enemy2_y))
   (setq _ally_x (round __ally_x))
   (setq _ally_y (round __ally_y))
   (setq _goal_pos_x (round __goal_pos_x))
   (setq _goal_pos_y (round __goal_pos_y))
   self)
  (:my_pos_x
   (&optional __my_pos_x)
   (if __my_pos_x (setq _my_pos_x __my_pos_x)) _my_pos_x)
  (:my_pos_y
   (&optional __my_pos_y)
   (if __my_pos_y (setq _my_pos_y __my_pos_y)) _my_pos_y)
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
  (:goal_pos_x
   (&optional __goal_pos_x)
   (if __goal_pos_x (setq _goal_pos_x __goal_pos_x)) _goal_pos_x)
  (:goal_pos_y
   (&optional __goal_pos_y)
   (if __goal_pos_y (setq _goal_pos_y __goal_pos_y)) _goal_pos_y)
  (:serialization-length
   ()
   (+
    ;; int32 _my_pos_x
    4
    ;; int32 _my_pos_y
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
    ;; int32 _goal_pos_x
    4
    ;; int32 _goal_pos_y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _my_pos_x
       (write-long _my_pos_x s)
     ;; int32 _my_pos_y
       (write-long _my_pos_y s)
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
     ;; int32 _goal_pos_x
       (write-long _goal_pos_x s)
     ;; int32 _goal_pos_y
       (write-long _goal_pos_y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _my_pos_x
     (setq _my_pos_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _my_pos_y
     (setq _my_pos_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
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
   ;; int32 _goal_pos_x
     (setq _goal_pos_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _goal_pos_y
     (setq _goal_pos_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass main_loop::pathResponse
  :super ros::object
  :slots (_next_pos_x _next_pos_y _degree _blocked ))

(defmethod main_loop::pathResponse
  (:init
   (&key
    ((:next_pos_x __next_pos_x) 0)
    ((:next_pos_y __next_pos_y) 0)
    ((:degree __degree) 0.0)
    ((:blocked __blocked) nil)
    )
   (send-super :init)
   (setq _next_pos_x (round __next_pos_x))
   (setq _next_pos_y (round __next_pos_y))
   (setq _degree (float __degree))
   (setq _blocked __blocked)
   self)
  (:next_pos_x
   (&optional __next_pos_x)
   (if __next_pos_x (setq _next_pos_x __next_pos_x)) _next_pos_x)
  (:next_pos_y
   (&optional __next_pos_y)
   (if __next_pos_y (setq _next_pos_y __next_pos_y)) _next_pos_y)
  (:degree
   (&optional __degree)
   (if __degree (setq _degree __degree)) _degree)
  (:blocked
   (&optional __blocked)
   (if __blocked (setq _blocked __blocked)) _blocked)
  (:serialization-length
   ()
   (+
    ;; int32 _next_pos_x
    4
    ;; int32 _next_pos_y
    4
    ;; float32 _degree
    4
    ;; bool _blocked
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _next_pos_x
       (write-long _next_pos_x s)
     ;; int32 _next_pos_y
       (write-long _next_pos_y s)
     ;; float32 _degree
       (sys::poke _degree (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _blocked
       (if _blocked (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _next_pos_x
     (setq _next_pos_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _next_pos_y
     (setq _next_pos_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _degree
     (setq _degree (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _blocked
     (setq _blocked (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass main_loop::path
  :super ros::object
  :slots ())

(setf (get main_loop::path :md5sum-) "aa24ea267d1480041af4f206230a297f")
(setf (get main_loop::path :datatype-) "main_loop/path")
(setf (get main_loop::path :request) main_loop::pathRequest)
(setf (get main_loop::path :response) main_loop::pathResponse)

(defmethod main_loop::pathRequest
  (:response () (instance main_loop::pathResponse :init)))

(setf (get main_loop::pathRequest :md5sum-) "aa24ea267d1480041af4f206230a297f")
(setf (get main_loop::pathRequest :datatype-) "main_loop/pathRequest")
(setf (get main_loop::pathRequest :definition-)
      "int32 my_pos_x
int32 my_pos_y
int32 enemy1_x
int32 enemy1_y
int32 enemy2_x
int32 enemy2_y
int32 ally_x
int32 ally_y
int32 goal_pos_x
int32 goal_pos_y
---
int32 next_pos_x
int32 next_pos_y
float32 degree
bool blocked


")

(setf (get main_loop::pathResponse :md5sum-) "aa24ea267d1480041af4f206230a297f")
(setf (get main_loop::pathResponse :datatype-) "main_loop/pathResponse")
(setf (get main_loop::pathResponse :definition-)
      "int32 my_pos_x
int32 my_pos_y
int32 enemy1_x
int32 enemy1_y
int32 enemy2_x
int32 enemy2_y
int32 ally_x
int32 ally_y
int32 goal_pos_x
int32 goal_pos_y
---
int32 next_pos_x
int32 next_pos_y
float32 degree
bool blocked


")



(provide :main_loop/path "aa24ea267d1480041af4f206230a297f")


