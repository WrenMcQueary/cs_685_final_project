"""Code for creating graphics of the arm given its state."""


import matplotlib.pyplot as plt
import matplotlib.animation as animation
from mpl_toolkits.mplot3d import Axes3D
import numpy as np
from math import pi, sin, cos, tan

from transforms import *


def update_lines(frameno: int, ax, lines: list, l_0: float, l_1: float, l_2: float, l_3:float, theta_0_sequence: list, theta_1_sequence: list, theta_2_sequence: list, theta_3_sequence: list, theta_4_sequence: list, goal_position_indices: list, goal_colors: list) -> None:
    """Set the lines such that they match the current frame.
    :param frameno:         which frame of the animation to set the lines to.
    :param lines:           the line objects to set.  The first four are the arm segments, and the remaining four are the canvas.
    :param goal_position_indices:  list of frame indices at which the end effector is at a goal.
    """
    # Calculate joint positions
    theta_0 = theta_0_sequence[frameno]
    theta_1 = theta_1_sequence[frameno]
    theta_2 = theta_2_sequence[frameno]
    theta_3 = theta_3_sequence[frameno]
    theta_4 = theta_4_sequence[frameno]
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

    print(f"theta_4 is {theta_4}")  # TODO: Remove debugging line

    # Update the line objects
    lines[0].set_data_3d([pos_base[0][0], pos_joint_1[0][0]], [pos_base[1][0], pos_joint_1[1][0]], [pos_base[2][0], pos_joint_1[2][0]])
    lines[1].set_data_3d([pos_joint_1[0][0], pos_joint_2[0][0]], [pos_joint_1[1][0], pos_joint_2[1][0]], [pos_joint_1[2][0], pos_joint_2[2][0]])
    lines[2].set_data_3d([pos_joint_2[0][0], pos_joint_3[0][0]], [pos_joint_2[1][0], pos_joint_3[1][0]], [pos_joint_2[2][0], pos_joint_3[2][0]])
    lines[3].set_data_3d([pos_joint_3[0][0], pos_joint_4[0][0]], [pos_joint_3[1][0], pos_joint_4[1][0]], [pos_joint_3[2][0], pos_joint_4[2][0]])
    lines[4].set_data_3d([-1, 1], [1, 1], [-1, -1])
    lines[5].set_data_3d([1, 1], [1, 1], [-1, 1])
    lines[6].set_data_3d([1, -1], [1, 1], [1, 1])
    lines[7].set_data_3d([-1, -1], [1, 1], [1, -1])

    # If we're at a goal position, draw a dot of the appropriate color at the end effector's position
    if frameno in goal_position_indices:
        this_goal_color = goal_colors[goal_position_indices.index(frameno)]
        ax.scatter(pos_joint_4[0][0], pos_joint_4[1][0], pos_joint_4[2][0], color=this_goal_color)


def animate(l_0: float, l_1: float, l_2: float, l_3: float, theta_0_sequence: list, theta_1_sequence: list, theta_2_sequence: list, theta_3_sequence: list, theta_4_sequence: list, goal_position_indices: list, goal_colors: list) -> None:
    """Given a sequence of values for the robot arm's angles, create a 3D animation of the robot arm cycling through
    those poses.
    """
    fig = plt.figure()
    ax = fig.add_subplot(111, projection="3d")

    # Create lines initially without data
    lines = [ax.plot([], [], [])[0] for _ in range(8)]

    # Set the axes properties
    ax.set(xlim3d=(-2, 2), xlabel="X")
    ax.set(ylim3d=(-2, 2), xlabel="Y")
    ax.set(zlim3d=(-2, 2), xlabel="Z")

    # Create the Animation object
    ani = animation.FuncAnimation(fig, update_lines, len(theta_0_sequence), fargs=(ax, lines, l_0, l_1, l_2, l_3, theta_0_sequence, theta_1_sequence, theta_2_sequence, theta_3_sequence, theta_4_sequence, goal_position_indices, goal_colors), interval=100)     # fargs is additional arguments (besides frameno) to pass to each call of update_lines
    plt.show()
