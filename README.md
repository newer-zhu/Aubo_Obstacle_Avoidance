## 介绍
Aubo I5与RealsenseD435虚拟仿真。将点云转换为OctoMap导入Planning Scene避障。
环境准备可参考官方包：https://github.com/AuboRobot/aubo_robot
其实没写什么代码，就是做了一些配置的工作与整合
## 运行
```
roslaunch aubo_i5_moveit_config moveit_planning_execution.launch robot_ip:=127.0.0.1
 
roslaunch aubo_gazebo aubo_i5_gazebo_control.launch
```
