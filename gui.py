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
        self.init_camera()
        self.objects = []

    def init_camera(self):
        self.camera = Camera(self, [-5, 5, -15])
        self.projection = Projection(self)
        self.world_axes = Axes(self)

    def add_object(self, other: Object3D):
        other.render = self
        self.objects.append(other)

    def draw_(self):
        self.screen.fill(colors["white"])
        self.world_axes.draw()
        # self.axes.draw(
        for obj in self.objects:
            obj.draw()

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
