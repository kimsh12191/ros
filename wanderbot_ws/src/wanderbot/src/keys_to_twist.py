#! /usr/bin/env python

import rospy
import math
from std_msgs.msg import String
from geometry_msgs.msg import Twist

key_mapping = { 'w': [0, 1], 'x': [0, -1],
                'a': [-1, 0], 'd': [1, 0],
                's': [0, 0]}
g_last_twist = None
g_vel_scales = [0.1, 0.1]


def keys_cb(msg, twist_pub):
    global g_last_twist, g_vel_scales
    if len(msg.data) == 0 or not key_mapping.has_key(msg.data[0]):
        return #
    vels = key_mapping[msg.data[0]]
    g_last_twist.angular.z = vels[0]*g_vel_scales[0]
    g_last_twist.linear.x = vels[1]*g_vel_scales[1]
    twist_pub.publish(g_last_twist)

if __name__ == '__main__':
    rospy.init_node('keys_to_twist')
    twist_pub = rospy.Publisher('cmd_vel', Twist, queue_size=1)
    rospy.Subscriber('keys', String, keys_cb, twist_pub)
    g_last_twist = Twist()
    if rospy.has_param('_linear_scale'):
        g_vel_scales[1] = rospy.get_param('_linear_scale')
    else:
        rospy.logwarn("linear scale not provied; using %.f" %g_vel_scales[1])
    if rospy.has_param("_angular_scale"):
        g_vel_scales[0] = rospy.get_param('_angular_scale')
    else:
        rospy.logwarn("angular scale not provided; using %.f" %g_vel_scales[0])

    rate = rospy.Rate(10)
    while not rospy.is_shutdown():
        twist_pub.publish(g_last_twist)
        rate.sleep()
