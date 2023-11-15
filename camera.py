import pygame as pg
from numpy.typing import ArrayLike
from transformation_matrix import *

class Camera:
    def __init__(self, render, position: ArrayLike):
        self.render = render
        self.position = np.array([*position, 1.])
        self.forward = np.array([0, 0, 1, 1])
        self.up = np.array([0, 1, 0, 1])
        self.right = np.array([1, 0, 0, 1])
        self.h_fov = np.pi / 3
        self.v_fov = self.h_fov * (render.height / render.width)
        self.near_plane = 0.1
        self.far_plane = 100
        self.translate_speed = 0.02
        self.rotation_speed = 0.005

    def control(self):
        key = pg.key.get_pressed()
        if key[pg.K_a]:
            self.position -= self.right * self.translate_speed
        if key[pg.K_d]:
            self.position += self.right * self.translate_speed
        if key[pg.K_s]:
            self.position -= self.forward * self.translate_speed
        if key[pg.K_w]:
            self.position += self.forward * self.translate_speed
        if key[pg.K_q]:
            self.position += self.up * self.translate_speed
        if key[pg.K_e]:
            self.position -= self.up * self.translate_speed

        self.camera_rot(key)

    def camera_rot(self, key):
        if key[pg.K_LEFT]:
            rotate = rotate_y(-self.rotation_speed)
            self.forward = self.forward @ rotate
            self.right = self.right @ rotate
            self.up = self.up @ rotate
        if key[pg.K_RIGHT]:
            rotate = rotate_y(self.rotation_speed)
            self.forward = self.forward @ rotate
            self.right = self.right @ rotate
            self.up = self.up @ rotate
        if key[pg.K_UP]:
            rotate = rotate_x(-self.rotation_speed)
            self.forward = self.forward @ rotate
            self.right = self.right @ rotate
            self.up = self.up @ rotate
        if key[pg.K_DOWN]:
            rotate = rotate_x(self.rotation_speed)
            self.forward = self.forward @ rotate
            self.right = self.right @ rotate
            self.up = self.up @ rotate


    def translate_matrix(self) -> np.array:
        x, y, z, _ = self.position
        return np.array([
            [1, 0, 0, 0],
            [0, 1, 0, 1],
            [0, 0, 1, 0],
            [-x, -y, -z, 1]
        ])

    def rotate_matrix(self) -> np.array:
        rx, ry, rz, _ = self.right
        fx, fy, fz, _ = self.forward
        ux, uy, uz, _ = self.up
        return np.array([
            [rx, ux, fx, 0],
            [ry, uy, fy, 0],
            [rz, uz, fz, 0],
            [0, 0, 0, 1]
        ])

    def camera_matrix(self) -> np.array:
        return self.translate_matrix() @ self.rotate_matrix()