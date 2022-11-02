# Helper code for forward kinematics

import numpy as np
import matplotlib.pyplot as plt


def get_rot(theta):
    return np.array([
        [np.cos(theta), np.sin(theta), 0],
        [-np.sin(theta), np.cos(theta), 0],
        [0, 0, 1]
    ])


def get_translation(length):
    return np.array([
        [1, 0, -length],
        [0, 1, 0],
        [0, 0, 1]
    ])


def get_combined_rot_and_translation(theta, length):
    return np.array([
        [np.cos(theta), np.sin(theta), -length],
        [-np.sin(theta), np.cos(theta), 0],
        [0, 0, 1]
    ])


def plot_arm_from_coordinates(arm_points):
    points = np.array(arm_points)
    points = np.concatenate(([[0, 0, 1]], points), axis=0)

    # Plotting
    plt.plot([-1, 1], [0, 0], 'k-', linewidth=4.0)  # plot the ground
    plt.plot(points[:, 0], points[:, 1], 'bo-')  # plot the 'arm'
    plt.gca().set_aspect('equal', adjustable='box')


def get_coords_from_arm_def(link_lengths: list, joint_angles: list) -> list:
    """Given a list of arm lengths and corresponding angles, return a list of
    2D coordinate tuples, each one defining a joint location in order from .
    The coordinates returned have a homogeneous element -- a third element set
    to 1.
    We include the coordinates of the base (0, 0, 1), because the example code
    in the Jupyter Notebook does this.
    """
    # Compute forward transformations
    from_base_rf_to_joint_number_rf = []     # Transforms.  0th index is the first joint beyond the base
    for ii in range(len(link_lengths)):     # ii represents an arm number
        this_angle = joint_angles[ii]
        this_length = link_lengths[ii]
        if ii == 0:
            from_base_rf_to_joint_number_rf.append(get_combined_rot_and_translation(this_angle, this_length))
        else:
            previous_transform = from_base_rf_to_joint_number_rf[ii-1]
            from_base_rf_to_joint_number_rf.append(get_combined_rot_and_translation(this_angle, this_length) @ previous_transform)

    # Walk along those transformations to get the global coordinates
    from_joint_number_rf_to_base_rf = [np.linalg.inv(element) for element in from_base_rf_to_joint_number_rf]
    coords = [element @ np.array([[0], [0], [1]]) for element in from_joint_number_rf_to_base_rf]

    # Get output_coords as a list of tuples
    output_coords_as_tuples = [tuple([element[0] for element in vector]) for vector in coords]

    # Slip in the (0, 0, 1) coordinate
    output_coords_as_tuples.insert(0, (0, 0, 1))

    # Return!
    return output_coords_as_tuples


def get_transform_from_arm_def(link_lengths: list, joint_angles: list) -> np.ndarray:
    """Return the transform from the endpoint of the robot to the base"""
    # Compute forward transformations
    from_base_rf_to_joint_number_rf = []  # Transforms.  0th index is the first joint beyond the base
    for ii in range(len(link_lengths)):  # ii represents an arm number
        this_angle = joint_angles[ii]
        this_length = link_lengths[ii]
        if ii == 0:
            from_base_rf_to_joint_number_rf.append(get_combined_rot_and_translation(this_angle, this_length))
        else:
            previous_transform = from_base_rf_to_joint_number_rf[ii - 1]
            from_base_rf_to_joint_number_rf.append(
                get_combined_rot_and_translation(this_angle, this_length) @ previous_transform)

    # Return the inverse of the final transform
    return np.linalg.inv(from_base_rf_to_joint_number_rf[-1])


if __name__ == "__main__":
    # An example "arm" (from homogeneous coordinates)
    #plot_arm_from_coordinates([(1, 2, 1), (1.4, 2.2, 1)])
    #plt.title("An example 'arm' from coords")

    # Debugging block
    """
    lengths = [1, 0.5]
    angles = [np.pi/4, -np.pi/2]
    plot_arm_from_coordinates(get_coords_from_arm_def(lengths, angles))
    """

    # Results Code for get_transform_from_arm_def()
    origin_coords = np.array([[0],
                              [0],
                              [1]])

    transform = get_transform_from_arm_def([2.0, 1.2], [np.pi/3, np.pi/6])
    print("Transform 1 (Right-ish + up)")
    print(transform)
    print(f"End effector would be drawn at {transform @ origin_coords}")

    transform = get_transform_from_arm_def([2.0, 1.2, 2], [np.pi/3, np.pi/6, 0])
    print("Transform 2 (Right-ish + up + up)")
    print(transform)
    print(f"End effector would be drawn at {transform @ origin_coords}")

    transform = get_transform_from_arm_def([0.8, 0.8, 0.8, 0.8], [np.pi/2, -np.pi/6, -np.pi/6, -np.pi/6])
    print("Transform 3 (Up -> leans right)")
    print(transform)
    print(f"End effector would be drawn at {transform @ origin_coords}")

    # Plotting Code for get_coords_from_arm_def()
    plt.figure(figsize=(10, 4))

    plt.subplot(131)
    coords = get_coords_from_arm_def([2.0, 1.2], [np.pi/3, np.pi/6])
    plot_arm_from_coordinates(coords)
    plt.title("Right-ish + up")

    plt.subplot(132)
    coords = get_coords_from_arm_def([2.0, 1.2, 2], [np.pi/3, np.pi/6, 0])
    plot_arm_from_coordinates(coords)
    plt.title("Right-ish + up + up")

    plt.subplot(133)
    coords = get_coords_from_arm_def([0.8, 0.8, 0.8, 0.8], [np.pi/2, -np.pi/6, -np.pi/6, -np.pi/6])
    plot_arm_from_coordinates(coords)
    plt.title("Up -> leans right")
    plt.show()
