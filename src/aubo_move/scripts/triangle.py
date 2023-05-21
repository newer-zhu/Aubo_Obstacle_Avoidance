#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
from moveit_msgs.msg import RobotTrajectory
from trajectory_msgs.msg import JointTrajectoryPoint
from geometry_msgs.msg import Pose
from moveit_commander import MoveGroupCommander

def move_linear_trajectory():
    # 初始化ROS节点
    rospy.init_node('move_linear_trajectory', anonymous=True)

    # 创建MoveIt的MoveGroupCommander对象
    move_group = MoveGroupCommander("manipulator_i10")

    # 设置机械臂的起始位置姿态
    pose_start = Pose()
    # 设置起始位置的姿态信息

    # 设置机械臂的目标位置姿态
    pose_end = Pose()
    # 设置目标位置的姿态信息

    # 定义直线轨迹的路径点
    waypoints = []
    waypoints.append(pose_start)
    waypoints.append(pose_end)

    # 设置终端步进值
    step = 0.01

    # 将路径点转换为关节空间的轨迹
    (plan, fraction) = move_group.compute_cartesian_path(
        waypoints,  # 路径点
        step,  # 步进值
        0.0  # 跳过碰撞检测
    )

    # 执行轨迹
    move_group.execute(plan, wait=True)

if __name__ == '__main__':
    try:
        move_linear_trajectory()
    except rospy.ROSInterruptException:
        pass
