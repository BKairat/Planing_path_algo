from __future__ import annotations
from object import Object2D
from random import uniform, choice
import numpy as np

class Configuration():
    def __init__(self,
                 points: np.array,
                 position: tuple,
                 act: [np.array, float],
                 type_: type,
                 parent: Configuration | None = None
                 ):
        self.type_: type = type_
        self.position: tuple = position
        self.act: [np.array, float] = act
        self.parent: Configuration = parent
        self.points: np.array = points

class RRT():
    def __init__(self,
                 obj_type: type,
                 robot: Object2D,
                 obstacles: [Object2D],
                 map_size: tuple,
                 goal: tuple,
                 delta_t: float = 50,
                 threshold: float = 50
                 ):
        assert len(map_size) >= 2, ("RRT algorithm requires 2 or more dimensional space,"
                                    " map_size must contain at least 2 elements")
        self.dims = len(map_size)
        self.init_conf: Configuration = Configuration(obj_type,
                                                      robot.points,
                                                      robot.position,
                                                      [np.zeros(self.dims), 0.])
        self.G: [Configuration] = [self.init_conf]
        self.robot: Object2D = robot
        self.obstacles: [Object2D] = obstacles
        self.map_size: tuple = map_size
        self.delta_t: float = delta_t
        self.goal: tuple = goal
        self.threshold: float = threshold

    def random_act(self) -> [Configuration, np.array, float]:
        angle = uniform(-np.pi, np.pi)
        random_point = (uniform(0, i) for i in self.map_size)
        # TODO: add finding the nearest neighborhood #
        nearest_conf = choice(self.G)
        # ------------------------------------------ #
        translation = (self.delta_t * (np.array(random_point)-nearest_conf.act[0])
                       / np.linalg.norm(np.array(random_point)-nearest_conf.act[0]))
        return [nearest_conf, translation, angle]

    def check_task(self, position: tuple | np.array) -> bool:
        return np.linalg.norm(np.array(position) - self.goal) < self.threshold

    def add_conf(self, configuration: Configuration):
        self.G.append(configuration)

    def step(self) -> [Configuration] | None:
        # TODO: add collision detection
        parent, translation, angle = self.random_act()


        return None
