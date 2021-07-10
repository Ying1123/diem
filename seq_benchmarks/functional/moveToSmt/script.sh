#! /bin/sh
find ./tests/sources/functional/ -type f -name "*.move" | xargs -i cargo run --release --quiet --package move-prover -- -d ../../language/move-stdlib/modules/ {} --use-cvc4 --vector-theory SmtSeq --generate-smt -v info -k > ../../../moveToSmt/std_output 2>&1
find ./ -type f -name "*.smt" | xargs -i mv {} ../../../moveToSmt/
find ../../../moveToSmt/ -type f -name "*.smt" | xargs -i mv {} {}2
