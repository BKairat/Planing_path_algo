from rapidmodule import collision
import numpy as np
from transformation_matrix import *
a = [[[0, 0, 0], [10, 0, 0], [0, 10, 0]],
    [[0, 0, 0], [10, 0, 0], [0, 0, 10]],
    [[0, 0, 0], [0, 0, 10], [0, 10, 0]],
    [[0, 0, 10], [10, 0, 0], [0, 10, 0]],
     ]

c = a

b = np.array(a)
b = np.insert(b, 3, np.ones(3), axis = 2)
b = b @ rotate_x(1.45)
b = b @ translate([100000, 1000000, 10000000])
b = np.delete(b, -1, -1)
b = b.tolist()
# print(b)

print(collision(a,b))
#


app = Render()
robot = Object3D(None, path=self.rob, scale=0.2, l_color=pg.Color('blue'))
goal = Object3D(None, path=self.goal)
robot.set_to(Configuration(self.config['robot.obj'][0],
                           self.config['robot.obj'][1],
                           None))
goal.set_to(Configuration(self.config['goal.obj'][0], self.config['goal.obj'][1], None))

a = np.array([uniform(-np.pi / 2, np.pi / 2), uniform(-np.pi / 2, np.pi / 2), uniform(-np.pi / 2, np.pi / 2)])
print(a)

app.add_object(robot)
app.add_object(goal)

obs = []

for o in self.obst:
    obst = Object3D(None, path=o)
    obst.set_to(Configuration(self.config[os.path.basename(o)][0], self.config[os.path.basename(o)][1], None))
    obs.append(obst)
    app.add_object(obst)
algo = RRT(robot=robot.copy_o(), goal=goal, map_size=(25, 0, 25), obstacles=obs)

pl = algo.plan()

if pl:
    diff_path1 = Object3D(None,
                          points=[g.trans.tolist() + [1] for g in pl],
                          faces=[i for i in range(len(pl))])

    diff_path1.draw_points = True
    app.add_object(diff_path1)

diff_path = Object3D(None,
                     points=[robot.get_ref_point(robot.points).tolist() for _ in range(3)],
                     faces=[i for i in range(3)])
diff_path.draw_points = True
app.add_object(diff_path)
# print("datasets/robot_conf", goal.config.trans, goal.config.rot)
# for i in algo.G:
# print(i.trans)
app.run()