from __future__ import annotations

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import os
import shutil
from random import randint
from numpy.typing import ArrayLike
from random import uniform
from PIL import Image, ImageDraw
from tqdm import tqdm
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
                 root_dir: str = "./datasets/denoise_simple",
                 ):
        self.annotations = pd.read_csv(os.path.join(root_dir, file_csv))
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

    def load_data(self) -> [[[], []], [[], []]]:
        train = [[], []]
        test = [[], []]
        len_ = len(self)
        print("loading train data:")
        for i in tqdm(range(round(0.8*len_))):
            train[0].append(plt.imread(os.path.join(self.root_dir, self.annotations.iloc[i, 0])))
            train[1].append(plt.imread(os.path.join(self.root_dir, self.annotations.iloc[i, 1])))
        print("complete!")
        print("loading test data:")
        for i in tqdm(range(round(0.8*len_), len_)):
            test[0].append(plt.imread(os.path.join(self.root_dir, self.annotations.iloc[i, 0])))
            test[1].append(plt.imread(os.path.join(self.root_dir, self.annotations.iloc[i, 1])))
        print("complete!")
        return train, test

class Generator():
    def __init__(self, root_dir: str = "./datasets/denoise_simple/",
                 size: int = 10000,
                 fname: str = "out",
                 augm: int = 0,
                 map_size: int = 64):
        self.annotations = os.path.join(root_dir, fname+".csv")
        self.root_dir = root_dir
        if not os.path.exists(self.root_dir):
            os.makedirs(self.root_dir)

        self.size = size
        self.augm = augm
        self.map_size = map_size

    @staticmethod
    def generate_random_points_circle(n: int, ref_point: ArrayLike, radius: float):
        angles = np.random.uniform(0, 2 * np.pi, n)
        x_coords = ref_point[0] + uniform(0, radius) * np.cos(angles)
        y_coords = ref_point[1] + uniform(0, radius) * np.sin(angles)
        return np.column_stack((x_coords, y_coords)).astype("int64")

    @staticmethod
    def generate_random_points_on_line(point1: np.array, point2: np.array, num_points: int) -> np.array:
        t_values = np.random.rand(num_points)
        line_points = point1 + t_values[:, np.newaxis] * (point2 - point1)
        return line_points

    @staticmethod
    def generate_random_points_line(point1: ArrayLike, point2: ArrayLike,
                                    distance_range: float = 0.05, n_points: int =10) -> list:
        x1, y1 = point1
        x2, y2 = point2

        if x2 == x1:
            x2 += 0.00001
        slope = (y2 - y1) / (x2 - x1)
        if slope > 2:
            slope = 2
        if slope < -2:
            slope = -2
        t_values = np.random.rand(n_points)
        rand_ps_on_line = point1 + t_values[:, np.newaxis] * (np.array(point2) - point1)

        noise = []
        for rand_p in rand_ps_on_line:
            new_x = rand_p[0] + np.sqrt(1 + slope ** 2) * (y2 - y1) * np.random.uniform(-distance_range, distance_range)
            new_y = rand_p[1] - np.sqrt(1 + slope ** 2) * (x2 - x1) * np.random.uniform(-distance_range, distance_range)
            noise.append([new_x, new_y])
        return noise

    def generate_noised_with_intersections(self, p_range: tuple = (3, 10)):
        data = {"noised": [], "target": []}
        print("generating dataset:")
        for i in tqdm(range(self.size)):
            image_target = Image.new("L", (self.map_size, self.map_size))
            noised = Image.new("L", (self.map_size, self.map_size))

            draw = ImageDraw.Draw(image_target)
            draw_noise = ImageDraw.Draw(noised)

            p = randint(p_range[0], p_range[1])

            a = (randint(0, 63), randint(0, 63))
            p = randint(3, 7)

            for i_ in range(p - 1):
                b = (randint(0, 63), randint(0, 63))
                draw.line([a, b], 255, width=0)
                rand_P = self.generate_random_points_line(a, b, distance_range=0.5, n_points=100)
                rand_P = np.array(rand_P)
                for p in rand_P:
                    p = tuple(p)
                    draw_noise.line([p, p], 255, width=0)
                a = b

            data["noised"].append(f"n_{i}.jpg")
            data["target"].append(f"t_{i}.jpg")

            image_target.save(os.path.join(self.root_dir, f"t_{i}.jpg"))
            noised.save(os.path.join(self.root_dir, f"n_{i}.jpg"))
        df = pd.DataFrame(data, index=None)
        df.to_csv(self.annotations, index=False)

    def generate_noised_simple(self, p_range: tuple = (7, 12)):
        data = {"noised": [], "target": []}
        print("generating dataset:")
        for i in tqdm(range(self.size)):
            image_target = Image.new("L", (self.map_size, self.map_size))
            noised = Image.new("L", (self.map_size, self.map_size))

            draw = ImageDraw.Draw(image_target)
            draw_noise = ImageDraw.Draw(noised)

            a = np.array((0, 0))
            p = randint(p_range[0], p_range[1])
            b = a
            for i_ in range(p - 1):
                while np.allclose(a, b):
                    b = np.array((randint(round(a[0]), 63), randint(round(a[1]), 63)))
                d = np.sqrt(sum((b - a) ** 2))
                d = d if float(d) > 1e-10 else 1e-8
                b = a + 10 * (b - a) / d
                draw.line([tuple(a), tuple(b)], 255, width=0)
                rand_P = self.generate_random_points_line(a, b, distance_range=0.5, n_points=200)
                rand_P = np.array(rand_P)
                for p in rand_P:
                    p = tuple(p)
                    draw_noise.line([p, p], 255, width=0)
                a = b
                if (a >= 63).any():
                    break

            data["noised"].append(f"n_{i}.jpg")
            data["target"].append(f"t_{i}.jpg")

            image_target.save(os.path.join(self.root_dir, f"t_{i}.jpg"))
            noised.save(os.path.join(self.root_dir, f"n_{i}.jpg"))
        df = pd.DataFrame(data, index=None)
        df.to_csv(self.annotations, index=False)


