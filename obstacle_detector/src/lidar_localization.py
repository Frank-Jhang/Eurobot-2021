#!/usr/bin/env python
import rospy
import math
import itertools
import numpy as np
from geometry_msgs.msg import Pose
from geometry_msgs.msg import Point
from geometry_msgs.msg import PoseWithCovarianceStamped
from obstacle_detector.msg import Obstacles
from std_msgs.msg import String

post1 = (0.045,3.094)
post2 = (1.95,3.094)
post3 = (1, -0.05)
radius = [0, 0, 0]
pos = Obstacles()
circleList = []
seq = 1
post1_r = (0,0)


def callback(data):
    del circleList[:]
    for i in data.circles:
        circleList.append(i)

def listener():

    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    rospy.init_node('lidar_localization', anonymous=True)
    rospy.Subscriber("/raw_obstacles", Obstacles, callback)
    while not rospy.is_shutdown():
        print(len(circleList))
        if len(circleList) == 3:
            comb = itertools.combinations(circleList, 2)
            post12_mindis = 100000
            for i in comb:
                dis = math.sqrt(pow(i[0].center.x - i[1].center.x, 2) + pow(i[0].center.y - i[1].center.y, 2))
                if dis < post12_mindis:
                    post12_mindis = dis
                    post12 = [i[0].center, i[1].center]
            for i in circleList:
                if i.center.x != post12[0].x and i.center.y != post12[0].y and i.center.x != post12[1].x and i.center.y != post12[1].y :
                    post3_r = i.center
            mid_point = ((post12[0].x + post12[1].x)/2, (post12[0].y + post12[1].y)/2)
            vec_3mid = (mid_point[0]-post3_r.x, mid_point[1]-post3_r.y)
            dis_3mid = math.sqrt( pow(vec_3mid[0], 2) + pow(vec_3mid[1], 2) )
            unit_vec_3mid = (vec_3mid[0]/dis_3mid, vec_3mid[1]/dis_3mid)
            unit_vec_mid1 = (math.cos(math.pi/2) * unit_vec_3mid[0] - math.sin(math.pi/2) * unit_vec_3mid[1], math.cos(math.pi/2) * unit_vec_3mid[1] + math.sin(math.pi/2) * unit_vec_3mid[0])
            unit_vec_mid2 = (math.cos(-math.pi/2) * unit_vec_3mid[0] - math.sin(-math.pi/2) * unit_vec_3mid[1], math.cos(-math.pi/2) * unit_vec_3mid[1] + math.sin(-math.pi/2) * unit_vec_3mid[0])
            post1_r = ((mid_point[0] + unit_vec_mid1[0] * post12_mindis/2), (mid_point[1] + unit_vec_mid1[1] * post12_mindis/2))
            post2_r = ((mid_point[0] + unit_vec_mid2[0] * post12_mindis/2), (mid_point[1] + unit_vec_mid2[1] * post12_mindis/2))
            # for i in post12:
            #     print ("post12 = "), (i.x, i.y)
            # print ("mid_point = "), mid_point
            # print ("post3_r = "), (post3_r.x, post3_r.y)
            # print ("vec_3mid = "), vec_3mid
            # print ("unit_vec_3mid = "), unit_vec_3mid
            # print ("unit_vec_mid1 = "), unit_vec_mid1
            # print ("unit_vec_3mid = "), unit_vec_3mid# print ("unit_vec_mid2 = "), unit_vec_mid2
            # print ("post12_mindis = "), post12_mindis
            # print ("post1_r = "), post1_r
            # print ("post2_r = "), post2_r
            r1_square = pow(post1_r[0], 2) + pow(post1_r[1], 2)
            r2_square = pow(post2_r[0], 2) + pow(post2_r[1], 2)
            x = (r1_square - r2_square + pow(post12_mindis, 2))/(2*post12_mindis)
            y = post1[1] - math.sqrt( r1_square - pow(x, 2))
            x += post1[0]

            unit_vec_12 = ( (post2_r[0]-post1_r[0])/post12_mindis, (post2_r[1]-post1_r[1])/post12_mindis )
            theta = math.acos( unit_vec_12[0])
            if post1_r[1] < post2_r[1]:
                theta = -1*theta

            pitch = 0
            roll = 0
            yaw = theta

            qx = np.sin(roll/2) * np.cos(pitch/2) * np.cos(yaw/2) - np.cos(roll/2) * np.sin(pitch/2) * np.sin(yaw/2)
            qy = np.cos(roll/2) * np.sin(pitch/2) * np.cos(yaw/2) + np.sin(roll/2) * np.cos(pitch/2) * np.sin(yaw/2)
            qz = np.cos(roll/2) * np.cos(pitch/2) * np.sin(yaw/2) - np.sin(roll/2) * np.sin(pitch/2) * np.cos(yaw/2)
            qw = np.cos(roll/2) * np.cos(pitch/2) * np.cos(yaw/2) + np.sin(roll/2) * np.sin(pitch/2) * np.sin(yaw/2)


            print ("(x, y, theta) = "), (x, y, theta)
            print ("(x, y, z, w) = "), (qx, qy, qz, qw)
            
            now = rospy.get_rostime()

            pos_publisher = rospy.Publisher('lidar_bonbonbon', PoseWithCovarianceStamped, queue_size=10)
            pos_msg = PoseWithCovarianceStamped()
            pos_msg.header.stamp = now
            pos_msg.header.frame_id = "map"
            pos_msg.pose.pose.position.x = x
            pos_msg.pose.pose.position.y = y
            pos_msg.pose.pose.position.z = 0
            pos_msg.pose.pose.orientation.x = qx
            pos_msg.pose.pose.orientation.y = qy
            pos_msg.pose.pose.orientation.z = qz
            pos_msg.pose.pose.orientation.w = qw
            pos_msg.pose.covariance = [1e-9, 0, 0, 0, 0, 0,0, 1e-9, 0, 0, 0, 0,0, 0, 10000000000, 0, 0, 0, 0, 0, 0, 100000000000, 0, 0,0, 0, 0, 0, 1000000000, 0,0, 0, 0, 0, 0, 1e-9]
            pos_publisher.publish(pos_msg)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()
if __name__ == '__main__':
    listener()
