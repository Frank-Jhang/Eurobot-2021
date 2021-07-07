//版本：整合底盤、通訊、導航用
//用處：把cmd_vel轉換成txST1的topic
#include <ros/ros.h>
#include <typeinfo>
#include <stdio.h>
#include <std_msgs/Int32MultiArray.h>
#include <geometry_msgs/TransformStamped.h>
#include <geometry_msgs/Twist.h>

using namespace std;
float current_speed[2] = {0.0,0.0};

void cmd_callback(const geometry_msgs::Twist &twist_aux){
    //ROS_INFO("in to call back");
    current_speed[0]= twist_aux.linear.x;
    current_speed[1]= twist_aux.angular.z;
};

int main(int argc, char **argv){
    ros::init(argc, argv, "planner_to_ST");
    ros::NodeHandle n;
    ros::NodeHandle nh_lcoal("~");
    ros::Subscriber cmd_vel_sub = n.subscribe("cmd_vel",100, &cmd_callback) ;
    ros::Publisher txST1 = n.advertise<std_msgs::Int32MultiArray>("txST1", 1000);
    std_msgs::Int32MultiArray toST_info;


    bool initial_state = true;  // 'true' to set the initial pose at ST 
    float p_init_x;
    float p_init_y;
    float p_init_yaw;

    nh_lcoal.param<float>("init_x", p_init_x, 1.0);
    nh_lcoal.param<float>("init_y", p_init_y, 1.5);
    nh_lcoal.param<float>("init_yaw", p_init_yaw, 0.0);

    //default
    // for(int i = 0;i<2;i++){
    //     toST_info.data.push_back(0);
    // }
    // toST_info.data[2] = p_init_x;
    // toST_info.data[3] = p_init_y;
    // toST_info.data[4] = p_init_yaw;
                
    ros::Rate rate(200);
    while(ros::ok()){
        ros::spinOnce();
        toST_info.data.clear();
        if(initial_state){
            if ( fabs(current_speed[0]) >0.0 || fabs(current_speed[1]) >0.0){
                ROS_INFO("initial state over");
                initial_state = false;
                p_init_x = -2000;
                p_init_y = -3000;
            }   
        }
        for(int i = 0;i<2;i++){
            toST_info.data.push_back(int(current_speed[i]*1000));
        }
        toST_info.data.push_back(int(p_init_x *1000));
        toST_info.data.push_back(int(p_init_y *1000));
        toST_info.data.push_back(int(p_init_yaw *1000));       

        txST1.publish(toST_info);
        rate.sleep(); 
    }
    return 0;
}
