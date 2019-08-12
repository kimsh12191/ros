#!/usr/bin/env python
# python 2
import rospy
from basics.srv import WordCount
import sys

rospy.init_node('service_client')
rospy.wait_for_service('word_count_test')

word_counter = rospy.ServiceProxy('word_count_test', WordCount)
words = "{}".format(sys.argv[1:])
word_count = word_counter(words)

print ("the number of words is  : {} ".format(word_count.count))

