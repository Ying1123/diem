import matplotlib.pyplot as plt
import numpy as np

f_new = open('QF_AX_SEQ/result/swap.t', 'r')
f_old = open('QF_AX_SEQ/result/swap_old_seq.t', 'r')
f_array = open('QF_AX/result/swap_array.t', 'r')

new = []
old = []
array = []
i = 0
for line in f_new.readlines():
  i += 1
  if i % 2 == 0:
    new.append(int(line))
for line in f_old.readlines():
  i += 1
  if i % 2 == 0:
    old.append(int(line))
for line in f_array.readlines():
  i += 1
  if i % 2 == 0:
    array.append(int(line))

print("lens: {} {} {}".format(len(new), len(old), len(array)))
print(new)

plt.scatter(np.array(array), np.array(new))
