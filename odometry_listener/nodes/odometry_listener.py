#!/usr/bin/env python
import roslib; roslib.load_manifest('odometry_listener')
import rospy
from cobot_msgs.msg import CobotOdometryMsg
from geometry_msgs.msg import Pose
from geometry_msgs.msg import PoseArray
import math

framePos = [0, 0, 0] #R, X, Y
posArr = PoseArray()
posArr.header.frame_id = "/map"
pub = rospy.Publisher('absoluteOdometry', PoseArray)

def callback(data):
	#add data to framePos
	dr = data.dr
	dx = data.dx
	dy = data.dy
	framePos[0] += dr
	framePos[1] += math.cos(framePos[0])*dx - math.sin(framePos[0])*dy
	framePos[2] += math.sin(framePos[0])*dx + math.cos(framePos[0])*dy
	#format data for display
	R = framePos[0]*(180/math.pi)
	#output framePos to console
	rospy.loginfo("---------------")
	rospy.loginfo("R: %s", R)
	rospy.loginfo("X: %s", framePos[1])
	rospy.loginfo("Y: %s", framePos[2])
	#sending data to rvis
	p = Pose()
	p.position.x = framePos[1]
	p.position.y = framePos[2]
	p.position.z = 0
	p.orientation.x = 0
	p.orientation.y = 0
	p.orientation.z = math.sin(framePos[0]/2)
	p.orientation.w = math.cos(framePos[0]/2)
	posArr.poses.append(p) #append node
	posArr.header.stamp = rospy.get_rostime() #update timestap
	pub.publish(posArr)


def listener():
	rospy.init_node('absOdom', anonymous=True)
	rospy.Subscriber('/Cobot/Odometry', CobotOdometryMsg, callback)
	rospy.spin()

if __name__ == '__main__':
	listener()


