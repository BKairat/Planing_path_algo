from __future__ import annotations
import numpy as np

class Configuration():
    def __init__(self,
                 config: (tuple, float),
                 parent: Configuration | None = None
                 ):
        self.config: (tuple, float) = config
        self.parent: Configuration = parent

    def get_act(self, other: Configuration) -> (np.array, float):
        translation = np.array(other.config[0])-np.array(self.config[0])
        rotation = other.config[1] - self.config[0]
        return (translation, rotation)
