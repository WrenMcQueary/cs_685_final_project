"""Code for obtaining a list of goal positions by reading user-written files."""


import numpy as np


def get_goal_list_and_goal_colors(filepath: str) -> list:
    """Read the .txt file at filepath and return a list of 3D affine coordinates for the points to draw, in the same
    sequence that they appear in the file.  Also return a list of colors to paint those points.  If a point can be
    painted any color, then the color will be None.
    """
    with open(filepath, "r", encoding="utf-8") as file:
        file_content = file.read()
    file_lines = file_content.split("\n")
    file_points_as_strings = [line.split("\t") for line in file_lines if line != ""]

    # Check that the same number of elements was extracted from each line
    elements_first_line = len(file_points_as_strings[0])
    for line in file_points_as_strings:
        if len(line) != elements_first_line or len(line) not in [3, 4]:
            raise RuntimeError("the file containing goal points must have all 3d points, and these points must either all be followed by a color, or none of them be followed by a color")

    file_points_as_affine = [np.array([[float(point[0])], [float(point[1])], [float(point[2])], [1]]) for point in file_points_as_strings]
    if elements_first_line == 4:   # If the user specified colors:
        file_colors = [point[-1] for point in file_points_as_strings]
    else:
        file_colors = [None for point in file_points_as_strings]

    return [file_points_as_affine, file_colors]
