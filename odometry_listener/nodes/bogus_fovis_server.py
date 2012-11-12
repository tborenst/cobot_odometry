#!/usr/bin/env python
import roslib
roslib.load_manifest('odometry_listener')
from odometry_listener.srv import *
import rospy
import random

def handle_request(req):
	print "Returning bogus X, Y, and R..."
	X = random.random()*10
	Y = random.random()*10
	R = random.random()*10
	return fovis_odometryResponse(X, Y, R)

def bogus_fovis_server():
	rospy.init_node('bogus_fovis_server')
	s = rospy.Service('fovis_odometry', fovis_odometry, handle_request)
	print "Ready to serve bogus fovis data..."
	rospy.spin()

if __name__ == "__main__":
	bogus_fovis_server()


