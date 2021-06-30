from os import path, walk, system
import subprocess

# list_files = subprocess.run(["ls", "-l"])
print("enter")

root_dir = "/home/ying"
move_dir = path.join(root_dir, "diem/language/move-prover/tests/sources/functional")
bm_dir = path.join(root_dir, "diem/seq_benchmarks")
nobpls = []

subprocess.run([".", path.join(root_dir, ".profile")], shell=True)
#with open(path.join(root_dir, ".profile"), "r") as f:
#    exec(f.read())

for (dirpath, dirnames, filenames) in walk(move_dir):
    for filename in filenames:
        print(filename)
        if filename.endswith(".move"):
            # generate output.bpl
            r1 = subprocess.run([
                "cargo run --release --quiet --package move-prover -- -d",
                path.join(root_dir, "diem/language/move-stdlib/modules"),
                path.join(move_dir, filename),
                "--use-cvc4 --vector-theory SmtSeq --generate-smt -k"])
            # check if output.bpl generated
            if not path.exists(path.join(".", "output.bpl")):
                nobpls.append(filename)
                continue
            # move .bpl to the benchmark directory
            bm_dir_single = path.join(bm_dir, filename[:-5])
            if not path.exists(bm_dir_single):
                subprocess.run(["mkdir", bm_dir_single])
            bm_bpl = path.join(bm_dir_single, filename[:-5] + ".bpl")
            subprocess.run(["mv", "output.bpl", bm_bpl])
            # generate smt2
            bm_smt2 = filename[:-5] + ".smt2"
            backend = path.join(root_dir, "bin/cvc4")
            subprocess.run[
                path.join(root_dir, "boogie/Source/BoogieDriver/bin/Debug/netcoreapp3.1/BoogieDriver"),
                bm_bpl,
                "-monomorphize /env:2 /proverLog:" + bm_smt2,
                "/proverOpt:PROVER_PATH=" + backend,
                "/proverOpt:SOLVER=CVC4 /trace -doModSetAnalysis"]
            # move smt2 into the benchmark directory
            subprocess.run(["mv", bm_smt2, path.join(bm_dir_single, bm_smt2)])
     
