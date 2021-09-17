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
move_dir=~/diem/language/diem-framework/modules
bm_dir=~/diem/seq_benchmarks/modules_in_func
z3=/home/ying/bin/z3
cvc4=/home/ying/bin/cvc4
cvc5_master=/home/ying/CVC4/prod/bin/cvc5
cvc5_seqArray=/home/ying/CVC4/seq_prod/bin/cvc5

rm result.raw
find $bm_dir -type f -print0 | while read -d $'\0' file; do
    if [ -d "$file" ]
    then
        echo "$file is a dir"
    elif [ -f "$file" ]
    then
        IsSuffix ${file} "smt2"
        ret=$?
        if [ $ret -eq 0 ]; then
            filename=$(basename $file .smt2)

			predir=$(dirname $file)
			option=$(basename $predir)

			echo "running $filename for option $option"
        
            start=$(date +%s%N)
			if [ "$option" = "z3" ] || [ "$option" = "baseline" ]; then
				timeout 60 $z3 $file > $predir/$filename.output 2>&1
			elif [ "$option" = "cvc4" ]; then
				timeout 60 $cvc4 $file --incremental --pre-skolem-quant --no-dt-share-sel > $predir/$filename.output 2>&1
			elif [ "$option" = "cvc5" ]; then
				timeout 60 $cvc5_master $file --incremental --pre-skolem-quant --no-dt-share-sel > $predir/$filename.output 2>&1
			elif [ "$option" = "andy_default" ] || [ "$option" = "seqArray_array" ]; then
				timeout 60 $cvc5_seqArray $file --incremental --pre-skolem-quant --no-dt-share-sel --ee-mode=central > $predir/$filename.output 2>&1
			elif [ "$option" = "andy_strings" ]; then
				timeout 60 $cvc5_seqArray $file --incremental --pre-skolem-quant --no-dt-share-sel --ee-mode=central --strings-exp > $predir/$filename.output 2>&1
			elif [ "$option" = "seqArray" ]; then
				timeout 60 $cvc5_seqArray $file --incremental --pre-skolem-quant --no-dt-share-sel --ee-mode=central --strings-exp --strings-seq-update=eager > $predir/$filename.output 2>&1
			else
				echo "unknown option $option"
			fi
            end=$(date +%s%N)
            take=$((($end - $start)/1000000))

			predir2=$(dirname $predir)
			benchmark=$(basename $predir2)
			echo $benchmark >> result.raw
            echo $filename >> result.raw
			echo $option >> result.raw
            echo ${take} >> result.raw
        fi
    fi
done
