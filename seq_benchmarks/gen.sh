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

r0=$(source ~/.profile)
r0=$(mvp)
echo $r0

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
            r1=$("mvp -d ~/diem/language/move-stdlib/modules" $move_dir$filename "--use-cvc4 --vector-theory SmtSeq --generate-smt -k")
            # r1=$(ls)
            echo $r1
        fi
    fi
done
