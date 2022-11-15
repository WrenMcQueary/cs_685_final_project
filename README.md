# final_project
By running main.py with the CLI arguments shown below, you can cause a simulated robot arm to move its end effector to each point you specify in a .txt file in sequence, leaving a colored dot of your choice at each point.  Includes optional obstacle avoidance.

Some sample sets of goal points are provided in the `choreographies/` folder.

## Usage
Write a .txt file in the root project folder containing a series of points for the robot to paint.
Each line must define a single point, and contain only a list of points separated only by tabs.  For example:
```txt
0   0   0
0   1   0
1.5 1.5 0
2   0   0
```

Each row can optionally end with a tab and a color to paint the goalpoint.  For example,
```txt
0   0   0   r
0   1   0   g
1.5 1.5 0   b
2   0   0   g
```

Each file must have either a color at the end of all lines, or no color at the end of all lines.
If no color is provided, an arbitrary color will be chosen.

### CLI Flags
- The `-f/--file` flag is required, and must be followed by the relative filepath of the file containing the points you wish to draw.
- The `-i/--inbetween` flag is optional.  If used, it must be followed by the number of inbetweener frames you'd like between each goal pose.
- The `-o/--obstacle_avoidance` flag is optional.  If used, obstacle avoidance will be enabled; the arm will avoid a 2x2 rectangle aligned with the y=1 plane and centered on (0, 1, 0).

## Requirements
The following packages must be installed in order to use this project:
- numpy
- matplotlib