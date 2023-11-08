import pygame as pg
pg.init()

screen = pg.display.set_mode((500, 500))

running = True
while running:

    for event in pg.event.get():
        if event.type == pg.QUIT:
            running = False



    pg.display.flip()

pg.quit()