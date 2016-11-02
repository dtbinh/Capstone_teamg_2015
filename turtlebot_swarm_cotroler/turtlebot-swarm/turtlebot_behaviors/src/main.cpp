#include <ros/ros.h>

#include <iostream>
#include <map>

#include <boost/foreach.hpp>

#include <boost/algorithm/clamp.hpp>
#include <boost/range/adaptor/map.hpp>

#include <Eigen/Core>
#include <Eigen/Geometry>

#include <angles/angles.h>

#include <apriltags_ros/AprilTagDetection.h>
#include <apriltags_ros/AprilTagDetectionArray.h>

#include <eigen_conversions/eigen_msg.h>

#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>

#include <std_msgs/String.h>

#include "turtlebot_behaviors/turtlebot_behaviors.h"

namespace {

const int WORLD_ORIGIN_TAG_ID = 9;
Eigen::Affine3d world_origin = Eigen::Affine3d::Identity();
bool reset_origin = true;
std::map<std::string, boost::function0<void> > behaviors;
std::string current_behavior = "";
std::string current_leader = "";
std::map<int, ros::Publisher> cmd_pubs;


std::map<int, Eigen::Affine3d>odom_prev;
std::map<int,double> prev_time; 

void poseCallback(const apriltags_ros::AprilTagDetectionArray::ConstPtr & msg) 
{
  // XXX: robot to tag frame (move this elsewhere?)
  Eigen::Affine3d T_rt(Eigen::AngleAxisd(-M_PI/2.0, Eigen::Vector3d::UnitZ()));

  BOOST_FOREACH(const apriltags_ros::AprilTagDetection & tag, msg->detections) {
    if (turtlebot_behaviors::poses.find(tag.id) != turtlebot_behaviors::poses.end()) {
      Eigen::Affine3d T_to;
      tf::poseMsgToEigen(tag.pose.pose, T_to);
      if (reset_origin) {
        if (tag.id == WORLD_ORIGIN_TAG_ID) {
          Eigen::Affine3d T_wo = T_to * T_rt;
          world_origin = T_wo.inverse();
          reset_origin = false;
          ROS_INFO("Established world origin");
        }
      } else {
        const Eigen::Affine3d & T_ow = world_origin;
        Eigen::Affine3d T_rw = T_ow * T_to * T_rt;
        turtlebot_behaviors::poses[tag.id] = T_rw;
        odom_prev[tag.id] = turtlebot_behaviors::odoms[tag.id];
      }
    }
  }
}

void odomCallback(int rid, 
  const geometry_msgs::PoseWithCovarianceStamped::ConstPtr & msg)
{
  tf::poseMsgToEigen(msg->pose.pose, turtlebot_behaviors::odoms[rid]);
  // XXX: Do something more useful with odometry data
  Eigen::Affine3d T_od_w= odom_prev[rid].inverse()* turtlebot_behaviors::odoms[rid];
  turtlebot_behaviors::poses[rid]= T_od_w*turtlebot_behaviors::poses[rid];
  
  // tf::poseMsgToEigen(msg->pose.pose, turtlebot_behaviors::odom_prev[rid]);
}



//update using velocity and angular velocity

void poseUpdate(int rid,double v,double w)
{   
    double current_time= ros::Time::now().toSec();
    double time = current_time-prev_time[rid];
    Eigen::Vector3d bearing = turtlebot_behaviors::poses[rid].rotation()* Eigen::Vector3d::UnitX();
    Eigen::Affine3d rt(Eigen::AngleAxisd(w*time, Eigen::Vector3d::UnitZ()));
    turtlebot_behaviors::poses[rid] = rt*turtlebot_behaviors::poses[rid];
    turtlebot_behaviors::poses[rid].translation()= v*time*bearing +turtlebot_behaviors::poses[rid].translation();
    std::cout<<"translation update::  "<<  turtlebot_behaviors::poses[rid].translation();
   prev_time[rid] = ros::Time::now().toSec();
}

void behaviorCallback(const std_msgs::String::ConstPtr & msg)
{
  current_behavior = msg->data;
  ROS_INFO("current_behavior: %s", current_behavior.c_str());
}

void leaderCallback(const std_msgs::String::ConstPtr & msg)
{
  current_leader = msg->data;
  ROS_INFO("current_leader: %s", current_leader.c_str());
}

}

