seq_dir=/home/ying/diem/seq_benchmarks/SMT_LIB/QF_AX/storeinv
cvc=/home/ying/CVC4/seq_prod/bin/cvc5
time_array=/home/ying/diem/seq_benchmarks/SMT_LIB/QF_AX/result/storeinv_array.t

function IsSuffix() {
    local filename="$1"
    local suffix="$2"
    if [ "${file##*.}"x = "$suffix"x ]; then
        return 0
    else
        return 1
    fi
}

rm $time_array

find $seq_dir -type f -print0 | while read -d $'\0' file; do
	IsSuffix ${file} "smt2"
	ret=$?
	if [ $ret -eq 0 ]; then
		echo $file
		start=$(date +%s)
		timeout 10 $cvc $file --incremental
		end=$(date +%s)
		take=$(( end - start ))
        filename=$(basename $file .move)
		echo $filename >> $time_array
		echo ${take} >> $time_array
	fi
done

