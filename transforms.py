import numpy as np
from math import sin, cos


def get_rotation_x_transform(theta_x):
    """Return a single affine transformation matrix representing rotation about the x-axis.
    """
    return np.array([
        [1, 0, 0, 0],
        [0, cos(theta_x), sin(theta_x), 0],
        [0, -sin(theta_x), cos(theta_x), 0],
        [0, 0, 0, 1]
    ])


def get_rotation_y_transform(theta_y):
    """Return a single affine transformation matrix representing rotation about the y-axis.
    """
    return np.array([
        [cos(theta_y), 0, -sin(theta_y), 0],
        [0, 1, 0, 0],
        [sin(theta_y), 0, cos(theta_y), 0],
        [0, 0, 0, 1]
    ])

def get_rotation_z_transform(theta_z):
    """Return a single affine transformation matrix representing rotation about the z-axis.
    """
    return np.array([
        [cos(theta_z), -sin(theta_z), 0, 0],
        [sin(theta_z), cos(theta_z), 0, 0],
        [0, 0, 1, 0],
        [0, 0, 0, 1]
    ])


def get_translation_x_transform(length_x):
    """Return a single affine transformation matrix representing translation in the +x direction.
    """
    return np.array([
        [1, 0, 0, length_x],
        [0, 1, 0, 0],
        [0, 0, 1, 0],
        [0, 0, 0, 1]
    ])
