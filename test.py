import rapidmodule
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

print(rapidmodule.collision(a,b))
#