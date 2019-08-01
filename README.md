# read_IMU_ROS
This is a ROS workspace. It is used in integrating data from two IMUs and a barometric sensor. Two IMUs are mpu6050, which take i2c locations 68 and 69. Barometric sensor is BMP 085, which takes i2c location 77.

usage: 'roslaunch gy521 start.launch'. 

Three topics should be published, you can use 'rosrun gy521 listener.py' to subscribe the data.

All data collected is written into .csv files in 'data' folder
