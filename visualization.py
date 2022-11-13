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
    transform_base_to_joint_1 = get_translation_x_transform(l_0) @ get_rotation_y_transform(-theta_1) @ get_rotation_z_transform(theta_0)
    pos_joint_1 = transform_base_to_joint_1 @ pos_base
    transform_joint_1_to_joint_2 = get_translation_x_transform(l_1) @ get_rotation_y_transform(theta_2)
    pos_joint_2 = transform_joint_1_to_joint_2 @ pos_joint_1
    ax.plot([pos_base[0][0], pos_joint_1[0][0]], [pos_base[1][0], pos_joint_1[1][0]], [pos_base[2][0], pos_joint_1[2][0]])
    ax.plot([pos_joint_1[0][0], pos_joint_2[0][0]], [pos_joint_1[1][0], pos_joint_2[1][0]], [pos_joint_1[2][0], pos_joint_2[2][0]])
    plt.show()


draw_snapshot(1, 1, pi/4, pi/4, pi/4)     # TODO: Remove debugging line
