#!/usr/bin/env python
import rospy
import numpy as np
from duckietown_msgs.msg import AprilTagDetectionArray, BoolStamped
from std_msgs.msg import Float32, Int32

class arduinoROS(object):
    def __init__(self):
        self.dis = 0.0 # distance from ultrasound
        self.using_apriltags = False

        # =========== publisher ===========
        self.pub_led = rospy.Publisher("/arduino/sub/led", Int32, queue_size=10, latch=True)
        self.pub_result = rospy.Publisher("~result", BoolStamped, queue_size=1)

        # =========== subscriber ===========
        self.sub_dis = rospy.Subscriber("/arduino/pub/dis", Float32, self.cbDis)
        self.sub_tags = rospy.Subscriber("~tag_info", AprilTagDetectionArray, self.cbTags)

   # =========== subscribe distance from arduino ===========
    def cbDis(self, msg):
        self.dis = msg.data # self.dis = distance from arduino
        print "distance = ", self.dis
       # '''
        led_cmd = Int32()
        drive = BoolStamped()
        if self.dis < 30.0:
            led_cmd.data = 1
            self.pub_led.publish(led_cmd)
            drive.data = True
            self.pub_result.publish(drive)
        else:
            led_cmd.data = 0
            self.pub_led.publish(led_cmd)
            drive.data = False
            self.pub_result.publish(drive)
      #  '''

    # =========== subscribe tag information ===========
    def cbTags(self, msg):
        if not self.using_apriltags:
            return

        count = 0
        led_cmd = Int32()
        for detection in msg.detections: # count if there is apriltag or not
            count += 1

        # =========== if there is apriltag ===========
        if count > 0:
            print "LED on"
            led_cmd.data = 1
            self.pub_led.publish(led_cmd.data) #turn on LED on arduino

        # =========== if there is no apriltag ===========
        else: # no apriltags
            print "LED off"
            led_cmd.data = 0
            self.pub_led.publish(led_cmd.data) # turn off LED on arduino

if __name__ == "__main__":
    rospy.init_node("arduino_ros", anonymous = False)
    arduino_node = arduinoROS()
    rospy.spin()
