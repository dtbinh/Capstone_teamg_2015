

/*Reads the April tag ids and calibrates the camera.
  Converts them to global map frame
 Note: To be run on the main system*/

#include <ros/ros.h>

#include <iostream>
#include <map>
#include <set>
#include <sstream>

#include <boost/foreach.hpp>
#include <boost/lexical_cast.hpp>

#include <boost/algorithm/clamp.hpp>

#include <boost/range/adaptor/map.hpp>
#include <boost/range/algorithm/copy.hpp>

#include <Eigen/Core>
#include <Eigen/Geometry>

#include <apriltags_ros/AprilTagDetection.h>
#include <apriltags_ros/AprilTagDetectionArray.h>

#include <eigen_conversions/eigen_msg.h>

std::map<int, std::map<std::string, std::string> > camera_tree;
std::set<std::string> camera_names;
std::string root_camera;
ros::Publisher pub;

std::map<std::string, Eigen::Affine3d> camera_poses;
std::map<std::pair<int, std::string>, Eigen::Affine3d> tag_poses;


/**  Tag Call back function
 * @param  Camera name, parameters, April tag ids
 * @param
 * Output: Forms a camera tree using tag detections
 */
void tagDetectionsCallback(const std::string & camera_name,
  const apriltags_ros::AprilTagDetectionArray::ConstPtr & msg)
{
  apriltags_ros::AprilTagDetectionArray::Ptr m(
    new apriltags_ros::AprilTagDetectionArray);

  BOOST_FOREACH(const apriltags_ros::AprilTagDetection & tag, msg->detections) {
    if (camera_tree.find(tag.id) != camera_tree.end()) {
      std::pair<int, std::string> tag_frame(tag.id, camera_name);
      tf::poseMsgToEigen(tag.pose.pose, tag_poses[tag_frame]);
      const std::string & parent = camera_tree[tag.id]["parent"];
      const std::string & child = camera_tree[tag.id]["child"];
      if (camera_name == child) {
        std::pair<int, std::string> tag_child_frame(tag.id, child);
        std::pair<int, std::string> tag_parent_frame(tag.id, parent);
        if ((camera_poses.find(parent) != camera_poses.end()) && 
            (tag_poses.find(tag_parent_frame) != tag_poses.end())) {
          const Eigen::Affine3d & T_tc = tag_poses[tag_child_frame]; 
          const Eigen::Affine3d & T_tp = tag_poses[tag_parent_frame];
          const Eigen::Affine3d & T_po = camera_poses[parent];
          Eigen::Affine3d T_co = T_po * T_tp * T_tc.inverse();
          camera_poses[camera_name] = T_co;
        }
      }
    } else if (camera_poses.size() == camera_names.size()) {
      Eigen::Affine3d T_tc;
      tf::poseMsgToEigen(tag.pose.pose, T_tc);
      const Eigen::Affine3d & T_co = camera_poses[camera_name];
      Eigen::Affine3d T_to = T_co * T_tc; 
      apriltags_ros::AprilTagDetection detection = tag;
      detection.pose.header.frame_id = root_camera;
      tf::poseEigenToMsg(T_to, detection.pose.pose);
      m->detections.push_back(detection);
    }
  }

  if (!m->detections.empty()) {
    pub.publish(m);
  }
}

void parseCameraTree(XmlRpc::XmlRpcValue & ct)
{
  ROS_ASSERT(ct.getType() == XmlRpc::XmlRpcValue::TypeArray);
  for (int i=0; i<ct.size(); i++) {
    XmlRpc::XmlRpcValue & tag = ct[i];
    ROS_ASSERT(tag.getType() == XmlRpc::XmlRpcValue::TypeStruct);
    ROS_ASSERT(tag["id"].getType() == XmlRpc::XmlRpcValue::TypeInt);
    ROS_ASSERT(tag["parent"].getType() == XmlRpc::XmlRpcValue::TypeString);
    ROS_ASSERT(tag["child"].getType() == XmlRpc::XmlRpcValue::TypeString);

    int id = static_cast<int>(tag["id"]);
    camera_tree[id]["parent"] = static_cast<std::string>(tag["parent"]);
    camera_tree[id]["child"] = static_cast<std::string>(tag["child"]);
  }
}

int main(int argc, char ** argv)
{
  ros::init(argc, argv, "overhead_localization");
  ros::NodeHandle nh;
  ros::NodeHandle pnh("~");

  XmlRpc::XmlRpcValue ct_xml;
  if (!pnh.getParam("camera_tree", ct_xml)) {
    ROS_WARN("No tags specified");
  }
  parseCameraTree(ct_xml);

  // Find all child-parent relationships for cameras
  std::map<std::string, std::string> child_to_parent;
  BOOST_FOREACH(const int tag_id, camera_tree | boost::adaptors::map_keys) {
    const std::string & parent = camera_tree[tag_id]["parent"];
    const std::string & child = camera_tree[tag_id]["child"];
    ROS_ASSERT_MSG(child_to_parent.find(child) == child_to_parent.end(), 
      "Camera %s has multiple parents", child.c_str());
    child_to_parent[child] = parent;
  }

  // Make a list of all cameras
  boost::copy(child_to_parent | boost::adaptors::map_keys, 
    std::inserter(camera_names, camera_names.end()));
  boost::copy(child_to_parent | boost::adaptors::map_values,
    std::inserter(camera_names, camera_names.end()));
 
  // Find a camera with no parents
  BOOST_FOREACH(const std::string & name, camera_names) {
    if (child_to_parent.find(name) == child_to_parent.end()) {
      ROS_ASSERT_MSG(root_camera.empty(), "Camera tree has multiple roots");
      root_camera = name;
      camera_poses[root_camera] = Eigen::Affine3d::Identity();
    }
  }
  ROS_ASSERT_MSG(!root_camera.empty(), "Unable to find root of camera tree");

  // Publisher for all tag detections in common frame
  pub = nh.advertise<apriltags_ros::AprilTagDetectionArray>(
    "tag_detections", 1);

  // Subscribe to tag detections
  std::vector<ros::Subscriber> camera_subs;
  BOOST_FOREACH(const std::string & name, camera_names) {
    std::string topic = "/" + name + "/tag_detections";
    ros::Subscriber s = nh.subscribe<apriltags_ros::AprilTagDetectionArray>(
      topic, 1, boost::bind(tagDetectionsCallback, name, _1));
    camera_subs.push_back(s);
  }
  
  ros::spin();
  return 0;
}

