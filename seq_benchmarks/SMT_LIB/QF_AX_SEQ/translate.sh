#!/bin/bash

# run in the directory smt2utils/smt2patch

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
		output=${file//$input_dir/$output_dir}
		cargo run -p smt2patch -- $file --output $output
		sed -i "s/set-logic.*/set-logic ALL)/" $output
		sed -i "s/(Array Index /(Seq /" $output
		sed -i "s/Index/Int/" $output
		sed -i "s/(declare-sort Int 0)//" $output
	fi
done

