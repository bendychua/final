#!/usr/bin/env python
from datetime import datetime

import rospy
import numpy as np
from duckietown_msgs.msg import AprilTagDetectionArray, BoolStamped
from std_msgs.msg import Float32, Int32, String

class arduinoROS(object):
    def __init__(self):
        self.active = True
        # =========== publisher ===========
        self.pub_tag = rospy.Publisher("/arduino/sub/servo", Int32, queue_size=10, latch=True)
        self.pub_goback = rospy.Publisher("~goback", Int32, queue_size=10)         
        self.pub_turnoff = rospy.Publisher("~turnoff", BoolStamped, queue_size=10)
        # =========== subscriber ===========
        self.sub_tags = rospy.Subscriber("~tag_info", AprilTagDetectionArray, self.cbTags)
        self.sub_switch = rospy.Subscriber("~switch", BoolStamped, self.cbSwitch, queue_size=1)
        # =========== subscribe tag information ===========
    def cbSwitch(self, switch_msg):
        self.active = switch_msg.data

    def cbTags(self, msg):
        if not self.active:
            return
        med_ID = Int32()
        hourstring = String()
        minstring = String()
        secstring = String()
        hourint = Int32()
        minint = Int32()
        secint = Int32()
        now = Int32()
        turnoff = BoolStamped()
        goback = Int32()

        for detection in msg.detections:
            tag_id = detection.id
            print("ID: ", tag_id)
            hourstring = datetime.now().strftime("%H")
            minstring = datetime.now().strftime("%M")
            secstring = datetime.now().strftime("%S")

            print(hourstring, minstring, secstring)

            hourint = int(hourstring)
            minint = int(minstring)
            secint = int(secstring)
            now = hourint*60*60 + minint*60 +secint
            print(now)
           
            if (tag_id == 2):
                turnoff = true
                self.pub_turnoff.publish(turnoff) #if back at the nurse
            elif (tag_id == 115):
                if (0 < now < 1): 
                    med_ID = 0
                    print(med_ID)
                    self.pub_tag.publish(med_ID) #publish tag 0
                    #self.sub_tags.unregister()
                elif (2 < now < 3):
                    med_ID = 1
                    self.pub_tag.publish(med_ID) #publish tag 1
                    #self.sub_tags.unregister()
                else:
                    goback = 1
                    self.pub_goback.publish(goback) #if not time for any meds
            else:
                return
	 
if __name__ == "__main__":
    rospy.init_node("arduino_ros", anonymous = False)
    arduino_node = arduinoROS()
    rospy.spin()
