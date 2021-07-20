#!/bin/bash

source ~/.profile

function IsSuffix() {
    local filename="$1"
    local suffix="$2"
    if [ "${file#*.}"x = "$suffix"x ]; then
        return 0
    else
        return 1
    fi
}

BOOGIE_EXE=/home/ying/boogie/Source/BoogieDriver/bin/Debug/net5.0/BoogieDriver

boogie=/home/ying/boogie/Source/BoogieDriver/bin/Debug/net5.0/BoogieDriver
move_dir=~/diem/language/move-prover/tests/sources/functional
bm_dir=~/diem/seq_benchmarks/functional
z3=/home/ying/bin/z3
cvc5=/home/ying/CVC4/andy_seq/bin/cvc5

rm default_z3.t
rm SmtSeq_z3.t
rm SmtSeq_cvc5.t

for dir in ~/diem/seq_benchmarks/functional/*
do
    if [ -d "$dir" ]; then
        echo "$dir is a dir"
        for file in $dir/*
        do
            # run for baseline default z3
            IsSuffix ${file} "default.z3.bpl"
            ret=$?
            if [ $ret -eq 0 ]; then
                echo "$file"
                filename=$(basename $file .default.z3.bpl)
                bm_smt2=$filename.default.z3.smt2

                start=$(date +%s)
                timeout 10 $boogie $file -monomorphize /env:2 /proverLog:$bm_smt2 /proverOpt:PROVER_PATH=$z3 /proverOpt:SOLVER=Z3 /trace -doModSetAnalysis > $dir/boogie_default_z3.log 2>&1
                end=$(date +%s)
                take=$(( end - start ))
                echo $filename >> default_z3.t
                echo ${take} >> default_z3.t
                if [ -f "$bm_smt2" ]; then
                    mv $bm_smt2 $dir/$bm_smt2
                fi
            fi

            # run for smtseq z3
            IsSuffix ${file} "SmtSeq.z3.bpl"
            ret=$?
            if [ $ret -eq 0 ]; then
                echo "$file"
                filename=$(basename $file .SmtSeq.z3.bpl)
                bm_smt2=$filename.SmtSeq.z3.smt2

                start=$(date +%s)
                timeout 10 $boogie $file -monomorphize /env:2 /proverLog:$bm_smt2 /proverOpt:PROVER_PATH=$z3 /proverOpt:SOLVER=Z3 /trace -doModSetAnalysis > $dir/boogie_SmtSeq_z3.log 2>&1
                end=$(date +%s)
                take=$(( end - start ))
                echo $filename >> SmtSeq_z3.t
                echo ${take} >> SmtSeq_z3.t
                if [ -f "$bm_smt2" ]; then
                    mv $bm_smt2 $dir/$bm_smt2
                fi
            fi

            # run for smtseq cvc5
            IsSuffix ${file} "SmtSeq.cvc4.bpl"
            ret=$?
            if [ $ret -eq 0 ]; then
                echo "$file"
                filename=$(basename $file .SmtSeq.cvc4.bpl)
                bm_smt2=$filename.SmtSeq.cvc5.smt2

                start=$(date +%s)
                timeout 10 $boogie $file -monomorphize /env:2 /proverLog:$bm_smt2 /proverOpt:PROVER_PATH=$cvc5 /proverOpt:O:strings-exp=true /proverOpt:SOLVER=CVC4 /trace -doModSetAnalysis > $dir/boogie_SmtSeq_cvc5.log 2>&1
                end=$(date +%s)
                take=$(( end - start ))
                echo $filename >> SmtSeq_cvc5.t
                echo ${take} >> SmtSeq_cvc5.t
                if [ -f "$bm_smt2" ]; then
                    mv $bm_smt2 $dir/$bm_smt2
                fi
            fi
        done
    fi
done
