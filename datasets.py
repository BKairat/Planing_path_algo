from __future__ import annotations

import copy
import os
import shutil
import torch
import pandas as pd
from gui import Render
from object import Object3D
from configurations import Configuration
import pygame as pg
import numpy as np
from planing_algorithms import RRT
from random import uniform


def copy_file_to_folder(file: str, dest_folder: str) -> str:
    assert os.path.exists(file), f"The source file '{file}' does not exist."

    if not os.path.exists(dest_folder):
        os.makedirs(dest_folder)

    file_name = os.path.basename(file)

    dest_file = os.path.join(dest_folder, file_name)

    shutil.copy(file, dest_file)
    return dest_file


class Dataset():
    def __init__(self,
                 models_path: str = 'models3D',
                 load: str | None = None,
                 ):
        if load:
            self.path = load
            self.data = pd.read_csv(os.path.join(load, "data.csv"))
            self.config = pd.read_json(os.path.join(load, 'config.json'))
            self.rob = os.path.join(models_path, "robot.obj")
            self.goal = os.path.join(models_path, "goal.obj")
            self.obst = []
            for obj in self.config.keys():
                if obj not in ['robot.obj', 'goal.obj']:
                    self.obst.append(os.path.join(models_path, obj))

        else:
            print("not implemented!!! diff_datasets.py")
            # #todo add crating json file
            # path = "diff_datasets/diffusion_"
            # i = 0
            # while os.path.exists(path + str(i)):
            #     i += 1
            # self.path = os.path.join(path, str(i))
            # os.makedirs(self.path)
            # self.rob_obj = copy_file_to_folder(rob_obj, self.path)
            # self.obst_dir = os.path.join(path, "obstacles")
            # os.makedirs(self.obst_dir)
            # for f in os.listdir(obst_dir):
            #     obst_obj = os.path.join(obst_dir, f)
            #     if os.path.isfile(obst_obj) and obst_obj.lower().endswith('.obj'):
            #         copy_file_to_folder(obst_obj, self.obst_dir)
            # self.data = os.path.join(path, "data")
            # os.makedirs(self.data)

    def show(self):
        app = Render()
        robot = Object3D(None, path = self.rob, scale=0.2, l_color=pg.Color('blue'))
        goal = Object3D(None, path = self.goal)
        robot.set_to(Configuration(self.config['robot.obj'][0],
                                   self.config['robot.obj'][1],
                                   None),
                     change_c=True)
        goal.set_to(Configuration(self.config['goal.obj'][0], self.config['goal.obj'][1], None), change_c=True)

        # a = np.array([uniform(-np.pi, np.pi), uniform(-np.pi, np.pi), uniform(-np.pi, np.pi)])

        # seq = [
        #     Configuration(np.array([10, 0, 0]),
        #                   a),
        #     Configuration(np.array([10, 0, 0]),
        #                   -a),
        #     Configuration(np.array([10, 0, 0]),
        #                   a),
        #     Configuration(np.array([10, 0, 0]),
        #                   -a),
        #     Configuration(np.array([10, 0, 0]),
        #                   a),
        #     Configuration(np.array([10, 0, 0]),
        #                   -a),
            # Configuration(np.array([20, 0, 20]), np.array([0, 0, 0]))
        # ]

        # seq = [
        #     Configuration(np.array([10, 0, 0]), np.array([uniform(-np.pi, np.pi), uniform(-np.pi, np.pi), uniform(-np.pi, np.pi)])),
        #     Configuration(np.array([10, 0, 10]), np.array([uniform(-np.pi, np.pi), uniform(-np.pi, np.pi), uniform(-np.pi, np.pi)])),
        #     Configuration(np.array([10, 0, 10]), np.array([uniform(-np.pi, np.pi), uniform(-np.pi, np.pi), uniform(-np.pi, np.pi)])),
        #     Configuration(np.array([10, 3450, 10]), np.array([uniform(-np.pi, np.pi), uniform(-np.pi, np.pi), uniform(-np.pi, np.pi)])),
        #     Configuration(np.array([1780, 0, 10]), np.array([uniform(-np.pi, np.pi), uniform(-np.pi, np.pi), uniform(-np.pi, np.pi)])),
        #     Configuration(np.array([10, 0, 10]), np.array([uniform(-np.pi, np.pi), uniform(-np.pi, np.pi), uniform(-np.pi, np.pi)])),
        #     Configuration(np.array([10, 0, 178560]), np.array([uniform(-np.pi, np.pi), uniform(-np.pi, np.pi), uniform(-np.pi, np.pi)])),
        #     Configuration(np.array([10, 78, 10]), np.array([uniform(-np.pi, np.pi), uniform(-np.pi, np.pi), uniform(-np.pi, np.pi)])),
        #     Configuration(np.array([1078, 0, 1045]), np.array([uniform(-np.pi, np.pi), uniform(-np.pi, np.pi), uniform(-np.pi, np.pi)])),
        #     Configuration(np.array([20, 0, 20]), np.array([0, 0, 0]))
        #     ]
        # print("robot config", robot.config.trans, robot.config.rot)
        # for conf in seq:
        #     robot.set_to(conf)
        # print("robot config", robot.in_collision(goal))

        app.add_object(robot)
        app.add_object(goal)

        obs = []

        for o in self.obst:
            obst = Object3D(None, path=o)
            obst.set_to(Configuration(self.config[os.path.basename(o)][0], self.config[os.path.basename(o)][1], None), change_c=True)
            obs.append(obst)
            app.add_object(obst)
        algo = RRT(robot=robot.copy_o(), goal=goal, map_size=(25, 0, 25), obstacles=obs)

        algo.plan()
        # p = np.array([self.data.iloc[i][1:4] for i in range(len(self.data))])
        # p = np.insert(p, 3, np.ones(len(self.data)), axis = 1)
        # p = np.array([i.trans.tolist() + [1] for i in algo.G])

        diff_path1 = Object3D(None,
                             points=[g.trans.tolist() + [1] for g in algo.G],
                             faces=[i for i in range(len(algo.G))])
        diff_path1.draw_points = True
        app.add_object(diff_path1)

        diff_path = Object3D(None,
                             points=[robot.config.trans.tolist() + [1] for _ in range(3)],
                             faces=[i for i in range(3)])
        diff_path.draw_points = True
        app.add_object(diff_path)
        # print("datasets/robot_conf", goal.config.trans, goal.config.rot)
        # for i in algo.G:
            # print(i.trans)
        app.run()


    def insert(self, points) -> None:
        ...
    def __len__(self) -> int:
        ...
    def __getitem__(self, item) -> [np.array, np.array]:
        ...
    def generate(self, amount) -> None:
        ...