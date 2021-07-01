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

move_dir=~/diem/language/move-prover/tests/sources/functional
bm_dir=~/diem/seq_benchmarks

for file in ~/test/*
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
            cargo run --release --quiet --package move-prover -- -d ~/diem/language/move-stdlib/modules ~/test/$filename.move --use-cvc4 --vector-theory SmtSeq --generate-smt -k
            output_bpl=./output.bpl
            if [ -f "$output_bpl" ]; then
                echo "output exists"
            else
                echo "output doesn't exist"
                continue
            fi
            bm_dir_single=$bm_dir/$filename
            
        fi
    fi
done
