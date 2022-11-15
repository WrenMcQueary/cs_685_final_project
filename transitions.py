"""Code for transitioning from one key pose to another."""


from numpy import sign
from math import pi, isclose


def minimize_distance_changing_by_multiples_of_2_pi(initial: float, final: float) -> float:
    """Return a value that equals final plus or minus some multiple of 2*pi, such that the difference between
    initial and final is minimized.
    """
    if initial == final:
        return final

    # Get the difference between the two, modulo by 2 pi
    d_one_side = (final - initial) % (2*pi)

    # Get the corresponding final to that distance
    final_one_side = initial + d_one_side

    # Get the nearest final on the other side of initial
    final_other_side = final_one_side - sign(d_one_side)*2*pi

    # Return whichever of these finals is closer to initial
    d_other_side = final_other_side - initial
    if abs(d_one_side) <= abs(d_other_side):
        return final_one_side
    else:
        return final_other_side


def get_angles_along_trajectory(num_inbetweeners: float, theta_0_i: float, theta_1_i: float, theta_2_i: float, theta_3_i: float, theta_4_i: float, theta_0_f: float, theta_1_f: float, theta_2_f: float, theta_3_f: float, theta_4_f: float) -> list:
    """Given a starting pose and an ending pose, return the desired amount of inbetween poses.
    :return:        a list of num_inbetweeners sublists, each containing 3 elements (one for each angle) in sequence.
    """
    # Add or subtract multiples of 2*pi from each final theta_f value, to make it as close as possible to the
    # corresponding theta_i value.  This lets the robot take advantage of angle wraparound.
    theta_0_f = minimize_distance_changing_by_multiples_of_2_pi(theta_0_i, theta_0_f)
    theta_1_f = minimize_distance_changing_by_multiples_of_2_pi(theta_1_i, theta_1_f)
    theta_2_f = minimize_distance_changing_by_multiples_of_2_pi(theta_2_i, theta_2_f)
    theta_3_f = minimize_distance_changing_by_multiples_of_2_pi(theta_3_i, theta_3_f)
    theta_4_f = minimize_distance_changing_by_multiples_of_2_pi(theta_4_i, theta_4_f)

    # Create lists to hold inbetweener values for angles
    theta_0_inb = []
    theta_1_inb = []
    theta_2_inb = []
    theta_3_inb = []
    theta_4_inb = []

    for ii in range(num_inbetweeners):
        percent_progress = (ii+1) / (num_inbetweeners+1)
        theta_0_inb.append(theta_0_i*(1-percent_progress) + theta_0_f*(percent_progress))
        theta_1_inb.append(theta_1_i*(1-percent_progress) + theta_1_f*(percent_progress))
        theta_2_inb.append(theta_2_i*(1-percent_progress) + theta_2_f*(percent_progress))
        theta_3_inb.append(theta_3_i*(1-percent_progress) + theta_3_f*(percent_progress))
        theta_4_inb.append(theta_4_i*(1-percent_progress) + theta_4_f*(percent_progress))

    return [theta_0_inb, theta_1_inb, theta_2_inb, theta_3_inb, theta_4_inb]
