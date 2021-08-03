#!/bin/bash

input_dir=/home/ying/diem/seq_benchmarks/SMT_LIB/QF_AX
output_dir=/home/ying/diem/seq_benchmarks/SMT_LIB/QF_AX_SEQ

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

find $input_dir -type f -print0 | while read -d $'\0' file; do
	IsSuffix ${file} "smt2"
    ret=$?
    if [ $ret -eq 0 ]; then
		echo "$file"
		output=${file//$input_dir/$output_dir}
		echo "$output"
	fi
	cargo run -p smt2patch -- $file --output $output
done

