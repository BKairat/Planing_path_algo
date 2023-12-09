from __future__ import annotations

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import os
import shutil
from random import randint
from numpy.typing import ArrayLike
from PIL import Image, ImageDraw
from tqdm import tqdm
import torch
from torch.utils.data import Dataset
from transformation_matrix import *


def denoise(points: ArrayLike, model: 'pretrained model' = None) -> list:
    points = np.array(points)
    w, h = max(points, key = lambda x: x[0])[0] , max(points, key = lambda x: x[2])[2]
    k = 64/max(w, h)
    points = points @ scale_f(k)
    noised = Image.new("L", (64, 64))
    draw_noise = ImageDraw.Draw(noised)
    for p in points:
        draw_noise.line([(p[0], p[2]), (p[0], p[2])], 255, width=0)
    # noised.show()

    test = np.array(noised)/255
    test = np.array([test])
    print(test.shape)
    pred = model.predict(test)[0]
    ret = []
    for i in range(64):
        for j in range(64):
            if pred[i][j][0] >= 0.01:
                ret.append([j, 0., i, 1.])
    ret = np.array(ret) @ scale_f(1/k)
    # plt.imshow(pred)
    # plt.show()
    return ret


