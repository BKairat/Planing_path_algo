from __future__ import annotations
from object import Object2D
from configurations import Configuration
from random import uniform, choice
import numpy as np

class RRT():
    def __init__(self,
                 robot: Object2D,
                 map_size: tuple,
                 goal: tuple,
                 delta_t: float = 50,
                 threshold: float = 50,
                 obstacles: [Object2D] = []
                 ):
        assert len(map_size) >= 2, ("RRT algorithm requires 2 or more dimensional space,"
                                    " map_size must contain at least 2 elements")
        self.dims = len(map_size)
        self.G: [Configuration] = [robot.config]
        self.robot: Object2D = robot
        self.obstacles: [Object2D] = obstacles
        self.map_size: tuple = map_size
        self.delta_t: float = delta_t
        self.goal: tuple = goal
        self.threshold: float = threshold

    def random_act(self) -> Configuration:
        angle = uniform(-np.pi, np.pi)
        random_point = (uniform(0, i) for i in self.map_size)
        # TODO: add finding the nearest neighborhood #
        nearest_conf = choice(self.G)
        # ------------------------------------------ #
        translation = (self.delta_t * (np.array(random_point) - nearest_conf.config[0])
                       / np.linalg.norm(np.array(random_point) - nearest_conf.config[0]))
        new_configuration = Configuration(
            config=(tuple(translation), angle),
            parent=nearest_conf
        )
        return new_configuration

    def check_task(self, position: tuple | np.array) -> bool:
        return np.linalg.norm(np.array(position) - self.goal) < self.threshold

    def add_conf(self, configuration: Configuration):
        self.G.append(configuration)

    def is_feasible_action(self, config: Configuration) -> [Configuration] | None:
        # TODO: add collision detection
        points = self.robot.points

        end_c = config

        return None
