"""Code for running inverse kinematics."""


import numpy as np
from math import pi, sin, cos

from transforms import *


def ccd(goal: np.array, l_0: float, l_1: float, angles: list, iterations=1000) -> [float, float, float]:
    """Run Cyclic Coordinate Descent to approximate a new best pose.  Return the set of angles defining that pose.
    goal is a 3D column vector plus an affine coordinate of 1.
    :param angles:  the initial pose of the arm.  A list composed of [theta_0, theta_1, theta_2]
    """
    goal_x, goal_y, goal_z = goal[0][0], goal[1][0], goal[2][0]
    for ii in range(iterations):
        for aa in range(len(angles)):
            # Find the value for this angle that minimizes the distance between the end effector and the goal position
            best_possible_angle = 0
            best_possible_distance = float("inf")
            for possible_angle in np.arange(0, 360, 0.1):
                angle_list_under_consideration = angles
                angle_list_under_consideration[aa] = possible_angle
                pos_end_effector = get_forward_transform_base_to_joint_2(l_0, l_1, angle_list_under_consideration[0], angle_list_under_consideration[1], angle_list_under_consideration[2])
                this_distance = ((pos_end_effector[0][0] - goal_x)**2 + (pos_end_effector[1][0] - goal_y)**2 + (pos_end_effector[2][0] - goal_z)**2)**0.5
                if this_distance < best_possible_distance:
                    best_possible_distance = this_distance
                    best_possible_angle = possible_angle
            # Set the angle to this value
            angles[aa] = best_possible_angle

    return angles
