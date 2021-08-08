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

boogie=/home/ying/boogie/Source/BoogieDriver/bin/Debug/net5.0/BoogieDriver
move_dir=~/diem/language/move-prover/tests/sources/functional
bm_dir=~/diem/seq_benchmarks/functional
z3=/home/ying/bin/z3

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
			
            # generate .SmtSeq.z3.bpl
            cargo run --release --quiet --package move-prover -- -d ~/diem/language/move-stdlib/modules $move_dir/$filename.move --vector-theory SmtSeq --generate-smt -v debug -k > $bm_dir_single/mvp_z3_SmtSeq.log 2>&1
            rm *.smt
            rm *.bpl.log
            output_bpl=./output.bpl
            if [ -f "$output_bpl" ]; then
                echo "output SmtSeq z3 exists"
            else
                echo "output SmtSeq z3 doesn't exist"
                continue
            fi
            
            bm_bpl=$bm_dir_single/$filename.SmtSeq.z3.bpl
            mv ./output.bpl $bm_bpl

            # generate .default.z3.bpl
            cargo run --release --quiet --package move-prover -- -d ~/diem/language/move-stdlib/modules $move_dir/$filename.move --generate-smt -v debug -k > $bm_dir_single/mvp_z3_default.log 2>&1
            rm *.smt
            rm *.bpl.log
            output_bpl=./output.bpl
            if [ -f "$output_bpl" ]; then
                echo "output default z3 exists"
            else
                echo "output default z3 doesn't exist"
                continue
            fi
            
            bm_bpl=$bm_dir_single/$filename.default.z3.bpl
            mv ./output.bpl $bm_bpl
        fi
    fi
done
