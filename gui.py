import pygame as pg
from object import Object3D
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
        self.camera = Camera(self, [0.5, 1, -4])
        self.projection = Projection(self)
        self.object = Object3D(self)
        self.object.translate([0.2, 0.4, 0.2])
        self.object.rotation([0.1, 0.3, 0.1])

    def draw_(self):
        self.screen.fill(colors["black"])
        self.object.draw()

    def run(self):
        running = True
        while running:
            self.draw_()
            self.object.rotation([0.01, 0.01, 0.01])
            pg.display.set_caption(str(self.clock.get_fps()))
            pg.display.flip()
            for event in pg.event.get():
                if event.type == pg.QUIT:
                    running = False

if __name__ == "__main__":
    app = Render()
    app.run()
