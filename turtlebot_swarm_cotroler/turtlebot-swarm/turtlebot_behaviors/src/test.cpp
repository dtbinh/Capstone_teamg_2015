
#include <ros/ros.h>

#include <iostream>
#include <map>

#include <boost/foreach.hpp>

#include <boost/algorithm/clamp.hpp>
#include <boost/range/adaptor/map.hpp>

#include <Eigen/Core>
#include <Eigen/Geometry>

#include <angles/angles.h>

#include <eigen_conversions/eigen_msg.h>

#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>

#include "turtlebot_behaviors/turtlebot_behaviors.h"

namespace turtlebot_behaviors {
namespace testing {

void testMoveRobotToPoint()
{
  moveRobotToPoint(7, Eigen::Vector3d(1.5, -0.25, 0.0));
  moveRobotToPoint(8, Eigen::Vector3d(3.0, -0.5, 0.0));
  moveRobotToPoint(9, Eigen::Vector3d(0.5, 0.0, 0.0));
}

}
}


