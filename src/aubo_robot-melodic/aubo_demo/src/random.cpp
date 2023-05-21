#include <moveit/move_group_interface/move_group_interface.h>

int main(int argc, char **argv)
{
    ros::init(argc, argv, "moveit_random_demo", ros::init_options::AnonymousName);
    ros::AsyncSpinner spinner(1);
    spinner.start();
    Moveit::planning_interface::MoveGroupInterface group("aubo_e5");
    group.setRandomTarget();
    group.move();
    ros::waitForShutdown();
}