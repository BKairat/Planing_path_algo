from __future__ import annotations
import numpy as np
from numpy.typing import ArrayLike
from configurations import Configuration
from transformation_matrix import *
from camera import *
from projection import *


class Object2D():
    def __init__(self,
                 points: ArrayLike,
                 config: (np.array, float) = (np.array((0., 0.)), 0.),
                 ):
        self.config : Configuration = Configuration(config=(np.array(config[0]), config[1]),
                                                    parent=None)
        self.points: np.array = points
        self.set_points(config)

    def set_points(self, config: (np.array, float) = (np.array((0., 0.)), 0.)) -> np.array:
        self.points -= self.points[0]
        return self.move((np.array(config[0]), config[1]))

    def move(self, act: (np.array, float) = (np.zeros(2), 0.)) -> np.array:
        self.points += act[0]

        rot = np.array([[np.cos(act[1]), -np.sin(act[1])],
                        [np.sin(act[1]), np.cos(act[1])]])
        ref_point = np.array(self.points[0])
        self.points -= ref_point
        self.points = np.dot(self.points, rot.T) + ref_point
        return self.points

    @staticmethod
    def scale(points: ArrayLike, zoom: float = 0.) -> np.array:
        pass


class Object3D():
    def __init__(self,
                 render,
                 points: ArrayLike = np.array([[0, 0, 0, 1], [0, 1, 0, 1], [1, 1, 0, 1], [1, 0, 0, 1],
                                               [0, 0, 1, 1], [0, 1, 1, 1], [1, 1, 1, 1], [1, 0, 1, 1]]),
                 faces: ArrayLike = np.array([(0, 1, 2, 3), (4, 5, 6, 7), (0, 4, 5, 1),
                                        (2, 3, 7, 6), (1, 2, 6, 5), (0, 3, 7, 4)])
                 ):
        self.render = render
        self.points = points
        self.faces = faces

    def draw(self):
        self.screen_projection()

    def translate(self, trans: ArrayLike) -> None:
        self.points = self.points @ translate(trans)

    def screen_projection(self):
        points = self.points @ self.render.camera.camera_matrix()
        points = points @ self.render.projection.projection_matrix
        points /= points[:, -1].reshape(-1, 1)
        points[(points > 2) | (points < -2)] = 0
        points = points @ self.render.projection.to_screen_matrix
        points = points[:, :2]

        for face in self.faces:
            polygon = points[face]
            # print("\n\n\n",polygon,"\n\n\n")
            if not np.any((polygon == self.render.w_width) | (polygon == self.render.w_height)):
                pg.draw.polygon(self.render.screen, (255, 255, 255), polygon, 3)


    def rotation(self, angles: ArrayLike) -> None:
        assert len(angles) == 3, 'rotation in 3D space must receive 3 angles (len(angles) == 3)'
        self.points = self.points @ rotate_x(angles[0])
        self.points = self.points @ rotate_y(angles[1])
        self.points = self.points @ rotate_z(angles[2])