import numpy as np

max_bias = []

for i in range(1,9):
	l = np.loadtxt(f'run{i}/COLVAR')
	max_bias.append(np.max(l[:,16]))

print(np.mean(np.array(max_bias)))
print(np.std(np.array(max_bias)))
	
