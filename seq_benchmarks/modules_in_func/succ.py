import csv

with open('result_Sep_16.csv') as f:
	csv_reader = csv.reader(f, delimiter=',')
	cols = []
	succ = {}
	i = 0
	for row in csv_reader:
		if i == 0:
			cols = row
			for name in cols:
				succ[name] = 0
		else:
			for j in range(len(row)):
				if j == 0 or row[j].isnumeric():
					succ[cols[j]] = succ[cols[j]] + 1
		i = i + 1

	print(cols)
	print(succ)

