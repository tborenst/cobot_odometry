//Odometry includes
#include <stdio.h>
//#include <stdlib>
#include <string.h>
#include <signal.h>
#include <iostream>
#include <string>
#include <sstream>
#include "data_capture.hpp"
#include "geometry_msgs/PoseStamped.h"
#include <math.h>

#include "eigen3/Eigen/Geometry"
using namespace Eigen;

#include "ros/ros.h"
#include <cstdlib>
#include "fovis.hpp"
#include "libfreenect/libfreenect.h"

sig_atomic_t shutdown_flag = 0;
static void
sig_action(int signal, siginfo_t *s, void *user)
{
  	shutdown_flag = 1;
}


std::string
isometryToString(const Eigen::Isometry3d& m)
{
  	char result[80];
  	memset(result, 0, sizeof(result));
  	Eigen::Vector3d xyz = m.translation();
  	Eigen::Vector3d rpy = m.rotation().eulerAngles(0, 1, 2);
 	snprintf(result, 79, "x:%6.2f y:%6.2f z:%6.2f r:%6.2f p:%6.2f y:%6.2f",
      	xyz(0), xyz(1), xyz(2),
      	rpy(0) * 180/M_PI, rpy(1) * 180/M_PI, rpy(2) * 180/M_PI);
  	return std::string(result);
}


int main(int argc, char **argv)
{
	//Init, name of node is fovis_odometry
	ros::init(argc, argv, "fovis_odometry");
	ros::NodeHandle n;
	ros::Publisher odom_pub = n.advertise<geometry_msgs::PoseStamped>("FovisPose", 5);
	ros::Rate loop_rate(31);
	
	// initialize the device
	fovis_example::DataCapture* cap = new fovis_example::DataCapture();
	char *outputFileName;
 	if (argc == 2){
    		outputFileName = argv[1];
    		fprintf(stdout, "output file: %s.dat\n", outputFileName);
 	}	
 	if(!cap->initialize()) {
		fprintf(stderr, "Unable to initialize Kinect sensor\n");
    		return 1;
  	}
  	if(!cap->startDataCapture()) {
    		fprintf(stderr, "Unable to start data capture\n");
    		return 1;
  	}

  	// get the RGB camera parameters of our device
  	fovis::Rectification rect(cap->getRgbParameters());

  	fovis::VisualOdometryOptions options =
      	fovis::VisualOdometry::getDefaultOptions();
  	// If we wanted to play around with the different VO parameter, set
  	// them here in the "options" variable.

  	// setup the visual odometry
  	fovis::VisualOdometry* odom = new fovis::VisualOdometry(&rect, options);

  	// exit cleanly on CTL-C
  	struct sigaction new_action;
  	new_action.sa_sigaction = sig_action;
  	sigemptyset(&new_action.sa_mask);
  	new_action.sa_flags = 0;
  	sigaction(SIGINT, &new_action, NULL);
  	sigaction(SIGTERM, &new_action, NULL);
  	sigaction(SIGHUP, &new_action, NULL);
	//end fovis init
	geometry_msgs::PoseStamped msg;

	while (ros::ok() && !shutdown_flag){
		if(!cap->captureOne()) {
      			fprintf(stderr, "Capture failed\n");
			break;
    		}
    		odom->processFrame(cap->getGrayImage(), cap->getDepthImage());
    		// get the integrated pose estimate.
    		Eigen::Isometry3d cam_to_local = odom->getPose();
    		// get the motion estimate for this frame to the previous frame.
    		

		//Eigen::Isometry3d motion_estimate = odom->getMotionEstimate();
    		

		// display the motion estimate.  These values are all given in the RGB
    		// camera frame, where +Z is forward, +X points right, +Y points down, and
    		// the origin is located at the focal point of the RGB camera.
		Eigen::Vector3d xyz = cam_to_local.translation();
		//Eigen::Vector3d rpy = motion_estimate.rotation().eulerAngles(0,1,2);
		
        	std::cout << isometryToString(cam_to_local) << "\n";
		
		//float yaw = rpy(2)*2.0*3.14/360.0;
		//float roll = rpy(0)*2.0*3.14/360.0;
		//float pitch = rpy(1)*2.0*3.14/360.0;
		// AngleAxisf(yaw, Vector3f::UnitZ())*
    		//     AngleAxisf(pitch, Vector3f::UnitY())*
    		//     AngleAxisf(roll, Vector3f::UnitX());
		
		Quaternion<double> q(cam_to_local.rotation());
		//printf("The quaternion is %f %f %f %f\n",
       		//    q.w(), q.x(), q.y(), q.z());

		/////////////////////////////////////////////////////////
		//  y is rotation on z, r is rotation on axis parallel 
		// to kinect, p is rotation on axis perpendicular
		//////////////////////////////////////////////////////////			
		msg.pose.position.x = xyz(0);
		msg.pose.position.y = xyz(2); // the "z" fovis supplies is y on the horizontal plane
		msg.pose.position.z = 0;

		msg.pose.orientation.x = q.x();
		msg.pose.orientation.y = q.y();
		msg.pose.orientation.z = q.z();
		msg.pose.orientation.w = q.w();
		
		odom_pub.publish(msg);
		
		ros::spinOnce();
		loop_rate.sleep();
		
	}


}
