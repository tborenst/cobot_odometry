#!/usr/bin/env python
import roslib; roslib.load_manifest('odometry_listener')
import sys
import rospy
from odometry_listener.srv import *

def request_fovis_odometry():
	rospy.wait_for_service('fovis_odometry')
	try:
		fovis_odometry = rospy.ServiceProxy('fovis_odometry', fovis_odometry)
		resp1 = fovis_odometry()
		return resp1
	except rospy.ServiceException, e:
		print "Service call failed: %s"%e

if __name__ == "__main__":
	print "Requesting fovis odometry..."
	res = request_fovis_odometry()
	print "X: %s, Y: %s, R: %s"%(res.X, res.Y, res.R)
