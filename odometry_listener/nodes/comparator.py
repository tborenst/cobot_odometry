#!/usr/bin/env python
import roslib; roslib.load_manifest('odometry_listener')
import rospy
from cobot_msgs.msg import CobotOdometryMsg
from geometry_msgs.msg import Pose
from geometry_msgs.msg import PoseArray
import math

absPosArr = PoseArray()
fovPosArr = PoseArray()
fastTimeArray = []
initTime = 0

#SLOWER
def absoluteCallback(data):
	global absPosArr
	absPosArr = data
	compare(rospy.get_rostime().to_sec(), len(absPosArr.poses)-1)
	return

#FASTER
def fovisCallback(data):
	global fovPosArr
	fovPosArr = data
	global fastTimeArray
	fastTimeArray.append(rospy.get_rostime().to_sec())
	return

def compare(odomSecs, odomIndex):
	global absPosArr
	global fovPosArr
	global fastTimeArr
	if(len(fastTimeArray) < 3):
		return
	#find closest (in time) index
	index = len(fastTimeArray)-2
	minDiff = abs(odomSecs - fastTimeArray[index+1])
	nextDiff = abs(odomSecs - fastTimeArray[index])
	while(nextDiff >= minDiff):
		index += -1
		minDiff = abs(odomSecs - fastTimeArray[index+1])
		nextDiff = abs(odomSecs - fastTimeArray[index])
	#get poses to compare
	#rospy.loginfo("ODOMINDEX ------------- " + str(odomIndex))
	#rospy.loginfo("ODOMLENGT ------------- " + str(len(absPosArr.poses)))
	absPos = absPosArr.poses[odomIndex]
	fovPos = fovPosArr.poses[index]
	#perform comparison
	xError = abs(absPos.position.x - fovPos.position.x)
	yError = abs(absPos.position.y - fovPos.position.y)
	#publish to stdout
	print(str(odomSecs - initTime) + " " + str(xError) + " " + str(yError) + "\n")
	return

def init():
	global initTime
	rospy.init_node('comparator', anonymous=True)
	initTime = rospy.get_rostime().to_sec()
	rospy.Subscriber('absoluteOdometry', PoseArray, absoluteCallback)
	rospy.Subscriber('PosArrayFovis', PoseArray, fovisCallback)
	rospy.spin()
	

if __name__ == "__main__":
	init()
