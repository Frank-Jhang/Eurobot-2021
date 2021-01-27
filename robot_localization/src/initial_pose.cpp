#include <ros/ros.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <geometry_msgs/Pose.h>


int main(int argc, char **argv){
    ros::init(argc, argv, "initial_pose");
    ROS_INFO("ggggggggg");
    ros::NodeHandle n;
    ros::Publisher initial_pose_set = n.advertise<geometry_msgs::PoseWithCovarianceStamped>("set_pose", 1000);
    ros::Rate loop_rate(1);
    geometry_msgs::PoseWithCovarianceStamped initial;
    initial.header.seq = 0;
    initial.header.stamp.sec = 0;
    initial.header.stamp.nsec = 0;
    initial.header.frame_id = "map";
    initial.pose.pose.position.x = 0.8;
    initial.pose.pose.position.y = 0.3;
    initial.pose.pose.position.z = 0;
    initial.pose.pose.orientation.x = 0;
    initial.pose.pose.orientation.y = 0;
    initial.pose.pose.orientation.z = 0;
    initial.pose.pose.orientation.w =  1;
    initial.pose.covariance = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0};
    int time = 0;
    while(ros::ok()){
        if(time <=1){
            time +=1;
            initial_pose_set.publish(initial);  
            ROS_INFO("yayaya");         
        }
        ROS_INFO("nononon");
        loop_rate.sleep(); 
    }
    ros::spinOnce();
    return 0;
}