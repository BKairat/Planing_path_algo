from __future__ import annotations
import os
import shutil
import torch
import pandas as pd
from gui import Render
from object import Object3D
import numpy as np
import rapidmodule


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
        robot = Object3D(None, path = self.rob, scale=0.2)
        goal = Object3D(None, path = self.goal)

        robot.movement(*self.config['robot.obj'])
        goal.movement(*self.config['goal.obj'])

        app.add_object(robot)
        app.add_object(goal)

        for o in self.obst:
            obst = Object3D(None, path=o)
            obst.movement(*self.config[os.path.basename(o)])
            app.add_object(obst)
        p = np.array([self.data.iloc[i][1:4] for i in range(len(self.data))])
        p = np.insert(p, 3, np.ones(len(self.data)), axis = 1)
        diff_path = Object3D(None,
                             points=p,
                             faces=[i for i in range(len(self.data))])
        diff_path.draw_points = True
        app.add_object(diff_path)

        app.run()


    def insert(self, points) -> None:
        ...
    def __len__(self) -> int:
        ...
    def __getitem__(self, item) -> [np.array, np.array]:
        ...
    def generate(self, amount) -> None:
        ...