# final_project
TODO: Quick description of the project

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

## Requirements
TODO: Write requirements here