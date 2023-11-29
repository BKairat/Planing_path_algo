import pygame as pg
import json
import sys
from object import Object2D, Object3D
from datasets import Dataset
import numpy as np
# pg.init()

from gui import Render

ds = Dataset(load = 'diff_datasets/diffusion_0')
ds.show()
# app = Render()
# # object = Object3D(None, path='models3D/obstacle_1.obj')
# object1 = Object3D(None, path='models3D/obstacle_2.obj')
# object2 = Object3D(None, path='models3D/robot.obj')
# # object2.draw_points = True
# object2.rotation([-np.pi/2 ,0, 0 ])
# # app.add_object(object)
# app.add_object(object1)
# app.add_object(object2)
#
# app.run()
# rob = sys.argv[1:][0]
#
# with open("configurations/config_2d.json") as config_file:
#     data = json.load(config_file)
#     w = data["width"]
#     h = data["height"]
#     color = tuple(data["colors"]["robot"])
#     bg = tuple(data["colors"]["bg"])
#     robot = Object2D(np.array(data["robot_p"][rob]),
#                      data["robot_p"]["configuration"])
#
#     screen = pg.display.set_mode((w, h))
#
#     running = True
#     while running:
#         screen.fill(bg)
#         pg.draw.polygon(screen, color, robot.points)
#
#         for event in pg.event.get():
#             if event.type == pg.QUIT:
#                 running = False
#         pg.time.delay(100)
#         pg.display.flip()
#
#     pg.quit()