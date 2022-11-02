"""Definition of the Differential Drive vehicle (and examples)
Inspired by: https://w3.cs.jmu.edu/molloykp/teaching/cs354/cs354_2021Fall/resources/pid.pdf
Some equations from: https://www.cs.columbia.edu/~allen/F17/NOTES/icckinematics.pdf
"""

import numpy as np
from matplotlib import pyplot as plt


class DiffDrive(object):
    def __init__(self, width=0.1, error_std=0, max_spin=1):
        self.pos_x = 0
        self.pos_y = 0
        self.theta = 0
        self.width = 0.1
        self.max_spin = max_spin
        self.vel = 0
        self.error_std = error_std

        self.states = [[self.pos_x, self.pos_y, self.theta]]

    def command(self, vl, vr):
        if np.abs(vl) > self.max_spin:
            vl = vl / np.abs(vl)
        if np.abs(vr) > self.max_spin:
            vr = vr / np.abs(vr)

        self.vl = vl
        self.vr = vr
        # self.vel += u

    def advance_time(self, dt):
        # Error in the velocity

        if np.abs(self.vr - self.vl) < 0.0001:
            # Robot moves in a straight line
            self.pos_x += self.vr * dt * np.cos(self.theta)
            self.pos_y += self.vr * dt * np.sin(self.theta)
            self.states.append([self.pos_x, self.pos_y, self.theta])
            return

        R = self.width / 2 * (self.vl + self.vr) / (self.vr - self.vl)
        omega = (self.vr - self.vl) / self.width

        ICCx = self.pos_x - R * np.sin(self.theta)
        ICCy = self.pos_y + R * np.cos(self.theta)

        domega = omega * dt

        updated_state = np.array([
            [np.cos(domega), -np.sin(domega), 0],
            [np.sin(domega), np.cos(domega), 0],
            [0, 0, 1]
        ]) @ np.array([
            [self.pos_x - ICCx],
            [self.pos_y - ICCy],
            [self.theta]
        ]) + np.array([
            [ICCx],
            [ICCy],
            [domega]
        ])

        self.pos_x = updated_state[0, 0]
        self.pos_y = updated_state[1, 0]
        self.theta = updated_state[2, 0]

        self.states.append([self.pos_x, self.pos_y, self.theta])

    def visualize_trajectory(self):
        points = np.array(self.states)
        plt.plot(points[:, 0], points[:, 1], '.-')
        plt.gca().set_aspect('equal', adjustable='box')


def simple_diff_drive_controller(car, gx, gy, K_theta, K_vel, dt=0.5):
    # gx is the goal x position
    # gy is the goal y position

    for t in np.arange(0, 100, dt):

        theta_rel = np.arctan2(gy - car.pos_y, gx - car.pos_x) - car.theta
        theta_rel = theta_rel % (2 * np.pi)
        if theta_rel > np.pi:
            theta_rel -= 2 * np.pi

        dist = np.sqrt(
            (gy - car.pos_y) ** 2 + (gx - car.pos_x) ** 2
        )

        # Get desired control signals for linear speed and angular velocity
        v_linear = K_vel * dist
        v_angular = K_theta * theta_rel

        # Translate these desired speeds into vl and vr.
        # The following equations must hold:
        #   v_linear = (vl + vr) / 2
        #   v_angular = (vr - vl) / car.width
        #   Therefore we must solve the following system of equations...
        #       vr = 2*v_linear - vl
        #       v_angular = (2*v_linear - 2*vl) / car.width
        #           v_angular*car.width - 2*v_linear = -2*vl
        #           vl = -0.5*v_angular*car.width + v_linear    {Solved!}
        #       v_linear = (-0.5*v_angular*car.width + v_linear + vr) / 2
        #           2*v_linear = -0.5*v_angular*car.width + v_linear + vr
        #           -vr = -0.5*v_angular*car.width + v_linear - 2*v_linear
        #           vr = 0.5*v_angular*car.width - v_linear + 2*v_linear
        #           vr = 0.5*v_angular*car.width + v_linear     {Solved!}
        vl = -0.5*v_angular*car.width + v_linear
        vr = 0.5*v_angular*car.width + v_linear

        # Command!
        car.command(vl, vr)
        car.advance_time(dt)

    return car.states


