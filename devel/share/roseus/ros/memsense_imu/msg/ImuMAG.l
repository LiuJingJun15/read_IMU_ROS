;; Auto-generated. Do not edit!


(when (boundp 'memsense_imu::ImuMAG)
  (if (not (find-package "MEMSENSE_IMU"))
    (make-package "MEMSENSE_IMU"))
  (shadow 'ImuMAG (find-package "MEMSENSE_IMU")))
(unless (find-package "MEMSENSE_IMU::IMUMAG")
  (make-package "MEMSENSE_IMU::IMUMAG"))

(in-package "ROS")
;;//! \htmlinclude ImuMAG.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass memsense_imu::ImuMAG
  :super ros::object
  :slots (_header _angular_velocity _angular_velocity_covariance _linear_acceleration _linear_acceleration_covariance _magnetic_field _magnetic_field_covariance ))

(defmethod memsense_imu::ImuMAG
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:angular_velocity __angular_velocity) (instance geometry_msgs::Vector3 :init))
    ((:angular_velocity_covariance __angular_velocity_covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:linear_acceleration __linear_acceleration) (instance geometry_msgs::Vector3 :init))
    ((:linear_acceleration_covariance __linear_acceleration_covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:magnetic_field __magnetic_field) (instance geometry_msgs::Vector3 :init))
    ((:magnetic_field_covariance __magnetic_field_covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _angular_velocity __angular_velocity)
   (setq _angular_velocity_covariance __angular_velocity_covariance)
   (setq _linear_acceleration __linear_acceleration)
   (setq _linear_acceleration_covariance __linear_acceleration_covariance)
   (setq _magnetic_field __magnetic_field)
   (setq _magnetic_field_covariance __magnetic_field_covariance)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:angular_velocity
   (&rest __angular_velocity)
   (if (keywordp (car __angular_velocity))
       (send* _angular_velocity __angular_velocity)
     (progn
       (if __angular_velocity (setq _angular_velocity (car __angular_velocity)))
       _angular_velocity)))
  (:angular_velocity_covariance
   (&optional __angular_velocity_covariance)
   (if __angular_velocity_covariance (setq _angular_velocity_covariance __angular_velocity_covariance)) _angular_velocity_covariance)
  (:linear_acceleration
   (&rest __linear_acceleration)
   (if (keywordp (car __linear_acceleration))
       (send* _linear_acceleration __linear_acceleration)
     (progn
       (if __linear_acceleration (setq _linear_acceleration (car __linear_acceleration)))
       _linear_acceleration)))
  (:linear_acceleration_covariance
   (&optional __linear_acceleration_covariance)
   (if __linear_acceleration_covariance (setq _linear_acceleration_covariance __linear_acceleration_covariance)) _linear_acceleration_covariance)
  (:magnetic_field
   (&rest __magnetic_field)
   (if (keywordp (car __magnetic_field))
       (send* _magnetic_field __magnetic_field)
     (progn
       (if __magnetic_field (setq _magnetic_field (car __magnetic_field)))
       _magnetic_field)))
  (:magnetic_field_covariance
   (&optional __magnetic_field_covariance)
   (if __magnetic_field_covariance (setq _magnetic_field_covariance __magnetic_field_covariance)) _magnetic_field_covariance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Vector3 _angular_velocity
    (send _angular_velocity :serialization-length)
    ;; float64[9] _angular_velocity_covariance
    (* 8    9)
    ;; geometry_msgs/Vector3 _linear_acceleration
    (send _linear_acceleration :serialization-length)
    ;; float64[9] _linear_acceleration_covariance
    (* 8    9)
    ;; geometry_msgs/Vector3 _magnetic_field
    (send _magnetic_field :serialization-length)
    ;; float64[9] _magnetic_field_covariance
    (* 8    9)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3 _angular_velocity
       (send _angular_velocity :serialize s)
     ;; float64[9] _angular_velocity_covariance
     (dotimes (i 9)
       (sys::poke (elt _angular_velocity_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/Vector3 _linear_acceleration
       (send _linear_acceleration :serialize s)
     ;; float64[9] _linear_acceleration_covariance
     (dotimes (i 9)
       (sys::poke (elt _linear_acceleration_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/Vector3 _magnetic_field
       (send _magnetic_field :serialize s)
     ;; float64[9] _magnetic_field_covariance
     (dotimes (i 9)
       (sys::poke (elt _magnetic_field_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3 _angular_velocity
     (send _angular_velocity :deserialize buf ptr-) (incf ptr- (send _angular_velocity :serialization-length))
   ;; float64[9] _angular_velocity_covariance
   (dotimes (i (length _angular_velocity_covariance))
     (setf (elt _angular_velocity_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; geometry_msgs/Vector3 _linear_acceleration
     (send _linear_acceleration :deserialize buf ptr-) (incf ptr- (send _linear_acceleration :serialization-length))
   ;; float64[9] _linear_acceleration_covariance
   (dotimes (i (length _linear_acceleration_covariance))
     (setf (elt _linear_acceleration_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; geometry_msgs/Vector3 _magnetic_field
     (send _magnetic_field :deserialize buf ptr-) (incf ptr- (send _magnetic_field :serialization-length))
   ;; float64[9] _magnetic_field_covariance
   (dotimes (i (length _magnetic_field_covariance))
     (setf (elt _magnetic_field_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get memsense_imu::ImuMAG :md5sum-) "2e08da8dd92dede637afd3f4b4d9bf2c")
(setf (get memsense_imu::ImuMAG :datatype-) "memsense_imu/ImuMAG")
(setf (get memsense_imu::ImuMAG :definition-)
      "# Version of sensor_msgs/Imu message 
# with added magnetometer and temperature readings.

Header header

geometry_msgs/Vector3 angular_velocity
float64[9] angular_velocity_covariance # Row major about x, y, z axes

geometry_msgs/Vector3 linear_acceleration
float64[9] linear_acceleration_covariance # Row major x, y z

geometry_msgs/Vector3 magnetic_field
float64[9] magnetic_field_covariance # Row major x, y z

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
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :memsense_imu/ImuMAG "2e08da8dd92dede637afd3f4b4d9bf2c")


