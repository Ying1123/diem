import csv
import os

COLUMN_NAME = ["Benchmark", "andy_default", "andy_strings-exp", "cvc4", "cvc5", "seqArray", "z3"]
SPECIAL_MAPPING = {
	"andy_strings-exp" : "andy_strings"
}

# Set the directory you want to start from
rootDir = '/home/ying/xu/diem/old_seq_benchmarks/modules'
print(rootDir)

timebooks = {}
for i in COLUMN_NAME[1:]:
	try:
		if i not in SPECIAL_MAPPING:
			filename = rootDir + "/" + i + ".t"
		else:
			filename = rootDir + "/" + SPECIAL_MAPPING[i] + ".t"
		with open(filename) as tb:
			timebook = {}
			it = True
			key = ""
			value = 0
			for line in tb.readlines():
				line = line.strip('\n')
				if it:
					key = line
				else:
					value = str(int(line))
					timebook[key] = value
				it = not it
			timebooks[i] = timebook
			# print("timebook for " + i)
			# print(timebooks[i])
	except Exception as e:
		print(e)
	
results = {
	"succ": 0,
	"fail": 0,
	"timeout": 0
}

with open('comparison_result.csv', mode='w') as result_file:
	result_writer = csv.writer(result_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
	result_writer.writerow(COLUMN_NAME)

	for dirName, subdirList, fileList in os.walk(rootDir):
		# print('Found directory: %s' % dirName)
		folder_name = dirName.split(os.path.sep)[-1]
		# if folder_name != "AccountFreezing":
		#	continue
		result_map = {}
		for fname in fileList:
			# print('\t%s' % fname)
			if fname.startswith("boogie_"):
				if fname.startswith("boogie_baseline"):
					# print ("found baseline")
					pass
				else:
					belong = ""
					for i in COLUMN_NAME[1:]:
						if fname == "boogie_" + i + ".log":
							belong = i
					if belong == "":
						print("Unknown classification:" + fname)
						continue
					with open(dirName + "/" + fname, "r") as f:
						lines = f.readlines()
						last_line = lines[-1]
						if "SIGTERM" in last_line or "dumped core" in last_line:
							results["timeout"] += 1
							result_map[belong] = "timeout"
						elif "0 errors" in last_line:
							results["succ"] += 1
							# fetch process time
							if belong in timebooks.keys():
								if folder_name in timebooks[belong].keys():
									result_map[belong] = timebooks[belong][folder_name]
								else:
									result_map[belong] = "unknown succ"
							else:
								result_map[belong] = "unknown succ"
						else:
							results["fail"] += 1
							result_map[belong] = "fail"
		formatted_line = [folder_name]
		for i in COLUMN_NAME[1:]:
			if i in result_map.keys():
				formatted_line.append(result_map[i])
			else:
				formatted_line.append("not found")
		result_writer.writerow(formatted_line)

print("Total count:")
print("Succ: " + str(results["succ"]))
print("Fail: " + str(results["fail"]))
print("Timeout: " + str(results["timeout"]))

