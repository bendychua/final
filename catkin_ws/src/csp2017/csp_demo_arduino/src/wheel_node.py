#!/usr/bin/env python
import rospy
import numpy as np
from duckietown_msgs.msg import BoolStamped, Twist2DStamped

class arduinoWheel(object):
	def __init__(self):
		#self.node_name = "wheel_node"
		#self.pose = Point()
        # =========== publisher ===========
		self.pub_car_cmd = rospy.Publisher("~car_cmd", Twist2DStamped, queue_size=1)
        # publish to topic "car_cmd" (you may have to see the code last week)

        # =========== subscriber ===========
		self.pub_wheel = rospy.Subscriber("~result", BoolStamped, self.cbresult, queue_size=1)
        # subscribe to topic "result" (you should see arduino_node.py)

   # =========== subscribe distance from arduino ===========
	def cbresult(self, msg):
		print msg
		cmd = Twist2DStamped()
		if msg.data:
			cmd.v = -0.2

		else:
			cmd.v = 0.2
		self.pub_car_cmd.publish(cmd)

if __name__ == "__main__":
	rospy.init_node("arduino_wheel", anonymous = False)
	arduino_node = arduinoWheel()
	rospy.spin()
