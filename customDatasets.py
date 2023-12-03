from __future__ import annotations

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import os
import shutil
from random import randint
from numpy.typing import ArrayLike
from random import uniform
from PIL import Image
import torch
from torch.utils.data import Dataset


def copy_file_to_folder(file: str, dest_folder: str) -> str:
    if not os.path.exists(dest_folder):
        os.makedirs(dest_folder)

    file_name = os.path.basename(file)

    dest_file = os.path.join(dest_folder, file_name)

    shutil.copy(file, dest_file)
    return dest_file


class DenoiseDataset(Dataset):
    def __init__(self,
                 file_csv: str = "out.csv",
                 root_dir: str = "./datasets/denoise",
                 ):
        self.annotations = pd.read_csv(os.path.join("./datasets/denoise", file_csv))
        self.root_dir = root_dir

    def __len__(self):
        return len(self.annotations)

    def __getitem__(self, item: int | None) -> tuple:
        if item == None:
            item = randint(0, self.len()-1)
        noised_path = os.path.join(self.root_dir, self.annotations.iloc[item, 0])
        target_path = os.path.join(self.root_dir, self.annotations.iloc[item, 1])

        n_img = plt.imread(noised_path)
        t_img = plt.imread(target_path)
        return (n_img, t_img)

    def show(self, index: int = 0):
        fig, axis = plt.subplots(1, 2)
        noised, target = self[index]

        axis[0].imshow(noised)
        axis[0].set_title("noised path")

        axis[1].imshow(target)
        axis[1].set_title("target path")

        plt.show()

    def load_data(self):
        pass


class Generator():
    def __init__(self, root_dir: str = "datasets/denoise/",
                 size: int = 10000,
                 fname: str = "out",
                 augm: int = 0,
                 map_size: int = 64):
        self.annotations = os.path.join("./datasets/denoise", fname+".csv")
        self.root_dir = root_dir
        if not os.path.exists(self.annotations):
            os.makedirs(self.annotations)

        self.size = size
        self.augm = augm
        self.map_size = map_size

    @staticmethod
    def generate_random_points_2d(n: int, ref_point: ArrayLike, radius: float):
        angles = np.random.uniform(0, 2 * np.pi, n)
        x_coords = ref_point[0] + uniform(0, radius) * np.cos(angles)
        y_coords = ref_point[1] + uniform(0, radius) * np.sin(angles)
        return np.column_stack((x_coords, y_coords)).astype("int64")

    def generate_noised(self, p_range: int = 6, r_range: int = 20):
        xz_data = {"noised": [], "target": []}

        for i in range(self.size):
            print(i)
            ex = np.zeros((self.map_size, self.map_size), dtype=np.int32)
            ex_noised = np.zeros((self.map_size, self.map_size), dtype=np.int32)
            p = randint(1, p_range)
            for p_i in range(p):
                ex[randint(0, self.map_size-1)][randint(0, self.map_size-1)] = 255

            # print(">>>>>>>>>",ex.shape)

            for y in range(len(ex)):
                for x in range(len(ex[y])):
                    if ex[y][x] != 0:
                        r_p = self.generate_random_points_2d(r_range, (x, y), 8)
                        for k in r_p:
                            if (k < np.array([self.map_size, self.map_size])).all() and (k >= np.array([0,0])).all():
                                # print(k)
                                ex_noised[k[1]][k[0]] = 255
            xz_data["noised"].append(f"n_{i}.jpg")
            xz_data["target"].append(f"t_{i}.jpg")
            image_target = Image.fromarray(ex.astype('uint8'), 'L')
            image_target.save(os.path.join(self.root_dir, f"t_{i}.jpg"))
            # print(ex_noised)
            image_noised = Image.fromarray(ex_noised.astype('uint8'), 'L')
            image_noised.save(os.path.join(self.root_dir, f"n_{i}.jpg"))
        df = pd.DataFrame(xz_data, index=None)
        df.to_csv(self.annotations, index=False)


