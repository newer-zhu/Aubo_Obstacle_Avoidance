#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>
#include <moveit_msgs/DisplayRobotState.h>
#include <moveit_msgs/DisplayTrajectory.h>
#include <moveit_msgs/AttachedCollisionObject.h>
#include <moveit_msgs/CollisionObject.h>
#include <moveit_visual_tools/moveit_visual_tools.h>
#include <sensor_msgs/PointCloud.h>
#include <sensor_msgs/PointCloud2.h>
#include <sensor_msgs/point_cloud_conversion.h>
#include <ros/ros.h>
#include <iostream>
#include <Eigen/Core>
#include <Eigen/Geometry>

#define pi (3.1415926535897932346f)
using namespace std;

sensor_msgs::PointCloud out_pointcloud;
float x;
float y;
float z;
void pointCloud2ToZ(const sensor_msgs::PointCloud2 &msg)
{
	sensor_msgs::convertPointCloud2ToPointCloud(msg, out_pointcloud);
    // cout << "points_size = " << out_pointcloud.points.size() << endl;
  float z_min=10;
  for (int i=0; i<out_pointcloud.points.size(); i++) {
    if(out_pointcloud.points[i].y < 0.1){
          if(out_pointcloud.points[i].z < z_min){
          z_min = out_pointcloud.points[i].z;
      }
    }
  }
  float x_sum=0;
  float y_sum=0;
  float z_sum=0;
  int points_num = 20;
  int j = 0;
  for (int i=0; i<out_pointcloud.points.size(); i++){
    if(out_pointcloud.points[i].y < 0.1 and out_pointcloud.points[i].z < z_min + 0.01){
      if(j >= points_num){
        break;
      }
      x_sum = x_sum + out_pointcloud.points[i].x;
      y_sum = y_sum + out_pointcloud.points[i].y;
      z_sum = z_sum + out_pointcloud.points[i].z;
      j = j+1;
    }
  }
  x = x_sum / points_num;
  y = y_sum / points_num;
  z = z_min;
}
int main(int argc, char** argv)
{
  ros::init(argc, argv, "move2object");
  ros::NodeHandle node_handle;
  ros::AsyncSpinner spinner(1);
  spinner.start();
  ros::Subscriber sub = node_handle.subscribe("/d435/depth/color/points", 1, pointCloud2ToZ);
  // ros::Subscriber sub = node_handle.subscribe("/camera/depth/points", 1, pointCloud2ToZ);
  ros::Duration(1).sleep();
  ros::spinOnce();
  cout<<  "target in camera frame is  "<<"  x= " << x << "   y = " << y <<  "   z= " << z <<endl;

  Eigen::Isometry3d T=Eigen::Isometry3d::Identity();
  Eigen::AngleAxisd rotation_vector(-pi,Eigen::Vector3d(0,1,0));  //  ar3_gazebo.urdf.xacro

  //  ar3_gazebo_copy.xacro
  Eigen::AngleAxisd rotation_vector1;
  rotation_vector1 = Eigen::AngleAxisd(0, Eigen::Vector3d::UnitZ()) * 
                      Eigen::AngleAxisd(-pi, Eigen::Vector3d::UnitY()) * 
                      Eigen::AngleAxisd(0, Eigen::Vector3d::UnitX());  

  T.rotate(rotation_vector);
  T.pretranslate(Eigen::Vector3d(0, -0.35, 0.7));


  Eigen::Vector3d v(x,y,z);  
  Eigen::Vector3d v_transformed = T*v;

  Eigen::Vector3d ea(pi/2, 0, pi);
  Eigen::Quaterniond quaternion;
  quaternion = Eigen::AngleAxisd(ea[0], Eigen::Vector3d::UnitZ()) * Eigen::AngleAxisd(ea[1], Eigen::Vector3d::UnitY()) * Eigen::AngleAxisd(ea[2], Eigen::Vector3d::UnitX());
  
  cout <<"target_xyz in  world  frame is  " << "  x= " << v_transformed[0] << "   y = " <<   v_transformed[1]  <<  "   z= " <<   v_transformed[2] <<endl;
  static const std::string PLANNING_GROUP = "manipulator";
  // The :move_group_interface:`MoveGroupInterface` class can be easily
  // setup using just the name of the planning group you would like to control and plan for.
  moveit::planning_interface::MoveGroupInterface move_group(PLANNING_GROUP);
  // We will use the :planning_scene_interface:`PlanningSceneInterface`
  // class to add and remove collision objects in our "virtual world" scene
  moveit::planning_interface::PlanningSceneInterface planning_scene_interface;
  // Raw pointers are frequently used to refer to the planning group for improved performance.
  const robot_state::JointModelGroup* joint_model_group = move_group.getCurrentState()->getJointModelGroup(PLANNING_GROUP);
  // Getting Basic Information
  // We can print the name of the reference frame for this robot.
  ROS_INFO_NAMED("tutorial", "Planning frame: %s", move_group.getPlanningFrame().c_str());
  // We can also print the name of the end-effector link for this group.
  ROS_INFO_NAMED("tutorial", "End effector link: %s", move_group.getEndEffectorLink().c_str());
  geometry_msgs::Pose target_pose1;
  target_pose1.orientation.w = quaternion.w();
  target_pose1.orientation.x = quaternion.x();
  target_pose1.orientation.y = quaternion.y();
  target_pose1.orientation.z =  quaternion.z();
  target_pose1.position.x = v_transformed[0];
  target_pose1.position.y = v_transformed[1];
  target_pose1.position.z = v_transformed[2]+0.02;

  cout << "move to traget  pose1 is  " <<"  x= " << target_pose1.position.x<< "   y = " <<  target_pose1.position.y <<  "   z= " <<   target_pose1.position.z <<endl;
  move_group.setPoseTarget(target_pose1);

  // Now, we call the planner to compute the plan and visualize it.
  // Note that we are just planning, not asking move_group
  // to actually move the robot.
  moveit::planning_interface::MoveGroupInterface::Plan my_plan;

  bool success = (move_group.plan(my_plan) == moveit::planning_interface::MoveItErrorCode::SUCCESS);

  // ROS_INFO_NAMED("tutorial", "Visualizing plan 1 (pose goal) %s", success ? "" : "FAILED");
  // ROS_INFO_NAMED("tutorial", "Visualizing plan 1 as trajectory line");
  
  move_group.move();

  ros::shutdown();
  return 0;
}


