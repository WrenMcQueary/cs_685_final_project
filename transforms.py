"""Code for producing affine transformation matrices."""


import numpy as np
from math import sin, cos


def get_rotation_x_transform(theta_x: float) -> np.ndarray:
    """Return a single affine transformation matrix representing rotation about the x-axis.
    """
    return np.array([
        [1, 0, 0, 0],
        [0, cos(theta_x), sin(theta_x), 0],
        [0, -sin(theta_x), cos(theta_x), 0],
        [0, 0, 0, 1]
    ])


def get_rotation_y_transform(theta_y: float) -> np.ndarray:
    """Return a single affine transformation matrix representing rotation about the y-axis.
    """
    return np.array([
        [cos(theta_y), 0, -sin(theta_y), 0],
        [0, 1, 0, 0],
        [sin(theta_y), 0, cos(theta_y), 0],
        [0, 0, 0, 1]
    ])


def get_rotation_z_transform(theta_z: float) -> np.ndarray:
    """Return a single affine transformation matrix representing rotation about the z-axis.
    """
    return np.array([
        [cos(theta_z), -sin(theta_z), 0, 0],
        [sin(theta_z), cos(theta_z), 0, 0],
        [0, 0, 1, 0],
        [0, 0, 0, 1]
    ])


def get_translation_x_transform(length_x: float) -> np.ndarray:
    """Return a single affine transformation matrix representing translation in the +x direction.
    """
    return np.array([
        [1, 0, 0, length_x],
        [0, 1, 0, 0],
        [0, 0, 1, 0],
        [0, 0, 0, 1]
    ])


def get_forward_transform_base_to_joint_1(l_0: float, theta_0: float, theta_1: float) -> np.ndarray:
    """Return a forward transform A from the base to joint 1, such that for any base position b, A @ b gives the
    position of joint 1.
    """
    return get_rotation_z_transform(theta_0) @ get_rotation_y_transform(theta_1) @ get_translation_x_transform(l_0)


def get_forward_transform_base_to_joint_2(l_0: float, l_1: float, theta_0: float, theta_1: float, theta_2: float) -> np.ndarray:
    """Return a forward transform A from the base to joint 2, such that for any base position b, A @ b gives the
    position of joint 2.
    """
    return get_forward_transform_base_to_joint_1(l_0, theta_0, theta_1) @ get_rotation_y_transform(-theta_2) @ get_translation_x_transform(l_1)