namespace turtlebot_behaviors {

std::map<int, Eigen::Affine3d> poses;
std::map<int, Eigen::Affine3d> odoms;
std::map<std::string, int> robot_ids;

void publishCommand(int rid, double v, double w)
{
  const double MAX_LINEAR_VELOCITY = 0.5;
  const double MAX_ANGULAR_VELOCITY = M_PI/4.0;

  if (robot_ids.find(current_leader) != robot_ids.end()) {
    if (rid == robot_ids[current_leader]) { return; }
  }

  namespace ba = boost::algorithm;
  geometry_msgs::Twist::Ptr cmd(new geometry_msgs::Twist);
  cmd->linear.x = ba::clamp(v, -MAX_LINEAR_VELOCITY, MAX_LINEAR_VELOCITY);
  cmd->angular.z = ba::clamp(w, -MAX_ANGULAR_VELOCITY, MAX_ANGULAR_VELOCITY);
  cmd_pubs[rid].publish(cmd);
}

void moveRobotToPoint(int rid, const Eigen::Vector3d & point)
{
  const double GAIN_LINEAR = 0.2;
  const double GAIN_ANGULAR = 1.0;
  const double DISTANCE_TOLERANCE = 0.1;

  Eigen::Vector3d position = poses[rid].translation();
  Eigen::Vector3d bearing = poses[rid].rotation() * Eigen::Vector3d::UnitX();
  double yaw = std::atan2(bearing.y(), bearing.x());
  ROS_DEBUG("robot %d: %lf %lf %lf", rid, position.x(), position.y(), yaw);
  
  Eigen::Vector3d displacement = point - position;
  double target_yaw = std::atan2(displacement.y(), displacement.x());
  double v = GAIN_LINEAR * displacement.dot(bearing);
  double w = GAIN_ANGULAR * angles::shortest_angular_distance(yaw, target_yaw);
  v = ((displacement.norm() > DISTANCE_TOLERANCE) && (v > 0.0)) ? v : 0.0;
  if(v==0.0)
 {
   w=0.0;
  }

  publishCommand(rid, v, w); 
}

} // turtlebot_behaviors


int main(int argc, char ** argv)
{
  ros::init(argc, argv, "swarm_controller");
  ros::NodeHandle nh;
  ros::NodeHandle pnh("~");

  // Enabled behaviors
  behaviors["moveStop"] = turtlebot_behaviors::moveStop;
  behaviors["moveForward"] = turtlebot_behaviors::moveForward;
  behaviors["moveBackward"] = turtlebot_behaviors::moveBackward;
  behaviors["turnClockwise"] = turtlebot_behaviors::turnClockwise;
  behaviors["turnCounterclockwise"] = turtlebot_behaviors::turnCounterclockwise;
  behaviors["flocking"] = turtlebot_behaviors::flocking;
  behaviors["alignHeading"] = turtlebot_behaviors::alignHeading;
  behaviors["formationLineX"] = turtlebot_behaviors::formationLineX;
  behaviors["formationLineY"] = turtlebot_behaviors::formationLineY;
  behaviors["formationCircle"] = turtlebot_behaviors::formationCircle;
 
  // Get a list of available robots
  pnh.getParam("robot_ids", turtlebot_behaviors::robot_ids);

  // Subscriber for tag detections 
  ros::Subscriber pose_sub = 
    nh.subscribe<apriltags_ros::AprilTagDetectionArray>(
      "tag_detections", 1, poseCallback);

  // Subscriber for current behavior
  ros::Subscriber behavior_sub = nh.subscribe<std_msgs::String>(
    "behavior", 1, behaviorCallback);

  // Subscriber for selected leader
  ros::Subscriber leader_sub = nh.subscribe<std_msgs::String>(
    "leader", 1, leaderCallback);

  // Setup command publishers and odometry subscribers
  std::map<int, ros::Subscriber> odom_subs;
  BOOST_FOREACH(const std::string & name, turtlebot_behaviors::robot_ids | boost::adaptors::map_keys) {
    int rid = turtlebot_behaviors::robot_ids[name];
    std::string pub_topic("/" + name + "/teleop/cmd_vel");
    std::string sub_topic("/" + name + "/teleop/odom_combined");
    turtlebot_behaviors::poses[rid] = Eigen::Affine3d::Identity();
    turtlebot_behaviors::odoms[rid] = Eigen::Affine3d::Identity();
    cmd_pubs[rid] = nh.advertise<geometry_msgs::Twist>(pub_topic, 1);
    odom_subs[rid] = nh.subscribe<geometry_msgs::PoseWithCovarianceStamped>(
      sub_topic, 1, boost::bind(odomCallback, rid, _1));
  }
  
  ros::Rate rate(10);
  while (ros::ok()) {
    if (!reset_origin) {
      if (behaviors.find(current_behavior) != behaviors.end()) { 
        behaviors[current_behavior]();
      } else {
        turtlebot_behaviors::moveStop(); 
      }
    }
    
    ros::spinOnce();
    rate.sleep();
  }
  
  return 0;
}

