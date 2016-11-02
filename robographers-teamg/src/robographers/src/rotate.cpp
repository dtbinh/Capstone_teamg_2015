# include "ros/ros.h"
# include "stdlib.h"
# include "sensor_msgs/Image.h"
#include "robographers/AprilTagList.h"
#include "geometry_msgs/Twist.h"
 
//call back function
void videoReceived(const robographers::AprilTagList::ConstPtr& msg)
{
 ROS_INFO_STREAM("Image recieved");
 ros::shutdown();
}


int main(int argc, char **argv)
{
geometry_msgs::Twist base_cmd;
ros::init(argc,argv,"rotate");
ros:: NodeHandle nh;
ROS_INFO_STREAM("deep");
ros::Subscriber image_sub = nh.subscribe ("/april_tags", 1000, videoReceived);
ros::Publisher image_pub=nh.advertise<geometry_msgs::Twist>("/mobile_base/commands/velocity",1);
while(ros::ok)
{
 
			base_cmd.linear.y=0;
		  	base_cmd.linear.z=0;
   			base_cmd.angular.x=0; 
   			base_cmd.angular.y=0;
   			base_cmd.linear.x=0;
   			base_cmd.angular.z=0.25;
			ROS_INFO_STREAM("rotate");
			image_pub.publish(base_cmd);
 			ros::spinOnce();
}
}
