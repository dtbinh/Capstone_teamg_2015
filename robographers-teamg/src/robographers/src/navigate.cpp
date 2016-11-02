#include <ros/ros.h>
#include "robographers/AprilTagList.h"
#include "robographers/AprilTag.h"
#include "geometry_msgs/Twist.h"

class navigate
{
	ros::NodeHandle nh;
	ros::Publisher image_pub;
	ros::Subscriber image_sub;
	robographers::AprilTagList at;
	geometry_msgs::Twist base_cmd;

public:
	navigate()
	{
	    image_sub=nh.subscribe("/april_tags",1,&navigate::callback,this);
	    image_pub=nh.advertise<geometry_msgs::Twist>("/mobile_base/commands/velocity",1);
		
	}
	
	void callback(const robographers::AprilTagList::ConstPtr &msg)
	{ 
            at=*msg;
  	    ROS_INFO("Distance from person is [%f]",at.april_tags[0].z);
 
	    float zdes=100;
  	    float xdes=0;
  
  	    float Zdiff= at.april_tags[0].z - zdes;
            float xdiff= at.april_tags[0].x-xdes;
  	    if(Zdiff>2 && xdiff>2)
  	    {
   	        base_cmd.linear.y=0;
   	        base_cmd.linear.z=0;
   	        base_cmd.angular.x=0;
   	        base_cmd.angular.y=0;
   	        base_cmd.linear.x=0.15;
   	        base_cmd.angular.z=0.15;
                ROS_INFO_STREAM("Going left");
  	    }
  	    else if (Zdiff>2 && xdiff<2 && xdiff>0.0)
            {
   	        base_cmd.linear.y=0;
   	        base_cmd.linear.z=0;
   	        base_cmd.angular.x=0;
   	        base_cmd.angular.y=0;
   	        base_cmd.linear.x=0.15;
   	        base_cmd.angular.z=0;
 	        ROS_INFO_STREAM("Going straight");
  	    }
  	    else if (Zdiff>2 && xdiff<2 && xdiff<0.0) 
            {
   	        base_cmd.linear.y=0;
   	        base_cmd.linear.z=0;
   	        base_cmd.angular.x=0;
   	        base_cmd.angular.y=0;
   	        base_cmd.linear.x=0.15;
   	        base_cmd.angular.z=-0.15;
                ROS_INFO_STREAM("going right");
     	    }
            else
            {
                base_cmd.linear.y=0;
   	        base_cmd.linear.z=0;
   	        base_cmd.angular.x=0;
   	        base_cmd.angular.y=0;
   	        base_cmd.linear.x=0;
   	        base_cmd.angular.z=0;
   	        ROS_INFO_STREAM("Stopping turtlebot");
            }
  
  
	    image_pub.publish(base_cmd);
	}
};


int main(int argc, char **argv)
{
ros::init(argc,argv,"navigate");
navigate navigate_node;
ros::spin();
return 0;
}


