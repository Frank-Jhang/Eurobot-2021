//版本：整合底盤、通訊、導航用
//用處：把cmd_vel轉換成txST1的topic
#include <ros/ros.h>
#include <typeinfo>
#include <stdio.h>
#include <std_msgs/Int32MultiArray.h>
#include <geometry_msgs/TransformStamped.h>
#include <geometry_msgs/Twist.h>

using namespace std;
float current_speed[2];
int get_info = 0;
float recent_linear_vel;
float recent_angle_vel;


void cmd_callback(const geometry_msgs::Twist &twist_aux){
    if(twist_aux.linear.x == 0 && (twist_aux.angular.z==0) ){
	    ROS_INFO("ignore zero velocity");
    }
    else{
    	recent_linear_vel = twist_aux.linear.x;
    	recent_angle_vel = twist_aux.angular.z;  	
    }
    //ROS_INFO("in to call back");
    current_speed[0]= recent_linear_vel;
    //current_speed[1]= twist_aux.linear.y;
    current_speed[1]= recent_angle_vel;
    //ROS_INFO("output v : %f",current_speed[0]);
    //ROS_INFO("output omega : %f",current_speed[1]);
    get_info = 0;
};

int main(int argc, char **argv){
    ros::init(argc, argv, "planner_to_ST");
    ros::NodeHandle n;
    ros::Subscriber cmd_vel_sub = n.subscribe("cmd_vel",100, &cmd_callback) ;
    ros::Publisher txST1 = n.advertise<std_msgs::Int32MultiArray>("txST1", 1000);
    std_msgs::Int32MultiArray toST_info;

    //default
    for(int i = 0;i<2;i++){
        toST_info.data.push_back(0 );
    }            
    ros::Rate rate(200);
    while(ros::ok()){
        if(get_info == 0){
            for(int i = 0;i<2;i++){
                toST_info.data[i] = ( int(current_speed[i]*1000) );
                //ROS_INFO("info : %d", toST_info.data[i]);
            }      
           txST1.publish(toST_info);
           get_info = 1;    
        }
        ros::spinOnce();
        //rate.sleep(); 
    }
    return 0;
}
