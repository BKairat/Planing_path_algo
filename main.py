import pygame as pg
import json
import sys
from object import Object2D
from planing_algorithms import RRT
import numpy as np
pg.init()

rob = sys.argv[1:][0]

with open("configurations/config_2d.json") as config_file:
    data = json.load(config_file)
    w = data["width"]
    h = data["height"]
    color = tuple(data["colors"]["robot"])
    bg = tuple(data["colors"]["bg"])
    robot = Object2D(np.array(data["robot_p"][rob]),
                     data["robot_p"]["configuration"])

    screen = pg.display.set_mode((w, h))

    running = True
    while running:
        screen.fill(bg)
        pg.draw.polygon(screen, color, robot.points)

        for event in pg.event.get():
            if event.type == pg.QUIT:
                running = False
        pg.time.delay(100)
        pg.display.flip()

    pg.quit()