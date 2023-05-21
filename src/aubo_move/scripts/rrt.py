#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
import random
import math
from std_msgs.msg import String
from moveit_commander.conversions import pose_to_list
#from moveit_visual_tools import MoveItVisualTools

def main():
    # 初始化 MoveIt
    moveit_commander.roscpp_initialize(sys.argv)
    rospy.init_node('move_group_python_interface', anonymous=True)

    # 获取机械臂的 group
    robot = moveit_commander.RobotCommander()
    group_name = "manipulator_i10"
    move_group = moveit_commander.MoveGroupCommander(group_name)

    # 设置机械臂终端的参考系
    end_effector_link = move_group.get_end_effector_link()
    reference_frame = "world"
    move_group.set_pose_reference_frame(reference_frame)

    # 设置规划器参数
    move_group.set_planner_id("RRTConnectkConfigDefault")
    move_group.set_num_planning_attempts(10)
    move_group.set_planning_time(5)

    # 初始化可视化工具
    #visual_tools = MoveItVisualTools(reference_frame)

    # 执行随机点规划任务
    for i in range(5):
        # 随机生成目标点位置
        target_pose = geometry_msgs.msg.Pose()
        target_pose.position.x = random.uniform(0.1, 0.6)
        target_pose.position.y = random.uniform(-0.3, 0.3)
        target_pose.position.z = random.uniform(0.2, 0.6)
        target_pose.orientation.x = 0.0
        target_pose.orientation.y = 0.0
        target_pose.orientation.z = 0.0
        target_pose.orientation.w = 1.0

        # 设置目标点作为机械臂的终点
        move_group.set_pose_target(target_pose, end_effector_link)

        # 进行规划并计时
        start_time = rospy.get_time()
        plan = move_group.go(wait=True)
        end_time = rospy.get_time()

        # 显示规划结果和时间
        print(end_time - start_time)
        

        # 显示尾迹
        #visual_tools.publishPath(plan.trajectory, color=(1, 0, 1), alpha=0.8)
        rospy.sleep(2) # 等待 RViz 更新尾迹

    # 关闭 MoveIt
    moveit_commander.roscpp_shutdown()

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass


