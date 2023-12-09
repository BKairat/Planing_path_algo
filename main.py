import pygame as pg
import tensorflow as tf
import sys
import getopt
import os
from object import Object2D, Object3D
from customDatasets import DenoiseDataset, Generator
from planing_algorithms import RRT
from configurations import Configuration
from customDatasets import Generator
import numpy as np
import pandas as pd
from gui import Render
from denoise import denoise
import matplotlib.pyplot as plt


if __name__ == "__main__":
    opts, args = getopt.getopt(sys.argv[1:],
                               "c:rd:m:a:",
                               [
                                   'config_file',
                                   'root_dir',
                                   'model',
                                   'algorithm'
                               ])
    mode = args[0]
    assert mode in ["generate", "train", "test"], "Unknown mode, mode must be one of generate, train or test"

    if mode == "test":
        app = Render()
        config = None
        model = None
        algo = None
        path = None
        for opt, arg in opts:
            if opt == "-c":
                config = pd.read_json(os.path.join("./configurations", arg))
            if opt == "-m":
                model = tf.keras.models.load_model(os.path.join("pretrained_models", arg))
            if opt == "-a":
                if arg in ["RRT", "rrt"]:
                    algo = RRT
        robot = Object3D(None,
                         path=os.path.join("models3D", config["robot"][0]),
                         scale=0.2,
                         l_color=pg.Color('blue'))
        t, r = config["robot"][1][0], config["robot"][1][1]

        robot.set_to(Configuration(trans=config["robot"][1][0], rot=config["robot"][1][1]))
        app.add_object(robot)

        goal = Object3D(None,
                        path=os.path.join("models3D", config["goal"][0]))
        goal.set_to(Configuration(trans=config["goal"][1][0], rot=config["goal"][1][1]))
        app.add_object(goal)
        obstacles = []
        for i in range(len(config["obstacles"][1])):
            obst_o = Object3D(None,
                              path=os.path.join("models3D", config["obstacles"][0]))
            obst_o.set_to(Configuration(trans=config["obstacles"][1][i][0], rot=config["obstacles"][1][i][1]))
            app.add_object(obst_o)
            obstacles.append(obst_o)

        if algo:
            a = algo(robot=robot.copy_o(), goal=goal, map_size=(30, 0, 30), obstacles=obstacles)
            path = a.plan()

        if path:
            points = [c.trans.tolist() + [1] for c in path]
            points.append([0, 0, 0, 1])
            path_o = Object3D(None,
                            points=points,
                            faces=[i for i in range(len(points))])
            path_o.draw_points = True
            app.add_path(path_o)
            noised_path = [[p[0], p[2]] for p in points]
            for i in range(len(noised_path)-1):
                rands = Generator.generate_random_points_line(noised_path[i], noised_path[i+1], distance_range=0.3, n_points=100)
                noised_path += rands
            fig, axis = plt.subplots(1, 2)
            n = np.array(noised_path)
            p = np.array(points)

            noised_path_o = [[n_p[0], 0., n_p[-1], 1] for n_p in noised_path]
            denoised = denoise(noised_path_o, model)
            noised_path_o = Object3D(None,
                                     points=noised_path_o,
                                     faces=[i for i in range(len(noised_path_o))])
            noised_path_o.draw_points = True
            app.add_path(noised_path_o)

            denoised_o = Object3D(None,
                                     points=denoised,
                                     faces=[i for i in range(len(denoised))])
            denoised_o.draw_points = True
            app.add_path(denoised_o)



        app.run()

