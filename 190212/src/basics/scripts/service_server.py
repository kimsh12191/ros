#!/usr/bin/env python

import rospy

from basics.srv import WordCountT, WordCountTResponse

def count_words(request):
	return WordCountTResponse(len(request.words.split()))

rospy.init_node('service_server')
print ("service_server_init")
service = rospy.Service('word_count_test', WordCountT, count_words)

rospy.spin()
