import csv
import os

TIME_LIMIT = 60000
COLUMN_NAME = ["Benchmark", "baseline", "z3", "cvc4", "cvc5", "andy_default", "andy_strings", "seqArray", "seqArray_array"]

# Set the directory you want to start from
bm_dir = '/home/ying/diem/seq_benchmarks/modules_in_func'

def exists(st, vector):
	for word in vector:
		if st in word:
			return True
	return False

with open('result.csv', mode='w') as result_file:
	result_writer = csv.writer(result_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
	result_writer.writerow(COLUMN_NAME)

	funcs = {}
	result_map = {}
	lines = []
	with open('result.raw') as f:
		lines = f.readlines()
	i = 0
	while i < len(lines):
		benchmark = lines[i].rstrip()
		func = lines[i + 1].rstrip()
		if not func in funcs:
			funcs[func] = 1
		option = lines[i + 2].rstrip()
		time = lines[i + 3].rstrip()
		with open(bm_dir + "/" + benchmark + "/" + option + "/" + func + ".output") as f:
			ls = f.readlines()
			if exists("SIGTERM", ls) or exists("timeout", ls) or int(time) > TIME_LIMIT:
				result_map[(func, option)] = "timeout"
			elif exists("unknown", ls):
				result_map[(func, option)] = "unknown"
			elif exists("error", ls):
				result_map[(func, option)] = "fail"
			elif exists("unsat", ls[-1:]):
				result_map[(func, option)] = str(time)
			else:
				result_map[(func, option)] = "fail"
		i = i + 4

	for func in funcs.keys():
		formatted_line = [func]
		for option in COLUMN_NAME[1:]:
			if (func, option) in result_map.keys():
				formatted_line.append(result_map[(func, option)])
			else:
				formatted_line.append("not found")
		result_writer.writerow(formatted_line)

