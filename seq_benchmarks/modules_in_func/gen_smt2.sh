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
			for option in baseline seqArray
			do
				option_dir=$bm_dir_single/$option
				echo "generating smt2 files in $option_dir"
				if [ ! -d "$option_dir" ]; then
					echo "$solver_dir does not exists, create bpl file first!"
					continue
				fi
				bm_bpl=$option_dir/$filename.bpl
				if [ "$option" = "baseline" ]; then
					# z3
					timeout 60 $boogie $bm_bpl -monomorphize /env:2 -proverLog:$option_dir/@PROC@.smt2 /proverOpt:PROVER_PATH=$z3 /proverOpt:SOLVER=Z3 /trace -doModSetAnalysis > $option_dir/boogie.log 2>&1
				elif [ "$option" = "seqArray" ]; then
					# cvc5_seqArray --pre-skolem-quant --no-dt-share-sel
					# --strings-exp --strings-seq-update=eager
					timeout 60 $boogie $bm_bpl -monomorphize /env:2 -proverLog:$option_dir/@PROC@.smt2 /proverOpt:PROVER_PATH=$cvc5_seqArray /proverOpt:O:strings-exp=true /proverOpt:O:strings-seq-update=eager /proverOpt:O:pre-skolem-quant=true /proverOpt:O:no-dt-share-sel=true /proverOpt:O:ee-mode=central /proverOpt:SOLVER=CVC5 /trace -doModSetAnalysis > $option_dir/boogie.log 2>&1
				else
					echo "unrecognized option $option"
				fi
			done

			# copy to seqArray_array
			cp $bm_dir_single/baseline/*.smt2 $bm_dir_single/seqArray_array
			sed -i '/(set-option/d' $bm_dir_single/seqArray_array/*.smt2
			sed -i '1s/^/(set-logic ALL)\n/' $bm_dir_single/seqArray_array/*.smt2
			sed -i '1s/^/(set-option :ee-mode central)\n/' $bm_dir_single/seqArray_array/*.smt2
			sed -i '1s/^/(set-option :dt-share-sel false)\n/' $bm_dir_single/seqArray_array/*.smt2
			sed -i '1s/^/(set-option :pre-skolem-quant true)\n/' $bm_dir_single/seqArray_array/*.smt2
			sed -i '1s/^/(set-option :print-success false)\n/' $bm_dir_single/seqArray_array/*.smt2

			# copy to z3 cvc4 cvc5 andy_default andy_strings
			for option in z3 cvc4 cvc5 andy_default andy_strings
			do
				cp $bm_dir_single/seqArray/*.smt2 $bm_dir_single/$option
				if [ "$option" = "z3" ]; then
					sed -i '/(set-option/d' $bm_dir_single/$option/*.smt2
					sed -i '1s/^/(set-option :pp.bv_literals false)\n/' $bm_dir_single/$option/*.smt2
					sed -i '1s/^/(set-option :model.v2 true)\n/' $bm_dir_single/$option/*.smt2
					sed -i '1s/^/(set-option :model.compact false)\n/' $bm_dir_single/$option/*.smt2
					sed -i '1s/^/(set-option :smt.mbqi false)\n/' $bm_dir_single/$option/*.smt2
					sed -i '1s/^/(set-option :print-success false)\n/' $bm_dir_single/$option/*.smt2
				elif [ "$option" = "andy_strings" ]; then
					sed -i '/(set-option :strings-seq-update eager)/d' $bm_dir_single/$option/*.smt2
				else # cvc4 cvc5 andy_default
					sed -i '/(set-option :strings-seq-update eager)/d' $bm_dir_single/$option/*.smt2
					sed -i '/(set-option :strings-exp true)/d' $bm_dir_single/$option/*.smt2
					if [ "$option" = "cvc4" ] || [ "$option" = "cvc5" ]; then
						sed -i '/(set-option :ee-mode central)/d' $bm_dir_single/$option/*.smt2
					fi
				fi
			done
        fi
    fi
done
