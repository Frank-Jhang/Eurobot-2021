;; Auto-generated. Do not edit!


(when (boundp 'lidar_2020::alert_range)
  (if (not (find-package "LIDAR_2020"))
    (make-package "LIDAR_2020"))
  (shadow 'alert_range (find-package "LIDAR_2020")))
(unless (find-package "LIDAR_2020::ALERT_RANGE")
  (make-package "LIDAR_2020::ALERT_RANGE"))

(in-package "ROS")
;;//! \htmlinclude alert_range.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lidar_2020::alert_range
  :super ros::object
  :slots (_header _num _ranging_value _alert ))

(defmethod lidar_2020::alert_range
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:num __num) 0)
    ((:ranging_value __ranging_value) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:alert __alert) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _num (round __num))
   (setq _ranging_value __ranging_value)
   (setq _alert __alert)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:ranging_value
   (&optional __ranging_value)
   (if __ranging_value (setq _ranging_value __ranging_value)) _ranging_value)
  (:alert
   (&optional __alert)
   (if __alert (setq _alert __alert)) _alert)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16 _num
    2
    ;; float32[] _ranging_value
    (* 4    (length _ranging_value)) 4
    ;; bool[] _alert
    (* 1    (length _alert)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int16 _num
       (write-word _num s)
     ;; float32[] _ranging_value
     (write-long (length _ranging_value) s)
     (dotimes (i (length _ranging_value))
       (sys::poke (elt _ranging_value i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool[] _alert
     (write-long (length _alert) s)
     (dotimes (i (length _alert))
       (if (elt _alert i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16 _num
     (setq _num (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32[] _ranging_value
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ranging_value (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ranging_value i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; bool[] _alert
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _alert (make-list n))
     (dotimes (i n)
     (setf (elt _alert i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get lidar_2020::alert_range :md5sum-) "d0c52c82e08087063181441d7bcd4d6e")
(setf (get lidar_2020::alert_range :datatype-) "lidar_2020/alert_range")
(setf (get lidar_2020::alert_range :definition-)
      "std_msgs/Header header
int16 num
float32[] ranging_value
bool[] alert

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



(provide :lidar_2020/alert_range "d0c52c82e08087063181441d7bcd4d6e")


