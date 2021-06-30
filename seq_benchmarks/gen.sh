move_dir = "~/diem/language/move-prover/tests/sources/functional/"
bm_dir = "~/diem/seq_benchmarks/"
nobpls = []
for file in move_dir: 
	if file endwith ".move":	
		split file into filename + ".move"
		
		# generate output.bpl
		run("mvp -d ~/diem/language/move-stdlib/modules "
	            + move_dir + file + 
	            " --use-cvc4 --vector-theory SmtSeq --generate-smt -k")	
		# check if output.bpl generated
		if ("output.bpl" not exists in "./"):
			nobpls.append(file)
			continue
	
		# move .bpl to the benchmark directory
	        bm_dir_single = bm_dir + filename + "/"
		if (bm_dir_single not exists):
			run("mkdir " + bm_dir_single)
		bm_bpl = bm_dir_single + filename + ".bpl"
		run("mv output.bpl " + bm_bpl)	
		
		# generate smt2
		bm_smt2 = filename + ".smt2"
		backend = "~/bin/cvc4"
		run("~/boogie/Source/BoogieDriver/bin/Debug/netcoreapp3.1/BoogieDriver "
	            + bm_bpl + " -monomorphize /env:2 /proverLog:" + bm_smt2 + " /proverOpt:PROVER_PATH=" + backend + " /proverOpt:SOLVER=CVC4 /trace -doModSetAnalysis")
		# move smt2 into the benchmark directory
		run("mv " + bm_smt2 + " " + bm_dir_single + bm_smt2)
