import numpy as np
import matplotlib.pyplot as plt
from kinematics_of_a_multi_segment_arm import get_coords_from_arm_def, plot_arm_from_coordinates
from math import acos, atan2


def inverse_kinematics_two_segment_arm(link_lengths: list, position) -> tuple:
    """Return the list of joint angles necessary to put the end effector at position."""
    assert len(link_lengths) == 2
    assert len(position) == 2

    l_1, l_2 = link_lengths
    x, y = position

    # Calculate theta_2
    acos_term_for_theta_2 = acos((x**2 + y**2 - l_1**2 - l_2**2) / (2 * l_1 * l_2))
    theta_2 = np.pi + acos_term_for_theta_2

    # Calculate theta_1
    phi = acos((x**2 + y**2 + l_1**2 - l_2**2) / (2 * l_1 * (x**2 + y**2)**0.5))
    beta = atan2(y, x)
    if theta_2 >= 2*np.pi:
        theta_1 = beta + phi
    else:
        theta_1 = beta - phi
    if not (0 <= theta_1 <= np.pi):     # If the segment clips through the floor
        theta_1 = beta + phi
        theta_2 = np.pi - acos_term_for_theta_2  # Have to adjust theta_2 since theta_1 isn't what we first expected

    # Tweak theta_2 so that the plotter understands it
    print(f"Before tweaking for compatibility with the plotter,\n\ttheta_1 = {theta_1/np.pi} * pi\n\ttheta_2 = {theta_2/np.pi} * pi")
    theta_2 -= np.pi

    # Return!
    return theta_1, theta_2


if __name__ == "__main__":
    # Results/Plotting Code
    plt.figure(figsize=(12, 12))

    plt.subplot(131)
    link_lengths = [1.5, 1.2]
    position = [1, 1]
    joint_angles = inverse_kinematics_two_segment_arm(link_lengths, position)
    coords = get_coords_from_arm_def(link_lengths, joint_angles)
    plot_arm_from_coordinates(coords)
    plt.title(f"Target: {position} | Pos: {coords[-1][0]:0.2f} {coords[-1][1]:0.1f}")

    plt.subplot(132)
    link_lengths = [2, 2]
    position = [0, 1]
    joint_angles = inverse_kinematics_two_segment_arm(link_lengths, position)
    coords = get_coords_from_arm_def(link_lengths, joint_angles)
    plot_arm_from_coordinates(coords)
    plt.title(f"Target: {position} | Pos: {coords[-1][0]:0.2f} {coords[-1][1]:0.1f}")

    plt.subplot(133)
    link_lengths = [1.5, 0.5]
    position = [0.2, 1.5]
    joint_angles = inverse_kinematics_two_segment_arm(link_lengths, position)
    coords = get_coords_from_arm_def(link_lengths, joint_angles)
    plot_arm_from_coordinates(coords)
    plt.title(f"Target: {position} | Pos: {coords[-1][0]:0.2f} {coords[-1][1]:0.1f}")
    plt.show()
