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
z3=/home/ying/bin/z3
cvc4=/home/ying/bin/cvc4
cvc5_master=/home/ying/CVC4/prod/bin/cvc5
cvc5_seqArray=/home/ying/CVC4/seq_prod/bin/cvc5
move_dir=~/diem/language/diem-framework/modules
bm_dir=~/diem/seq_benchmarks/modules_in_func

cargo run --release --quiet --package move-prover --
find $bm_dir -type f -print0 | while read -d $'\0' file; do
    if [ -d "$file" ]
    then
        echo "$file is a dir"
    elif [ -f "$file" ]
    then
        IsSuffix ${file} "move"
        ret=$?
        if [ $ret -eq 0 ]; then
            filename=$(basename $file .move)
            echo "file name is $filename"
            
			bm_dir_single=$bm_dir/$filename
			for option in "$@"
			do
				option_dir=$bm_dir_single/$option
				echo "generating smt2 files in $option_dir"
				if [ ! -d "$option_dir" ]; then
					echo "$solver_dir does not exists, create bpl file first!"
					continue
				fi
				bm_bpl=$option_dir/$filename.bpl
				if [ "$option" = "baseline" ] || [ "$option" = "z3" ]; then
					# z3
					timeout 60 $boogie $bm_bpl -monomorphize /env:2 -proverLog:$option_dir/@PROC@.smt2 /proverOpt:PROVER_PATH=$z3 /proverOpt:SOLVER=Z3 /trace -doModSetAnalysis > $option_dir/boogie.log 2>&1
				elif [ "$option" = "cvc4" ]; then
					# cvc4 --pre-skolem-quant --no-dt-share-sel
					timeout 60 $boogie $bm_bpl -monomorphize /env:2 -proverLog:$option_dir/@PROC@.smt2 /proverOpt:PROVER_PATH=$cvc4 /proverOpt:O:pre-skolem-quant=true /proverOpt:O:no-dt-share-sel=true /proverOpt:SOLVER=CVC5 /trace -doModSetAnalysis > $option_dir/boogie.log 2>&1
				elif [ "$option" = "cvc5" ]; then
					# cvc5_master --pre-skolem-quant --no-dt-share-sel
					timeout 60 $boogie $bm_bpl -monomorphize /env:2 -proverLog:$option_dir/@PROC@.smt2 /proverOpt:PROVER_PATH=$cvc5_master /proverOpt:O:pre-skolem-quant=true /proverOpt:O:no-dt-share-sel=true /proverOpt:SOLVER=CVC5 /trace -doModSetAnalysis > $option_dir/boogie.log 2>&1
				elif [ "$option" = "andy_default" ] || [ "$option" = "seqArray_array" ]; then
					# cvc5_seqArray --pre-skolem-quant --no-dt-share-sel --ee-mode=central
					timeout 60 $boogie $bm_bpl -monomorphize /env:2 -proverLog:$option_dir/@PROC@.smt2 /proverOpt:PROVER_PATH=$cvc5_seqArray /proverOpt:O:pre-skolem-quant=true /proverOpt:O:no-dt-share-sel=true /proverOpt:O:ee-mode=central /proverOpt:SOLVER=CVC5 /trace -doModSetAnalysis > $option_dir/boogie.log 2>&1
				elif [ "$option" = "andy_strings" ]; then
					# cvc5_seqArray --pre-skolem-quant --no-dt-share-sel --ee-mode=central
					# --strings-exp
					timeout 60 $boogie $bm_bpl -monomorphize /env:2 -proverLog:$option_dir/@PROC@.smt2 /proverOpt:PROVER_PATH=$cvc5_seqArray /proverOpt:O:strings-exp=true /proverOpt:O:pre-skolem-quant=true /proverOpt:O:no-dt-share-sel=true /proverOpt:O:ee-mode=central /proverOpt:SOLVER=CVC5 /trace -doModSetAnalysis > $option_dir/boogie.log 2>&1
				elif [ "$option" = "seqArray" ]; then
					# cvc5_seqArray --pre-skolem-quant --no-dt-share-sel --ee-mode=central
					# --strings-exp --strings-seq-update=eager
					timeout 60 $boogie $bm_bpl -monomorphize /env:2 -proverLog:$option_dir/@PROC@.smt2 /proverOpt:PROVER_PATH=$cvc5_seqArray /proverOpt:O:strings-exp=true /proverOpt:O:strings-seq-update=eager /proverOpt:O:pre-skolem-quant=true /proverOpt:O:no-dt-share-sel=true /proverOpt:O:ee-mode=central /proverOpt:SOLVER=CVC5 /trace -doModSetAnalysis > $option_dir/boogie.log 2>&1
				else
					echo "unrecognized option $option"
				fi
			done
        fi
    fi
done
