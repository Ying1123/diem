(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_15137 0)) ((($Memory_15137 (|domain#$Memory_15137| |T@[Int]Bool|) (|contents#$Memory_15137| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_15170 0)) ((($Mutation_15170 (|l#$Mutation_15170| T@$Location) (|p#$Mutation_15170| T@Vec_2977) (|v#$Mutation_15170| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12719 0)) ((($Mutation_12719 (|l#$Mutation_12719| T@$Location) (|p#$Mutation_12719| T@Vec_2977) (|v#$Mutation_12719| T@Vec_2977) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
(declare-fun $MAX_U8 () Int)
(declare-fun $MAX_U64 () Int)
(declare-fun $MAX_U128 () Int)
(declare-fun |$IsValid'u8'| (Int) Bool)
(declare-fun |$IsValid'u64'| (Int) Bool)
(declare-fun |$IsValid'u128'| (Int) Bool)
(declare-fun |$IsValid'num'| (Int) Bool)
(declare-fun |$IsValid'address'| (Int) Bool)
(declare-fun $InRange (T@$Range Int) Bool)
(declare-fun $ConstMemoryDomain (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool) |T@[Int]Bool|)
(declare-fun $EXEC_FAILURE_CODE () Int)
(declare-fun $shl (Int Int) Int)
(declare-fun $shr (Int Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |resourcesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |resourcesdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |resourcesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |resourcesdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |resourcesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |resourcesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |resourcesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |resourcesdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |resourcesdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesdefaultz3bpl.935:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesdefaultz3bpl.952:40|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesdefaultz3bpl.969:40|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesdefaultz3bpl.983:44|
 :skolemid |31|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesdefaultz3bpl.996:40|
 :skolemid |32|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |resourcesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |resourcesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |resourcesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |resourcesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |resourcesdefaultz3bpl.275:54|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |resourcesdefaultz3bpl.73:19|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |resourcesdefaultz3bpl.82:30|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |resourcesdefaultz3bpl.63:20|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $42_TestResources_R_$memory () T@$Memory_15137)
(declare-fun _$t0 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun |$temp_0'$42_TestResources_R'@1| () T@$42_TestResources_R)
(declare-fun $t5@1 () T@$Mutation_15170)
(declare-fun $t5 () T@$Mutation_15170)
(declare-fun $t5@0 () T@$Mutation_15170)
(declare-fun MapConstVec_3206 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_3206 () Int)
(declare-fun |Select__T@[Int]$42_TestResources_R_| (|T@[Int]$42_TestResources_R| Int) T@$42_TestResources_R)
(declare-fun |$temp_0'$42_TestResources_R'@0| () T@$42_TestResources_R)
(declare-fun $t3@1 () T@$Mutation_15170)
(declare-fun $t3 () T@$Mutation_15170)
(declare-fun $t3@0 () T@$Mutation_15170)
(declare-fun $abort_code@0 () Int)
(declare-fun $t1 () T@$Mutation_15170)
(declare-fun $t2 () T@$Mutation_15170)
(push 1)
(set-info :boogie-vc-id $42_TestResources_borrow_global_mut_correct$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 27067) (let ((L2_correct  (=> (= (ControlFlow 0 21436) (- 0 27406)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0)))))
(let ((anon15_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 21420) 21436)) L2_correct))))
(let ((anon13_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 21502) 21436)) L2_correct))))
(let ((anon15_Else_correct  (=> (and (and (not $abort_flag@1) (= |$temp_0'$42_TestResources_R'@1| (|v#$Mutation_15170| $t5@1))) (and (= |$temp_0'$42_TestResources_R'@1| |$temp_0'$42_TestResources_R'@1|) (= (ControlFlow 0 21406) (- 0 27395)))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0))))))
(let ((anon14_Then$1_correct  (=> (= $t5@1 $t5) (=> (and (= $abort_flag@1 true) (= $abort_code@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 21488) 21420) anon15_Then_correct) (=> (= (ControlFlow 0 21488) 21406) anon15_Else_correct))))))
(let ((anon14_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0)) (= (ControlFlow 0 21486) 21488)) anon14_Then$1_correct)))
(let ((anon14_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0) (=> (and (and (= $t5@0 ($Mutation_15170 ($Global _$t0) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) _$t0))) (= $t5@1 $t5@0)) (and (= $abort_flag@1 $abort_flag@0) (= $abort_code@2 $abort_code@1))) (and (=> (= (ControlFlow 0 21372) 21420) anon15_Then_correct) (=> (= (ControlFlow 0 21372) 21406) anon15_Else_correct))))))
(let ((anon13_Else_correct  (=> (not $abort_flag@0) (=> (and (= |$temp_0'$42_TestResources_R'@0| (|v#$Mutation_15170| $t3@1)) (= |$temp_0'$42_TestResources_R'@0| |$temp_0'$42_TestResources_R'@0|)) (and (=> (= (ControlFlow 0 21350) 21486) anon14_Then_correct) (=> (= (ControlFlow 0 21350) 21372) anon14_Else_correct))))))
(let ((anon12_Then$1_correct  (=> (= $t3@1 $t3) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 21554) 21502) anon13_Then_correct) (=> (= (ControlFlow 0 21554) 21350) anon13_Else_correct))))))
(let ((anon12_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0)) (= (ControlFlow 0 21552) 21554)) anon12_Then$1_correct)))
(let ((anon12_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0) (=> (and (and (= $t3@0 ($Mutation_15170 ($Global _$t0) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) _$t0))) (= $t3@1 $t3@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 21328) 21502) anon13_Then_correct) (=> (= (ControlFlow 0 21328) 21350) anon13_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) $a_0)))
(|$IsValid'$42_TestResources_R'| $rsc))
 :qid |resourcesdefaultz3bpl.1032:20|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) $a_0))
)) (= _$t0 _$t0)) (and (=> (= (ControlFlow 0 21306) 21552) anon12_Then_correct) (=> (= (ControlFlow 0 21306) 21328) anon12_Else_correct))))))
(let ((anon0_correct  (=> (= (|l#Vec_2977| (|p#$Mutation_15170| $t1)) 0) (=> (and (and (= (|l#Vec_2977| (|p#$Mutation_15170| $t2)) 0) (= (|l#Vec_2977| (|p#$Mutation_15170| $t3)) 0)) (and (= (|l#Vec_2977| (|p#$Mutation_15170| $t5)) 0) (= (ControlFlow 0 21266) 21306))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 27067) 21266) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_15137 0)) ((($Memory_15137 (|domain#$Memory_15137| |T@[Int]Bool|) (|contents#$Memory_15137| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_15170 0)) ((($Mutation_15170 (|l#$Mutation_15170| T@$Location) (|p#$Mutation_15170| T@Vec_2977) (|v#$Mutation_15170| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12719 0)) ((($Mutation_12719 (|l#$Mutation_12719| T@$Location) (|p#$Mutation_12719| T@Vec_2977) (|v#$Mutation_12719| T@Vec_2977) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
(declare-fun $MAX_U8 () Int)
(declare-fun $MAX_U64 () Int)
(declare-fun $MAX_U128 () Int)
(declare-fun |$IsValid'u8'| (Int) Bool)
(declare-fun |$IsValid'u64'| (Int) Bool)
(declare-fun |$IsValid'u128'| (Int) Bool)
(declare-fun |$IsValid'num'| (Int) Bool)
(declare-fun |$IsValid'address'| (Int) Bool)
(declare-fun $InRange (T@$Range Int) Bool)
(declare-fun $ConstMemoryDomain (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool) |T@[Int]Bool|)
(declare-fun $EXEC_FAILURE_CODE () Int)
(declare-fun $shl (Int Int) Int)
(declare-fun $shr (Int Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |resourcesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |resourcesdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |resourcesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |resourcesdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |resourcesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |resourcesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |resourcesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |resourcesdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |resourcesdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesdefaultz3bpl.935:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesdefaultz3bpl.952:40|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesdefaultz3bpl.969:40|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesdefaultz3bpl.983:44|
 :skolemid |31|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesdefaultz3bpl.996:40|
 :skolemid |32|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |resourcesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |resourcesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |resourcesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |resourcesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |resourcesdefaultz3bpl.275:54|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |resourcesdefaultz3bpl.73:19|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |resourcesdefaultz3bpl.82:30|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |resourcesdefaultz3bpl.63:20|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () T@$42_TestResources_Empty)
(push 1)
(set-info :boogie-vc-id $42_TestResources_create_empty$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 27442) (let ((anon0$1_correct  (=> (= $t1@0 ($42_TestResources_Empty false)) (=> (and (= $t1@0 $t1@0) (= (ControlFlow 0 21676) (- 0 27496))) (= $t1@0 ($42_TestResources_Empty false))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 27442) 21676) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_15137 0)) ((($Memory_15137 (|domain#$Memory_15137| |T@[Int]Bool|) (|contents#$Memory_15137| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_15170 0)) ((($Mutation_15170 (|l#$Mutation_15170| T@$Location) (|p#$Mutation_15170| T@Vec_2977) (|v#$Mutation_15170| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12719 0)) ((($Mutation_12719 (|l#$Mutation_12719| T@$Location) (|p#$Mutation_12719| T@Vec_2977) (|v#$Mutation_12719| T@Vec_2977) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
(declare-fun $MAX_U8 () Int)
(declare-fun $MAX_U64 () Int)
(declare-fun $MAX_U128 () Int)
(declare-fun |$IsValid'u8'| (Int) Bool)
(declare-fun |$IsValid'u64'| (Int) Bool)
(declare-fun |$IsValid'u128'| (Int) Bool)
(declare-fun |$IsValid'num'| (Int) Bool)
(declare-fun |$IsValid'address'| (Int) Bool)
(declare-fun $InRange (T@$Range Int) Bool)
(declare-fun $ConstMemoryDomain (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool) |T@[Int]Bool|)
(declare-fun $EXEC_FAILURE_CODE () Int)
(declare-fun $shl (Int Int) Int)
(declare-fun $shr (Int Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |resourcesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |resourcesdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |resourcesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |resourcesdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |resourcesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |resourcesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |resourcesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |resourcesdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |resourcesdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesdefaultz3bpl.935:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesdefaultz3bpl.952:40|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesdefaultz3bpl.969:40|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesdefaultz3bpl.983:44|
 :skolemid |31|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesdefaultz3bpl.996:40|
 :skolemid |32|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |resourcesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |resourcesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |resourcesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |resourcesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |resourcesdefaultz3bpl.275:54|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |resourcesdefaultz3bpl.73:19|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |resourcesdefaultz3bpl.82:30|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |resourcesdefaultz3bpl.63:20|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $42_TestResources_R_$memory () T@$Memory_15137)
(declare-fun _$t0 () Int)
(declare-fun $42_TestResources_R_$memory@1 () T@$Memory_15137)
(declare-fun $abort_code@1 () Int)
(declare-fun $42_TestResources_R_$memory@0 () T@$Memory_15137)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$42_TestResources_R_| (|T@[Int]$42_TestResources_R| Int T@$42_TestResources_R) |T@[Int]$42_TestResources_R|)
(declare-fun |Select__T@[Int]$42_TestResources_R_| (|T@[Int]$42_TestResources_R| Int) T@$42_TestResources_R)
(assert (forall ( ( ?x0 |T@[Int]$42_TestResources_R|) ( ?x1 Int) ( ?x2 T@$42_TestResources_R)) (! (= (|Select__T@[Int]$42_TestResources_R_| (|Store__T@[Int]$42_TestResources_R_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestResources_R|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$42_TestResources_R)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestResources_R_| (|Store__T@[Int]$42_TestResources_R_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestResources_R_| ?x0 ?y1))) :weight 0)))
(declare-fun $t2@0 () T@$42_TestResources_R)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestResources_create_resource$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 27513) (let ((anon8_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 21839) (- 0 27709)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0)) (=> (= (ControlFlow 0 21839) (- 0 27720)) (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory@1) _$t0)))))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 21867) (- 0 27689))) (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0)))))
(let ((anon7_Then$1_correct  (=> (= $42_TestResources_R_$memory@1 $42_TestResources_R_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 21917) 21867) anon8_Then_correct) (=> (= (ControlFlow 0 21917) 21839) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0) (= (ControlFlow 0 21915) 21917)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0)) (=> (and (and (= $42_TestResources_R_$memory@0 ($Memory_15137 (|Store__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0 true) (|Store__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) _$t0 $t2@0))) (= $42_TestResources_R_$memory@1 $42_TestResources_R_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 21807) 21867) anon8_Then_correct) (=> (= (ControlFlow 0 21807) 21839) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) $a_0)))
(|$IsValid'$42_TestResources_R'| $rsc))
 :qid |resourcesdefaultz3bpl.1170:20|
 :skolemid |34|
 :pattern ( (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) $a_0))
)) (= _$t0 _$t0)) (and (|$IsValid'u64'| 1) (= $t2@0 ($42_TestResources_R 1)))) (and (=> (= (ControlFlow 0 21789) 21915) anon7_Then_correct) (=> (= (ControlFlow 0 21789) 21807) anon7_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 27513) 21789) anon0$1_correct)))
anon0_correct))))))))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_15137 0)) ((($Memory_15137 (|domain#$Memory_15137| |T@[Int]Bool|) (|contents#$Memory_15137| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_15170 0)) ((($Mutation_15170 (|l#$Mutation_15170| T@$Location) (|p#$Mutation_15170| T@Vec_2977) (|v#$Mutation_15170| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12719 0)) ((($Mutation_12719 (|l#$Mutation_12719| T@$Location) (|p#$Mutation_12719| T@Vec_2977) (|v#$Mutation_12719| T@Vec_2977) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
(declare-fun $MAX_U8 () Int)
(declare-fun $MAX_U64 () Int)
(declare-fun $MAX_U128 () Int)
(declare-fun |$IsValid'u8'| (Int) Bool)
(declare-fun |$IsValid'u64'| (Int) Bool)
(declare-fun |$IsValid'u128'| (Int) Bool)
(declare-fun |$IsValid'num'| (Int) Bool)
(declare-fun |$IsValid'address'| (Int) Bool)
(declare-fun $InRange (T@$Range Int) Bool)
(declare-fun $ConstMemoryDomain (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool) |T@[Int]Bool|)
(declare-fun $EXEC_FAILURE_CODE () Int)
(declare-fun $shl (Int Int) Int)
(declare-fun $shr (Int Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |resourcesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |resourcesdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |resourcesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |resourcesdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |resourcesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |resourcesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |resourcesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |resourcesdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |resourcesdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesdefaultz3bpl.935:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesdefaultz3bpl.952:40|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesdefaultz3bpl.969:40|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesdefaultz3bpl.983:44|
 :skolemid |31|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesdefaultz3bpl.996:40|
 :skolemid |32|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |resourcesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |resourcesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |resourcesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |resourcesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |resourcesdefaultz3bpl.275:54|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |resourcesdefaultz3bpl.73:19|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |resourcesdefaultz3bpl.82:30|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |resourcesdefaultz3bpl.63:20|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $42_TestResources_R_$memory () T@$Memory_15137)
(declare-fun _$t0 () Int)
(declare-fun $42_TestResources_R_$memory@1 () T@$Memory_15137)
(declare-fun $abort_code@1 () Int)
(declare-fun $42_TestResources_R_$memory@0 () T@$Memory_15137)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$42_TestResources_R_| (|T@[Int]$42_TestResources_R| Int T@$42_TestResources_R) |T@[Int]$42_TestResources_R|)
(declare-fun |Select__T@[Int]$42_TestResources_R_| (|T@[Int]$42_TestResources_R| Int) T@$42_TestResources_R)
(assert (forall ( ( ?x0 |T@[Int]$42_TestResources_R|) ( ?x1 Int) ( ?x2 T@$42_TestResources_R)) (! (= (|Select__T@[Int]$42_TestResources_R_| (|Store__T@[Int]$42_TestResources_R_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestResources_R|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$42_TestResources_R)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestResources_R_| (|Store__T@[Int]$42_TestResources_R_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestResources_R_| ?x0 ?y1))) :weight 0)))
(declare-fun $t2@0 () T@$42_TestResources_R)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestResources_create_resource_at_signer$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 27734) (let ((anon8_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 22088) (- 0 27930)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0)) (=> (= (ControlFlow 0 22088) (- 0 27941)) (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory@1) _$t0)))))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 22116) (- 0 27910))) (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0)))))
(let ((anon7_Then$1_correct  (=> (= $42_TestResources_R_$memory@1 $42_TestResources_R_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 22166) 22116) anon8_Then_correct) (=> (= (ControlFlow 0 22166) 22088) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0) (= (ControlFlow 0 22164) 22166)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0)) (=> (and (and (= $42_TestResources_R_$memory@0 ($Memory_15137 (|Store__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0 true) (|Store__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) _$t0 $t2@0))) (= $42_TestResources_R_$memory@1 $42_TestResources_R_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 22056) 22116) anon8_Then_correct) (=> (= (ControlFlow 0 22056) 22088) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) $a_0)))
(|$IsValid'$42_TestResources_R'| $rsc))
 :qid |resourcesdefaultz3bpl.1254:20|
 :skolemid |35|
 :pattern ( (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) $a_0))
)) (= _$t0 _$t0)) (and (|$IsValid'u64'| 1) (= $t2@0 ($42_TestResources_R 1)))) (and (=> (= (ControlFlow 0 22038) 22164) anon7_Then_correct) (=> (= (ControlFlow 0 22038) 22056) anon7_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 27734) 22038) anon0$1_correct)))
anon0_correct))))))))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_15137 0)) ((($Memory_15137 (|domain#$Memory_15137| |T@[Int]Bool|) (|contents#$Memory_15137| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_15170 0)) ((($Mutation_15170 (|l#$Mutation_15170| T@$Location) (|p#$Mutation_15170| T@Vec_2977) (|v#$Mutation_15170| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12719 0)) ((($Mutation_12719 (|l#$Mutation_12719| T@$Location) (|p#$Mutation_12719| T@Vec_2977) (|v#$Mutation_12719| T@Vec_2977) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
(declare-fun $MAX_U8 () Int)
(declare-fun $MAX_U64 () Int)
(declare-fun $MAX_U128 () Int)
(declare-fun |$IsValid'u8'| (Int) Bool)
(declare-fun |$IsValid'u64'| (Int) Bool)
(declare-fun |$IsValid'u128'| (Int) Bool)
(declare-fun |$IsValid'num'| (Int) Bool)
(declare-fun |$IsValid'address'| (Int) Bool)
(declare-fun $InRange (T@$Range Int) Bool)
(declare-fun $ConstMemoryDomain (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool) |T@[Int]Bool|)
(declare-fun $EXEC_FAILURE_CODE () Int)
(declare-fun $shl (Int Int) Int)
(declare-fun $shr (Int Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |resourcesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |resourcesdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |resourcesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |resourcesdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |resourcesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |resourcesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |resourcesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |resourcesdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |resourcesdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesdefaultz3bpl.935:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesdefaultz3bpl.952:40|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesdefaultz3bpl.969:40|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesdefaultz3bpl.983:44|
 :skolemid |31|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesdefaultz3bpl.996:40|
 :skolemid |32|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |resourcesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |resourcesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |resourcesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |resourcesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |resourcesdefaultz3bpl.275:54|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |resourcesdefaultz3bpl.73:19|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |resourcesdefaultz3bpl.82:30|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |resourcesdefaultz3bpl.63:20|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t2@0 () Bool)
(declare-fun $42_TestResources_R_$memory () T@$Memory_15137)
(declare-fun _$t0 () Int)
(declare-fun |Select__T@[Int]$42_TestResources_R_| (|T@[Int]$42_TestResources_R| Int) T@$42_TestResources_R)
(declare-fun $t1 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestResources_create_resource_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 27955) (let ((anon6_Else_correct  (=> (not $t2@0) (and (=> (= (ControlFlow 0 22325) (- 0 28089)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0)) (=> (= (ControlFlow 0 22325) (- 0 28100)) (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0)))))))
(let ((anon6_Then_correct  (=> (and (and $t2@0 (|$IsValid'u64'| 1)) (and (= 1 1) (= (ControlFlow 0 22357) (- 0 28069)))) (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0))))
(let ((anon0$1_correct  (=> (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) $a_0)))
(|$IsValid'$42_TestResources_R'| $rsc))
 :qid |resourcesdefaultz3bpl.1338:20|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) $a_0))
))) (=> (and (and (= _$t0 _$t0) (|$IsValid'address'| $t1)) (and (= $t1 _$t0) (= $t2@0 (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) $t1)))) (and (=> (= (ControlFlow 0 22295) 22357) anon6_Then_correct) (=> (= (ControlFlow 0 22295) 22325) anon6_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 27955) 22295) anon0$1_correct)))
anon0_correct)))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 27955)))
(get-value ((ControlFlow 0 22295)))
(get-value ((ControlFlow 0 22325)))
(assert (not (= (ControlFlow 0 22325) (- 28100))))
(check-sat)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_15137 0)) ((($Memory_15137 (|domain#$Memory_15137| |T@[Int]Bool|) (|contents#$Memory_15137| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_15170 0)) ((($Mutation_15170 (|l#$Mutation_15170| T@$Location) (|p#$Mutation_15170| T@Vec_2977) (|v#$Mutation_15170| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12719 0)) ((($Mutation_12719 (|l#$Mutation_12719| T@$Location) (|p#$Mutation_12719| T@Vec_2977) (|v#$Mutation_12719| T@Vec_2977) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
(declare-fun $MAX_U8 () Int)
(declare-fun $MAX_U64 () Int)
(declare-fun $MAX_U128 () Int)
(declare-fun |$IsValid'u8'| (Int) Bool)
(declare-fun |$IsValid'u64'| (Int) Bool)
(declare-fun |$IsValid'u128'| (Int) Bool)
(declare-fun |$IsValid'num'| (Int) Bool)
(declare-fun |$IsValid'address'| (Int) Bool)
(declare-fun $InRange (T@$Range Int) Bool)
(declare-fun $ConstMemoryDomain (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool) |T@[Int]Bool|)
(declare-fun $EXEC_FAILURE_CODE () Int)
(declare-fun $shl (Int Int) Int)
(declare-fun $shr (Int Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |resourcesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |resourcesdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |resourcesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |resourcesdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |resourcesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |resourcesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |resourcesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |resourcesdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |resourcesdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesdefaultz3bpl.935:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesdefaultz3bpl.952:40|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesdefaultz3bpl.969:40|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesdefaultz3bpl.983:44|
 :skolemid |31|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesdefaultz3bpl.996:40|
 :skolemid |32|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |resourcesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |resourcesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |resourcesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |resourcesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |resourcesdefaultz3bpl.275:54|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |resourcesdefaultz3bpl.73:19|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |resourcesdefaultz3bpl.82:30|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |resourcesdefaultz3bpl.63:20|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () T@$42_TestResources_A)
(declare-fun _$t1 () T@$42_TestResources_B)
(declare-fun _$t2 () T@$42_TestResources_C)
(push 1)
(set-info :boogie-vc-id $42_TestResources_identity$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 28116) (let ((anon0$1_correct  (=> (|$IsValid'$42_TestResources_A'| _$t0) (=> (and (and (and (|$IsValid'$42_TestResources_B'| _$t1) (|$IsValid'$42_TestResources_C'| _$t2)) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (and (= _$t2 _$t2) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= _$t2 _$t2)))) (and (=> (= (ControlFlow 0 22520) (- 0 28210)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 22520) (- 0 28217)) (= _$t0 _$t0)) (=> (= _$t0 _$t0) (and (=> (= (ControlFlow 0 22520) (- 0 28224)) (= _$t1 _$t1)) (=> (= _$t1 _$t1) (=> (= (ControlFlow 0 22520) (- 0 28231)) (= _$t2 _$t2))))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 28116) 22520) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_15137 0)) ((($Memory_15137 (|domain#$Memory_15137| |T@[Int]Bool|) (|contents#$Memory_15137| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_15170 0)) ((($Mutation_15170 (|l#$Mutation_15170| T@$Location) (|p#$Mutation_15170| T@Vec_2977) (|v#$Mutation_15170| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12719 0)) ((($Mutation_12719 (|l#$Mutation_12719| T@$Location) (|p#$Mutation_12719| T@Vec_2977) (|v#$Mutation_12719| T@Vec_2977) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
(declare-fun $MAX_U8 () Int)
(declare-fun $MAX_U64 () Int)
(declare-fun $MAX_U128 () Int)
(declare-fun |$IsValid'u8'| (Int) Bool)
(declare-fun |$IsValid'u64'| (Int) Bool)
(declare-fun |$IsValid'u128'| (Int) Bool)
(declare-fun |$IsValid'num'| (Int) Bool)
(declare-fun |$IsValid'address'| (Int) Bool)
(declare-fun $InRange (T@$Range Int) Bool)
(declare-fun $ConstMemoryDomain (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool) |T@[Int]Bool|)
(declare-fun $EXEC_FAILURE_CODE () Int)
(declare-fun $shl (Int Int) Int)
(declare-fun $shr (Int Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |resourcesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |resourcesdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |resourcesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |resourcesdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |resourcesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |resourcesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |resourcesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |resourcesdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |resourcesdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesdefaultz3bpl.935:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesdefaultz3bpl.952:40|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesdefaultz3bpl.969:40|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesdefaultz3bpl.983:44|
 :skolemid |31|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesdefaultz3bpl.996:40|
 :skolemid |32|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |resourcesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |resourcesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |resourcesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |resourcesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |resourcesdefaultz3bpl.275:54|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |resourcesdefaultz3bpl.73:19|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |resourcesdefaultz3bpl.82:30|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |resourcesdefaultz3bpl.63:20|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $t2@1 () T@$42_TestResources_R)
(declare-fun $t4@0 () Int)
(declare-fun $42_TestResources_R_$memory () T@$Memory_15137)
(declare-fun _$t0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $t2 () T@$42_TestResources_R)
(declare-fun $t2@0 () T@$42_TestResources_R)
(declare-fun |Select__T@[Int]$42_TestResources_R_| (|T@[Int]$42_TestResources_R| Int) T@$42_TestResources_R)
(declare-fun $42_TestResources_R_$memory@0 () T@$Memory_15137)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestResources_move_from_addr$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 28249) (let ((anon8_Else_correct  (=> (and (and (not $abort_flag@0) (= $t2@1 $t2@1)) (and (= $t4@0 (|$x#$42_TestResources_R| $t2@1)) (= (ControlFlow 0 22716) (- 0 28457)))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0))))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 22744) (- 0 28420))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0))))))
(let ((anon7_Then$1_correct  (=> (= $t2@1 $t2) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 22796) 22744) anon8_Then_correct) (=> (= (ControlFlow 0 22796) 22716) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0)) (= (ControlFlow 0 22794) 22796)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0) (= $t2@0 (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) _$t0))) (=> (and (and (= $42_TestResources_R_$memory@0 ($Memory_15137 (|Store__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0 false) (|contents#$Memory_15137| $42_TestResources_R_$memory))) (= $t2@1 $t2@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 22682) 22744) anon8_Then_correct) (=> (= (ControlFlow 0 22682) 22716) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) $a_0)))
(|$IsValid'$42_TestResources_R'| $rsc))
 :qid |resourcesdefaultz3bpl.1528:20|
 :skolemid |37|
 :pattern ( (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) $a_0))
)) (= _$t0 _$t0)) (and (=> (= (ControlFlow 0 22662) 22794) anon7_Then_correct) (=> (= (ControlFlow 0 22662) 22682) anon7_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 28249) 22662) anon0$1_correct)))
anon0_correct))))))))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_15137 0)) ((($Memory_15137 (|domain#$Memory_15137| |T@[Int]Bool|) (|contents#$Memory_15137| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_15170 0)) ((($Mutation_15170 (|l#$Mutation_15170| T@$Location) (|p#$Mutation_15170| T@Vec_2977) (|v#$Mutation_15170| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12719 0)) ((($Mutation_12719 (|l#$Mutation_12719| T@$Location) (|p#$Mutation_12719| T@Vec_2977) (|v#$Mutation_12719| T@Vec_2977) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
(declare-fun $MAX_U8 () Int)
(declare-fun $MAX_U64 () Int)
(declare-fun $MAX_U128 () Int)
(declare-fun |$IsValid'u8'| (Int) Bool)
(declare-fun |$IsValid'u64'| (Int) Bool)
(declare-fun |$IsValid'u128'| (Int) Bool)
(declare-fun |$IsValid'num'| (Int) Bool)
(declare-fun |$IsValid'address'| (Int) Bool)
(declare-fun $InRange (T@$Range Int) Bool)
(declare-fun $ConstMemoryDomain (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool) |T@[Int]Bool|)
(declare-fun $EXEC_FAILURE_CODE () Int)
(declare-fun $shl (Int Int) Int)
(declare-fun $shr (Int Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |resourcesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |resourcesdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |resourcesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |resourcesdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |resourcesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |resourcesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |resourcesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |resourcesdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |resourcesdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesdefaultz3bpl.935:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesdefaultz3bpl.952:40|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesdefaultz3bpl.969:40|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesdefaultz3bpl.983:44|
 :skolemid |31|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesdefaultz3bpl.996:40|
 :skolemid |32|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |resourcesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |resourcesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |resourcesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |resourcesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |resourcesdefaultz3bpl.275:54|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |resourcesdefaultz3bpl.73:19|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |resourcesdefaultz3bpl.82:30|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |resourcesdefaultz3bpl.63:20|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $t3@1 () T@$42_TestResources_R)
(declare-fun $t5@0 () Int)
(declare-fun $t6@0 () T@$42_TestResources_R)
(declare-fun $42_TestResources_R_$memory () T@$Memory_15137)
(declare-fun _$t0 () Int)
(declare-fun |Select__T@[Int]$42_TestResources_R_| (|T@[Int]$42_TestResources_R| Int) T@$42_TestResources_R)
(declare-fun $abort_code@1 () Int)
(declare-fun $t3 () T@$42_TestResources_R)
(declare-fun $t3@0 () T@$42_TestResources_R)
(declare-fun $42_TestResources_R_$memory@0 () T@$Memory_15137)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestResources_move_from_addr_and_return$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 28474) (let ((anon8_Else_correct  (=> (and (not $abort_flag@0) (= $t3@1 $t3@1)) (=> (and (and (= $t5@0 (|$x#$42_TestResources_R| $t3@1)) (= $t5@0 $t5@0)) (and (= $t6@0 ($42_TestResources_R $t5@0)) (= $t6@0 $t6@0))) (and (=> (= (ControlFlow 0 23022) (- 0 28711)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0))) (and (=> (= (ControlFlow 0 23022) (- 0 28722)) (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0) (and (=> (= (ControlFlow 0 23022) (- 0 28729)) (= (|$x#$42_TestResources_R| $t6@0) (|$x#$42_TestResources_R| (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) _$t0)))) (=> (= (|$x#$42_TestResources_R| $t6@0) (|$x#$42_TestResources_R| (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) _$t0))) (=> (= (ControlFlow 0 23022) (- 0 28743)) (= $t6@0 (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) _$t0)))))))))))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 23050) (- 0 28652))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0))))))
(let ((anon7_Then$1_correct  (=> (= $t3@1 $t3) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 23102) 23050) anon8_Then_correct) (=> (= (ControlFlow 0 23102) 23022) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0)) (= (ControlFlow 0 23100) 23102)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0) (= $t3@0 (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) _$t0))) (=> (and (and (= $42_TestResources_R_$memory@0 ($Memory_15137 (|Store__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0 false) (|contents#$Memory_15137| $42_TestResources_R_$memory))) (= $t3@1 $t3@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 22932) 23050) anon8_Then_correct) (=> (= (ControlFlow 0 22932) 23022) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) $a_0)))
(|$IsValid'$42_TestResources_R'| $rsc))
 :qid |resourcesdefaultz3bpl.1615:20|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) $a_0))
)) (= _$t0 _$t0)) (and (=> (= (ControlFlow 0 22912) 23100) anon7_Then_correct) (=> (= (ControlFlow 0 22912) 22932) anon7_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 28474) 22912) anon0$1_correct)))
anon0_correct))))))))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_15137 0)) ((($Memory_15137 (|domain#$Memory_15137| |T@[Int]Bool|) (|contents#$Memory_15137| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_15170 0)) ((($Mutation_15170 (|l#$Mutation_15170| T@$Location) (|p#$Mutation_15170| T@Vec_2977) (|v#$Mutation_15170| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12719 0)) ((($Mutation_12719 (|l#$Mutation_12719| T@$Location) (|p#$Mutation_12719| T@Vec_2977) (|v#$Mutation_12719| T@Vec_2977) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
(declare-fun $MAX_U8 () Int)
(declare-fun $MAX_U64 () Int)
(declare-fun $MAX_U128 () Int)
(declare-fun |$IsValid'u8'| (Int) Bool)
(declare-fun |$IsValid'u64'| (Int) Bool)
(declare-fun |$IsValid'u128'| (Int) Bool)
(declare-fun |$IsValid'num'| (Int) Bool)
(declare-fun |$IsValid'address'| (Int) Bool)
(declare-fun $InRange (T@$Range Int) Bool)
(declare-fun $ConstMemoryDomain (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool) |T@[Int]Bool|)
(declare-fun $EXEC_FAILURE_CODE () Int)
(declare-fun $shl (Int Int) Int)
(declare-fun $shr (Int Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |resourcesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |resourcesdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |resourcesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |resourcesdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |resourcesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |resourcesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |resourcesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |resourcesdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |resourcesdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesdefaultz3bpl.935:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesdefaultz3bpl.952:40|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesdefaultz3bpl.969:40|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesdefaultz3bpl.983:44|
 :skolemid |31|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesdefaultz3bpl.996:40|
 :skolemid |32|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |resourcesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |resourcesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |resourcesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |resourcesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |resourcesdefaultz3bpl.275:54|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |resourcesdefaultz3bpl.73:19|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |resourcesdefaultz3bpl.82:30|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |resourcesdefaultz3bpl.63:20|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $42_TestResources_R_$memory () T@$Memory_15137)
(declare-fun _$t1 () Int)
(declare-fun _$t0 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $42_TestResources_R_$memory@3 () T@$Memory_15137)
(declare-fun |Select__T@[Int]$42_TestResources_R_| (|T@[Int]$42_TestResources_R| Int) T@$42_TestResources_R)
(declare-fun $42_TestResources_R_$memory@1 () T@$Memory_15137)
(declare-fun $42_TestResources_R_$memory@2 () T@$Memory_15137)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$42_TestResources_R_| (|T@[Int]$42_TestResources_R| Int T@$42_TestResources_R) |T@[Int]$42_TestResources_R|)
(assert (forall ( ( ?x0 |T@[Int]$42_TestResources_R|) ( ?x1 Int) ( ?x2 T@$42_TestResources_R)) (! (= (|Select__T@[Int]$42_TestResources_R_| (|Store__T@[Int]$42_TestResources_R_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestResources_R|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$42_TestResources_R)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestResources_R_| (|Store__T@[Int]$42_TestResources_R_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestResources_R_| ?x0 ?y1))) :weight 0)))
(declare-fun $t7@0 () T@$42_TestResources_R)
(declare-fun $t4@1 () T@$42_TestResources_R)
(declare-fun $t6@0 () Int)
(declare-fun $t4 () T@$42_TestResources_R)
(declare-fun $t4@0 () T@$42_TestResources_R)
(declare-fun $42_TestResources_R_$memory@0 () T@$Memory_15137)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestResources_move_from_addr_to_sender$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 28761) (let ((L2_correct  (=> (= (ControlFlow 0 23481) (- 0 29175)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t1)) (and (not (= _$t0 _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0))))))
(let ((anon15_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 23443) 23481)) L2_correct))))
(let ((anon13_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 23545) 23481)) L2_correct))))
(let ((anon15_Else_correct  (=> (not $abort_flag@1) (and (=> (= (ControlFlow 0 23429) (- 0 29081)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t1))) (and (=> (= (ControlFlow 0 23429) (- 0 29092)) (not (and (not (= _$t0 _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0)))) (=> (not (and (not (= _$t0 _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0))) (and (=> (= (ControlFlow 0 23429) (- 0 29113)) (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory@3) _$t0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory@3) _$t0) (and (=> (= (ControlFlow 0 23429) (- 0 29122)) (=> (not (= _$t0 _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory@3) _$t1)))) (=> (=> (not (= _$t0 _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory@3) _$t1))) (and (=> (= (ControlFlow 0 23429) (- 0 29141)) (= (|$x#$42_TestResources_R| (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) _$t1)) (|$x#$42_TestResources_R| (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory@3) _$t0)))) (=> (= (|$x#$42_TestResources_R| (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) _$t1)) (|$x#$42_TestResources_R| (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory@3) _$t0))) (=> (= (ControlFlow 0 23429) (- 0 29160)) (= (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) _$t1) (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory@3) _$t0))))))))))))))))
(let ((anon14_Then$1_correct  (=> (= $42_TestResources_R_$memory@3 $42_TestResources_R_$memory@1) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= $abort_flag@1 true)) (and (=> (= (ControlFlow 0 23531) 23443) anon15_Then_correct) (=> (= (ControlFlow 0 23531) 23429) anon15_Else_correct))))))
(let ((anon14_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory@1) _$t0) (= (ControlFlow 0 23529) 23531)) anon14_Then$1_correct)))
(let ((anon14_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory@1) _$t0)) (=> (and (and (= $42_TestResources_R_$memory@2 ($Memory_15137 (|Store__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory@1) _$t0 true) (|Store__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory@1) _$t0 $t7@0))) (= $42_TestResources_R_$memory@3 $42_TestResources_R_$memory@2)) (and (= $abort_code@2 $abort_code@1) (= $abort_flag@1 $abort_flag@0))) (and (=> (= (ControlFlow 0 23311) 23443) anon15_Then_correct) (=> (= (ControlFlow 0 23311) 23429) anon15_Else_correct))))))
(let ((anon13_Else_correct  (=> (not $abort_flag@0) (=> (and (and (= $t4@1 $t4@1) (= $t6@0 (|$x#$42_TestResources_R| $t4@1))) (and (= $t6@0 $t6@0) (= $t7@0 ($42_TestResources_R $t6@0)))) (and (=> (= (ControlFlow 0 23293) 23529) anon14_Then_correct) (=> (= (ControlFlow 0 23293) 23311) anon14_Else_correct))))))
(let ((anon12_Then$1_correct  (=> (and (and (= $t4@1 $t4) (= $42_TestResources_R_$memory@1 $42_TestResources_R_$memory)) (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE))) (and (=> (= (ControlFlow 0 23597) 23545) anon13_Then_correct) (=> (= (ControlFlow 0 23597) 23293) anon13_Else_correct)))))
(let ((anon12_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t1)) (= (ControlFlow 0 23595) 23597)) anon12_Then$1_correct)))
(let ((anon12_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t1) (=> (and (= $t4@0 (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) _$t1)) (= $42_TestResources_R_$memory@0 ($Memory_15137 (|Store__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t1 false) (|contents#$Memory_15137| $42_TestResources_R_$memory)))) (=> (and (and (= $t4@1 $t4@0) (= $42_TestResources_R_$memory@1 $42_TestResources_R_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 23261) 23545) anon13_Then_correct) (=> (= (ControlFlow 0 23261) 23293) anon13_Else_correct)))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (and (|$IsValid'address'| _$t1) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) $a_0)))
(|$IsValid'$42_TestResources_R'| $rsc))
 :qid |resourcesdefaultz3bpl.1732:20|
 :skolemid |39|
 :pattern ( (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) $a_0))
))) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (=> (= (ControlFlow 0 23241) 23595) anon12_Then_correct) (=> (= (ControlFlow 0 23241) 23261) anon12_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 28761) 23241) anon0$1_correct)))
anon0_correct))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_15137 0)) ((($Memory_15137 (|domain#$Memory_15137| |T@[Int]Bool|) (|contents#$Memory_15137| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_15170 0)) ((($Mutation_15170 (|l#$Mutation_15170| T@$Location) (|p#$Mutation_15170| T@Vec_2977) (|v#$Mutation_15170| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12719 0)) ((($Mutation_12719 (|l#$Mutation_12719| T@$Location) (|p#$Mutation_12719| T@Vec_2977) (|v#$Mutation_12719| T@Vec_2977) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
(declare-fun $MAX_U8 () Int)
(declare-fun $MAX_U64 () Int)
(declare-fun $MAX_U128 () Int)
(declare-fun |$IsValid'u8'| (Int) Bool)
(declare-fun |$IsValid'u64'| (Int) Bool)
(declare-fun |$IsValid'u128'| (Int) Bool)
(declare-fun |$IsValid'num'| (Int) Bool)
(declare-fun |$IsValid'address'| (Int) Bool)
(declare-fun $InRange (T@$Range Int) Bool)
(declare-fun $ConstMemoryDomain (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool) |T@[Int]Bool|)
(declare-fun $EXEC_FAILURE_CODE () Int)
(declare-fun $shl (Int Int) Int)
(declare-fun $shr (Int Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |resourcesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |resourcesdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |resourcesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |resourcesdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |resourcesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |resourcesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |resourcesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |resourcesdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |resourcesdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesdefaultz3bpl.935:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesdefaultz3bpl.952:40|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesdefaultz3bpl.969:40|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesdefaultz3bpl.983:44|
 :skolemid |31|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesdefaultz3bpl.996:40|
 :skolemid |32|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |resourcesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |resourcesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |resourcesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |resourcesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |resourcesdefaultz3bpl.275:54|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |resourcesdefaultz3bpl.73:19|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |resourcesdefaultz3bpl.82:30|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |resourcesdefaultz3bpl.63:20|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $t4@1 () T@$42_TestResources_R)
(declare-fun $t6@0 () Int)
(declare-fun $t7@0 () T@$42_TestResources_R)
(declare-fun $42_TestResources_R_$memory () T@$Memory_15137)
(declare-fun _$t0 () Int)
(declare-fun |Select__T@[Int]$42_TestResources_R_| (|T@[Int]$42_TestResources_R| Int) T@$42_TestResources_R)
(declare-fun $abort_code@1 () Int)
(declare-fun $t4 () T@$42_TestResources_R)
(declare-fun $t3 () Int)
(declare-fun $t4@0 () T@$42_TestResources_R)
(declare-fun $42_TestResources_R_$memory@0 () T@$Memory_15137)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestResources_move_from_sender_and_return$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 29214) (let ((anon8_Else_correct  (=> (and (not $abort_flag@0) (= $t4@1 $t4@1)) (=> (and (and (= $t6@0 (|$x#$42_TestResources_R| $t4@1)) (= $t6@0 $t6@0)) (and (= $t7@0 ($42_TestResources_R $t6@0)) (= $t7@0 $t7@0))) (and (=> (= (ControlFlow 0 23848) (- 0 29468)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0))) (and (=> (= (ControlFlow 0 23848) (- 0 29481)) (= (|$x#$42_TestResources_R| $t7@0) (|$x#$42_TestResources_R| (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) _$t0)))) (=> (= (|$x#$42_TestResources_R| $t7@0) (|$x#$42_TestResources_R| (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) _$t0))) (=> (= (ControlFlow 0 23848) (- 0 29497)) (= $t7@0 (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) _$t0)))))))))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 23878) (- 0 29407))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0))))))
(let ((anon7_Then$1_correct  (=> (= $t4@1 $t4) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 23930) 23878) anon8_Then_correct) (=> (= (ControlFlow 0 23930) 23848) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) $t3)) (= (ControlFlow 0 23928) 23930)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) $t3) (= $t4@0 (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) $t3))) (=> (and (and (= $42_TestResources_R_$memory@0 ($Memory_15137 (|Store__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) $t3 false) (|contents#$Memory_15137| $42_TestResources_R_$memory))) (= $t4@1 $t4@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 23760) 23878) anon8_Then_correct) (=> (= (ControlFlow 0 23760) 23848) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) $a_0)))
(|$IsValid'$42_TestResources_R'| $rsc))
 :qid |resourcesdefaultz3bpl.1866:20|
 :skolemid |40|
 :pattern ( (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) $a_0))
)) (= _$t0 _$t0)) (and (|$IsValid'address'| $t3) (= $t3 _$t0))) (and (=> (= (ControlFlow 0 23740) 23928) anon7_Then_correct) (=> (= (ControlFlow 0 23740) 23760) anon7_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 29214) 23740) anon0$1_correct)))
anon0_correct))))))))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_15137 0)) ((($Memory_15137 (|domain#$Memory_15137| |T@[Int]Bool|) (|contents#$Memory_15137| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_15170 0)) ((($Mutation_15170 (|l#$Mutation_15170| T@$Location) (|p#$Mutation_15170| T@Vec_2977) (|v#$Mutation_15170| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12719 0)) ((($Mutation_12719 (|l#$Mutation_12719| T@$Location) (|p#$Mutation_12719| T@Vec_2977) (|v#$Mutation_12719| T@Vec_2977) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
(declare-fun $MAX_U8 () Int)
(declare-fun $MAX_U64 () Int)
(declare-fun $MAX_U128 () Int)
(declare-fun |$IsValid'u8'| (Int) Bool)
(declare-fun |$IsValid'u64'| (Int) Bool)
(declare-fun |$IsValid'u128'| (Int) Bool)
(declare-fun |$IsValid'num'| (Int) Bool)
(declare-fun |$IsValid'address'| (Int) Bool)
(declare-fun $InRange (T@$Range Int) Bool)
(declare-fun $ConstMemoryDomain (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool) |T@[Int]Bool|)
(declare-fun $EXEC_FAILURE_CODE () Int)
(declare-fun $shl (Int Int) Int)
(declare-fun $shr (Int Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |resourcesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |resourcesdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |resourcesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |resourcesdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |resourcesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |resourcesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |resourcesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |resourcesdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |resourcesdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesdefaultz3bpl.935:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesdefaultz3bpl.952:40|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesdefaultz3bpl.969:40|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesdefaultz3bpl.983:44|
 :skolemid |31|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesdefaultz3bpl.996:40|
 :skolemid |32|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |resourcesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |resourcesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |resourcesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |resourcesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |resourcesdefaultz3bpl.275:54|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |resourcesdefaultz3bpl.73:19|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |resourcesdefaultz3bpl.82:30|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |resourcesdefaultz3bpl.63:20|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $42_TestResources_R_$memory () T@$Memory_15137)
(declare-fun _$t0 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $42_TestResources_R_$memory@3 () T@$Memory_15137)
(declare-fun |Select__T@[Int]$42_TestResources_R_| (|T@[Int]$42_TestResources_R| Int) T@$42_TestResources_R)
(declare-fun $42_TestResources_R_$memory@1 () T@$Memory_15137)
(declare-fun $42_TestResources_R_$memory@2 () T@$Memory_15137)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$42_TestResources_R_| (|T@[Int]$42_TestResources_R| Int T@$42_TestResources_R) |T@[Int]$42_TestResources_R|)
(assert (forall ( ( ?x0 |T@[Int]$42_TestResources_R|) ( ?x1 Int) ( ?x2 T@$42_TestResources_R)) (! (= (|Select__T@[Int]$42_TestResources_R_| (|Store__T@[Int]$42_TestResources_R_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestResources_R|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$42_TestResources_R)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestResources_R_| (|Store__T@[Int]$42_TestResources_R_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestResources_R_| ?x0 ?y1))) :weight 0)))
(declare-fun $t7@0 () T@$42_TestResources_R)
(declare-fun $t4@1 () T@$42_TestResources_R)
(declare-fun $t6@0 () Int)
(declare-fun $t4 () T@$42_TestResources_R)
(declare-fun $t3 () Int)
(declare-fun $t4@0 () T@$42_TestResources_R)
(declare-fun $42_TestResources_R_$memory@0 () T@$Memory_15137)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestResources_move_from_sender_to_sender$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 29516) (let ((L2_correct  (=> (= (ControlFlow 0 24248) (- 0 29898)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0)))))
(let ((anon15_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 24230) 24248)) L2_correct))))
(let ((anon13_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 24312) 24248)) L2_correct))))
(let ((anon15_Else_correct  (=> (not $abort_flag@1) (and (=> (= (ControlFlow 0 24216) (- 0 29838)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) _$t0))) (and (=> (= (ControlFlow 0 24216) (- 0 29851)) (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory@3) _$t0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory@3) _$t0) (and (=> (= (ControlFlow 0 24216) (- 0 29860)) (= (|$x#$42_TestResources_R| (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) _$t0)) (|$x#$42_TestResources_R| (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory@3) _$t0)))) (=> (= (|$x#$42_TestResources_R| (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) _$t0)) (|$x#$42_TestResources_R| (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory@3) _$t0))) (=> (= (ControlFlow 0 24216) (- 0 29881)) (= (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) _$t0) (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory@3) _$t0))))))))))))
(let ((anon14_Then$1_correct  (=> (= $42_TestResources_R_$memory@3 $42_TestResources_R_$memory@1) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= $abort_flag@1 true)) (and (=> (= (ControlFlow 0 24298) 24230) anon15_Then_correct) (=> (= (ControlFlow 0 24298) 24216) anon15_Else_correct))))))
(let ((anon14_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory@1) _$t0) (= (ControlFlow 0 24296) 24298)) anon14_Then$1_correct)))
(let ((anon14_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory@1) _$t0)) (=> (and (and (= $42_TestResources_R_$memory@2 ($Memory_15137 (|Store__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory@1) _$t0 true) (|Store__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory@1) _$t0 $t7@0))) (= $42_TestResources_R_$memory@3 $42_TestResources_R_$memory@2)) (and (= $abort_code@2 $abort_code@1) (= $abort_flag@1 $abort_flag@0))) (and (=> (= (ControlFlow 0 24138) 24230) anon15_Then_correct) (=> (= (ControlFlow 0 24138) 24216) anon15_Else_correct))))))
(let ((anon13_Else_correct  (=> (not $abort_flag@0) (=> (and (and (= $t4@1 $t4@1) (= $t6@0 (|$x#$42_TestResources_R| $t4@1))) (and (= $t6@0 $t6@0) (= $t7@0 ($42_TestResources_R $t6@0)))) (and (=> (= (ControlFlow 0 24120) 24296) anon14_Then_correct) (=> (= (ControlFlow 0 24120) 24138) anon14_Else_correct))))))
(let ((anon12_Then$1_correct  (=> (and (and (= $t4@1 $t4) (= $42_TestResources_R_$memory@1 $42_TestResources_R_$memory)) (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE))) (and (=> (= (ControlFlow 0 24364) 24312) anon13_Then_correct) (=> (= (ControlFlow 0 24364) 24120) anon13_Else_correct)))))
(let ((anon12_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) $t3)) (= (ControlFlow 0 24362) 24364)) anon12_Then$1_correct)))
(let ((anon12_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) $t3) (=> (and (= $t4@0 (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) $t3)) (= $42_TestResources_R_$memory@0 ($Memory_15137 (|Store__T@[Int]Bool_| (|domain#$Memory_15137| $42_TestResources_R_$memory) $t3 false) (|contents#$Memory_15137| $42_TestResources_R_$memory)))) (=> (and (and (= $t4@1 $t4@0) (= $42_TestResources_R_$memory@1 $42_TestResources_R_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 24088) 24312) anon13_Then_correct) (=> (= (ControlFlow 0 24088) 24120) anon13_Else_correct)))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) $a_0)))
(|$IsValid'$42_TestResources_R'| $rsc))
 :qid |resourcesdefaultz3bpl.1987:20|
 :skolemid |41|
 :pattern ( (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_15137| $42_TestResources_R_$memory) $a_0))
)) (= _$t0 _$t0)) (and (|$IsValid'address'| $t3) (= $t3 _$t0))) (and (=> (= (ControlFlow 0 24068) 24362) anon12_Then_correct) (=> (= (ControlFlow 0 24068) 24088) anon12_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 29516) 24068) anon0$1_correct)))
anon0_correct))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_15137 0)) ((($Memory_15137 (|domain#$Memory_15137| |T@[Int]Bool|) (|contents#$Memory_15137| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_15170 0)) ((($Mutation_15170 (|l#$Mutation_15170| T@$Location) (|p#$Mutation_15170| T@Vec_2977) (|v#$Mutation_15170| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12719 0)) ((($Mutation_12719 (|l#$Mutation_12719| T@$Location) (|p#$Mutation_12719| T@Vec_2977) (|v#$Mutation_12719| T@Vec_2977) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
(declare-fun $MAX_U8 () Int)
(declare-fun $MAX_U64 () Int)
(declare-fun $MAX_U128 () Int)
(declare-fun |$IsValid'u8'| (Int) Bool)
(declare-fun |$IsValid'u64'| (Int) Bool)
(declare-fun |$IsValid'u128'| (Int) Bool)
(declare-fun |$IsValid'num'| (Int) Bool)
(declare-fun |$IsValid'address'| (Int) Bool)
(declare-fun $InRange (T@$Range Int) Bool)
(declare-fun $ConstMemoryDomain (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool) |T@[Int]Bool|)
(declare-fun $EXEC_FAILURE_CODE () Int)
(declare-fun $shl (Int Int) Int)
(declare-fun $shr (Int Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |resourcesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |resourcesdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |resourcesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |resourcesdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |resourcesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |resourcesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |resourcesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |resourcesdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |resourcesdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesdefaultz3bpl.935:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesdefaultz3bpl.952:40|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesdefaultz3bpl.969:40|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesdefaultz3bpl.983:44|
 :skolemid |31|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesdefaultz3bpl.996:40|
 :skolemid |32|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |resourcesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |resourcesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |resourcesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |resourcesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |resourcesdefaultz3bpl.275:54|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |resourcesdefaultz3bpl.73:19|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |resourcesdefaultz3bpl.82:30|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |resourcesdefaultz3bpl.63:20|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(declare-fun $t2@0 () T@$42_TestResources_A)
(push 1)
(set-info :boogie-vc-id $42_TestResources_pack_A$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 29918) (let ((anon0$1_correct  (=> (and (|$IsValid'address'| _$t0) (|$IsValid'u64'| _$t1)) (=> (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= $t2@0 ($42_TestResources_A _$t0 _$t1)) (= $t2@0 $t2@0))) (and (=> (= (ControlFlow 0 24522) (- 0 29997)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 24522) (- 0 30004)) (= (|$addr#$42_TestResources_A| $t2@0) _$t0)) (=> (= (|$addr#$42_TestResources_A| $t2@0) _$t0) (=> (= (ControlFlow 0 24522) (- 0 30013)) (= (|$val#$42_TestResources_A| $t2@0) _$t1))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 29918) 24522) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_15137 0)) ((($Memory_15137 (|domain#$Memory_15137| |T@[Int]Bool|) (|contents#$Memory_15137| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_15170 0)) ((($Mutation_15170 (|l#$Mutation_15170| T@$Location) (|p#$Mutation_15170| T@Vec_2977) (|v#$Mutation_15170| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12719 0)) ((($Mutation_12719 (|l#$Mutation_12719| T@$Location) (|p#$Mutation_12719| T@Vec_2977) (|v#$Mutation_12719| T@Vec_2977) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
(declare-fun $MAX_U8 () Int)
(declare-fun $MAX_U64 () Int)
(declare-fun $MAX_U128 () Int)
(declare-fun |$IsValid'u8'| (Int) Bool)
(declare-fun |$IsValid'u64'| (Int) Bool)
(declare-fun |$IsValid'u128'| (Int) Bool)
(declare-fun |$IsValid'num'| (Int) Bool)
(declare-fun |$IsValid'address'| (Int) Bool)
(declare-fun $InRange (T@$Range Int) Bool)
(declare-fun $ConstMemoryDomain (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool) |T@[Int]Bool|)
(declare-fun $EXEC_FAILURE_CODE () Int)
(declare-fun $shl (Int Int) Int)
(declare-fun $shr (Int Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |resourcesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |resourcesdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |resourcesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |resourcesdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |resourcesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |resourcesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |resourcesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |resourcesdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |resourcesdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesdefaultz3bpl.935:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesdefaultz3bpl.952:40|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesdefaultz3bpl.969:40|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesdefaultz3bpl.983:44|
 :skolemid |31|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesdefaultz3bpl.996:40|
 :skolemid |32|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |resourcesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |resourcesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |resourcesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |resourcesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |resourcesdefaultz3bpl.275:54|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |resourcesdefaultz3bpl.73:19|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |resourcesdefaultz3bpl.82:30|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |resourcesdefaultz3bpl.63:20|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(declare-fun _$t2 () Int)
(declare-fun $t5@0 () T@$42_TestResources_A)
(declare-fun $t6@0 () T@$42_TestResources_B)
(push 1)
(set-info :boogie-vc-id $42_TestResources_pack_B$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 30028) (let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (|$IsValid'u64'| _$t1) (|$IsValid'u64'| _$t2)) (=> (and (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t5@0 ($42_TestResources_A _$t0 _$t1)))) (and (and (= $t5@0 $t5@0) (= $t6@0 ($42_TestResources_B _$t2 $t5@0))) (and (= $t6@0 $t6@0) (= $t6@0 $t6@0)))) (and (=> (= (ControlFlow 0 24706) (- 0 30148)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 24706) (- 0 30155)) (= (|$val#$42_TestResources_B| $t6@0) _$t2)) (=> (= (|$val#$42_TestResources_B| $t6@0) _$t2) (and (=> (= (ControlFlow 0 24706) (- 0 30164)) (= (|$val#$42_TestResources_A| (|$a#$42_TestResources_B| $t6@0)) _$t1)) (=> (= (|$val#$42_TestResources_A| (|$a#$42_TestResources_B| $t6@0)) _$t1) (=> (= (ControlFlow 0 24706) (- 0 30175)) (= (|$addr#$42_TestResources_A| (|$a#$42_TestResources_B| $t6@0)) _$t0)))))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 30028) 24706) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_15137 0)) ((($Memory_15137 (|domain#$Memory_15137| |T@[Int]Bool|) (|contents#$Memory_15137| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_15170 0)) ((($Mutation_15170 (|l#$Mutation_15170| T@$Location) (|p#$Mutation_15170| T@Vec_2977) (|v#$Mutation_15170| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12719 0)) ((($Mutation_12719 (|l#$Mutation_12719| T@$Location) (|p#$Mutation_12719| T@Vec_2977) (|v#$Mutation_12719| T@Vec_2977) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
(declare-fun $MAX_U8 () Int)
(declare-fun $MAX_U64 () Int)
(declare-fun $MAX_U128 () Int)
(declare-fun |$IsValid'u8'| (Int) Bool)
(declare-fun |$IsValid'u64'| (Int) Bool)
(declare-fun |$IsValid'u128'| (Int) Bool)
(declare-fun |$IsValid'num'| (Int) Bool)
(declare-fun |$IsValid'address'| (Int) Bool)
(declare-fun $InRange (T@$Range Int) Bool)
(declare-fun $ConstMemoryDomain (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool) |T@[Int]Bool|)
(declare-fun $EXEC_FAILURE_CODE () Int)
(declare-fun $shl (Int Int) Int)
(declare-fun $shr (Int Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |resourcesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |resourcesdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |resourcesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |resourcesdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |resourcesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |resourcesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |resourcesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |resourcesdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |resourcesdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesdefaultz3bpl.935:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesdefaultz3bpl.952:40|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesdefaultz3bpl.969:40|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesdefaultz3bpl.983:44|
 :skolemid |31|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesdefaultz3bpl.996:40|
 :skolemid |32|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |resourcesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |resourcesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |resourcesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |resourcesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |resourcesdefaultz3bpl.275:54|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |resourcesdefaultz3bpl.73:19|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |resourcesdefaultz3bpl.82:30|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |resourcesdefaultz3bpl.63:20|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(declare-fun _$t2 () Int)
(declare-fun _$t3 () Int)
(declare-fun $t7@0 () T@$42_TestResources_A)
(declare-fun $t8@0 () T@$42_TestResources_B)
(declare-fun $t9@0 () T@$42_TestResources_C)
(push 1)
(set-info :boogie-vc-id $42_TestResources_pack_C$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 30193) (let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (|$IsValid'u64'| _$t1) (|$IsValid'u64'| _$t2)) (=> (and (and (|$IsValid'u64'| _$t3) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= _$t2 _$t2))) (=> (and (and (and (= _$t3 _$t3) (= $t7@0 ($42_TestResources_A _$t0 _$t1))) (and (= $t7@0 $t7@0) (= $t8@0 ($42_TestResources_B _$t2 $t7@0)))) (and (and (= $t8@0 $t8@0) (= $t9@0 ($42_TestResources_C _$t3 $t8@0))) (and (= $t9@0 $t9@0) (= $t9@0 $t9@0)))) (and (=> (= (ControlFlow 0 24942) (- 0 30346)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 24942) (- 0 30353)) (= (|$val#$42_TestResources_C| $t9@0) _$t3)) (=> (= (|$val#$42_TestResources_C| $t9@0) _$t3) (and (=> (= (ControlFlow 0 24942) (- 0 30362)) (= (|$val#$42_TestResources_B| (|$b#$42_TestResources_C| $t9@0)) _$t2)) (=> (= (|$val#$42_TestResources_B| (|$b#$42_TestResources_C| $t9@0)) _$t2) (and (=> (= (ControlFlow 0 24942) (- 0 30373)) (= (|$val#$42_TestResources_A| (|$a#$42_TestResources_B| (|$b#$42_TestResources_C| $t9@0))) _$t1)) (=> (= (|$val#$42_TestResources_A| (|$a#$42_TestResources_B| (|$b#$42_TestResources_C| $t9@0))) _$t1) (=> (= (ControlFlow 0 24942) (- 0 30386)) (= (|$addr#$42_TestResources_A| (|$a#$42_TestResources_B| (|$b#$42_TestResources_C| $t9@0))) _$t0))))))))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 30193) 24942) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_15137 0)) ((($Memory_15137 (|domain#$Memory_15137| |T@[Int]Bool|) (|contents#$Memory_15137| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_15170 0)) ((($Mutation_15170 (|l#$Mutation_15170| T@$Location) (|p#$Mutation_15170| T@Vec_2977) (|v#$Mutation_15170| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12719 0)) ((($Mutation_12719 (|l#$Mutation_12719| T@$Location) (|p#$Mutation_12719| T@Vec_2977) (|v#$Mutation_12719| T@Vec_2977) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
(declare-fun $MAX_U8 () Int)
(declare-fun $MAX_U64 () Int)
(declare-fun $MAX_U128 () Int)
(declare-fun |$IsValid'u8'| (Int) Bool)
(declare-fun |$IsValid'u64'| (Int) Bool)
(declare-fun |$IsValid'u128'| (Int) Bool)
(declare-fun |$IsValid'num'| (Int) Bool)
(declare-fun |$IsValid'address'| (Int) Bool)
(declare-fun $InRange (T@$Range Int) Bool)
(declare-fun $ConstMemoryDomain (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool) |T@[Int]Bool|)
(declare-fun $EXEC_FAILURE_CODE () Int)
(declare-fun $shl (Int Int) Int)
(declare-fun $shr (Int Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |resourcesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |resourcesdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |resourcesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |resourcesdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |resourcesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |resourcesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |resourcesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |resourcesdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |resourcesdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesdefaultz3bpl.935:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesdefaultz3bpl.952:40|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesdefaultz3bpl.969:40|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesdefaultz3bpl.983:44|
 :skolemid |31|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesdefaultz3bpl.996:40|
 :skolemid |32|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |resourcesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |resourcesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |resourcesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |resourcesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |resourcesdefaultz3bpl.275:54|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |resourcesdefaultz3bpl.73:19|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |resourcesdefaultz3bpl.82:30|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |resourcesdefaultz3bpl.63:20|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t13@0 () Bool)
(declare-fun $t4@0 () T@$42_TestResources_A)
(declare-fun _$t1 () Bool)
(declare-fun _$t0 () Int)
(declare-fun $t11@0 () Int)
(declare-fun $t10@0 () T@$42_TestResources_A)
(declare-fun $t8@0 () T@$42_TestResources_A)
(push 1)
(set-info :boogie-vc-id $42_TestResources_ref_A$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 30408) (let ((anon9_Else_correct  (=> (and (not $t13@0) (= $t4@0 $t4@0)) (and (=> (= (ControlFlow 0 25165) (- 0 30647)) (not _$t1)) (=> (not _$t1) (=> (= (ControlFlow 0 25165) (- 0 30653)) (= (|$addr#$42_TestResources_A| $t4@0) _$t0)))))))
(let ((anon9_Then_correct  (=> (and (and $t13@0 (|$IsValid'u64'| 42)) (and (= 42 42) (= (ControlFlow 0 25191) (- 0 30627)))) _$t1)))
(let ((L3_correct  (=> (= $t4@0 $t4@0) (=> (and (= $t4@0 $t4@0) (= $t11@0 (|$val#$42_TestResources_A| $t4@0))) (=> (and (and (= $t11@0 $t11@0) (= $t11@0 $t11@0)) (and (|$IsValid'u64'| 42) (= $t13@0  (not (= $t11@0 42))))) (and (=> (= (ControlFlow 0 25133) 25191) anon9_Then_correct) (=> (= (ControlFlow 0 25133) 25165) anon9_Else_correct)))))))
(let ((anon8_Else_correct  (=> (and (not _$t1) (|$IsValid'u64'| 42)) (=> (and (and (= $t10@0 ($42_TestResources_A _$t0 42)) (= $t10@0 $t10@0)) (and (= $t4@0 $t10@0) (= (ControlFlow 0 25081) 25133))) L3_correct))))
(let ((anon8_Then_correct  (=> (and _$t1 (|$IsValid'u64'| 1)) (=> (and (and (= $t8@0 ($42_TestResources_A _$t0 1)) (= $t8@0 $t8@0)) (and (= $t4@0 $t8@0) (= (ControlFlow 0 25215) 25133))) L3_correct))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (=> (= (ControlFlow 0 25053) 25215) anon8_Then_correct) (=> (= (ControlFlow 0 25053) 25081) anon8_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 30408) 25053) anon0$1_correct)))
anon0_correct))))))))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_15137 0)) ((($Memory_15137 (|domain#$Memory_15137| |T@[Int]Bool|) (|contents#$Memory_15137| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_15170 0)) ((($Mutation_15170 (|l#$Mutation_15170| T@$Location) (|p#$Mutation_15170| T@Vec_2977) (|v#$Mutation_15170| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12719 0)) ((($Mutation_12719 (|l#$Mutation_12719| T@$Location) (|p#$Mutation_12719| T@Vec_2977) (|v#$Mutation_12719| T@Vec_2977) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
(declare-fun $MAX_U8 () Int)
(declare-fun $MAX_U64 () Int)
(declare-fun $MAX_U128 () Int)
(declare-fun |$IsValid'u8'| (Int) Bool)
(declare-fun |$IsValid'u64'| (Int) Bool)
(declare-fun |$IsValid'u128'| (Int) Bool)
(declare-fun |$IsValid'num'| (Int) Bool)
(declare-fun |$IsValid'address'| (Int) Bool)
(declare-fun $InRange (T@$Range Int) Bool)
(declare-fun $ConstMemoryDomain (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool) |T@[Int]Bool|)
(declare-fun $EXEC_FAILURE_CODE () Int)
(declare-fun $shl (Int Int) Int)
(declare-fun $shr (Int Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |resourcesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |resourcesdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |resourcesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |resourcesdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |resourcesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |resourcesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |resourcesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |resourcesdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |resourcesdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesdefaultz3bpl.935:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesdefaultz3bpl.952:40|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesdefaultz3bpl.969:40|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesdefaultz3bpl.983:44|
 :skolemid |31|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesdefaultz3bpl.996:40|
 :skolemid |32|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |resourcesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |resourcesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |resourcesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |resourcesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |resourcesdefaultz3bpl.275:54|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |resourcesdefaultz3bpl.73:19|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |resourcesdefaultz3bpl.82:30|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |resourcesdefaultz3bpl.63:20|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () Int)
(declare-fun $t1 () Int)
(declare-fun $t3@0 () T@$42_TestResources_A)
(push 1)
(set-info :boogie-vc-id $42_TestResources_spec_pack_A$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 30666) (let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (= _$t0 _$t0) (|$IsValid'address'| $t1)) (=> (and (and (= $t1 _$t0) (|$IsValid'u64'| 7)) (and (= $t3@0 ($42_TestResources_A $t1 7)) (= $t3@0 $t3@0))) (and (=> (= (ControlFlow 0 25406) (- 0 30752)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 25406) (- 0 30759)) (= (|$addr#$42_TestResources_A| $t3@0) _$t0)) (=> (= (|$addr#$42_TestResources_A| $t3@0) _$t0) (and (=> (= (ControlFlow 0 25406) (- 0 30770)) (= (|$val#$42_TestResources_A| $t3@0) 7)) (=> (= (|$val#$42_TestResources_A| $t3@0) 7) (and (=> (= (ControlFlow 0 25406) (- 0 30780)) (= $t3@0 ($42_TestResources_A _$t0 7))) (=> (= $t3@0 ($42_TestResources_A _$t0 7)) (=> (= (ControlFlow 0 25406) (- 0 30793)) (= $t3@0 ($42_TestResources_A _$t0 7))))))))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 30666) 25406) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_15137 0)) ((($Memory_15137 (|domain#$Memory_15137| |T@[Int]Bool|) (|contents#$Memory_15137| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_15170 0)) ((($Mutation_15170 (|l#$Mutation_15170| T@$Location) (|p#$Mutation_15170| T@Vec_2977) (|v#$Mutation_15170| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12719 0)) ((($Mutation_12719 (|l#$Mutation_12719| T@$Location) (|p#$Mutation_12719| T@Vec_2977) (|v#$Mutation_12719| T@Vec_2977) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
(declare-fun $MAX_U8 () Int)
(declare-fun $MAX_U64 () Int)
(declare-fun $MAX_U128 () Int)
(declare-fun |$IsValid'u8'| (Int) Bool)
(declare-fun |$IsValid'u64'| (Int) Bool)
(declare-fun |$IsValid'u128'| (Int) Bool)
(declare-fun |$IsValid'num'| (Int) Bool)
(declare-fun |$IsValid'address'| (Int) Bool)
(declare-fun $InRange (T@$Range Int) Bool)
(declare-fun $ConstMemoryDomain (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool) |T@[Int]Bool|)
(declare-fun $EXEC_FAILURE_CODE () Int)
(declare-fun $shl (Int Int) Int)
(declare-fun $shr (Int Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |resourcesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |resourcesdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |resourcesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |resourcesdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |resourcesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |resourcesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |resourcesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |resourcesdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |resourcesdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesdefaultz3bpl.935:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesdefaultz3bpl.952:40|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesdefaultz3bpl.969:40|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesdefaultz3bpl.983:44|
 :skolemid |31|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesdefaultz3bpl.996:40|
 :skolemid |32|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |resourcesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |resourcesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |resourcesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |resourcesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |resourcesdefaultz3bpl.275:54|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |resourcesdefaultz3bpl.73:19|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |resourcesdefaultz3bpl.82:30|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |resourcesdefaultz3bpl.63:20|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () Int)
(declare-fun $t2 () Int)
(declare-fun $t4@0 () T@$42_TestResources_A)
(declare-fun $t5@0 () T@$42_TestResources_B)
(push 1)
(set-info :boogie-vc-id $42_TestResources_spec_pack_B$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 30810) (let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (and (and (= _$t0 _$t0) (|$IsValid'u64'| 77)) (and (|$IsValid'address'| $t2) (= $t2 _$t0))) (and (and (|$IsValid'u64'| 7) (= $t4@0 ($42_TestResources_A $t2 7))) (and (= $t5@0 ($42_TestResources_B 77 $t4@0)) (= $t5@0 $t5@0)))) (and (=> (= (ControlFlow 0 25650) (- 0 30916)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 25650) (- 0 30923)) (= (|$val#$42_TestResources_B| $t5@0) 77)) (=> (= (|$val#$42_TestResources_B| $t5@0) 77) (and (=> (= (ControlFlow 0 25650) (- 0 30933)) (= (|$val#$42_TestResources_A| (|$a#$42_TestResources_B| $t5@0)) 7)) (=> (= (|$val#$42_TestResources_A| (|$a#$42_TestResources_B| $t5@0)) 7) (and (=> (= (ControlFlow 0 25650) (- 0 30945)) (= (|$addr#$42_TestResources_A| (|$a#$42_TestResources_B| $t5@0)) _$t0)) (=> (= (|$addr#$42_TestResources_A| (|$a#$42_TestResources_B| $t5@0)) _$t0) (and (=> (= (ControlFlow 0 25650) (- 0 30958)) (= $t5@0 ($42_TestResources_B 77 ($42_TestResources_A _$t0 7)))) (=> (= $t5@0 ($42_TestResources_B 77 ($42_TestResources_A _$t0 7))) (and (=> (= (ControlFlow 0 25650) (- 0 30975)) (= $t5@0 ($42_TestResources_B 77 ($42_TestResources_A _$t0 7)))) (=> (= $t5@0 ($42_TestResources_B 77 ($42_TestResources_A _$t0 7))) (and (=> (= (ControlFlow 0 25650) (- 0 30992)) (= $t5@0 ($42_TestResources_B 77 ($42_TestResources_A _$t0 7)))) (=> (= $t5@0 ($42_TestResources_B 77 ($42_TestResources_A _$t0 7))) (=> (= (ControlFlow 0 25650) (- 0 31009)) (= $t5@0 ($42_TestResources_B 77 ($42_TestResources_A _$t0 7))))))))))))))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 30810) 25650) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_15137 0)) ((($Memory_15137 (|domain#$Memory_15137| |T@[Int]Bool|) (|contents#$Memory_15137| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_15170 0)) ((($Mutation_15170 (|l#$Mutation_15170| T@$Location) (|p#$Mutation_15170| T@Vec_2977) (|v#$Mutation_15170| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12719 0)) ((($Mutation_12719 (|l#$Mutation_12719| T@$Location) (|p#$Mutation_12719| T@Vec_2977) (|v#$Mutation_12719| T@Vec_2977) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
(declare-fun $MAX_U8 () Int)
(declare-fun $MAX_U64 () Int)
(declare-fun $MAX_U128 () Int)
(declare-fun |$IsValid'u8'| (Int) Bool)
(declare-fun |$IsValid'u64'| (Int) Bool)
(declare-fun |$IsValid'u128'| (Int) Bool)
(declare-fun |$IsValid'num'| (Int) Bool)
(declare-fun |$IsValid'address'| (Int) Bool)
(declare-fun $InRange (T@$Range Int) Bool)
(declare-fun $ConstMemoryDomain (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool) |T@[Int]Bool|)
(declare-fun $EXEC_FAILURE_CODE () Int)
(declare-fun $shl (Int Int) Int)
(declare-fun $shr (Int Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |resourcesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |resourcesdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |resourcesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |resourcesdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |resourcesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |resourcesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |resourcesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |resourcesdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |resourcesdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesdefaultz3bpl.935:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesdefaultz3bpl.952:40|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesdefaultz3bpl.969:40|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesdefaultz3bpl.983:44|
 :skolemid |31|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesdefaultz3bpl.996:40|
 :skolemid |32|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |resourcesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |resourcesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |resourcesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |resourcesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |resourcesdefaultz3bpl.275:54|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |resourcesdefaultz3bpl.73:19|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |resourcesdefaultz3bpl.82:30|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |resourcesdefaultz3bpl.63:20|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () T@$42_TestResources_R)
(push 1)
(set-info :boogie-vc-id $42_TestResources_spec_pack_R$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 31029) (let ((anon0$1_correct  (=> (|$IsValid'u64'| 7) (=> (and (= $t1@0 ($42_TestResources_R 7)) (= $t1@0 $t1@0)) (and (=> (= (ControlFlow 0 25770) (- 0 31083)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 25770) (- 0 31090)) (= (|$x#$42_TestResources_R| $t1@0) 7)) (=> (= (|$x#$42_TestResources_R| $t1@0) 7) (=> (= (ControlFlow 0 25770) (- 0 31100)) (= $t1@0 ($42_TestResources_R 7)))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 31029) 25770) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_15137 0)) ((($Memory_15137 (|domain#$Memory_15137| |T@[Int]Bool|) (|contents#$Memory_15137| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_15170 0)) ((($Mutation_15170 (|l#$Mutation_15170| T@$Location) (|p#$Mutation_15170| T@Vec_2977) (|v#$Mutation_15170| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12719 0)) ((($Mutation_12719 (|l#$Mutation_12719| T@$Location) (|p#$Mutation_12719| T@Vec_2977) (|v#$Mutation_12719| T@Vec_2977) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
(declare-fun $MAX_U8 () Int)
(declare-fun $MAX_U64 () Int)
(declare-fun $MAX_U128 () Int)
(declare-fun |$IsValid'u8'| (Int) Bool)
(declare-fun |$IsValid'u64'| (Int) Bool)
(declare-fun |$IsValid'u128'| (Int) Bool)
(declare-fun |$IsValid'num'| (Int) Bool)
(declare-fun |$IsValid'address'| (Int) Bool)
(declare-fun $InRange (T@$Range Int) Bool)
(declare-fun $ConstMemoryDomain (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool) |T@[Int]Bool|)
(declare-fun $EXEC_FAILURE_CODE () Int)
(declare-fun $shl (Int Int) Int)
(declare-fun $shr (Int Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |resourcesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |resourcesdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |resourcesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |resourcesdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |resourcesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |resourcesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |resourcesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |resourcesdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |resourcesdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesdefaultz3bpl.935:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesdefaultz3bpl.952:40|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesdefaultz3bpl.969:40|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesdefaultz3bpl.983:44|
 :skolemid |31|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesdefaultz3bpl.996:40|
 :skolemid |32|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |resourcesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |resourcesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |resourcesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |resourcesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |resourcesdefaultz3bpl.275:54|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |resourcesdefaultz3bpl.73:19|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |resourcesdefaultz3bpl.82:30|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |resourcesdefaultz3bpl.63:20|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(declare-fun $t5@0 () T@$42_TestResources_A)
(declare-fun $t6@0 () Int)
(declare-fun $t7@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestResources_unpack_A$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 31116) (let ((anon0$1_correct  (=> (and (and (|$IsValid'address'| _$t0) (|$IsValid'u64'| _$t1)) (and (= _$t0 _$t0) (= _$t1 _$t1))) (=> (and (and (and (= $t5@0 ($42_TestResources_A _$t0 _$t1)) (= $t5@0 $t5@0)) (and (= $t6@0 (|$addr#$42_TestResources_A| $t5@0)) (= $t7@0 (|$val#$42_TestResources_A| $t5@0)))) (and (and (= $t7@0 $t7@0) (= $t6@0 $t6@0)) (and (= $t6@0 $t6@0) (= $t7@0 $t7@0)))) (and (=> (= (ControlFlow 0 25940) (- 0 31245)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 25940) (- 0 31252)) (= $t6@0 _$t0)) (=> (= $t6@0 _$t0) (=> (= (ControlFlow 0 25940) (- 0 31259)) (= $t7@0 _$t1))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 31116) 25940) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_15137 0)) ((($Memory_15137 (|domain#$Memory_15137| |T@[Int]Bool|) (|contents#$Memory_15137| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_15170 0)) ((($Mutation_15170 (|l#$Mutation_15170| T@$Location) (|p#$Mutation_15170| T@Vec_2977) (|v#$Mutation_15170| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12719 0)) ((($Mutation_12719 (|l#$Mutation_12719| T@$Location) (|p#$Mutation_12719| T@Vec_2977) (|v#$Mutation_12719| T@Vec_2977) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
(declare-fun $MAX_U8 () Int)
(declare-fun $MAX_U64 () Int)
(declare-fun $MAX_U128 () Int)
(declare-fun |$IsValid'u8'| (Int) Bool)
(declare-fun |$IsValid'u64'| (Int) Bool)
(declare-fun |$IsValid'u128'| (Int) Bool)
(declare-fun |$IsValid'num'| (Int) Bool)
(declare-fun |$IsValid'address'| (Int) Bool)
(declare-fun $InRange (T@$Range Int) Bool)
(declare-fun $ConstMemoryDomain (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool) |T@[Int]Bool|)
(declare-fun $EXEC_FAILURE_CODE () Int)
(declare-fun $shl (Int Int) Int)
(declare-fun $shr (Int Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |resourcesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |resourcesdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |resourcesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |resourcesdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |resourcesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |resourcesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |resourcesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |resourcesdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |resourcesdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesdefaultz3bpl.935:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesdefaultz3bpl.952:40|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesdefaultz3bpl.969:40|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesdefaultz3bpl.983:44|
 :skolemid |31|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesdefaultz3bpl.996:40|
 :skolemid |32|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |resourcesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |resourcesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |resourcesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |resourcesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |resourcesdefaultz3bpl.275:54|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |resourcesdefaultz3bpl.73:19|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |resourcesdefaultz3bpl.82:30|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |resourcesdefaultz3bpl.63:20|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(declare-fun _$t2 () Int)
(declare-fun $t8@0 () T@$42_TestResources_A)
(declare-fun $t9@0 () T@$42_TestResources_B)
(declare-fun $t10@0 () Int)
(declare-fun $t11@0 () T@$42_TestResources_A)
(declare-fun $t12@0 () Int)
(declare-fun $t13@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestResources_unpack_B$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 31276) (let ((anon0$1_correct  (=> (and (and (|$IsValid'address'| _$t0) (|$IsValid'u64'| _$t1)) (and (|$IsValid'u64'| _$t2) (= _$t0 _$t0))) (=> (and (and (and (and (= _$t1 _$t1) (= _$t2 _$t2)) (and (= $t8@0 ($42_TestResources_A _$t0 _$t1)) (= $t8@0 $t8@0))) (and (and (= $t9@0 ($42_TestResources_B _$t2 $t8@0)) (= $t9@0 $t9@0)) (and (= $t10@0 (|$val#$42_TestResources_B| $t9@0)) (= $t11@0 (|$a#$42_TestResources_B| $t9@0))))) (and (and (and (= $t12@0 (|$addr#$42_TestResources_A| $t11@0)) (= $t13@0 (|$val#$42_TestResources_A| $t11@0))) (and (= $t13@0 $t13@0) (= $t12@0 $t12@0))) (and (and (= $t10@0 $t10@0) (= $t12@0 $t12@0)) (and (= $t13@0 $t13@0) (= $t10@0 $t10@0))))) (and (=> (= (ControlFlow 0 26163) (- 0 31472)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 26163) (- 0 31479)) (= $t12@0 _$t0)) (=> (= $t12@0 _$t0) (and (=> (= (ControlFlow 0 26163) (- 0 31486)) (= $t13@0 _$t1)) (=> (= $t13@0 _$t1) (=> (= (ControlFlow 0 26163) (- 0 31493)) (= $t10@0 _$t2))))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 31276) 26163) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_15137 0)) ((($Memory_15137 (|domain#$Memory_15137| |T@[Int]Bool|) (|contents#$Memory_15137| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_15170 0)) ((($Mutation_15170 (|l#$Mutation_15170| T@$Location) (|p#$Mutation_15170| T@Vec_2977) (|v#$Mutation_15170| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12719 0)) ((($Mutation_12719 (|l#$Mutation_12719| T@$Location) (|p#$Mutation_12719| T@Vec_2977) (|v#$Mutation_12719| T@Vec_2977) ) ) ))
(declare-datatypes ((T@$Range 0)) ((($Range (|lb#$Range| Int) (|ub#$Range| Int) ) ) ))
(declare-fun $MAX_U8 () Int)
(declare-fun $MAX_U64 () Int)
(declare-fun $MAX_U128 () Int)
(declare-fun |$IsValid'u8'| (Int) Bool)
(declare-fun |$IsValid'u64'| (Int) Bool)
(declare-fun |$IsValid'u128'| (Int) Bool)
(declare-fun |$IsValid'num'| (Int) Bool)
(declare-fun |$IsValid'address'| (Int) Bool)
(declare-fun $InRange (T@$Range Int) Bool)
(declare-fun $ConstMemoryDomain (Bool) |T@[Int]Bool|)
(declare-fun |lambda#0| (Bool) |T@[Int]Bool|)
(declare-fun $EXEC_FAILURE_CODE () Int)
(declare-fun $shl (Int Int) Int)
(declare-fun $shr (Int Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |resourcesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |resourcesdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |resourcesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |resourcesdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |resourcesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |resourcesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |resourcesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |resourcesdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |resourcesdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesdefaultz3bpl.935:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesdefaultz3bpl.952:40|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesdefaultz3bpl.969:40|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesdefaultz3bpl.983:44|
 :skolemid |31|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesdefaultz3bpl.996:40|
 :skolemid |32|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |resourcesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |resourcesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |resourcesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |resourcesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |resourcesdefaultz3bpl.275:54|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |resourcesdefaultz3bpl.73:19|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |resourcesdefaultz3bpl.82:30|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |resourcesdefaultz3bpl.63:20|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(declare-fun _$t2 () Int)
(declare-fun _$t3 () Int)
(declare-fun $t11@0 () T@$42_TestResources_A)
(declare-fun $t12@0 () T@$42_TestResources_B)
(declare-fun $t13@0 () T@$42_TestResources_C)
(declare-fun $t14@0 () Int)
(declare-fun $t15@0 () T@$42_TestResources_B)
(declare-fun $t16@0 () Int)
(declare-fun $t17@0 () T@$42_TestResources_A)
(declare-fun $t18@0 () Int)
(declare-fun $t19@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestResources_unpack_C$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 31514) (let ((anon0$1_correct  (=> (and (and (|$IsValid'address'| _$t0) (|$IsValid'u64'| _$t1)) (and (|$IsValid'u64'| _$t2) (|$IsValid'u64'| _$t3))) (=> (and (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= _$t3 _$t3))) (and (and (= $t11@0 ($42_TestResources_A _$t0 _$t1)) (= $t11@0 $t11@0)) (and (= $t12@0 ($42_TestResources_B _$t2 $t11@0)) (= $t12@0 $t12@0)))) (=> (and (and (and (and (= $t13@0 ($42_TestResources_C _$t3 $t12@0)) (= $t13@0 $t13@0)) (and (= $t14@0 (|$val#$42_TestResources_C| $t13@0)) (= $t15@0 (|$b#$42_TestResources_C| $t13@0)))) (and (and (= $t16@0 (|$val#$42_TestResources_B| $t15@0)) (= $t17@0 (|$a#$42_TestResources_B| $t15@0))) (and (= $t18@0 (|$addr#$42_TestResources_A| $t17@0)) (= $t19@0 (|$val#$42_TestResources_A| $t17@0))))) (and (and (and (= $t19@0 $t19@0) (= $t18@0 $t18@0)) (and (= $t16@0 $t16@0) (= $t14@0 $t14@0))) (and (and (= $t18@0 $t18@0) (= $t19@0 $t19@0)) (and (= $t16@0 $t16@0) (= $t14@0 $t14@0))))) (and (=> (= (ControlFlow 0 26452) (- 0 31777)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 26452) (- 0 31784)) (= $t18@0 _$t0)) (=> (= $t18@0 _$t0) (and (=> (= (ControlFlow 0 26452) (- 0 31791)) (= $t19@0 _$t1)) (=> (= $t19@0 _$t1) (and (=> (= (ControlFlow 0 26452) (- 0 31798)) (= $t16@0 _$t2)) (=> (= $t16@0 _$t2) (=> (= (ControlFlow 0 26452) (- 0 31805)) (= $t14@0 _$t3)))))))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 31514) 26452) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(pop 1)
; Valid
