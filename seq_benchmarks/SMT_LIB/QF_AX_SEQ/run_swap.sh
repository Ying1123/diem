seq_dir=/home/ying/diem/seq_benchmarks/SMT_LIB/QF_AX_SEQ/swap
cvc=/home/ying/CVC4/seq_prod/bin/cvc5
time_new=/home/ying/diem/seq_benchmarks/SMT_LIB/QF_AX_SEQ/result/swap.t
time_old=/home/ying/diem/seq_benchmarks/SMT_LIB/QF_AX_SEQ/result/swap_old_seq.t

function IsSuffix() {
    local filename="$1"
    local suffix="$2"
    if [ "${file##*.}"x = "$suffix"x ]; then
        return 0
    else
        return 1
    fi
}

rm $time_new
#rm $time_old

find $seq_dir -type f -print0 | while read -d $'\0' file; do
	IsSuffix ${file} "smt2"
	ret=$?
	if [ $ret -eq 0 ]; then
		echo $file
		start=$(date +%s)
		timeout 300 $cvc $file --incremental --strings-exp --strings-seq-update
		end=$(date +%s)
		take=$(( end - start ))
        filename=$(basename $file .move)
		echo $filename >> $time_new
		echo ${take} >> $time_new

#		start=$(date +%s)
#		timeout 10 $cvc $file --incremental --strings-exp
#		end=$(date +%s)
#		take=$(( end - start ))
#		echo $filename >> $time_old
#		echo ${take} >> $time_old
	fi
done

