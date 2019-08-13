#! /usr/bin/env python
import rospy

import time
import actionlib
from basics.msg import TimerAction, TimerGoal, TimerResult, TimerFeedback


def feedback_cb(feedback):
    print ("[feedback] time elasped %f"%(feedback.time_elapsed.to_sec()))
    print ("[feedback] time remaining  %f"%(feedback.time_elapsed.to_sec()))

rospy.init_node('timer_action_client')
client = actionlib.SimpleActionClient('timer', TimerAction)
client.wait_for_server()

goal = TimerGoal()
goal.time_to_wait = rospy.Duration.from_sec(5.0)
#goal.time_to_wait = rospy.Duration.from_sec(500.0)

client.send_goal(goal, feedback_cb=feedback_cb)
client_time = 0
while client_time < 5:
    client_time += 1
    time.sleep(1.0)
    print (client_time)
#time.sleep(3.0)
#client.cancel_goal()
#client.wait_for_result()

print ("[Result] State %d"%(client.get_state()))
print ("[Result] status %s"%(client.get_goal_status_text()))
print ("[Result] Time elasped: %f"%(client.get_result().time_elapsed.to_sec()))
print ("[Result] updates sent %d"%(client.get_result().updates_sent))
