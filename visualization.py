"""Code for creating graphics of the arm given its state."""


import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D
import numpy as np
from math import pi, sin, cos, tan

from transforms import *


def draw_snapshot(l_0: float, l_1: float, theta_0: float, theta_1: float, theta_2: float) -> None:
    """Given angles describing the robot arm's current pose, produce a stationary plot
    of that pose in space.
    """
    fig = plt.figure()
    ax = fig.add_subplot(111, projection="3d")

    # Draw the canvas
    ax.plot([-1, 1], [1, 1], [-1, -1])
    ax.plot([1, 1], [1, 1], [-1, 1])
    ax.plot([1, -1], [1, 1], [1, 1])
    ax.plot([-1, -1], [1, 1], [1, -1])

    # Draw the arm
    pos_base = np.array([[0],
                         [0],
                         [0],
                         [1]])
    transform_base_to_joint_1 = get_forward_transform_base_to_joint_1(l_0, theta_0, theta_1)
    pos_joint_1 = transform_base_to_joint_1 @ pos_base
    transform_base_to_joint_2 = get_forward_transform_base_to_joint_2(l_0, l_1, theta_0, theta_1, theta_2)
    pos_joint_2 = transform_base_to_joint_2 @ pos_base
    ax.plot([pos_base[0][0], pos_joint_1[0][0]], [pos_base[1][0], pos_joint_1[1][0]], [pos_base[2][0], pos_joint_1[2][0]])
    ax.plot([pos_joint_1[0][0], pos_joint_2[0][0]], [pos_joint_1[1][0], pos_joint_2[1][0]], [pos_joint_1[2][0], pos_joint_2[2][0]])

    # Check that arm distances are correct
    dist_b_j1 = ((pos_base[0][0] - pos_joint_1[0][0])**2 + (pos_base[1][0] - pos_joint_1[1][0])**2 + (pos_base[2][0] - pos_joint_1[2][0])**2) ** 0.5
    dist_j1_j2 = ((pos_joint_1[0][0] - pos_joint_2[0][0])**2 + (pos_joint_1[1][0] - pos_joint_2[1][0])**2 + (pos_joint_1[2][0] - pos_joint_2[2][0])**2) ** 0.5
    print(f"Arm lengths in plot are {dist_b_j1}, {dist_j1_j2}")

    plt.show()
