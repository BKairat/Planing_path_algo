from __future__ import annotations
import numpy as np
from numpy.typing import ArrayLike
from configurations import Configuration
from transformation_matrix import *
from camera import *
from projection import *
from numba import njit
from rapidmodule import collision

@njit(fastmath=True)
def any_(arr: ArrayLike, a: float, b: float) -> bool:
    return np.any((arr == a) | (arr == b))


class Object2D():
    def __init__(self,
                 points: ArrayLike,
                 config: (np.array, float) = (np.array((0., 0.)), 0.),
                 ):
        self.config : Configuration = Configuration(config=(np.array(config[0]), config[1]),
                                                    parent=None)
        self.points: np.array = points
        self.set_points(config)

    def set_points(self, config: (np.array, float) = (np.array((0., 0.)), 0.)) -> np.array:
        self.points -= self.points[0]
        return self.move((np.array(config[0]), config[1]))

    def move(self, act: (np.array, float) = (np.zeros(2), 0.)) -> np.array:
        self.points += act[0]

        rot = np.array([[np.cos(act[1]), -np.sin(act[1])],
                        [np.sin(act[1]), np.cos(act[1])]])
        ref_point = np.array(self.points[0])
        self.points -= ref_point
        self.points = np.dot(self.points, rot.T) + ref_point
        return self.points

    @staticmethod
    def scale(points: ArrayLike, zoom: float = 0.) -> np.array:
        pass


class Object3D():
    def __init__(self,
                 render,
                 points: ArrayLike = np.array([[0, 0, 0, 1], [0, 1, 0, 1], [1, 1, 0, 1], [1, 0, 0, 1],
                                               [0, 0, 1, 1], [0, 1, 1, 1], [1, 1, 1, 1], [1, 0, 1, 1]]),
                 faces: ArrayLike = np.array([(0, 1, 2, 3), (4, 5, 6, 7), (0, 4, 5, 1),
                                        (2, 3, 7, 6), (1, 2, 6, 5), (0, 3, 7, 4)]),
                 path: str | None = None,
                 scale: float | None = None,
                 p_color: tuple | pg.Color = pg.Color('red'),
                 l_color: tuple | pg.Color = pg.Color('orange'),
                 ):
        self.config = None
        self.render = render
        if path is None:
            self.points = points
            self.faces = faces
        else:
            self.points, self.faces = self.get_from_obj_file(path, scale)

        self.font = pg.font.SysFont('Arial', 30, bold=True)
        self.color_faces = [(l_color, face) for face in self.faces]
        self.p_color = p_color
        self.movement_flag = True
        self.label = ''
        self.draw_points = False

    def get_from_obj_file(self, path: str, scale: float | None) -> tuple:
        points, faces = [], []
        with open(path) as obj:
            for line in obj:
                if line.startswith('v '):
                    points.append([float(i) for i in line.split()[1:4]] + [1])
                elif line.startswith('f'):
                    faces_ = line.split()[1:]
                    faces.append([int(face_.split('/')[0]) - 1 for face_ in faces_])

        points = np.array(points)
        if scale:
            points = points @ scale_f(scale)
        x = (max(points, key = lambda x: x[0])[0] + min(points, key = lambda x: x[0])[0])/2
        y = (max(points, key = lambda x: x[1])[1] + min(points, key = lambda x: x[1])[1])/2
        z = min(points, key = lambda x: x[2])[2]
        ref_point = np.array([x, y, z, 0])
        points = points - ref_point
        self.config = Configuration(ref_point[:-1], np.zeros(3))
        return ([np.array(p) for p in points],
                [np.array(f) for f in faces])

    def draw(self):
        self.screen_projection()

    def translate(self, trans: ArrayLike) -> None:
        self.config.trans += trans
        self.points = self.points @ translate(trans)

    def in_collision(self, other: Object3D) -> bool:
        return collision(self.rapid_mod(), other.rapid_mod())

    def screen_projection(self):
        points = self.points @ self.render.camera.camera_matrix()
        points = points @ self.render.projection.projection_matrix
        points /= points[:, -1].reshape(-1, 1)
        points[(points > 2) | (points < -2)] = 0
        points = points @ self.render.projection.to_screen_matrix
        points = points[:, :2]

        if self.draw_points:
            for index, point in enumerate(points):
                if not any_(point, self.render.w_width, self.render.w_height):
                    pg.draw.circle(
                        self.render.screen, self.p_color,
                        point, 10 * np.exp(-0.005*np.sqrt(sum((self.points[index] - self.render.camera.position) ** 2)))
                    )
        else:
            for index, color_face in enumerate(self.color_faces):
                color, face = color_face
                polygon = points[face]
                if not any_(polygon, self.render.w_width, self.render.w_height):
                    pg.draw.polygon(self.render.screen, color, polygon, 1)
                    if self.label:
                        text = self.font.render(self.label[index], True, pg.Color('black'))
                        self.render.screen.blit(text, polygon[-1])

    def set_to(self, configuration: Configuration, change_c: bool = False):
        trans, rot = self.config.get_act(configuration)
        # print(f">>> {rot}")
        self.translate(trans)
        self.rotation(-self.config.rot)
        self.rotation(configuration.rot)
        if change_c:
            min_y = min(self.points, key=lambda x: x[2])[1]
            p = []
            for i in self.points:
                if np.allclose(i[1], min_y):
                    p.append(i)
            trans = min(p, key=lambda x: sum(x))
            self.config.trans = np.array(trans[:-1])
            self.config.rot = np.zeros(3)

    def act(self, trans: np.array, rot: np.array) -> None:
        self.translate(trans)
        self.rotation(rot)


    def rotation(self, angles: ArrayLike) -> None:
        assert len(angles) == 3, 'rotation in 3D space must receive 3 angles (len(angles) == 3)'
        pos = np.array(self.config.trans)
        # print("-->",pos)
        self.translate(-pos)
        self.points = self.points @ rotate_x(angles[0])
        self.points = self.points @ rotate_y(angles[1])
        self.points = self.points @ rotate_z(angles[2])
        self.config.rot += angles
        self.translate(pos)

    def rapid_mod(self) -> list:
        return [self.points[face].tolist() for face in self.faces]

    def dist_to(self, other: Object3D) -> float:
        return np.sqrt(sum((self.config.trans - other.config.trans)**2))

    def copy_o(self) -> Object3D:
        ret = Object3D(None,points=np.copy(self.points),
                       faces=np.copy(self.faces))
        ret.config = self.config.copy()
        return ret



class Axes(Object3D):
    def __init__(self, render):
        super().__init__(render)
        self.points = np.array([[0, 0, 0, 1],
                                [1, 0, 0, 1],
                                [0, 1, 0, 1],
                                [0, 0, 1, 1]])
        self.faces = np.array([[0, 1], [0, 2], [0, 3]])
        self.colors = [pg.Color(col) for col in ['red', 'green', 'blue']]
        self.color_faces = [(color, face) for color, face in zip(self.colors, self.faces)]
        self.label = 'XYZ'
        self.config = Configuration(trans=np.zeros(3), rot=np.zeros(3))