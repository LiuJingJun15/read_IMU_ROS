#!/usr/bin/env python
import rospy
import BMP085
from std_msgs.msg import String

def talker():
    pub = rospy.Publisher('BMP085_data', String, queue_size=10)
    rospy.init_node('BMP085_talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    sensor = BMP085.BMP085()
    while not rospy.is_shutdown():
        temp = sensor.read_temperature()
        press = sensor.read_pressure()
        alti = sensor.read_altitude()
        seaPrees = sensor.read_sealevel_pressure()
        data = '%s, %s, %s, %s' %(str(temp), str(press),str(alti), str(seaPrees))
        # rospy.loginfo(data)
        print 'publishing BMP085_data'
        pub.publish(data)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass

    