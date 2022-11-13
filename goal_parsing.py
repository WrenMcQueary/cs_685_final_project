"""Code for obtaining a list of goal positions by reading user-written files."""


import numpy as np


def get_goal_list(filepath: str) -> list:
    """Read the .txt file at filepath and return a list of 3D affine coordinates for the points to draw, in the same
    sequence that they appear in the file.
    """
    with open(filepath, "r", encoding="utf-8") as file:
        file_content = file.read()
    file_lines = file_content.split("\n")
    file_points_as_strings = [line.split("\t") for line in file_lines if line != ""]
    file_points_as_affine = [np.array([[float(point[0])], [float(point[1])], [float(point[2])], [1]]) for point in file_points_as_strings]

    return file_points_as_affine
