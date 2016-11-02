//Alligns all robots given,extracting their yaw
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

namespace { 

double GAIN_ANGULAR = 1.0;

}

void alignUpdate(int rid)
{
  Eigen::Vector3d position = poses[rid].translation();
  Eigen::Vector3d bearing = poses[rid].rotation() * Eigen::Vector3d::UnitX();
  double yaw = std::atan2(bearing.y(), bearing.x());
  ROS_DEBUG("robot %d: %lf %lf %lf\n", rid, position.x(), position.y(), yaw);
  
  double yaw_difference = 0.0;
  int neighbors = 0;
  BOOST_FOREACH(const int i, robot_ids | boost::adaptors::map_values) {
    if (i == rid) { continue; }
    Eigen::Vector3d b = poses[i].rotation() * Eigen::Vector3d::UnitX();
    double target_yaw = std::atan2(b.y(), b.x());
    yaw_difference += angles::shortest_angular_distance(yaw, target_yaw);
    neighbors++;
  }
  if (neighbors > 0) {
    yaw_difference = angles::normalize_angle(yaw_difference / neighbors);
  }

  double w = GAIN_ANGULAR * yaw_difference;
  publishCommand(rid, 0.0, w);
}

void alignHeading()
{
  BOOST_FOREACH(const int rid, robot_ids | boost::adaptors::map_values) {
    alignUpdate(rid);
  }
}

} 

