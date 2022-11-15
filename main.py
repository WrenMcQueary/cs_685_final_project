"""See README.md for details on usage etc."""


import argparse

from goal_parsing import *
from ik import *
from transitions import *
from visualization import *


if __name__ == "__main__":
    # Parse arguments
    parser = argparse.ArgumentParser(description="See README.md for details on usage etc.")
    parser.add_argument("--file", "-f", action="store", nargs=1, type=str, required=True, help="Filepath of the points to draw.", dest="filepath")
    parser.add_argument("--inbetween", "-i", action="store", nargs=1, type=int, required=False, default=10, help="Number of transition frames to draw between each goal pose", dest="n_between")
    args = parser.parse_args()
    filepath = args.filepath[0]
    n_between = args.n_between
    if isinstance(n_between, int):
        n_between = n_between
    else:
        n_between = n_between[0]

    # Get list of goal positions from file content
    goal_positions, goal_colors = get_goal_list_and_goal_colors(filepath)

    # Initialize segment lengths and joint angles
    l_0 = 1
    l_1 = 1
    l_2 = 1
    l_3 = 1
    theta_0 = pi/2
    theta_1 = 0
    theta_2 = 0
    theta_3 = 2*pi/3
    theta_4 = pi/3

    # Get series of angles
    theta_0_sequence, theta_1_sequence, theta_2_sequence, theta_3_sequence, theta_4_sequence = [theta_0], [theta_1], [theta_2], [theta_3], [theta_4]
    goal_position_indices = []
    for goal_position in goal_positions:
        # Get best angles for this goal
        goal_theta_0, goal_theta_1, goal_theta_2, goal_theta_3, goal_theta_4 = ccd(goal_position, l_0, l_1, l_2, l_3, [theta_0_sequence[-1], theta_1_sequence[-1], theta_2_sequence[-1], theta_3_sequence[-1], theta_4_sequence[-1]])
        thetas_between = get_angles_along_trajectory(n_between, theta_0_sequence[-1], theta_1_sequence[-1], theta_2_sequence[-1], theta_3_sequence[-1], theta_4_sequence[-1], goal_theta_0, goal_theta_1, goal_theta_2, goal_theta_3, goal_theta_4)
        theta_0_sequence += thetas_between[0]
        theta_1_sequence += thetas_between[1]
        theta_2_sequence += thetas_between[2]
        theta_3_sequence += thetas_between[3]
        theta_4_sequence += thetas_between[4]
        theta_0_sequence.append(goal_theta_0)
        theta_1_sequence.append(goal_theta_1)
        theta_2_sequence.append(goal_theta_2)
        theta_3_sequence.append(goal_theta_3)
        theta_4_sequence.append(goal_theta_4)
        goal_position_indices.append(len(theta_0_sequence) - 1)

    # Animate
    animate(l_0, l_1, l_2, l_3, theta_0_sequence, theta_1_sequence, theta_2_sequence, theta_3_sequence, theta_4_sequence, goal_position_indices, goal_colors)
