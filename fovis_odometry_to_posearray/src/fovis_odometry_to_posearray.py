#!/usr/bin/env python
import roslib; roslib.load_manifest('fovis_odometry_to_posearray')
import rospy
from geometry_msgs.msg import Pose
from geometry_msgs.msg import PoseStamped
from geometry_msgs.msg import PoseArray

posArr = PoseArray()
posArr.header.frame_id = "/map"
def callback(data):
	#rospy.loginfo("kinect x: %f, y %f, z: %f", data.pose.position.x, data.pose.position.y, data.pose.orientation.z)
	pos = Pose()
	pos.position = data.pose.position
	#pub = rospy.Publisher('PosArrayFovis', PoseArray)
	pos.orientation = data.pose.orientation
	posArr.poses.append(pos)
	pub.publish(posArr)
	
def listener():
	pub = rospy.Publisher('FovisPoseArray', PoseArray)
	rospy.init_node('fovis_odometry_to_posearray', anonymous=True)
	rospy.Subscriber("FovisPose", PoseStamped, callback)
	rospy.spin()

if __name__ == '__main__':
	print "Starting FovisPoseArray..."
	listener();
