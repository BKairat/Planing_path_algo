import numpy as np
import matplotlib.pyplot as plt

a = np.array([1, 1])
b = np.array([2, 8])

def konv(a, b, l):
    return (1 - l) * a + l * b

dots = []
for i in range(1, 100):
    dots.append(konv(a, b, i/100))
dots = np.array(dots)
plt.scatter(dots[:, 0], dots[:, 1])
plt.show()