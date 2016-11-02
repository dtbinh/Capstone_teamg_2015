//Alligns robot in global X and global y direction

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

const double R_CONNECTIVITY = 3.0;
const double R_REPEL = 0.7;
const double GAIN_DISPLACEMENT = 1.0;

}

void formationUpdate(int rid, std::map<int, Eigen::Vector3d> & formation)
{
  Eigen::Vector3d position = poses[rid].translation();
  Eigen::Vector3d bearing = poses[rid].rotation() * Eigen::Vector3d::UnitX();
  double yaw = std::atan2(bearing.y(), bearing.x());
  ROS_DEBUG("robot %d: %lf %lf %lf\n", rid, position.x(), position.y(), yaw);
  
  Eigen::Vector3d displacement = Eigen::Vector3d::Zero();
  int neighbors = 0;
  BOOST_FOREACH(const int i, robot_ids | boost::adaptors::map_values) {
    if (i == rid) { continue; }
    Eigen::Vector3d d = poses[i].translation() - poses[rid].translation();
    const Eigen::Vector3d & position_difference = d;
    Eigen::Vector3d formation_difference = formation[i] - formation[rid];
    if (d.norm() < R_CONNECTIVITY) {
      Eigen::Vector3d delta = position_difference - formation_difference;
      displacement += (d.norm() < R_REPEL) ? -d/d.squaredNorm() : delta;
      neighbors++;
    }
  }
  if (neighbors > 0) {
    displacement /= neighbors;
  }
  displacement *= GAIN_DISPLACEMENT;
  Eigen::Vector3d target = poses[rid].translation() + displacement;
  moveRobotToPoint(rid, target);
}

void formationLine(const Eigen::Vector3d & direction)
{
  const double LINE_SPACING = 0.7;
  Eigen::Vector3d position = Eigen::Vector3d::Zero();
  std::map<int, Eigen::Vector3d> formation;
  BOOST_FOREACH(const int rid, robot_ids | boost::adaptors::map_values) {
    formation[rid] = position;
    position += LINE_SPACING * direction.normalized();
  }
  BOOST_FOREACH(const int rid, robot_ids | boost::adaptors::map_values) {
    formationUpdate(rid, formation);
  }
}

void formationLineX()
{
  formationLine(Eigen::Vector3d::UnitX());
}

void formationLineY()
{
  formationLine(Eigen::Vector3d::UnitY());
}

void formationCircle()
{
  const double CIRCLE_RADIUS = 1.0;
  std::map<int, Eigen::Vector3d> formation;
  double angle = 0.0;
  BOOST_FOREACH(const int rid, robot_ids | boost::adaptors::map_values) {
    Eigen::Vector3d r = 
      Eigen::AngleAxisd(angle, Eigen::Vector3d::UnitZ()) *
      Eigen::Vector3d::UnitX();
    formation[rid] = CIRCLE_RADIUS * r;
    angle += 2.0*M_PI / robot_ids.size();
  }
  BOOST_FOREACH(const int rid, robot_ids | boost::adaptors::map_values) {
    formationUpdate(rid, formation);
  }
}

} 

