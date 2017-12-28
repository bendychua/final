#!/usr/bin/env python
import rospy
import numpy as np
import math
from duckietown_msgs.msg import  Twist2DStamped
from sensor_msgs.msg import CompressedImage, Image
from cv_bridge import CvBridge, CvBridgeError
import cv2
import sys
import time
import threading
class face_detector_wama(object):
	def __init__(self):
		self.node_name = rospy.get_name()

		self.thread_lock = threading.Lock()
		self.active = True

		# To do: initial no-faces-detected as face_detected scenario
		self.face_detected = 0

		self.bridge = CvBridge()

		# Publication

		#Checkpoint 1 : publish ros message topic: /node_name/car_cmd, datatype: Twist2DStamped 
		self.pub_car_cmd = rospy.Publisher("~car_cmd",Twist2DStamped,queue_size=1)

		#Checkpoint 2: What kind of command to publish a ros message of Image with a /image_with_face topic ?
		self.pub_image_face = rospy.Publisher("~image_with_face", Image, queue_size=1)

        # Subscription

		#Checkpoint 3 : subscribe ros message topic: /node_name/joystick_car_cmd datatype: Twist2DStamped, callback function: self.cbJoystick
		self.sub_joystick_car_cmd = rospy.Subscriber("~joystick_car_cmd", Twist2DStamped, self.cbJoystick,queue_size=1)

		#Checkpoint 4 : What kind of command to publish a ros message of CompressedImage with an /image topic ?
		# Hint : self.cbImage as a callback function
		self.sub_image_origin = rospy.Subscriber("~image", CompressedImage, self.cbImage, queue_size=1)

		# safe shutdown
		rospy.on_shutdown(self.custom_shutdown)

		# timer
		rospy.loginfo("[%s] Initialized " %(rospy.get_name()))

	def custom_shutdown(self):
		rospy.loginfo("[%s] Shutting down..." %self.node_name)

		# Send stop command
		car_control_msg = Twist2DStamped()
		car_control_msg.v = 0.0
		car_control_msg.omega = 0.0
		self.publishCmd(car_control_msg)
		rospy.sleep(0.5) #To make sure that it gets published.
		rospy.loginfo("[%s] Shutdown" %self.node_name)

	def cbImage(self, image_msg):
		if not self.active:
			return

		thread = threading.Thread(target=self.processImage,args=(image_msg,))
		thread.setDaemon(True)
		thread.start()

	def processImage(self, image_msg):
		if not self.thread_lock.acquire(False):
			return

		try:
			self.cbFacedetect(image_msg)
		finally:
			self.thread_lock.release()

	def publishCmd(self,car_cmd_msg):

		# To do: using pub_car_cmd publisher we initialized at line 27 to publish car command message
		self.pub_car_cmd.publish(car_cmd_msg)
	
	def cbJoystick(self,car_cmd_msg):

		#Scenario 1: What the duckiebot will do if in the scenario there are no face(s) detected? Does the car control command keep executing Joystick command ?   
		if self.face_detected == 0:

			#Checkpoint 5: initial a car control command for publishing ros message, datatype: Twist2DStamped
			car_control_msg = Twist2DStamped()

            #Checkpoint 6: Initialize car control command as car command message
			car_control_msg.v = car_cmd_msg.v
			car_control_msg.omega = car_cmd_msg.omega

			#Checkpoint 7: publish car control command
			self.publishCmd(car_cmd_msg)

	def cbFacedetect(self, image_msg):
		# Decompress image and convert ROS image message to cv image
		narr = np.fromstring(image_msg.data, np.uint8)
		image = cv2.imdecode(narr, cv2.CV_LOAD_IMAGE_COLOR)
        
        # Initial opencv CascadeClassifier class to detect objects and import face detection module
		faceCascade = cv2.CascadeClassifier('/home/ubuntu/duckietown/catkin_ws/src/spring2016_nctu/wama/face_detector/src/haarcascade_frontalface_default.xml')
		gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

		# Detect faces in the image
		faces = faceCascade.detectMultiScale(gray,scaleFactor=2,minNeighbors=5,minSize=(10, 10),flags = cv2.cv.CV_HAAR_SCALE_IMAGE)
		print "Found {0} faces!".format(len(faces))

        # Draw face detections region proposals in the image
		for (x, y, w, h) in faces:
			cv2.rectangle(image, (x, y), (x+w, y+h), (0, 255, 0), 2)
	
		# Convert cv image to ROS image message
		image_msg_out = self.bridge.cv2_to_imgmsg(image, "bgr8")
		image_msg_out.header.stamp = image_msg.header.stamp

		#Checkpoint 8: using pub_image_face publisher we initialized at line 30 to publish image with face region proposals
		self.pub_image_face.publish(image_msg_out)

        #Checkpoint 9: initial a car command message for publishing ros message, datatype: Twist2DStamped
		car_control_msg = Twist2DStamped()

		#Scenario 2: What the duckiebot will do if in the scenario there are face(s) detected?
		if len(faces) != 0:

            #Checkpoint 10: What is the condition of detected face ?
			self.face_detected = 1

            #Checkpoint 11: What happen to the car control command in this scenario ?
			car_control_msg.v = 0
			car_control_msg.omega = 0

			#Checkpoint 12: publish car control command
			self.publishCmd(car_control_msg)

		#Checkpoint 13: What if there are no longer face detected ?
		if len(faces) == 0:

            #Checkpoint 14: Does the duckiebot will still be stopping ?
            # Hint : Look back at Scenario 1, where no faces are detected.
			self.face_detected = 0
			#car_control_msg.v=0
			#car_control_msg.omega=0
			#self.publishCmd(car_control_msg)

if __name__ == "__main__":

	#Checkpoint 15: Initial a node named "face_detector_X", X= you duckiebot name
	rospy.init_node("face_detector_boonwee",anonymous=False)

	face_detector_wama_node = face_detector_wama()
	rospy.spin()
