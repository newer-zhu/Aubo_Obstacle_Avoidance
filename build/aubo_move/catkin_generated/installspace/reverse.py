#!/usr/bin/env python2
# -*- coding: utf-8 -*-
import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from math import pi
from std_msgs.msg import String
from moveit_commander.conversions import pose_to_list

# 初始化ROS节点
rospy.init_node('inverse_kinematics')

# 初始化MoveGroup界面
move_group = moveit_commander.MoveGroupCommander("manipulator_i10")
display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path',moveit_msgs.msg.DisplayTrajectory,queue_size=20)
# 设置机械臂的终端执行器目标姿态
target_pose = geometry_msgs.msg.Pose()
target_pose.orientation.w = 1.0
target_pose.position.x = 0.5
target_pose.position.y = 0.0
target_pose.position.z = 0.5

# 设置机械臂逆运动学求解器
move_group.set_pose_target(target_pose)


# 计算运动路径
my_plan = move_group.plan()
move_group.execute(my_plan, wait=True)

display_trajectory = moveit_msgs.msg.DisplayTrajectory()
display_trajectory.trajectory_start = move_group.get_current_state()
display_trajectory.trajectory.append(my_plan)
# Publish
display_trajectory_publisher.publish(display_trajectory);

# 打印各个关节的矩阵
#jacobian_matrix = move_group.get_current_joint_values()
robot_state = move_group.get_current_state()
#jacobian_matrix = robot_state.get_jacobian_matrix(move_group.get_name())
rospy.loginfo(robot_state)

# 打印结果
rospy.loginfo("Plan %s", "SUCCESS" if my_plan else "FAILED")

