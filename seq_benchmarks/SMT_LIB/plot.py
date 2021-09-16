import matplotlib.pyplot as plt
import numpy as np

f_new = open('QF_AX_SEQ/result/swap.t', 'r')
f_old = open('QF_AX_SEQ/result/swap_old_seq.t', 'r')
f_array = open('QF_AX_ARRAY/result/swap_array.t', 'r')

timeout_new = []
timeout_array = []
name = ""
new = []
old = []
array = []
i = 0
for line in f_new.readlines():
  i += 1
  if i % 2 == 1:
    name = line[0:-1]
  else:
    new.append(int(line))
    if int(line) >= 120:
      timeout_new.append(name)
for line in f_old.readlines():
  i += 1
  if i % 2 == 0:
    old.append(int(line))
for line in f_array.readlines():
  i += 1
  if i % 2 == 1:
    name = line[0:-1]
  else:
    array.append(int(line))
    if int(line) == 10:
      timeout_array.append(name)

#print("new\t", timeout_new)
#print("array\t", timeout_array)
#print(set(timeout_new) - set(timeout_array))
print("lens: {} {} {}".format(len(new), len(old), len(array)))


x = np.linspace(0, np.max(np.array(array)), 1000)
print(np.max(np.array(new)))
plt.plot(x, x)
plt.xlabel("array solver")
plt.ylabel("new solver")
plt.scatter(np.array(array), np.array(new))
plt.scatter(np.array(array), np.array(old))
plt.show()

x = np.linspace(0, 120, 1000)
print(np.max(np.array(new)))
plt.plot(x, x)
plt.xlabel("new solver")
plt.ylabel("old solver")
plt.scatter(np.array(new), np.array(old))
plt.show()
