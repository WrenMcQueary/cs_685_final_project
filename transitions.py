"""Code for transitioning from one key pose to another."""


def get_angles_along_trajectory(num_inbetweeners: float, theta_0_i: float, theta_1_i: float, theta_2_i: float, theta_3_i: float, theta_4_i: float, theta_0_f: float, theta_1_f: float, theta_2_f: float, theta_3_f: float, theta_4_f: float) -> list:
    """Given a starting pose and an ending pose, return the desired amount of inbetween poses.
    :return:        a list of num_inbetweeners sublists, each containing 3 elements (one for each angle) in sequence.
    """
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
        theta_3_inb.append(theta_2_i*(1-percent_progress) + theta_3_f*(percent_progress))
        theta_4_inb.append(theta_2_i*(1-percent_progress) + theta_4_f*(percent_progress))

    return [theta_0_inb, theta_1_inb, theta_2_inb, theta_3_inb, theta_4_inb]
