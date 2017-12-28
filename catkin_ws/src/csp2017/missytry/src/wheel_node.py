#!/usr/bin/env python
import rospy
import numpy as np
from duckietown_msgs.msg import BoolStamped, Twist2DStamped

class arduinoWheel(object):
    def __init__(self):
        # =========== publisher ===========
        # publish to topic "car_cmd" (you may have to see the code last week)

        # =========== subscriber ===========
        # subscribe to topic "result" (you should see arduino_node.py)

   # =========== subscribe distance from arduino ===========
    def cbresult(self, msg):
        cmd = Twist2DStamped()
        if ???:
            print "go forward"

        else:
            print "go backward"

if __name__ == "__main__":
    rospy.init_node("arduino_wheel", anonymous = False)
    arduino_node = arduinoWheel()
    rospy.spin()