#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg

# 初始化MoveIt
moveit_commander.roscpp_initialize(sys.argv)
rospy.init_node('move_group_python_interface_tutorial', anonymous=True)
robot = moveit_commander.RobotCommander()
scene = moveit_commander.PlanningSceneInterface()
group_name = "manipulator_i10"
move_group = moveit_commander.MoveGroupCommander(group_name)

# 设置机器人姿态
joint_goal = move_group.get_current_joint_values()
joint_goal[0] = 0.0
joint_goal[1] = -0.5
joint_goal[2] = 0.5
joint_goal[3] = -0.57
joint_goal[4] = 0.0
joint_goal[5] = 0.0
move_group.go(joint_goal, wait=True)
move_group.stop()

# 设置机器人运动轨迹
waypoints = []
scale = 1.0
wpose = move_group.get_current_pose().pose
wpose.position.z += scale * 0.1  
waypoints.append(copy.deepcopy(wpose))
wpose.position.x += scale * 0.2 
waypoints.append(copy.deepcopy(wpose))
wpose.position.y += scale * 0.2 
waypoints.append(copy.deepcopy(wpose))
wpose.position.x -= scale * 0.2 
waypoints.append(copy.deepcopy(wpose))
wpose.position.y -= scale * 0.2 
waypoints.append(copy.deepcopy(wpose))

# 运动规划并执行运动
(plan, fraction) = move_group.compute_cartesian_path(
                               waypoints,   # 路径点列表
                               0.01,        # 步长
                               0.0)         # 跳过的路径分数阈值
move_group.execute(plan, wait=True)

# 关闭MoveIt
moveit_commander.roscpp_shutdown()
