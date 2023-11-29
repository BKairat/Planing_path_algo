from __future__ import annotations
from object import Object2D, Object3D
from configurations import Configuration
from random import uniform, choice
import numpy as np
import copy

class RRT():
    def __init__(self,
                 robot: Object2D | Object3D,
                 goal: Object2D | Object3D,
                 map_size: tuple,
                 delta_t: float = 5,
                 threshold: float = 5,
                 obstacles: [Object2D | Object3D] = [],
                 iterations: int = 5
                 ):
        assert len(map_size) >= 2, ("RRT algorithm requires 2 or more dimensional space,"
                                    " map_size must contain at least 2 elements")
        self.dims = len(map_size)
        self.G: [Configuration] = [Configuration(robot.config.trans, robot.config.rot, None)]
        # print("planing path init:", self.G[0].trans)
        self.robot: Object2D | Object3D = robot
        self.goal: Object2D | Object3D = goal
        self.obstacles: [Object2D | Object3D] = obstacles
        self.map_size: tuple = map_size
        self.delta_t: float = delta_t
        self.threshold: float = threshold
        self.iterations = iterations

    def random_act(self) -> Configuration:
        random_angle = np.array([uniform(-np.pi, np.pi), uniform(-np.pi, np.pi), uniform(-np.pi, np.pi)])
        random_point = np.array([uniform(0, i) for i in self.map_size])
        # print(f">>>randon func: {random_point}, {random_angle}")
        # TODO: add finding the nearest neighborhood #
        nearest_conf = self.nearest_n(random_point)
        # ------------------------------------------ #
        translation = (self.delta_t * (random_point - nearest_conf.trans)
                       / np.linalg.norm(random_point - nearest_conf.trans))
        rotation = random_angle - nearest_conf.rot
        new_configuration = Configuration(
            trans=translation,
            rot=rotation,
            parent=nearest_conf
        )
        # print(f"\nfunc: act_to_rand: trans {new_configuration.trans}, rot: {new_configuration.rot}")
        return new_configuration

    def act_to_goal(self) -> Configuration:
        nearest_conf = self.nearest_n(self.goal.config.trans)
        # print("act_to_goal/nearest conf translation", nearest_conf.trans)
        # print("act_to_goal/delta_t", self.delta_t)
        # print("sct_to_goal/goal", self.goal.config.trans)
        translation = (self.delta_t * (np.array(self.goal.config.trans) - nearest_conf.trans)
                       / np.linalg.norm(np.array(self.goal.config.trans) - nearest_conf.trans))
        # print("act_to_goal/translation", translation)
        rotation = np.zeros(len(self.map_size))
        new_configuration = Configuration(
            trans = translation,
            rot = rotation,
            parent=nearest_conf
        )
        # print(f"\nfunc: act_to_goal: trans {new_configuration.trans}, rot: {new_configuration.rot}")
        return new_configuration


    def check_task(self, conf: Configuration) -> bool:
        self.robot.set_to(conf)
        return self.robot.in_collision(self.goal)

    def add_conf(self, configuration: Configuration):
        self.G.append(configuration)

    def nearest_n(self, point: np.array) -> Configuration:
        # print(">>>nearest", min(self.G, key = lambda x: sum((x.trans - point)**2)).trans, min(self.G, key = lambda x: sum((x.trans - point)**2)).rot)
        return min(self.G, key = lambda x: sum((x.trans - point)**2))

    def is_feasible_action(self, desired: Configuration) -> bool:
        # TODO: add collision detection
        # return True
        if desired.parent == None:
            return True
        transl, rot = desired.parent.get_act(desired)
        i_t = transl / self.iterations
        i_r = rot / self.iterations
        self.robot.set_to(desired.parent)
        for i in range(self.iterations):
            self.robot.act(i_t, i_r)
            for obstacle in self.obstacles:
                if self.robot.in_collision(obstacle):
                    return False
        return True

    def plan(self) -> [Configuration]:
        init_conf = copy.deepcopy(self.robot.config)
        max_iteration = 200
        new_conf = None
        path = []
        # print("\n\n\n============================= start algo =============================")
        for iter in range(max_iteration):
            print("iter", iter)
            while True:
                if iter % 20 == 0:
                    new_conf = self.act_to_goal()
                else:
                    new_conf = self.random_act()

                # print(f"--> New config: trans: {new_conf.trans}, rot: {new_conf.rot}")

                if self.is_feasible_action(new_conf):
                    if iter % 20 == 0:
                        iter += 1
                    break
            self.add_conf(new_conf)

            if self.check_task(new_conf):
                cur = new_conf
                while cur.parent:
                    path.append[cur]
                    cur = cur.parent
                return path
        # print(init_conf.trans, init_conf.rot)
        self.robot.set_to(init_conf)


