"""See README.md for details on usage etc."""


import argparse

from goal_parsing import *
from ik import *
from visualization import *


if __name__ == "__main__":
    # Parse arguments
    parser = argparse.ArgumentParser(description="See README.md for details on usage etc.")
    parser.add_argument("--file", "-f", action="store", nargs=1, type=str, required=True, help="Filepath of the points to draw.", dest="filepath")
    args = parser.parse_args()
    filepath = args.filepath[0]

    # Get list of goal positions from file content
    goal_positions = get_goal_list(filepath)

    # Initialize angles
    l_0 = 1
    l_1 = 1
    theta_0 = 0
    theta_1 = 0
    theta_2 = 0

    """
    # Display the arm at each goal position
    for goal_position in goal_positions:
        # Get best angles for this goal
        theta_0, theta_1, theta_2 = ccd(goal_position, l_0, l_1, [theta_0, theta_1, theta_2])
        # Show result
        print(f"SHOWING RESULT FOR GOAL\n{goal_position[:-1]}")
        draw_snapshot(l_0, l_1, theta_0, theta_1, theta_2)
    """

    # Get series of angles
    theta_0_sequence, theta_1_sequence, theta_2_sequence = [theta_0], [theta_1], [theta_2]
    for goal_position in goal_positions:
        # Get best angles for this goal
        this_theta_0, this_theta_1, this_theta_2 = ccd(goal_position, l_0, l_1, [theta_0_sequence[-1], theta_1_sequence[-1], theta_2_sequence[-1]])
        theta_0_sequence.append(this_theta_0)
        theta_1_sequence.append(this_theta_1)
        theta_2_sequence.append(this_theta_2)

    # Animate
    animate(l_0, l_1, theta_0_sequence, theta_1_sequence, theta_2_sequence)
