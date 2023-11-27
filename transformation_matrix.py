import numpy as np
from numpy.typing import ArrayLike

def translate(translation: ArrayLike = (0, 0, 0)):
    tx, ty, tz = translation
    return np.array([
        [1, 0, 0, 0],
        [0, 1, 0, 0],
        [0, 0, 1, 0],
        [tx, ty, tz, 1]
    ])


def rotate_x(angle: float = 0.):
    return np.array([
        [1, 0, 0, 0],
        [0, np.cos(angle), np.sin(angle), 0],
        [0, -np.sin(angle), np.cos(angle), 0],
        [0, 0, 0, 1]
    ])


def rotate_y(angle: float = 0.):
    return np.array([
        [np.cos(angle), 0, -np.sin(angle), 0],
        [0, 1, 0, 0],
        [np.sin(angle), 0, np.cos(angle), 0],
        [0, 0, 0, 1]
    ])


def rotate_z(angle: float = 0.):
    return np.array([
        [np.cos(angle), np.sin(angle), 0, 0],
        [-np.sin(angle), np.cos(angle), 0, 0],
        [0, 0, 1, 0],
        [0, 0, 0, 1]
    ])

def scale_f(k: float = 1.):
    return np.array([
        [k, 0, 0, 0],
        [0, k, 0, 0],
        [0, 0, k, 0],
        [0, 0, 0, 1]
    ])