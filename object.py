from __future__ import annotations
import numpy as np


class Object2D():
    def __init__(self,
                 points: np.array | list | tuple,
                 position: tuple | np.array = (0., 0.),
                 color: tuple = (0, 0, 0)
                 ):
        self.position = position
        self.points: np.array = self.set_points(points, position)
        self.color = color

    def set_points(self, points: np.array, position: tuple | np.array = (0., 0.)) -> np.array:
        return points - points[0] + position

    @staticmethod
    def move(points: np.array, act: [np.array, float] = [np.zeros(2), 0.]) -> np.array:
        points += act[0]
        rot = np.array([[np.cos(act[1]), -np.sin(act[1])],
                        [np.sin(act[1]), np.cos(act[1])]])
        ref_point = points[0]
        points -= ref_point
        points = np.dot(points, rot.T) + ref_point
        return points

    @staticmethod
    def scale(points: np.array | list | tuple, zoom = 0.) -> np.array:
        pass