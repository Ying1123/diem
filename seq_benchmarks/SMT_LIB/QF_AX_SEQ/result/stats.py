file1 = open('swap_old_seq.t', 'r')
 
count = 0
timeouts = 0
for line in Lines:
    count += 1
    print("Line{}: {}".format(count, line.strip()))
    if int(line) == 10:
        timeouts += 1
        print("Line{}: timeout".format(count))
print("#timeouts: {}".format(timeouts))
