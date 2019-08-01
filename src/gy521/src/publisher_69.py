#!/usr/bin/env python
from mpu6050 import *
import math
import time
import rospy
from std_msgs.msg import String

def talker():
    pub = rospy.Publisher('mpu6050_data_69', String, queue_size=10)
    rospy.init_node('mpu6050_talker_69', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    mpu = mpu6050(0x69)
    while not rospy.is_shutdown():
        accel_data = mpu.get_accel_data()
        gyro_data = mpu.get_gyro_data()
        data = 'S2:%s, %s, %s, %s, %s, %s' %(str(accel_data['x']), str(accel_data['y']),str(accel_data['z']), str(gyro_data['x']/180*math.pi), str(gyro_data['y']/180*math.pi),str(gyro_data['z']/180*math.pi))
        # rospy.loginfo(data)
        print 'publishing mpu6050_data_69'
        pub.publish(data)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass

    