def waypoint_following(car, gx_list, gy_list, K_theta, K_vel, dt=0.5):
    """Follow a series of points"""
    g_index = 0
    gx, gy = gx_list[g_index], gy_list[g_index]
    for t in np.arange(0, 1000, dt):
        if np.sqrt((gy - car.pos_y) ** 2 + (gx - car.pos_x) ** 2) <= 0.5:
            g_index += 1
            if g_index == len(gx_list):
                return car.states   # We're done early
            else:
                gx, gy = gx_list[g_index], gy_list[g_index]
        theta_rel = np.arctan2(gy - car.pos_y, gx - car.pos_x) - car.theta
        theta_rel = theta_rel % (2 * np.pi)
        if theta_rel > np.pi:
            theta_rel -= 2 * np.pi

        dist = np.sqrt(
            (gy - car.pos_y) ** 2 + (gx - car.pos_x) ** 2
        )

        # Get desired control signals for linear speed and angular velocity
        v_linear = K_vel * dist
        v_angular = K_theta * theta_rel

        # Translate these desired speeds into vl and vr.
        # The following equations must hold:
        #   v_linear = (vl + vr) / 2
        #   v_angular = (vr - vl) / car.width
        #   Therefore we must solve the following system of equations...
        #       vr = 2*v_linear - vl
        #       v_angular = (2*v_linear - 2*vl) / car.width
        #           v_angular*car.width - 2*v_linear = -2*vl
        #           vl = -0.5*v_angular*car.width + v_linear    {Solved!}
        #       v_linear = (-0.5*v_angular*car.width + v_linear + vr) / 2
        #           2*v_linear = -0.5*v_angular*car.width + v_linear + vr
        #           -vr = -0.5*v_angular*car.width + v_linear - 2*v_linear
        #           vr = 0.5*v_angular*car.width - v_linear + 2*v_linear
        #           vr = 0.5*v_angular*car.width + v_linear     {Solved!}
        vl = -0.5*v_angular*car.width + v_linear
        vr = 0.5*v_angular*car.width + v_linear

        # Command!
        car.command(vl, vr)
        car.advance_time(dt)

    return car.states


# Here are a few examples of driving the car around
"""
plt.figure(figsize=(12,6))

plt.subplot(131)
car = DiffDrive()
for _ in range(100):
    car.command(0, 0.1)
    car.advance_time(0.1)

car.visualize_trajectory()

plt.subplot(132)
car = DiffDrive()
for _ in range(10):
    car.command(0, 0.1)
    car.advance_time(0.1)

for _ in range(10):
    car.command(0.3, 0.1)
    car.advance_time(0.1)

car.visualize_trajectory()

plt.subplot(133)
car = DiffDrive()
for _ in range(10):
    car.command(-0.2, 0.0)
    car.advance_time(0.1)

for _ in range(10):
    car.command(0.1, 0.1)
    car.advance_time(0.1)

car.visualize_trajectory()
plt.show()
"""


# Plotting code
plt.figure(figsize=(6, 6), dpi=150)

"""
car = DiffDrive()
simple_diff_drive_controller(car, gx=-10, gy=-4, K_theta=0.6, K_vel=0.05)
car.visualize_trajectory()

car = DiffDrive()
simple_diff_drive_controller(car, gx=10, gy=-2, K_theta=0.6, K_vel=0.05)
car.visualize_trajectory()

car = DiffDrive()
simple_diff_drive_controller(car, gx=10, gy=4, K_theta=0.6, K_vel=0.05)
car.visualize_trajectory()

car = DiffDrive()
simple_diff_drive_controller(car, gx=-5, gy=5, K_theta=0.6, K_vel=0.05)
car.visualize_trajectory()

car = DiffDrive()
simple_diff_drive_controller(car, gx=-8, gy=1, K_theta=0.6, K_vel=0.05)
car.visualize_trajectory()
plt.show()
"""
K_thetas = [0.6, 0.6, 2]
K_vels = [0.05, 0.062, 0.05]
plt.show()  # Get a dummy plot out there so that the remaining ones are all the same size for better comparison
for ii in range(len(K_thetas)):
    this_K_theta = K_thetas[ii]
    this_K_vel = K_vels[ii]
    car = DiffDrive()
    waypoint_following(car, gx_list=[1, -5, -5, 4], gy_list=[5, 3, -3, 10], K_theta=this_K_theta, K_vel=this_K_vel)
    car.visualize_trajectory()
    plt.title(f"K_theta={this_K_theta}, K_vel={this_K_vel}")
    plt.show()
