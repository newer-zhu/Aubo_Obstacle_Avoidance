## 介绍
Aubo I5与RealsenseD435虚拟仿真。将点云转换为OctoMap导入Planning Scene避障。

## 运行
```
roslaunch aubo_i5_moveit_config moveit_planning_execution.launch robot_ip:=127.0.0.1
 
roslaunch aubo_gazebo aubo_i5_gazebo_control.launch
```
