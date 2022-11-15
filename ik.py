"""Code for running inverse kinematics."""


import numpy as np
from math import pi, sin, cos

from transforms import *


def collides(l_0: float, l_1: float, l_2: float, l_3: float, angles: list) -> bool:
    """Given a proposed pose for the robot, return true if any part of the robot would collide with the obstacle.
    Else return false.
    """
    # Calculate joint positions
    theta_0 = angles[0]
    theta_1 = angles[1]
    theta_2 = angles[2]
    theta_3 = angles[3]
    theta_4 = angles[4]
    pos_base = np.array([[0],
                         [0],
                         [0],
                         [1]])
    transform_base_to_joint_1 = get_forward_transform_base_to_joint_1(l_0, theta_0, theta_1)
    pos_joint_1 = transform_base_to_joint_1 @ pos_base
    transform_base_to_joint_2 = get_forward_transform_base_to_joint_2(l_0, l_1, theta_0, theta_1, theta_2)
    pos_joint_2 = transform_base_to_joint_2 @ pos_base
    transform_base_to_joint_3 = get_forward_transform_base_to_joint_3(l_0, l_1, l_2, theta_0, theta_1, theta_2, theta_3)
    pos_joint_3 = transform_base_to_joint_3 @ pos_base
    transform_base_to_joint_4 = get_forward_transform_base_to_joint_4(l_0, l_1, l_2, l_3, theta_0, theta_1, theta_2, theta_3, theta_4)
    pos_joint_4 = transform_base_to_joint_4 @ pos_base

    # Make a neat list of arm segment endpoint pairs
    segment_endpoint_pairs = [[pos_base, pos_joint_1], [pos_joint_1, pos_joint_2], [pos_joint_2, pos_joint_3], [pos_joint_3, pos_joint_4]]

    # For each arm segment, check if it crosses plane of the obstacle (ie the y=1 plane).  If it does, check if the point of the arm
    # that crosses the plane is inside the obstacle.
    for endpoint_pair in segment_endpoint_pairs:
        p0, p1 = endpoint_pair[0], endpoint_pair[1]
        if np.sign(p0[1][0] - 1) == np.sign(p1[1][0] - 1):  # Skip if no crossing of the y=1 plane occurs
            continue
        alpha = (1 - p1[1][0]) / (p0[1][0] - p1[1][0])   # percentage of the way from p0 to p1 where the crossing of the y=1 plane occurs
        x_when_crossing_plane = p0[0][0]*alpha + p1[0][0]*(1-alpha)
        z_when_crossing_plane = p0[2][0]*alpha + p1[2][0]*(1-alpha)
        if (-1 <= x_when_crossing_plane <= 1) and (-1 <= z_when_crossing_plane <= 1):
            return True
    return False


def ccd(goal: np.array, l_0: float, l_1: float, l_2: float, l_3: float, angles: list, use_obstacle_avoidance, iterations=5) -> [float, float, float, float, float]:
    """Run Cyclic Coordinate Descent to approximate a new best pose.  Return the set of angles defining that pose.
    goal is a 3D column vector plus an affine coordinate of 1.
    :param angles:  the initial pose of the arm.  A list composed of [theta_0, theta_1, theta_2, theta_3, theta_4]
    """
    goal_x, goal_y, goal_z = goal[0][0], goal[1][0], goal[2][0]
    pos_base = np.array([[0], [0], [0], [1]])
    for ii in range(iterations):
        #print(f"Running iteration {ii}/{iterations}...")
        for aa in range(len(angles)):
            # Find the value for this angle that minimizes the distance between the end effector and the goal position
            best_possible_angle = None
            best_possible_distance = float("inf")
            for possible_angle in np.arange(0, 2*pi, 2*pi/360):
                angle_list_under_consideration = angles
                angle_list_under_consideration[aa] = possible_angle
                pos_end_effector = get_forward_transform_base_to_joint_4(l_0, l_1, l_2, l_3, angle_list_under_consideration[0], angle_list_under_consideration[1], angle_list_under_consideration[2], angle_list_under_consideration[3], angle_list_under_consideration[4]) @ pos_base
                this_distance = ((pos_end_effector[0][0] - goal_x)**2 + (pos_end_effector[1][0] - goal_y)**2 + (pos_end_effector[2][0] - goal_z)**2)**0.5
                if this_distance >= best_possible_distance:
                    continue
                if use_obstacle_avoidance:
                    if collides(l_0, l_1, l_2, l_3, angles):
                        continue
                best_possible_distance = this_distance
                best_possible_angle = possible_angle
            # Set the angle to this value
            angles[aa] = best_possible_angle
    return angles
