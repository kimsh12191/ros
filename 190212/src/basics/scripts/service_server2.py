#!/usr/bin/env python


import rospy

from basics.srv import WordCount, WordCountResponse

def count_words(request):
	return WordCountResponse(len(request.words.split()))

rospy.init_node('service_server')
service = rospy.Service('word_count_test', WordCount, count_words)

rospy.spin()

# import rospy
#
# from basics.srv import WordCount2
#
# def count_words(request):
# 	total_length = len(request.words.split())
# 	if request.min_word_length < total_length:
# 		count = request.min_word_length
# 		ignore = total_length - request.min_word_length
# 	else:
# 		count = total_length
# 		ignore = 0
# 	return count, ignore
#
# rospy.init_node('service_server')
# service = rospy.Service('word_count_test', WordCount2, count_words)
#
# rospy.spin()
