import numpy as np
import matplotlib.pyplot as plt
from kinematics_of_a_multi_segment_arm import get_coords_from_arm_def, plot_arm_from_coordinates
from math import acos, atan2, sin, cos


def inverse_kinematics_three_segment_arm(link_lengths, position, angle) -> tuple:
    """Return the list of joint angles necessary to put the end effector at :position:
    and keep the last segment at :angle: in the global reference.
    BEWARE THAT :ANGLE: IS AN ABSOLUTE ANGLE.  IT IS NOT NECESSARILY THETA_3.
    """
    l_1, l_2, l_3 = link_lengths

    ################ BEGIN OLD ################
    # Constrain the problem so that we can reuse our two-segment approach
    x = position[0] - l_3*cos(angle)
    y = position[1] - l_3*sin(angle)

    # Calculate theta_2
    # HERE THETA_2 IS MEASURED FROM ANTIPARALLEL WITH THE PREVIOUS SEGMENT
    acos_term_for_theta_2 = acos((x ** 2 + y ** 2 - l_1 ** 2 - l_2 ** 2) / (2 * l_1 * l_2))
    theta_2 = np.pi + acos_term_for_theta_2

    # Calculate theta_1
    phi = acos((x ** 2 + y ** 2 + l_1 ** 2 - l_2 ** 2) / (2 * l_1 * (x ** 2 + y ** 2) ** 0.5))
    beta = atan2(y, x)
    if theta_2 >= 2 * np.pi:
        theta_1 = beta + phi
    else:
        theta_1 = beta - phi
    if not (0 <= theta_1 <= np.pi):  # If the segment clips through the floor
        theta_1 = beta + phi
        theta_2 = np.pi - acos_term_for_theta_2  # Have to adjust theta_2 since theta_1 isn't what we first expected

    # Tweak theta_2 so that the plotter understands it
    #print(f"Before tweaking for compatibility with the plotter,\n\ttheta_1 = {theta_1 / np.pi} * pi\n\ttheta_2 = {theta_2 / np.pi} * pi")
    #theta_2 -= np.pi
    ################ END OLD ################

    # Calculate theta_3 based on the global angle of the second-to-last segment, the position of the second-to-last
    # joint, and (x_for_3, y_for_3).
    # HERE THETA_3 IS MEASURED FROM PARALLEL WITH THE PREVIOUS SEGMENT
    angle_second_to_last_segment = theta_1 + theta_2 - np.pi
    theta_3 = angle - angle_second_to_last_segment

    # Tweak theta_2 so that the plotter understands them
    theta_2 -= np.pi

    return theta_1, theta_2, theta_3


if __name__ == "__main__":
    # Plotting Code

    link_lengths = [1.5, 1.3, 0.2]
    position = [0.2, 1.5]
    angle = 0.0
    joint_angles = inverse_kinematics_three_segment_arm(link_lengths, position, angle)
    coords = get_coords_from_arm_def(link_lengths, joint_angles)
    plot_arm_from_coordinates(coords)
    plt.title(f"Target: {position} | Pos: {coords[-1][0]:0.2f} {coords[-1][1]:0.1f}")

    import matplotlib.pylab as pl

    plt.figure(figsize=(12, 12))

    # X-sweep
    plt.subplot(131)
    plt.plot([-1, 1], [0, 0], 'k-', linewidth=4.0)  # plot the ground
    plt.gca().set_aspect('equal', adjustable='box')
    N = 20
    colors = pl.cm.viridis(np.linspace(0, 1, N))
    xs = np.linspace(-1.2, 1.2, N)
    for color, x in zip(colors, xs):
        link_lengths = [1.5, 1.3, 0.2]
        position = [x, 2.0]
        angle = np.pi / 4
        joint_angles = inverse_kinematics_three_segment_arm(link_lengths, position, angle)
        coords = get_coords_from_arm_def(link_lengths, joint_angles)
        points = np.array(coords)
        plt.plot(points[:, 0], points[:, 1], 'o-', color=color, alpha=0.3)  # plot the 'arm'

    plt.title("Sweep in X")

    # Y-sweep
    plt.subplot(132)
    plt.plot([-1, 1], [0, 0], 'k-', linewidth=4.0)  # plot the ground
    plt.gca().set_aspect('equal', adjustable='box')
    N = 10
    colors = pl.cm.viridis(np.linspace(0, 1, N))
    ys = np.linspace(1, 2, N)
    for color, y in zip(colors, ys):
        link_lengths = [1.5, 1.3, 0.2]
        position = [1.5, y]
        angle = 0
        joint_angles = inverse_kinematics_three_segment_arm(link_lengths, position, angle)
        coords = get_coords_from_arm_def(link_lengths, joint_angles)
        points = np.array(coords)
        plt.plot(points[:, 0], points[:, 1], 'o-', color=color, alpha=0.3)  # plot the 'arm'

    plt.title("Sweep in Y")

    # theta-sweep
    plt.subplot(133)
    plt.plot([-1, 1], [0, 0], 'k-', linewidth=4.0)  # plot the ground
    plt.gca().set_aspect('equal', adjustable='box')
    N = 20
    colors = pl.cm.viridis(np.linspace(0, 1, N))
    angless = np.linspace(0, np.pi, N)
    for color, angle in zip(colors, angless):
        link_lengths = [1.5, 1.5, 0.5]
        position = [0.0, 1.0]
        joint_angles = inverse_kinematics_three_segment_arm(link_lengths, position, angle)
        coords = get_coords_from_arm_def(link_lengths, joint_angles)
        points = np.array(coords)
        plt.plot(points[:, 0], points[:, 1], 'o-', color=color, alpha=0.3)  # plot the 'arm'

    plt.title("Sweep in angle")
    plt.show()
