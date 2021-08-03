#!/bin/sh
# Copyright (c) The Diem Core Contributors
# SPDX-License-Identifier: Apache-2.0

export CVC4_EXE=/home/ying/CVC4/seq_prod/bin/cvc5

DIEM="$(git rev-parse --show-toplevel)"
FUNCTIONAL="$DIEM/language/move-prover/tests/sources/functional"
FRAMEWORK="$DIEM/language/diem-framework/modules"
STDLIB="$DIEM/language/move-stdlib/modules"

for config in experiments/*.toml ; do
  # Benchmark per function
  cargo run -q --release -p prover-lab -- \
    bench -f -c $config -d $STDLIB -d $FRAMEWORK $FRAMEWORK/*.move
  # Benchmark per module
  cargo run -q --release -p prover-lab -- \
    bench -c $config -d $STDLIB -d $FRAMEWORK $FRAMEWORK/*.move
  # Benchmark per functional test
  cargo run -q --release -p prover-lab -- \
    bench -c $config -d $STDLIB -d $FUNCTIONAL $FUNCTIONAL/*.move
done
