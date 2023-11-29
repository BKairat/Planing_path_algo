from __future__ import annotations
import numpy as np

class Configuration():
    def __init__(self,
                 trans: np.array,
                 rot: float | np.array,
                 parent: Configuration | None = None
                 ):
        self.trans = trans
        self.rot = rot
        self.parent: Configuration = parent

    def get_act(self, other: Configuration) -> (np.array, float | np.array):
        translation = other.trans - self.trans
        rotation = other.rot - self.rot
        return (translation, rotation)

    def copy(self) -> Configuration:
        return Configuration(np.copy(self.trans), np.copy(self.rot), self.parent)
