#!/usr/bin/env python
import rospy
from std_msgs.msg import Int32

rospy.init_node('topic_publisher_test')
pub = rospy.Publisher('counter_test', Int32)
rate = rospy.Rate(0.9)

count = 1

while not rospy.is_shutdown():
	if count > 10000:
		break
        pub.publish(count)
        count *= 2
        rate.sleep() 


