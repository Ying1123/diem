from os import path, walk
import subprocess

# list_files = subprocess.run(["ls", "-l"])

move_dir = "~/diem/language/move-prover/tests/sources/functional/"
bm_dir = "~/diem/seq_benchmarks/"
nobpls = []

for (dirpath, dirnames, filenames) in walk(mypath):
	print(filenames)
    if filenames.endswith(".move"):
    	# generate output.bpl
    	r1 = subprocess.run([
    		"mvp -d ~/diem/language/move-stdlib/modules",
    		move_dir,
    		filenames,
    		"--use-cvc4 --vector-theory SmtSeq --generate-smt -k"])
    	# check if output.bpl generated
    	if path.exists(path.join("./", "output.bpl")):
			nobpls.append(filenames)
			continue
		# move .bpl to the benchmark directory
		bm_dir_single = path.join(bm_dir, filename)
		if not path.exists(bm_dir_single):
			run("mkdir " + bm_dir_single)
			subprocess.run(["mkdir", bm_dir_single])
		bm_bpl = path.join(bm_dir_single, filenames, ".bpl")
		subprocess.run(["mv", "output.bpl", bm_bpl])
		# generate smt2
		bm_smt2 = filename + ".smt2"
		backend = "~/bin/cvc4"
		subprocess.run[
			"~/boogie/Source/BoogieDriver/bin/Debug/netcoreapp3.1/BoogieDriver",
			bm_bpl,
			"-monomorphize /env:2 /proverLog:",
			bm_smt2,
			"/proverOpt:PROVER_PATH=" + backend,
			"/proverOpt:SOLVER=CVC4 /trace -doModSetAnalysis"]
		# move smt2 into the benchmark directory
		subprocess.run(["mv", bm_smt2, bm_dir_single, bm_smt2])
    
