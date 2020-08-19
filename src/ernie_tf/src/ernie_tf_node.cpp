#include <ros/ros.h>
#include <tf/transform_broadcaster.h>

int main(int argc, char** argv) { 
	ros::init(argc, argv, "robot_tf_publisher");
	ros::NodeHandle node; 
	ros::Rate r(100);

	tf::TransformBroadcaster broadcaster;
	tf::Quaternion realsense_quat; 
	realsense_quat.setRPY(1.57, 3.14, 1.57);

	while(node.ok()) {
		// position of lidar
		broadcaster.sendTransform(
			tf::StampedTransform(
				tf::Transform(
					tf::Quaternion(0,0,0,1), // vector ypr
					tf::Vector3(0, 0.0254, 0.1524)
				), // translation xyz
				ros::Time::now(), "base_link", "laser"
			));
		// position of realsense 
		broadcaster.sendTransform(
			tf::StampedTransform(
				tf::Transform(
					realsense_quat, // vector ypr
					tf::Vector3(0.254, 0, 0.1524)
				), // translation xyz
				ros::Time::now(), "base_link", "camera_depth_optical_frame"
			));
		r.sleep();
	}
}
