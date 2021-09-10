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
cvc5=~/CVC4/seq_prod/bin/cvc5
move_dir=~/diem/language/diem-framework/modules
bm_dir=~/diem/seq_benchmarks/modules_in_func

cargo run --release --quiet --package move-prover --
for file in ~/diem/language/diem-framework/modules/*
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
            filename=$(basename $file .move)
            echo "file name is $filename"
            
            bm_dir_single=$bm_dir/$filename
            if [ -d "$bm_dir_single" ]; then
                echo "$bm_dir_single exists"
            else
				echo "create $bm_dir_single"
                mkdir $bm_dir_single
            fi
            cp $move_dir/$filename.move $bm_dir_single/

			for option in "$@"
			do
				# create dir
				option_dir=$bm_dir_single/$option
				if [ -d "$option_dir" ]; then
					echo "$option_dir exists"
				else
					echo "create $option_dir"
					mkdir $option_dir
				fi

				bm_bpl=$option_dir/$filename.bpl
				if [ "$option" = "baseline" ]; then
					# z3 with default embedding
					timeout 10 cargo run --release --quiet --package move-prover -- -d $move_dir -d ~/diem/language/move-stdlib/modules $move_dir/$filename.move -v debug -k -o $bm_bpl > $option_dir/mvp.log 2>&1
				elif [ "$option" = "z3" ]; then
					# z3 with SmtSeq embedding
					timeout 10 cargo run --release --quiet --package move-prover -- -d $move_dir -d ~/diem/language/move-stdlib/modules $move_dir/$filename.move --vector-theory SmtSeq -v debug -k -o $bm_bpl > $option_dir/mvp.log 2>&1
				elif [ "$option" = "seqArray_array" ]; then
					# cvc4 with default embedding
					timeout 10 cargo run --release --quiet --package move-prover -- -d $move_dir -d ~/diem/language/move-stdlib/modules $move_dir/$filename.move --use-cvc4 -v debug -k -o $bm_bpl > $option_dir/mvp.log 2>&1
				else
					# cvc4 with SmtSeq embedding
					timeout 10 cargo run --release --quiet --package move-prover -- -d $move_dir -d ~/diem/language/move-stdlib/modules $move_dir/$filename.move --use-cvc4 --vector-theory SmtSeq -v debug -k -o $bm_bpl > $option_dir/mvp.log 2>&1
				fi
			done
			
        fi
    fi
done
