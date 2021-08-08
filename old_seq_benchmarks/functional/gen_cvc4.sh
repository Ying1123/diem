#!/bin/bash

source ~/.profile

function IsSuffix() {
    local filename="$1"
    local suffix="$2"
    if [ "${file##*.}"x = "$suffix"x ]; then
        return 0
    else
        return 1
    fi
}

BOOGIE_EXE=/home/ying/boogie/Source/BoogieDriver/bin/Debug/net5.0/BoogieDriver
CVC4_EXE=/home/ying/bin/cvc4

boogie=/home/ying/boogie/Source/BoogieDriver/bin/Debug/net5.0/BoogieDriver
move_dir=~/diem/language/move-prover/tests/sources/functional
bm_dir=~/diem/seq_benchmarks/functional
cvc4=/home/ying/bin/cvc4

for file in ~/diem/language/move-prover/tests/sources/functional/*
do
    if [ -d "$file" ]
    then
        echo "$file is a dir"
    elif [ -f "$file" ]
    then
        echo "$file is a file"
        IsSuffix ${file} "move"
        ret=$?
        if [ $ret -eq 0 ]; then
            echo "the suffix of the ${file} is move"
            filename=$(basename $file .move)
            echo "file name is $filename"
            
            bm_dir_single=$bm_dir/$filename
            if [ -d "$bm_dir_single" ]; then
                echo "dir exists"
            else
                mkdir $bm_dir_single
            fi
            cp $move_dir/$filename.move $bm_dir_single/
			
            cargo run --release --quiet --package move-prover -- -d ~/diem/language/move-stdlib/modules $move_dir/$filename.move --use-cvc4 --vector-theory SmtSeq --generate-smt -v debug -k > $bm_dir_single/mvp_cvc4.log 2>&1
            rm *.smt
            rm *.bpl.log
            output_bpl=./output.bpl
            if [ -f "$output_bpl" ]; then
                echo "output exists"
            else
                echo "output doesn't exist"
                continue
            fi
            
            bm_bpl=$bm_dir_single/$filename.cvc4.bpl
            mv ./output.bpl $bm_bpl
            # generate smt2
            bm_smt2=$filename.cvc4.smt2
            timeout 5 $boogie $bm_bpl -monomorphize /env:2 /proverLog:$bm_smt2 /proverOpt:PROVER_PATH=$cvc4 /proverOpt:SOLVER=CVC4 /trace -doModSetAnalysis > $bm_dir_single/boogie_cvc4.log 2>&1
            if [ -f "$bm_smt2" ]; then
                mv $bm_smt2 $bm_dir_single/$bm_smt2
                timeout 5 $cvc4 $bm_dir_single/$bm_smt2 --incremental > $bm_dir_single/cvc4.output 2>&1
            fi
        fi
    fi
done
