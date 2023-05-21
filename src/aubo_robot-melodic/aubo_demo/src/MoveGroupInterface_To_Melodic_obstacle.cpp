/*
 * Software License Agreement (BSD License)
 *
 * Copyright (c) 2017-2018, AUBO Robotics
 * All rights reserved.
 *
 *
 *  Author: zhaoyu
 *  email : zhaoyu@aubo-robotics.cn
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *       * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *       * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the
 *       documentation and/or other materials provided with the distribution.
 *       * Neither the name of the Southwest Research Institute, nor the names
 *       of its contributors may be used to endorse or promote products derived
 *       from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */




#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>
#include <moveit_msgs/DisplayTrajectory.h>
#include <tf/LinearMath/Quaternion.h>
#include <ros/ros.h>
#include <geometry_msgs/Pose.h>
#include <moveit_msgs/PlanningScene.h>
#include <moveit_msgs/AttachedCollisionObject.h>
#include <moveit_msgs/GetStateValidity.h>
#include <moveit_msgs/DisplayRobotState.h>
#include <moveit_msgs/ApplyPlanningScene.h>
#include <moveit_msgs/CollisionObject.h>

#include <moveit/robot_model_loader/robot_model_loader.h>
#include <moveit/robot_state/robot_state.h>
#include <moveit/robot_state/conversions.h>

#include <moveit_visual_tools/moveit_visual_tools.h>

#include <vector>
#include <iostream>

int main(int argc, char** argv)
{
  ros::init(argc, argv, "MoveGroupInterface_To_Melodic");
  ros::NodeHandle node_handle;
  // Start a thread
  ros::AsyncSpinner spinner(1);
  spinner.start();

  // Define the planning group name
  static const std::string PLANNING_GROUP = "manipulator_i5";
  moveit::planning_interface::MoveGroupInterface move_group(PLANNING_GROUP);
  move_group.allowReplanning(true);

  //self collision check
  robot_model_loader::RobotModelLoader robot_model_loader("robot_description");
  const moveit::core::RobotModelPtr& kinematic_model = robot_model_loader.getModel();
  planning_scene::PlanningScene planner_scene(kinematic_model);
  
  collision_detection::CollisionRequest collision_request;
  collision_detection::CollisionResult collision_result;
  planner_scene.checkSelfCollision(collision_request, collision_result);
  ROS_INFO_STREAM("Test1: Current state is " << (collision_result.collision ? "in" : "not in") << " self collision");
  //Define scene
  ros::Publisher planning_scene_diff_publisher = node_handle.advertise<moveit_msgs::PlanningScene>("planning_scene", 1);
  ros::WallDuration sleep_t(0.5);
  while (planning_scene_diff_publisher.getNumSubscribers() < 1)
  {
    sleep_t.sleep();
  }
  //add an object
  moveit_msgs::CollisionObject obj;
  obj.header.frame_id = "world";
  obj.id="box";
  //定义物体形状尺寸
  shape_msgs::SolidPrimitive primitive;
  primitive.type=primitive.BOX;
  primitive.dimensions.resize(3); //dimensions是一个vector,为其分配3个元素空间
  primitive.dimensions[0] =0.1;   //x轴上长度
  primitive.dimensions[1] =0.2;   //y轴上长度
  primitive.dimensions[2] =0.3;   //z轴上长度
  //定义物体方位
  geometry_msgs::Pose pose;
  pose.position.x = 0;
  pose.position.y = 0;
  pose.position.z = 0;
  // pose.orientation.x = 2.0;
  // pose.orientation.x = 3.0;
  // pose.orientation.x = 4.0;
  //将形状添加到obj
  obj.primitives.push_back(primitive);
  obj.primitive_poses.push_back(pose);
  //定义操作为添加
  obj.operation = obj.ADD;
  //定义一个PlanningScene消息
  moveit_msgs::PlanningScene planning_scene;
  planning_scene.world.collision_objects.push_back(obj);
  planning_scene.is_diff = true;
  //发布该消息
  planning_scene_diff_publisher.publish(planning_scene);

  //custom pose
  // geometry_msgs::Pose target_pose1;
  // target_pose1.orientation.w = 1.0;
  // target_pose1.position.x = 0.28;
  // target_pose1.position.y = -0.2;
  // target_pose1.position.z = 0.5;
  // move_group.setPoseTarget(target_pose1);

  for(int i = 0; i < 5; i++)
  {
    move_group.setRandomTarget();
    moveit::planning_interface::MoveGroupInterface::Plan plan0;
    bool success = (move_group.plan(plan0) == moveit::planning_interface::MoveItErrorCode::SUCCESS);
    ROS_INFO("plan result: %s", success? "SUCCESS":"FAILED");
    move_group.execute(plan0);
    sleep(1);
  }

  //delete object
  // moveit_msgs::CollisionObject remove_obj;
  // remove_obj.id="box";
  // remove_obj.operation = remove_obj.REMOVE;
  // planning_scene.world.collision_objects.clear();
  // planning_scene.world.collision_objects.push_back(remove_obj);
  // //发布消息
  // planning_scene_diff_publisher.publish(planning_scene);

  ros::shutdown();
  return 0;
}
