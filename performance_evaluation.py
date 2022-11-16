"""Code for evaluating the arm's performance on a task."""


import numpy as np

from transforms import get_forward_transform_base_to_joint_4


def show_performance_metrics(l_0: float, l_1: float, l_2: float, l_3: float, theta_0_sequence: list, theta_1_sequence: list, theta_2_sequence: list, theta_3_sequence: list, theta_4_sequence: list, goal_position_indices: list, goal_positions: list) -> None:
    """Print out the mean and standard deviation for distance from th end effector to each goalpoint."""
    # Get list of distances
    distances = []
    pos_base = np.array([[0],
                         [0],
                         [0],
                         [1]])
    for gg in range(len(goal_positions)):
        pos_goal = goal_positions[gg]
        theta_0 = theta_0_sequence[goal_position_indices[gg]]
        theta_1 = theta_1_sequence[goal_position_indices[gg]]
        theta_2 = theta_2_sequence[goal_position_indices[gg]]
        theta_3 = theta_3_sequence[goal_position_indices[gg]]
        theta_4 = theta_4_sequence[goal_position_indices[gg]]
        pos_end = get_forward_transform_base_to_joint_4(l_0, l_1, l_2, l_3, theta_0, theta_1, theta_2, theta_3, theta_4) @ pos_base
        distances.append(((pos_end[0][0] - pos_goal[0][0])**2 + (pos_end[1][0] - pos_goal[1][0])**2 + (pos_end[2][0] - pos_goal[2][0])**2)**0.5)

    # Print mean and std of distances
    print(f"PERFORMANCE RESULTS:\n\tmean distance from goal {np.mean(distances)}\n\tstd distance from goal {np.std(distances)}")
