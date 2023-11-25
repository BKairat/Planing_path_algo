import pygame as pg
from object import Object3D, Axes
from camera import *
from projection import *

colors = {
    "cyan": (0, 100, 100),
    "grey": (140, 146, 172),
    "white": (255, 255, 255),
    "black": (0, 0, 0)
}


class Render:
    def __init__(self):
        pg.init()
        self.size = self.width, self.height = 1000, 750
        self.w_width, self.w_height = self.width // 2, self.height // 2
        self.screen = pg.display.set_mode(self.size)
        self.clock = pg.time.Clock()
        self.fps = 60
        self.init_objects()

    def init_objects(self):
        self.camera = Camera(self, [-5, 5, -150])
        self.projection = Projection(self)
        # self.object = Object3D(self)
        # self.object = Object3D(self, path='models3D/Lowpoly_tree_sample.obj')
        self.object = Object3D(self, path='models3D/lego_man.obj')
        self.object.translate([0.2, 0.4, 0.2])
        # self.object.rotation([0.1, 0.3, 0.1])
        self.axes = Axes(self)
        self.axes.translate([0.7, 0.9, 0.7])
        self.world_axes = Axes(self)
        self.world_axes.movement_flag = False
        self.world_axes.translate([0.0001, 0.0001, 0.0001])

    def draw_(self):
        self.screen.fill(colors["black"])
        self.world_axes.draw()
        self.axes.draw()
        self.object.draw()

    def run(self):
        running = True
        while running:
            self.draw_()
            self.camera.control()
            pg.display.set_caption(str(self.clock.get_fps()))
            pg.display.flip()
            for event in pg.event.get():
                if event.type == pg.QUIT:
                    running = False

if __name__ == "__main__":
    app = Render()
    app.run()
