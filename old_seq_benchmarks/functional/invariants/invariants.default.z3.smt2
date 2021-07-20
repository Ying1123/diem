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
(declare-datatypes ((T@$42_TestInvariants_T 0)) ((($42_TestInvariants_T (|$x#$42_TestInvariants_T| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_S 0)) ((($42_TestInvariants_S (|$y#$42_TestInvariants_S| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_R 0)) ((($42_TestInvariants_R (|$x#$42_TestInvariants_R| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_16120 0)) ((($Mutation_16120 (|l#$Mutation_16120| T@$Location) (|p#$Mutation_16120| T@Vec_2977) (|v#$Mutation_16120| T@$42_TestInvariants_S) ) ) ))
(declare-datatypes ((T@$Mutation_16078 0)) ((($Mutation_16078 (|l#$Mutation_16078| T@$Location) (|p#$Mutation_16078| T@Vec_2977) (|v#$Mutation_16078| T@$42_TestInvariants_T) ) ) ))
(declare-datatypes ((T@$Mutation_13170 0)) ((($Mutation_13170 (|l#$Mutation_13170| T@$Location) (|p#$Mutation_13170| T@Vec_2977) (|v#$Mutation_13170| T@$42_TestInvariants_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10887 0)) ((($Mutation_10887 (|l#$Mutation_10887| T@$Location) (|p#$Mutation_10887| T@Vec_2977) (|v#$Mutation_10887| T@Vec_2977) ) ) ))
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
(declare-sort |T@[Int]Bool| 0)
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
(declare-fun |$IsValid'$42_TestInvariants_R'| (T@$42_TestInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestInvariants_S'| (T@$42_TestInvariants_S) Bool)
(declare-fun |$IsValid'$42_TestInvariants_T'| (T@$42_TestInvariants_T) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |invariantsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |invariantsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |invariantsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |invariantsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |invariantsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |invariantsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |invariantsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |invariantsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |invariantsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |invariantsdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |invariantsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |invariantsdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |invariantsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |invariantsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |invariantsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |invariantsdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |invariantsdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |invariantsdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |invariantsdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestInvariants_R) ) (! (= (|$IsValid'$42_TestInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestInvariants_R| s)))
 :qid |invariantsdefaultz3bpl.937:41|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestInvariants_S) ) (! (= (|$IsValid'$42_TestInvariants_S'| s@@0) (|$IsValid'u64'| (|$y#$42_TestInvariants_S| s@@0)))
 :qid |invariantsdefaultz3bpl.950:41|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestInvariants_S'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestInvariants_T) ) (! (= (|$IsValid'$42_TestInvariants_T'| s@@1) (|$IsValid'u64'| (|$x#$42_TestInvariants_T| s@@1)))
 :qid |invariantsdefaultz3bpl.963:41|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestInvariants_T'| s@@1))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |invariantsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |invariantsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |invariantsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |invariantsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |invariantsdefaultz3bpl.275:54|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |invariantsdefaultz3bpl.73:19|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |invariantsdefaultz3bpl.82:30|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |invariantsdefaultz3bpl.63:20|
 :skolemid |34|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () T@$42_TestInvariants_R)
(push 1)
(set-info :boogie-vc-id $42_TestInvariants_invalid_R_pack$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 22380) (let ((anon0$1_correct  (=> (and (|$IsValid'u64'| 1) (= $t1@0 ($42_TestInvariants_R 1))) (and (=> (= (ControlFlow 0 18658) (- 0 22426)) (> (|$x#$42_TestInvariants_R| $t1@0) 1)) (=> (> (|$x#$42_TestInvariants_R| $t1@0) 1) (=> (and (= $t1@0 $t1@0) (= (ControlFlow 0 18658) (- 0 22445))) (= (|$x#$42_TestInvariants_R| $t1@0) 1)))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 22380) 18658) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 22380)))
(get-value ((ControlFlow 0 18658)))
(assert (not (= (ControlFlow 0 18658) (- 22426))))
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
(declare-datatypes ((T@$42_TestInvariants_T 0)) ((($42_TestInvariants_T (|$x#$42_TestInvariants_T| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_S 0)) ((($42_TestInvariants_S (|$y#$42_TestInvariants_S| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_R 0)) ((($42_TestInvariants_R (|$x#$42_TestInvariants_R| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_16120 0)) ((($Mutation_16120 (|l#$Mutation_16120| T@$Location) (|p#$Mutation_16120| T@Vec_2977) (|v#$Mutation_16120| T@$42_TestInvariants_S) ) ) ))
(declare-datatypes ((T@$Mutation_16078 0)) ((($Mutation_16078 (|l#$Mutation_16078| T@$Location) (|p#$Mutation_16078| T@Vec_2977) (|v#$Mutation_16078| T@$42_TestInvariants_T) ) ) ))
(declare-datatypes ((T@$Mutation_13170 0)) ((($Mutation_13170 (|l#$Mutation_13170| T@$Location) (|p#$Mutation_13170| T@Vec_2977) (|v#$Mutation_13170| T@$42_TestInvariants_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10887 0)) ((($Mutation_10887 (|l#$Mutation_10887| T@$Location) (|p#$Mutation_10887| T@Vec_2977) (|v#$Mutation_10887| T@Vec_2977) ) ) ))
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
(declare-sort |T@[Int]Bool| 0)
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
(declare-fun |$IsValid'$42_TestInvariants_R'| (T@$42_TestInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestInvariants_S'| (T@$42_TestInvariants_S) Bool)
(declare-fun |$IsValid'$42_TestInvariants_T'| (T@$42_TestInvariants_T) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |invariantsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |invariantsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |invariantsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |invariantsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |invariantsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |invariantsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |invariantsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |invariantsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |invariantsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |invariantsdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |invariantsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |invariantsdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |invariantsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |invariantsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |invariantsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |invariantsdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |invariantsdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |invariantsdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |invariantsdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestInvariants_R) ) (! (= (|$IsValid'$42_TestInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestInvariants_R| s)))
 :qid |invariantsdefaultz3bpl.937:41|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestInvariants_S) ) (! (= (|$IsValid'$42_TestInvariants_S'| s@@0) (|$IsValid'u64'| (|$y#$42_TestInvariants_S| s@@0)))
 :qid |invariantsdefaultz3bpl.950:41|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestInvariants_S'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestInvariants_T) ) (! (= (|$IsValid'$42_TestInvariants_T'| s@@1) (|$IsValid'u64'| (|$x#$42_TestInvariants_T| s@@1)))
 :qid |invariantsdefaultz3bpl.963:41|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestInvariants_T'| s@@1))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |invariantsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |invariantsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |invariantsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |invariantsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |invariantsdefaultz3bpl.275:54|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |invariantsdefaultz3bpl.73:19|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |invariantsdefaultz3bpl.82:30|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |invariantsdefaultz3bpl.63:20|
 :skolemid |34|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () T@$42_TestInvariants_R)
(declare-fun $t3@0 () T@$Mutation_13170)
(declare-fun MapConstVec_3206 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_3206 () Int)
(declare-fun |$temp_0'$42_TestInvariants_R'@0| () T@$42_TestInvariants_R)
(declare-fun $t5@0 () T@$42_TestInvariants_R)
(declare-fun $t3@1 () T@$Mutation_13170)
(declare-fun $t1@1 () T@$42_TestInvariants_R)
(declare-fun $t0 () T@$Mutation_13170)
(declare-fun $t3 () T@$Mutation_13170)
(push 1)
(set-info :boogie-vc-id $42_TestInvariants_invalid_R_update$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 22477) (let ((anon0$1_correct  (=> (and (|$IsValid'u64'| 3) (= $t1@0 ($42_TestInvariants_R 3))) (and (=> (= (ControlFlow 0 18852) (- 0 22549)) (> (|$x#$42_TestInvariants_R| $t1@0) 1)) (=> (> (|$x#$42_TestInvariants_R| $t1@0) 1) (=> (and (= $t1@0 $t1@0) (= $t3@0 ($Mutation_13170 ($Local 1) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) $t1@0))) (=> (and (and (= |$temp_0'$42_TestInvariants_R'@0| (|v#$Mutation_13170| $t3@0)) (= |$temp_0'$42_TestInvariants_R'@0| |$temp_0'$42_TestInvariants_R'@0|)) (and (|$IsValid'u64'| 4) (= $t5@0 ($42_TestInvariants_R 4)))) (and (=> (= (ControlFlow 0 18852) (- 0 22615)) (> (|$x#$42_TestInvariants_R| $t5@0) 1)) (=> (> (|$x#$42_TestInvariants_R| $t5@0) 1) (=> (= $t3@1 ($Mutation_13170 (|l#$Mutation_13170| $t3@0) (|p#$Mutation_13170| $t3@0) $t5@0)) (and (=> (= (ControlFlow 0 18852) (- 0 22636)) (> (|$x#$42_TestInvariants_R| (|v#$Mutation_13170| $t3@1)) 1)) (=> (> (|$x#$42_TestInvariants_R| (|v#$Mutation_13170| $t3@1)) 1) (=> (= $t1@1 (|v#$Mutation_13170| $t3@1)) (=> (and (= $t1@1 $t1@1) (= (ControlFlow 0 18852) (- 0 22671))) (= (|$x#$42_TestInvariants_R| $t1@1) 4)))))))))))))))
(let ((anon0_correct  (=> (= (|l#Vec_2977| (|p#$Mutation_13170| $t0)) 0) (=> (and (= (|l#Vec_2977| (|p#$Mutation_13170| $t3)) 0) (= (ControlFlow 0 18732) 18852)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 22477) 18732) anon0_correct)))
PreconditionGeneratedEntry_correct))))
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
(declare-datatypes ((T@$42_TestInvariants_T 0)) ((($42_TestInvariants_T (|$x#$42_TestInvariants_T| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_S 0)) ((($42_TestInvariants_S (|$y#$42_TestInvariants_S| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_R 0)) ((($42_TestInvariants_R (|$x#$42_TestInvariants_R| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_16120 0)) ((($Mutation_16120 (|l#$Mutation_16120| T@$Location) (|p#$Mutation_16120| T@Vec_2977) (|v#$Mutation_16120| T@$42_TestInvariants_S) ) ) ))
(declare-datatypes ((T@$Mutation_16078 0)) ((($Mutation_16078 (|l#$Mutation_16078| T@$Location) (|p#$Mutation_16078| T@Vec_2977) (|v#$Mutation_16078| T@$42_TestInvariants_T) ) ) ))
(declare-datatypes ((T@$Mutation_13170 0)) ((($Mutation_13170 (|l#$Mutation_13170| T@$Location) (|p#$Mutation_13170| T@Vec_2977) (|v#$Mutation_13170| T@$42_TestInvariants_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10887 0)) ((($Mutation_10887 (|l#$Mutation_10887| T@$Location) (|p#$Mutation_10887| T@Vec_2977) (|v#$Mutation_10887| T@Vec_2977) ) ) ))
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
(declare-sort |T@[Int]Bool| 0)
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
(declare-fun |$IsValid'$42_TestInvariants_R'| (T@$42_TestInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestInvariants_S'| (T@$42_TestInvariants_S) Bool)
(declare-fun |$IsValid'$42_TestInvariants_T'| (T@$42_TestInvariants_T) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |invariantsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |invariantsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |invariantsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |invariantsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |invariantsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |invariantsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |invariantsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |invariantsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |invariantsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |invariantsdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |invariantsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |invariantsdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |invariantsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |invariantsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |invariantsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |invariantsdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |invariantsdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |invariantsdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |invariantsdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestInvariants_R) ) (! (= (|$IsValid'$42_TestInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestInvariants_R| s)))
 :qid |invariantsdefaultz3bpl.937:41|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestInvariants_S) ) (! (= (|$IsValid'$42_TestInvariants_S'| s@@0) (|$IsValid'u64'| (|$y#$42_TestInvariants_S| s@@0)))
 :qid |invariantsdefaultz3bpl.950:41|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestInvariants_S'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestInvariants_T) ) (! (= (|$IsValid'$42_TestInvariants_T'| s@@1) (|$IsValid'u64'| (|$x#$42_TestInvariants_T| s@@1)))
 :qid |invariantsdefaultz3bpl.963:41|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestInvariants_T'| s@@1))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |invariantsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |invariantsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |invariantsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |invariantsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |invariantsdefaultz3bpl.275:54|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |invariantsdefaultz3bpl.73:19|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |invariantsdefaultz3bpl.82:30|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |invariantsdefaultz3bpl.63:20|
 :skolemid |34|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t9@0 () T@$42_TestInvariants_R)
(declare-fun $t1@1 () T@$Mutation_13170)
(declare-fun $t1@0 () T@$Mutation_13170)
(declare-fun $t10@0 () T@$42_TestInvariants_R)
(declare-fun $t2@1 () T@$42_TestInvariants_R)
(declare-fun _$t0 () Bool)
(declare-fun $t7@0 () T@$Mutation_13170)
(declare-fun MapConstVec_3206 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_3206 () Int)
(declare-fun $t3@0 () T@$42_TestInvariants_R)
(declare-fun |$temp_0'$42_TestInvariants_R'@1| () T@$42_TestInvariants_R)
(declare-fun $t6@0 () T@$Mutation_13170)
(declare-fun $t2@0 () T@$42_TestInvariants_R)
(declare-fun |$temp_0'$42_TestInvariants_R'@0| () T@$42_TestInvariants_R)
(declare-fun $t1 () T@$Mutation_13170)
(declare-fun $t6 () T@$Mutation_13170)
(declare-fun $t7 () T@$Mutation_13170)
(push 1)
(set-info :boogie-vc-id $42_TestInvariants_invalid_R_update_branching$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 22685) (let ((L3_correct  (=> (and (|$IsValid'u64'| 4) (= $t9@0 ($42_TestInvariants_R 4))) (and (=> (= (ControlFlow 0 19151) (- 0 22965)) (> (|$x#$42_TestInvariants_R| $t9@0) 1)) (=> (> (|$x#$42_TestInvariants_R| $t9@0) 1) (=> (and (= $t1@1 ($Mutation_13170 (|l#$Mutation_13170| $t1@0) (|p#$Mutation_13170| $t1@0) $t9@0)) (= $t10@0 (|v#$Mutation_13170| $t1@1))) (and (=> (= (ControlFlow 0 19151) (- 0 22998)) (> (|$x#$42_TestInvariants_R| (|v#$Mutation_13170| $t1@1)) 1)) (=> (> (|$x#$42_TestInvariants_R| (|v#$Mutation_13170| $t1@1)) 1) (=> (and (= $t2@1 (|v#$Mutation_13170| $t1@1)) (= (ControlFlow 0 19151) (- 0 23020))) (> (|$x#$42_TestInvariants_R| (|v#$Mutation_13170| $t1@1)) 1))))))))))
(let ((anon5_Else_correct  (=> (and (not _$t0) (= $t7@0 ($Mutation_13170 ($Local 3) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) $t3@0))) (and (=> (= (ControlFlow 0 19075) (- 0 22911)) (> (|$x#$42_TestInvariants_R| (|v#$Mutation_13170| $t7@0)) 1)) (=> (> (|$x#$42_TestInvariants_R| (|v#$Mutation_13170| $t7@0)) 1) (=> (and (and (= |$temp_0'$42_TestInvariants_R'@1| (|v#$Mutation_13170| $t7@0)) (= |$temp_0'$42_TestInvariants_R'@1| |$temp_0'$42_TestInvariants_R'@1|)) (and (= $t1@0 $t7@0) (= (ControlFlow 0 19075) 19151))) L3_correct))))))
(let ((anon5_Then_correct  (=> (and _$t0 (= $t6@0 ($Mutation_13170 ($Local 2) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) $t2@0))) (and (=> (= (ControlFlow 0 19189) (- 0 22864)) (> (|$x#$42_TestInvariants_R| (|v#$Mutation_13170| $t6@0)) 1)) (=> (> (|$x#$42_TestInvariants_R| (|v#$Mutation_13170| $t6@0)) 1) (=> (and (and (= |$temp_0'$42_TestInvariants_R'@0| (|v#$Mutation_13170| $t6@0)) (= |$temp_0'$42_TestInvariants_R'@0| |$temp_0'$42_TestInvariants_R'@0|)) (and (= $t1@0 $t6@0) (= (ControlFlow 0 19189) 19151))) L3_correct))))))
(let ((anon0$1_correct  (=> (= _$t0 _$t0) (=> (and (|$IsValid'u64'| 5) (= $t2@0 ($42_TestInvariants_R 5))) (and (=> (= (ControlFlow 0 19033) (- 0 22793)) (> (|$x#$42_TestInvariants_R| $t2@0) 1)) (=> (> (|$x#$42_TestInvariants_R| $t2@0) 1) (=> (= $t2@0 $t2@0) (=> (and (|$IsValid'u64'| 3) (= $t3@0 ($42_TestInvariants_R 3))) (and (=> (= (ControlFlow 0 19033) (- 0 22827)) (> (|$x#$42_TestInvariants_R| $t3@0) 1)) (=> (> (|$x#$42_TestInvariants_R| $t3@0) 1) (=> (= $t3@0 $t3@0) (and (=> (= (ControlFlow 0 19033) 19189) anon5_Then_correct) (=> (= (ControlFlow 0 19033) 19075) anon5_Else_correct)))))))))))))
(let ((anon0_correct  (=> (and (and (= (|l#Vec_2977| (|p#$Mutation_13170| $t1)) 0) (= (|l#Vec_2977| (|p#$Mutation_13170| $t6)) 0)) (and (= (|l#Vec_2977| (|p#$Mutation_13170| $t7)) 0) (= (ControlFlow 0 18961) 19033))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 22685) 18961) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
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
(declare-datatypes ((T@$42_TestInvariants_T 0)) ((($42_TestInvariants_T (|$x#$42_TestInvariants_T| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_S 0)) ((($42_TestInvariants_S (|$y#$42_TestInvariants_S| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_R 0)) ((($42_TestInvariants_R (|$x#$42_TestInvariants_R| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_16120 0)) ((($Mutation_16120 (|l#$Mutation_16120| T@$Location) (|p#$Mutation_16120| T@Vec_2977) (|v#$Mutation_16120| T@$42_TestInvariants_S) ) ) ))
(declare-datatypes ((T@$Mutation_16078 0)) ((($Mutation_16078 (|l#$Mutation_16078| T@$Location) (|p#$Mutation_16078| T@Vec_2977) (|v#$Mutation_16078| T@$42_TestInvariants_T) ) ) ))
(declare-datatypes ((T@$Mutation_13170 0)) ((($Mutation_13170 (|l#$Mutation_13170| T@$Location) (|p#$Mutation_13170| T@Vec_2977) (|v#$Mutation_13170| T@$42_TestInvariants_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10887 0)) ((($Mutation_10887 (|l#$Mutation_10887| T@$Location) (|p#$Mutation_10887| T@Vec_2977) (|v#$Mutation_10887| T@Vec_2977) ) ) ))
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
(declare-sort |T@[Int]Bool| 0)
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
(declare-fun |$IsValid'$42_TestInvariants_R'| (T@$42_TestInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestInvariants_S'| (T@$42_TestInvariants_S) Bool)
(declare-fun |$IsValid'$42_TestInvariants_T'| (T@$42_TestInvariants_T) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |invariantsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |invariantsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |invariantsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |invariantsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |invariantsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |invariantsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |invariantsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |invariantsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |invariantsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |invariantsdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |invariantsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |invariantsdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |invariantsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |invariantsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |invariantsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |invariantsdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |invariantsdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |invariantsdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |invariantsdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestInvariants_R) ) (! (= (|$IsValid'$42_TestInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestInvariants_R| s)))
 :qid |invariantsdefaultz3bpl.937:41|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestInvariants_S) ) (! (= (|$IsValid'$42_TestInvariants_S'| s@@0) (|$IsValid'u64'| (|$y#$42_TestInvariants_S| s@@0)))
 :qid |invariantsdefaultz3bpl.950:41|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestInvariants_S'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestInvariants_T) ) (! (= (|$IsValid'$42_TestInvariants_T'| s@@1) (|$IsValid'u64'| (|$x#$42_TestInvariants_T| s@@1)))
 :qid |invariantsdefaultz3bpl.963:41|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestInvariants_T'| s@@1))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |invariantsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |invariantsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |invariantsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |invariantsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |invariantsdefaultz3bpl.275:54|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |invariantsdefaultz3bpl.73:19|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |invariantsdefaultz3bpl.82:30|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |invariantsdefaultz3bpl.63:20|
 :skolemid |34|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t2@1 () T@$Mutation_13170)
(declare-fun $t2@0 () T@$Mutation_13170)
(declare-fun inline$$42_TestInvariants_update_helper$0$$t0@1 () T@$Mutation_3601)
(declare-fun |inline$$42_TestInvariants_update_helper$0$$temp_0'u64'@1| () Int)
(declare-fun $t3@0 () T@$Mutation_3601)
(declare-fun |inline$$42_TestInvariants_update_helper$0$$temp_0'u64'@2| () Int)
(declare-fun $t0@0 () T@$42_TestInvariants_R)
(declare-fun MapConstVec_3206 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_3206 () Int)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t2 () T@$Mutation_13170)
(declare-fun $t3 () T@$Mutation_3601)
(push 1)
(set-info :boogie-vc-id $42_TestInvariants_invalid_R_update_indirectly$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 23057) (let ((anon3_Else_correct  (=> (not false) (=> (and (= $t2@1 ($Mutation_13170 (|l#$Mutation_13170| $t2@0) (|p#$Mutation_13170| $t2@0) ($42_TestInvariants_R (|v#$Mutation_3601| inline$$42_TestInvariants_update_helper$0$$t0@1)))) (= (ControlFlow 0 19556) (- 0 23306))) (> (|$x#$42_TestInvariants_R| (|v#$Mutation_13170| $t2@1)) 1)))))
(let ((anon3_Then_correct true))
(let ((inline$$42_TestInvariants_update_helper$0$anon0_correct  (=> (and (= |inline$$42_TestInvariants_update_helper$0$$temp_0'u64'@1| (|v#$Mutation_3601| $t3@0)) (= |inline$$42_TestInvariants_update_helper$0$$temp_0'u64'@1| |inline$$42_TestInvariants_update_helper$0$$temp_0'u64'@1|)) (=> (and (and (|$IsValid'u64'| 4) (= inline$$42_TestInvariants_update_helper$0$$t0@1 ($Mutation_3601 (|l#$Mutation_3601| $t3@0) (|p#$Mutation_3601| $t3@0) 4))) (and (= |inline$$42_TestInvariants_update_helper$0$$temp_0'u64'@2| (|v#$Mutation_3601| inline$$42_TestInvariants_update_helper$0$$t0@1)) (= |inline$$42_TestInvariants_update_helper$0$$temp_0'u64'@2| |inline$$42_TestInvariants_update_helper$0$$temp_0'u64'@2|))) (and (=> (= (ControlFlow 0 19498) 19574) anon3_Then_correct) (=> (= (ControlFlow 0 19498) 19556) anon3_Else_correct))))))
(let ((anon0$1_correct  (=> (and (|$IsValid'u64'| 3) (= $t0@0 ($42_TestInvariants_R 3))) (and (=> (= (ControlFlow 0 19504) (- 0 23147)) (> (|$x#$42_TestInvariants_R| $t0@0) 1)) (=> (> (|$x#$42_TestInvariants_R| $t0@0) 1) (=> (and (and (= $t0@0 $t0@0) (= $t2@0 ($Mutation_13170 ($Local 0) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) $t0@0))) (and (= $t3@0 ($Mutation_3601 (|l#$Mutation_13170| $t2@0) (let ((l (|l#Vec_2977| (|p#$Mutation_13170| $t2@0))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_13170| $t2@0)) l 0) (+ l 1))) (|$x#$42_TestInvariants_R| (|v#$Mutation_13170| $t2@0)))) (= (ControlFlow 0 19504) 19498))) inline$$42_TestInvariants_update_helper$0$anon0_correct))))))
(let ((anon0_correct  (=> (= (|l#Vec_2977| (|p#$Mutation_13170| $t2)) 0) (=> (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t3)) 0) (= (ControlFlow 0 19313) 19504)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 23057) 19313) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
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
(declare-datatypes ((T@$42_TestInvariants_T 0)) ((($42_TestInvariants_T (|$x#$42_TestInvariants_T| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_S 0)) ((($42_TestInvariants_S (|$y#$42_TestInvariants_S| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_R 0)) ((($42_TestInvariants_R (|$x#$42_TestInvariants_R| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_16120 0)) ((($Mutation_16120 (|l#$Mutation_16120| T@$Location) (|p#$Mutation_16120| T@Vec_2977) (|v#$Mutation_16120| T@$42_TestInvariants_S) ) ) ))
(declare-datatypes ((T@$Mutation_16078 0)) ((($Mutation_16078 (|l#$Mutation_16078| T@$Location) (|p#$Mutation_16078| T@Vec_2977) (|v#$Mutation_16078| T@$42_TestInvariants_T) ) ) ))
(declare-datatypes ((T@$Mutation_13170 0)) ((($Mutation_13170 (|l#$Mutation_13170| T@$Location) (|p#$Mutation_13170| T@Vec_2977) (|v#$Mutation_13170| T@$42_TestInvariants_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10887 0)) ((($Mutation_10887 (|l#$Mutation_10887| T@$Location) (|p#$Mutation_10887| T@Vec_2977) (|v#$Mutation_10887| T@Vec_2977) ) ) ))
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
(declare-sort |T@[Int]Bool| 0)
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
(declare-fun |$IsValid'$42_TestInvariants_R'| (T@$42_TestInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestInvariants_S'| (T@$42_TestInvariants_S) Bool)
(declare-fun |$IsValid'$42_TestInvariants_T'| (T@$42_TestInvariants_T) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |invariantsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |invariantsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |invariantsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |invariantsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |invariantsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |invariantsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |invariantsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |invariantsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |invariantsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |invariantsdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |invariantsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |invariantsdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |invariantsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |invariantsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |invariantsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |invariantsdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |invariantsdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |invariantsdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |invariantsdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestInvariants_R) ) (! (= (|$IsValid'$42_TestInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestInvariants_R| s)))
 :qid |invariantsdefaultz3bpl.937:41|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestInvariants_S) ) (! (= (|$IsValid'$42_TestInvariants_S'| s@@0) (|$IsValid'u64'| (|$y#$42_TestInvariants_S| s@@0)))
 :qid |invariantsdefaultz3bpl.950:41|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestInvariants_S'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestInvariants_T) ) (! (= (|$IsValid'$42_TestInvariants_T'| s@@1) (|$IsValid'u64'| (|$x#$42_TestInvariants_T| s@@1)))
 :qid |invariantsdefaultz3bpl.963:41|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestInvariants_T'| s@@1))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |invariantsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |invariantsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |invariantsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |invariantsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |invariantsdefaultz3bpl.275:54|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |invariantsdefaultz3bpl.73:19|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |invariantsdefaultz3bpl.82:30|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |invariantsdefaultz3bpl.63:20|
 :skolemid |34|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () T@$42_TestInvariants_R)
(declare-fun $t3@0 () T@$Mutation_13170)
(declare-fun MapConstVec_3206 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_3206 () Int)
(declare-fun $t4@0 () T@$Mutation_3601)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun $t4@1 () T@$Mutation_3601)
(declare-fun $t3@1 () T@$Mutation_13170)
(declare-fun $t1@1 () T@$42_TestInvariants_R)
(declare-fun $t0 () T@$Mutation_3601)
(declare-fun $t3 () T@$Mutation_13170)
(declare-fun $t4 () T@$Mutation_3601)
(push 1)
(set-info :boogie-vc-id $42_TestInvariants_invalid_R_update_ref$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 23345) (let ((anon0$1_correct  (=> (and (|$IsValid'u64'| 3) (= $t1@0 ($42_TestInvariants_R 3))) (and (=> (= (ControlFlow 0 19824) (- 0 23425)) (> (|$x#$42_TestInvariants_R| $t1@0) 1)) (=> (> (|$x#$42_TestInvariants_R| $t1@0) 1) (=> (and (and (and (= $t1@0 $t1@0) (= $t3@0 ($Mutation_13170 ($Local 1) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) $t1@0))) (and (= $t4@0 ($Mutation_3601 (|l#$Mutation_13170| $t3@0) (let ((l (|l#Vec_2977| (|p#$Mutation_13170| $t3@0))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_13170| $t3@0)) l 0) (+ l 1))) (|$x#$42_TestInvariants_R| (|v#$Mutation_13170| $t3@0)))) (= |$temp_0'u64'@0| (|v#$Mutation_3601| $t4@0)))) (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (|$IsValid'u64'| 4)) (and (= $t4@1 ($Mutation_3601 (|l#$Mutation_3601| $t4@0) (|p#$Mutation_3601| $t4@0) 4)) (= $t3@1 ($Mutation_13170 (|l#$Mutation_13170| $t3@0) (|p#$Mutation_13170| $t3@0) ($42_TestInvariants_R (|v#$Mutation_3601| $t4@1))))))) (and (=> (= (ControlFlow 0 19824) (- 0 23525)) (> (|$x#$42_TestInvariants_R| (|v#$Mutation_13170| $t3@1)) 1)) (=> (> (|$x#$42_TestInvariants_R| (|v#$Mutation_13170| $t3@1)) 1) (=> (= $t1@1 (|v#$Mutation_13170| $t3@1)) (=> (and (= $t1@1 $t1@1) (= (ControlFlow 0 19824) (- 0 23560))) (= (|$x#$42_TestInvariants_R| $t1@1) 4)))))))))))
(let ((anon0_correct  (=> (and (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t0)) 0) (= (|l#Vec_2977| (|p#$Mutation_13170| $t3)) 0)) (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t4)) 0) (= (ControlFlow 0 19692) 19824))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 23345) 19692) anon0_correct)))
PreconditionGeneratedEntry_correct))))
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
(declare-datatypes ((T@$42_TestInvariants_T 0)) ((($42_TestInvariants_T (|$x#$42_TestInvariants_T| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_S 0)) ((($42_TestInvariants_S (|$y#$42_TestInvariants_S| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_R 0)) ((($42_TestInvariants_R (|$x#$42_TestInvariants_R| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_16120 0)) ((($Mutation_16120 (|l#$Mutation_16120| T@$Location) (|p#$Mutation_16120| T@Vec_2977) (|v#$Mutation_16120| T@$42_TestInvariants_S) ) ) ))
(declare-datatypes ((T@$Mutation_16078 0)) ((($Mutation_16078 (|l#$Mutation_16078| T@$Location) (|p#$Mutation_16078| T@Vec_2977) (|v#$Mutation_16078| T@$42_TestInvariants_T) ) ) ))
(declare-datatypes ((T@$Mutation_13170 0)) ((($Mutation_13170 (|l#$Mutation_13170| T@$Location) (|p#$Mutation_13170| T@Vec_2977) (|v#$Mutation_13170| T@$42_TestInvariants_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10887 0)) ((($Mutation_10887 (|l#$Mutation_10887| T@$Location) (|p#$Mutation_10887| T@Vec_2977) (|v#$Mutation_10887| T@Vec_2977) ) ) ))
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
(declare-sort |T@[Int]Bool| 0)
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
(declare-fun |$IsValid'$42_TestInvariants_R'| (T@$42_TestInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestInvariants_S'| (T@$42_TestInvariants_S) Bool)
(declare-fun |$IsValid'$42_TestInvariants_T'| (T@$42_TestInvariants_T) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |invariantsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |invariantsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |invariantsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |invariantsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |invariantsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |invariantsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |invariantsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |invariantsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |invariantsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |invariantsdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |invariantsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |invariantsdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |invariantsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |invariantsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |invariantsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |invariantsdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |invariantsdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |invariantsdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |invariantsdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestInvariants_R) ) (! (= (|$IsValid'$42_TestInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestInvariants_R| s)))
 :qid |invariantsdefaultz3bpl.937:41|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestInvariants_S) ) (! (= (|$IsValid'$42_TestInvariants_S'| s@@0) (|$IsValid'u64'| (|$y#$42_TestInvariants_S| s@@0)))
 :qid |invariantsdefaultz3bpl.950:41|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestInvariants_S'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestInvariants_T) ) (! (= (|$IsValid'$42_TestInvariants_T'| s@@1) (|$IsValid'u64'| (|$x#$42_TestInvariants_T| s@@1)))
 :qid |invariantsdefaultz3bpl.963:41|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestInvariants_T'| s@@1))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |invariantsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |invariantsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |invariantsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |invariantsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |invariantsdefaultz3bpl.275:54|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |invariantsdefaultz3bpl.73:19|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |invariantsdefaultz3bpl.82:30|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |invariantsdefaultz3bpl.63:20|
 :skolemid |34|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@0 () T@$42_TestInvariants_R)
(declare-fun $t4@0 () T@$Mutation_13170)
(declare-fun MapConstVec_3206 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_3206 () Int)
(declare-fun |$temp_0'$42_TestInvariants_R'@0| () T@$42_TestInvariants_R)
(declare-fun $t5@0 () T@$Mutation_3601)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun $t5@1 () T@$Mutation_3601)
(declare-fun $t4@1 () T@$Mutation_13170)
(declare-fun $t0@1 () T@$42_TestInvariants_R)
(declare-fun $t7@0 () T@$Mutation_13170)
(declare-fun |$temp_0'$42_TestInvariants_R'@1| () T@$42_TestInvariants_R)
(declare-fun $t8@0 () T@$Mutation_3601)
(declare-fun |$temp_0'u64'@1| () Int)
(declare-fun $t8@1 () T@$Mutation_3601)
(declare-fun $t7@1 () T@$Mutation_13170)
(declare-fun $t1 () T@$Mutation_13170)
(declare-fun $t2 () T@$Mutation_3601)
(declare-fun $t4 () T@$Mutation_13170)
(declare-fun $t5 () T@$Mutation_3601)
(declare-fun $t7 () T@$Mutation_13170)
(declare-fun $t8 () T@$Mutation_3601)
(push 1)
(set-info :boogie-vc-id $42_TestInvariants_lifetime_invalid_R$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 23573) (let ((anon0$1_correct  (=> (and (|$IsValid'u64'| 3) (= $t0@0 ($42_TestInvariants_R 3))) (and (=> (= (ControlFlow 0 20173) (- 0 23689)) (> (|$x#$42_TestInvariants_R| $t0@0) 1)) (=> (> (|$x#$42_TestInvariants_R| $t0@0) 1) (=> (and (= $t0@0 $t0@0) (= $t4@0 ($Mutation_13170 ($Local 0) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) $t0@0))) (=> (and (and (and (= |$temp_0'$42_TestInvariants_R'@0| (|v#$Mutation_13170| $t4@0)) (= |$temp_0'$42_TestInvariants_R'@0| |$temp_0'$42_TestInvariants_R'@0|)) (and (= $t5@0 ($Mutation_3601 (|l#$Mutation_13170| $t4@0) (let ((l (|l#Vec_2977| (|p#$Mutation_13170| $t4@0))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_13170| $t4@0)) l 0) (+ l 1))) (|$x#$42_TestInvariants_R| (|v#$Mutation_13170| $t4@0)))) (= |$temp_0'u64'@0| (|v#$Mutation_3601| $t5@0)))) (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (|$IsValid'u64'| 0)) (and (= $t5@1 ($Mutation_3601 (|l#$Mutation_3601| $t5@0) (|p#$Mutation_3601| $t5@0) 0)) (= $t4@1 ($Mutation_13170 (|l#$Mutation_13170| $t4@0) (|p#$Mutation_13170| $t4@0) ($42_TestInvariants_R (|v#$Mutation_3601| $t5@1))))))) (and (=> (= (ControlFlow 0 20173) (- 0 23806)) (> (|$x#$42_TestInvariants_R| (|v#$Mutation_13170| $t4@1)) 1)) (=> (> (|$x#$42_TestInvariants_R| (|v#$Mutation_13170| $t4@1)) 1) (=> (= $t0@1 (|v#$Mutation_13170| $t4@1)) (=> (and (= $t7@0 ($Mutation_13170 ($Local 0) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) $t0@1)) (= |$temp_0'$42_TestInvariants_R'@1| (|v#$Mutation_13170| $t7@0))) (=> (and (and (and (= |$temp_0'$42_TestInvariants_R'@1| |$temp_0'$42_TestInvariants_R'@1|) (= $t8@0 ($Mutation_3601 (|l#$Mutation_13170| $t7@0) (let ((l@@0 (|l#Vec_2977| (|p#$Mutation_13170| $t7@0))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_13170| $t7@0)) l@@0 0) (+ l@@0 1))) (|$x#$42_TestInvariants_R| (|v#$Mutation_13170| $t7@0))))) (and (= |$temp_0'u64'@1| (|v#$Mutation_3601| $t8@0)) (= |$temp_0'u64'@1| |$temp_0'u64'@1|))) (and (and (|$IsValid'u64'| 2) (= $t8@1 ($Mutation_3601 (|l#$Mutation_3601| $t8@0) (|p#$Mutation_3601| $t8@0) 2))) (and (= $t7@1 ($Mutation_13170 (|l#$Mutation_13170| $t7@0) (|p#$Mutation_13170| $t7@0) ($42_TestInvariants_R (|v#$Mutation_3601| $t8@1)))) (= (ControlFlow 0 20173) (- 0 23929))))) (> (|$x#$42_TestInvariants_R| (|v#$Mutation_13170| $t7@1)) 1)))))))))))))
(let ((anon0_correct  (=> (= (|l#Vec_2977| (|p#$Mutation_13170| $t1)) 0) (=> (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t2)) 0) (= (|l#Vec_2977| (|p#$Mutation_13170| $t4)) 0)) (=> (and (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t5)) 0) (= (|l#Vec_2977| (|p#$Mutation_13170| $t7)) 0)) (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t8)) 0) (= (ControlFlow 0 19949) 20173))) anon0$1_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 23573) 19949) anon0_correct)))
PreconditionGeneratedEntry_correct))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 23573)))
(get-value ((ControlFlow 0 19949)))
(get-value ((ControlFlow 0 20173)))
(assert (not (= (ControlFlow 0 20173) (- 23806))))
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
(declare-datatypes ((T@$42_TestInvariants_T 0)) ((($42_TestInvariants_T (|$x#$42_TestInvariants_T| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_S 0)) ((($42_TestInvariants_S (|$y#$42_TestInvariants_S| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_R 0)) ((($42_TestInvariants_R (|$x#$42_TestInvariants_R| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_16120 0)) ((($Mutation_16120 (|l#$Mutation_16120| T@$Location) (|p#$Mutation_16120| T@Vec_2977) (|v#$Mutation_16120| T@$42_TestInvariants_S) ) ) ))
(declare-datatypes ((T@$Mutation_16078 0)) ((($Mutation_16078 (|l#$Mutation_16078| T@$Location) (|p#$Mutation_16078| T@Vec_2977) (|v#$Mutation_16078| T@$42_TestInvariants_T) ) ) ))
(declare-datatypes ((T@$Mutation_13170 0)) ((($Mutation_13170 (|l#$Mutation_13170| T@$Location) (|p#$Mutation_13170| T@Vec_2977) (|v#$Mutation_13170| T@$42_TestInvariants_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10887 0)) ((($Mutation_10887 (|l#$Mutation_10887| T@$Location) (|p#$Mutation_10887| T@Vec_2977) (|v#$Mutation_10887| T@Vec_2977) ) ) ))
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
(declare-sort |T@[Int]Bool| 0)
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
(declare-fun |$IsValid'$42_TestInvariants_R'| (T@$42_TestInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestInvariants_S'| (T@$42_TestInvariants_S) Bool)
(declare-fun |$IsValid'$42_TestInvariants_T'| (T@$42_TestInvariants_T) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |invariantsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |invariantsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |invariantsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |invariantsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |invariantsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |invariantsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |invariantsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |invariantsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |invariantsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |invariantsdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |invariantsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |invariantsdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |invariantsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |invariantsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |invariantsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |invariantsdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |invariantsdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |invariantsdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |invariantsdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestInvariants_R) ) (! (= (|$IsValid'$42_TestInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestInvariants_R| s)))
 :qid |invariantsdefaultz3bpl.937:41|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestInvariants_S) ) (! (= (|$IsValid'$42_TestInvariants_S'| s@@0) (|$IsValid'u64'| (|$y#$42_TestInvariants_S| s@@0)))
 :qid |invariantsdefaultz3bpl.950:41|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestInvariants_S'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestInvariants_T) ) (! (= (|$IsValid'$42_TestInvariants_T'| s@@1) (|$IsValid'u64'| (|$x#$42_TestInvariants_T| s@@1)))
 :qid |invariantsdefaultz3bpl.963:41|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestInvariants_T'| s@@1))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |invariantsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |invariantsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |invariantsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |invariantsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |invariantsdefaultz3bpl.275:54|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |invariantsdefaultz3bpl.73:19|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |invariantsdefaultz3bpl.82:30|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |invariantsdefaultz3bpl.63:20|
 :skolemid |34|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@0 () T@$42_TestInvariants_R)
(declare-fun $t4@0 () T@$Mutation_13170)
(declare-fun MapConstVec_3206 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_3206 () Int)
(declare-fun |$temp_0'$42_TestInvariants_R'@0| () T@$42_TestInvariants_R)
(declare-fun $t5@0 () T@$Mutation_3601)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun $t5@1 () T@$Mutation_3601)
(declare-fun $t5@2 () T@$Mutation_3601)
(declare-fun $t4@1 () T@$Mutation_13170)
(declare-fun $t0@1 () T@$42_TestInvariants_R)
(declare-fun $t8@0 () T@$Mutation_13170)
(declare-fun |$temp_0'$42_TestInvariants_R'@1| () T@$42_TestInvariants_R)
(declare-fun $t9@0 () T@$Mutation_3601)
(declare-fun |$temp_0'u64'@1| () Int)
(declare-fun $t9@1 () T@$Mutation_3601)
(declare-fun $t8@1 () T@$Mutation_13170)
(declare-fun $t1 () T@$Mutation_13170)
(declare-fun $t2 () T@$Mutation_3601)
(declare-fun $t4 () T@$Mutation_13170)
(declare-fun $t5 () T@$Mutation_3601)
(declare-fun $t8 () T@$Mutation_13170)
(declare-fun $t9 () T@$Mutation_3601)
(push 1)
(set-info :boogie-vc-id $42_TestInvariants_lifetime_invalid_R_2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 23967) (let ((anon0$1_correct  (=> (and (|$IsValid'u64'| 4) (= $t0@0 ($42_TestInvariants_R 4))) (and (=> (= (ControlFlow 0 20567) (- 0 24087)) (> (|$x#$42_TestInvariants_R| $t0@0) 1)) (=> (> (|$x#$42_TestInvariants_R| $t0@0) 1) (=> (and (and (= $t0@0 $t0@0) (= $t4@0 ($Mutation_13170 ($Local 0) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) $t0@0))) (and (= |$temp_0'$42_TestInvariants_R'@0| (|v#$Mutation_13170| $t4@0)) (= |$temp_0'$42_TestInvariants_R'@0| |$temp_0'$42_TestInvariants_R'@0|))) (=> (and (and (and (= $t5@0 ($Mutation_3601 (|l#$Mutation_13170| $t4@0) (let ((l (|l#Vec_2977| (|p#$Mutation_13170| $t4@0))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_13170| $t4@0)) l 0) (+ l 1))) (|$x#$42_TestInvariants_R| (|v#$Mutation_13170| $t4@0)))) (= |$temp_0'u64'@0| (|v#$Mutation_3601| $t5@0))) (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (|$IsValid'u64'| 0))) (and (and (= $t5@1 ($Mutation_3601 (|l#$Mutation_3601| $t5@0) (|p#$Mutation_3601| $t5@0) 0)) (|$IsValid'u64'| 2)) (and (= $t5@2 ($Mutation_3601 (|l#$Mutation_3601| $t5@1) (|p#$Mutation_3601| $t5@1) 2)) (= $t4@1 ($Mutation_13170 (|l#$Mutation_13170| $t4@0) (|p#$Mutation_13170| $t4@0) ($42_TestInvariants_R (|v#$Mutation_3601| $t5@2))))))) (and (=> (= (ControlFlow 0 20567) (- 0 24223)) (> (|$x#$42_TestInvariants_R| (|v#$Mutation_13170| $t4@1)) 1)) (=> (> (|$x#$42_TestInvariants_R| (|v#$Mutation_13170| $t4@1)) 1) (=> (= $t0@1 (|v#$Mutation_13170| $t4@1)) (=> (and (= $t8@0 ($Mutation_13170 ($Local 0) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) $t0@1)) (= |$temp_0'$42_TestInvariants_R'@1| (|v#$Mutation_13170| $t8@0))) (=> (and (and (and (= |$temp_0'$42_TestInvariants_R'@1| |$temp_0'$42_TestInvariants_R'@1|) (= $t9@0 ($Mutation_3601 (|l#$Mutation_13170| $t8@0) (let ((l@@0 (|l#Vec_2977| (|p#$Mutation_13170| $t8@0))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_13170| $t8@0)) l@@0 0) (+ l@@0 1))) (|$x#$42_TestInvariants_R| (|v#$Mutation_13170| $t8@0))))) (and (= |$temp_0'u64'@1| (|v#$Mutation_3601| $t9@0)) (= |$temp_0'u64'@1| |$temp_0'u64'@1|))) (and (and (|$IsValid'u64'| 3) (= $t9@1 ($Mutation_3601 (|l#$Mutation_3601| $t9@0) (|p#$Mutation_3601| $t9@0) 3))) (and (= $t8@1 ($Mutation_13170 (|l#$Mutation_13170| $t8@0) (|p#$Mutation_13170| $t8@0) ($42_TestInvariants_R (|v#$Mutation_3601| $t9@1)))) (= (ControlFlow 0 20567) (- 0 24346))))) (> (|$x#$42_TestInvariants_R| (|v#$Mutation_13170| $t8@1)) 1)))))))))))))
(let ((anon0_correct  (=> (= (|l#Vec_2977| (|p#$Mutation_13170| $t1)) 0) (=> (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t2)) 0) (= (|l#Vec_2977| (|p#$Mutation_13170| $t4)) 0)) (=> (and (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t5)) 0) (= (|l#Vec_2977| (|p#$Mutation_13170| $t8)) 0)) (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t9)) 0) (= (ControlFlow 0 20329) 20567))) anon0$1_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 23967) 20329) anon0_correct)))
PreconditionGeneratedEntry_correct))))
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
(declare-datatypes ((T@$42_TestInvariants_T 0)) ((($42_TestInvariants_T (|$x#$42_TestInvariants_T| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_S 0)) ((($42_TestInvariants_S (|$y#$42_TestInvariants_S| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_R 0)) ((($42_TestInvariants_R (|$x#$42_TestInvariants_R| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_16120 0)) ((($Mutation_16120 (|l#$Mutation_16120| T@$Location) (|p#$Mutation_16120| T@Vec_2977) (|v#$Mutation_16120| T@$42_TestInvariants_S) ) ) ))
(declare-datatypes ((T@$Mutation_16078 0)) ((($Mutation_16078 (|l#$Mutation_16078| T@$Location) (|p#$Mutation_16078| T@Vec_2977) (|v#$Mutation_16078| T@$42_TestInvariants_T) ) ) ))
(declare-datatypes ((T@$Mutation_13170 0)) ((($Mutation_13170 (|l#$Mutation_13170| T@$Location) (|p#$Mutation_13170| T@Vec_2977) (|v#$Mutation_13170| T@$42_TestInvariants_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10887 0)) ((($Mutation_10887 (|l#$Mutation_10887| T@$Location) (|p#$Mutation_10887| T@Vec_2977) (|v#$Mutation_10887| T@Vec_2977) ) ) ))
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
(declare-sort |T@[Int]Bool| 0)
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
(declare-fun |$IsValid'$42_TestInvariants_R'| (T@$42_TestInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestInvariants_S'| (T@$42_TestInvariants_S) Bool)
(declare-fun |$IsValid'$42_TestInvariants_T'| (T@$42_TestInvariants_T) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |invariantsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |invariantsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |invariantsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |invariantsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |invariantsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |invariantsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |invariantsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |invariantsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |invariantsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |invariantsdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |invariantsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |invariantsdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |invariantsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |invariantsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |invariantsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |invariantsdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |invariantsdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |invariantsdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |invariantsdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestInvariants_R) ) (! (= (|$IsValid'$42_TestInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestInvariants_R| s)))
 :qid |invariantsdefaultz3bpl.937:41|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestInvariants_S) ) (! (= (|$IsValid'$42_TestInvariants_S'| s@@0) (|$IsValid'u64'| (|$y#$42_TestInvariants_S| s@@0)))
 :qid |invariantsdefaultz3bpl.950:41|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestInvariants_S'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestInvariants_T) ) (! (= (|$IsValid'$42_TestInvariants_T'| s@@1) (|$IsValid'u64'| (|$x#$42_TestInvariants_T| s@@1)))
 :qid |invariantsdefaultz3bpl.963:41|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestInvariants_T'| s@@1))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |invariantsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |invariantsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |invariantsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |invariantsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |invariantsdefaultz3bpl.275:54|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |invariantsdefaultz3bpl.73:19|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |invariantsdefaultz3bpl.82:30|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |invariantsdefaultz3bpl.63:20|
 :skolemid |34|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t9@4 () T@$Mutation_16078)
(declare-fun $t1@2 () T@$42_TestInvariants_T)
(declare-fun $t10@4 () T@$Mutation_16120)
(declare-fun $t3@2 () T@$42_TestInvariants_S)
(declare-fun $t1@3 () T@$42_TestInvariants_T)
(declare-fun $t3@3 () T@$42_TestInvariants_S)
(declare-fun $t15@0 () Bool)
(declare-fun $t10@0 () T@$Mutation_16120)
(declare-fun $t10@3 () T@$Mutation_16120)
(declare-fun $t5@1 () T@$Mutation_3601)
(declare-fun $t14@0 () Bool)
(declare-fun $t9@0 () T@$Mutation_16078)
(declare-fun $t9@3 () T@$Mutation_16078)
(declare-fun _$t0 () Bool)
(declare-fun $t5@0 () T@$Mutation_3601)
(declare-fun $t9@2 () T@$Mutation_16078)
(declare-fun $t1@1 () T@$42_TestInvariants_T)
(declare-fun $t10@2 () T@$Mutation_16120)
(declare-fun $t3@1 () T@$42_TestInvariants_S)
(declare-fun $t18@0 () Bool)
(declare-fun $t10@1 () T@$Mutation_16120)
(declare-fun $t5@2 () T@$Mutation_3601)
(declare-fun $t17@0 () Bool)
(declare-fun $t9@1 () T@$Mutation_16078)
(declare-fun |$temp_0'u64'@2| () Int)
(declare-fun $t12@0 () T@$Mutation_3601)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'u64'@1| () Int)
(declare-fun $t11@0 () T@$Mutation_3601)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun $t1@0 () T@$42_TestInvariants_T)
(declare-fun $t3@0 () T@$42_TestInvariants_S)
(declare-fun MapConstVec_3206 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_3206 () Int)
(declare-fun |$temp_0'$42_TestInvariants_T'@0| () T@$42_TestInvariants_T)
(declare-fun |$temp_0'$42_TestInvariants_S'@0| () T@$42_TestInvariants_S)
(declare-fun $t2 () T@$Mutation_16078)
(declare-fun $t4 () T@$Mutation_16120)
(declare-fun $t5 () T@$Mutation_3601)
(declare-fun $t6 () T@$Mutation_3601)
(declare-fun $t9 () T@$Mutation_16078)
(declare-fun $t10 () T@$Mutation_16120)
(declare-fun $t11 () T@$Mutation_3601)
(declare-fun $t12 () T@$Mutation_3601)
(push 1)
(set-info :boogie-vc-id $42_TestInvariants_lifetime_invalid_S_branching$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 24386) (let ((L7_correct true))
(let ((L11_correct  (and (=> (= (ControlFlow 0 21149) (- 0 25060)) (> (|$x#$42_TestInvariants_T| (|v#$Mutation_16078| $t9@4)) 1)) (=> (> (|$x#$42_TestInvariants_T| (|v#$Mutation_16078| $t9@4)) 1) (=> (= $t1@2 (|v#$Mutation_16078| $t9@4)) (and (=> (= (ControlFlow 0 21149) (- 0 25084)) (> (|$y#$42_TestInvariants_S| (|v#$Mutation_16120| $t10@4)) 1)) (=> (> (|$y#$42_TestInvariants_S| (|v#$Mutation_16120| $t10@4)) 1) (=> (and (and (= $t3@2 (|v#$Mutation_16120| $t10@4)) (= $t1@3 $t1@2)) (and (= $t3@3 $t3@2) (= (ControlFlow 0 21149) 21029))) L7_correct))))))))
(let ((anon19_Else_correct  (=> (not $t15@0) (=> (and (= $t10@4 $t10@0) (= (ControlFlow 0 21111) 21149)) L11_correct))))
(let ((anon19_Then_correct  (=> (and (and $t15@0 (= $t10@3 ($Mutation_16120 (|l#$Mutation_16120| $t10@0) (|p#$Mutation_16120| $t10@0) ($42_TestInvariants_S (|v#$Mutation_3601| $t5@1))))) (and (= $t10@4 $t10@3) (= (ControlFlow 0 21167) 21149))) L11_correct)))
(let ((L9_correct  (=> (= $t15@0  (and (= (|l#$Mutation_16120| $t10@0) (|l#$Mutation_3601| $t5@1)) (let ((pp (|p#$Mutation_16120| $t10@0)))
(let ((cp (|p#$Mutation_3601| $t5@1)))
(let ((pl (|l#Vec_2977| pp)))
(let ((cl (|l#Vec_2977| cp)))
 (and (and (= cl (+ pl 1)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 pl)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| pp) i@@10) (|Select__T@[Int]Int_| (|v#Vec_2977| cp) i@@10)))
 :qid |invariantsdefaultz3bpl.302:14|
 :skolemid |12|
))) (or (= 0 (- 0 1)) (= 0 (|Select__T@[Int]Int_| (|v#Vec_2977| cp) pl)))))))))) (and (=> (= (ControlFlow 0 21105) 21167) anon19_Then_correct) (=> (= (ControlFlow 0 21105) 21111) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (not $t14@0) (=> (and (= $t9@4 $t9@0) (= (ControlFlow 0 21095) 21105)) L9_correct))))
(let ((anon18_Then_correct  (=> (and (and $t14@0 (= $t9@3 ($Mutation_16078 (|l#$Mutation_16078| $t9@0) (|p#$Mutation_16078| $t9@0) ($42_TestInvariants_T (|v#$Mutation_3601| $t5@1))))) (and (= $t9@4 $t9@3) (= (ControlFlow 0 21185) 21105))) L9_correct)))
(let ((anon17_Then_correct  (=> (and (and _$t0 (|$IsValid'u64'| 2)) (and (= $t5@1 ($Mutation_3601 (|l#$Mutation_3601| $t5@0) (|p#$Mutation_3601| $t5@0) 2)) (= $t14@0  (and (= (|l#$Mutation_16078| $t9@0) (|l#$Mutation_3601| $t5@1)) (let ((pp@@0 (|p#$Mutation_16078| $t9@0)))
(let ((cp@@0 (|p#$Mutation_3601| $t5@1)))
(let ((pl@@0 (|l#Vec_2977| pp@@0)))
(let ((cl@@0 (|l#Vec_2977| cp@@0)))
 (and (and (= cl@@0 (+ pl@@0 1)) (forall ((i@@11 Int) ) (!  (=> (and (>= i@@11 0) (< i@@11 pl@@0)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| pp@@0) i@@11) (|Select__T@[Int]Int_| (|v#Vec_2977| cp@@0) i@@11)))
 :qid |invariantsdefaultz3bpl.302:14|
 :skolemid |12|
))) (or (= 0 (- 0 1)) (= 0 (|Select__T@[Int]Int_| (|v#Vec_2977| cp@@0) pl@@0)))))))))))) (and (=> (= (ControlFlow 0 21089) 21185) anon18_Then_correct) (=> (= (ControlFlow 0 21089) 21095) anon18_Else_correct)))))
(let ((L15_correct  (and (=> (= (ControlFlow 0 21005) (- 0 24937)) (> (|$x#$42_TestInvariants_T| (|v#$Mutation_16078| $t9@2)) 1)) (=> (> (|$x#$42_TestInvariants_T| (|v#$Mutation_16078| $t9@2)) 1) (=> (= $t1@1 (|v#$Mutation_16078| $t9@2)) (and (=> (= (ControlFlow 0 21005) (- 0 24961)) (> (|$y#$42_TestInvariants_S| (|v#$Mutation_16120| $t10@2)) 1)) (=> (> (|$y#$42_TestInvariants_S| (|v#$Mutation_16120| $t10@2)) 1) (=> (and (and (= $t3@1 (|v#$Mutation_16120| $t10@2)) (= $t1@3 $t1@1)) (and (= $t3@3 $t3@1) (= (ControlFlow 0 21005) 21029))) L7_correct))))))))
(let ((anon21_Else_correct  (=> (not $t18@0) (=> (and (= $t10@2 $t10@0) (= (ControlFlow 0 20965) 21005)) L15_correct))))
(let ((anon21_Then_correct  (=> (and (and $t18@0 (= $t10@1 ($Mutation_16120 (|l#$Mutation_16120| $t10@0) (|p#$Mutation_16120| $t10@0) ($42_TestInvariants_S (|v#$Mutation_3601| $t5@2))))) (and (= $t10@2 $t10@1) (= (ControlFlow 0 21047) 21005))) L15_correct)))
(let ((L13_correct  (=> (= $t18@0  (and (= (|l#$Mutation_16120| $t10@0) (|l#$Mutation_3601| $t5@2)) (let ((pp@@1 (|p#$Mutation_16120| $t10@0)))
(let ((cp@@1 (|p#$Mutation_3601| $t5@2)))
(let ((pl@@1 (|l#Vec_2977| pp@@1)))
(let ((cl@@1 (|l#Vec_2977| cp@@1)))
 (and (and (= cl@@1 (+ pl@@1 1)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 pl@@1)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| pp@@1) i@@12) (|Select__T@[Int]Int_| (|v#Vec_2977| cp@@1) i@@12)))
 :qid |invariantsdefaultz3bpl.302:14|
 :skolemid |12|
))) (or (= 0 (- 0 1)) (= 0 (|Select__T@[Int]Int_| (|v#Vec_2977| cp@@1) pl@@1)))))))))) (and (=> (= (ControlFlow 0 20959) 21047) anon21_Then_correct) (=> (= (ControlFlow 0 20959) 20965) anon21_Else_correct)))))
(let ((anon20_Else_correct  (=> (not $t17@0) (=> (and (= $t9@2 $t9@0) (= (ControlFlow 0 20949) 20959)) L13_correct))))
(let ((anon20_Then_correct  (=> (and (and $t17@0 (= $t9@1 ($Mutation_16078 (|l#$Mutation_16078| $t9@0) (|p#$Mutation_16078| $t9@0) ($42_TestInvariants_T (|v#$Mutation_3601| $t5@2))))) (and (= $t9@2 $t9@1) (= (ControlFlow 0 21065) 20959))) L13_correct)))
(let ((anon17_Else_correct  (=> (and (and (not _$t0) (|$IsValid'u64'| 0)) (and (= $t5@2 ($Mutation_3601 (|l#$Mutation_3601| $t5@0) (|p#$Mutation_3601| $t5@0) 0)) (= $t17@0  (and (= (|l#$Mutation_16078| $t9@0) (|l#$Mutation_3601| $t5@2)) (let ((pp@@2 (|p#$Mutation_16078| $t9@0)))
(let ((cp@@2 (|p#$Mutation_3601| $t5@2)))
(let ((pl@@2 (|l#Vec_2977| pp@@2)))
(let ((cl@@2 (|l#Vec_2977| cp@@2)))
 (and (and (= cl@@2 (+ pl@@2 1)) (forall ((i@@13 Int) ) (!  (=> (and (>= i@@13 0) (< i@@13 pl@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| pp@@2) i@@13) (|Select__T@[Int]Int_| (|v#Vec_2977| cp@@2) i@@13)))
 :qid |invariantsdefaultz3bpl.302:14|
 :skolemid |12|
))) (or (= 0 (- 0 1)) (= 0 (|Select__T@[Int]Int_| (|v#Vec_2977| cp@@2) pl@@2)))))))))))) (and (=> (= (ControlFlow 0 20943) 21065) anon20_Then_correct) (=> (= (ControlFlow 0 20943) 20949) anon20_Else_correct)))))
(let ((L3_correct  (=> (and (= |$temp_0'u64'@2| (|v#$Mutation_3601| $t5@0)) (= |$temp_0'u64'@2| |$temp_0'u64'@2|)) (and (=> (= (ControlFlow 0 20917) 21089) anon17_Then_correct) (=> (= (ControlFlow 0 20917) 20943) anon17_Else_correct)))))
(let ((anon16_Else_correct  (=> (not _$t0) (and (=> (= (ControlFlow 0 20903) (- 0 24732)) (> (|$x#$42_TestInvariants_T| (|v#$Mutation_16078| $t9@0)) 1)) (=> (> (|$x#$42_TestInvariants_T| (|v#$Mutation_16078| $t9@0)) 1) (=> (= $t12@0 ($Mutation_3601 (|l#$Mutation_16120| $t10@0) (let ((l (|l#Vec_2977| (|p#$Mutation_16120| $t10@0))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_16120| $t10@0)) l 0) (+ l 1))) (|$y#$42_TestInvariants_S| (|v#$Mutation_16120| $t10@0)))) (=> (and (and (= |$temp_0'u64'@1| (|v#$Mutation_3601| $t12@0)) (= |$temp_0'u64'@1| |$temp_0'u64'@1|)) (and (= $t5@0 $t12@0) (= (ControlFlow 0 20903) 20917))) L3_correct)))))))
(let ((anon16_Then_correct  (=> _$t0 (and (=> (= (ControlFlow 0 21227) (- 0 24682)) (> (|$y#$42_TestInvariants_S| (|v#$Mutation_16120| $t10@0)) 1)) (=> (> (|$y#$42_TestInvariants_S| (|v#$Mutation_16120| $t10@0)) 1) (=> (= $t11@0 ($Mutation_3601 (|l#$Mutation_16078| $t9@0) (let ((l@@0 (|l#Vec_2977| (|p#$Mutation_16078| $t9@0))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_16078| $t9@0)) l@@0 0) (+ l@@0 1))) (|$x#$42_TestInvariants_T| (|v#$Mutation_16078| $t9@0)))) (=> (and (and (= |$temp_0'u64'@0| (|v#$Mutation_3601| $t11@0)) (= |$temp_0'u64'@0| |$temp_0'u64'@0|)) (and (= $t5@0 $t11@0) (= (ControlFlow 0 21227) 20917))) L3_correct)))))))
(let ((anon0$1_correct  (=> (= _$t0 _$t0) (=> (and (|$IsValid'u64'| 3) (= $t1@0 ($42_TestInvariants_T 3))) (and (=> (= (ControlFlow 0 20859) (- 0 24560)) (> (|$x#$42_TestInvariants_T| $t1@0) 1)) (=> (> (|$x#$42_TestInvariants_T| $t1@0) 1) (=> (= $t1@0 $t1@0) (=> (and (|$IsValid'u64'| 4) (= $t3@0 ($42_TestInvariants_S 4))) (and (=> (= (ControlFlow 0 20859) (- 0 24596)) (> (|$y#$42_TestInvariants_S| $t3@0) 1)) (=> (> (|$y#$42_TestInvariants_S| $t3@0) 1) (=> (= $t3@0 $t3@0) (=> (and (= $t9@0 ($Mutation_16078 ($Local 1) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) $t1@0)) (= |$temp_0'$42_TestInvariants_T'@0| (|v#$Mutation_16078| $t9@0))) (=> (and (and (= |$temp_0'$42_TestInvariants_T'@0| |$temp_0'$42_TestInvariants_T'@0|) (= $t10@0 ($Mutation_16120 ($Local 3) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) $t3@0))) (and (= |$temp_0'$42_TestInvariants_S'@0| (|v#$Mutation_16120| $t10@0)) (= |$temp_0'$42_TestInvariants_S'@0| |$temp_0'$42_TestInvariants_S'@0|))) (and (=> (= (ControlFlow 0 20859) 21227) anon16_Then_correct) (=> (= (ControlFlow 0 20859) 20903) anon16_Else_correct)))))))))))))))
(let ((anon0_correct  (=> (= (|l#Vec_2977| (|p#$Mutation_16078| $t2)) 0) (=> (and (and (and (= (|l#Vec_2977| (|p#$Mutation_16120| $t4)) 0) (= (|l#Vec_2977| (|p#$Mutation_3601| $t5)) 0)) (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t6)) 0) (= (|l#Vec_2977| (|p#$Mutation_16078| $t9)) 0))) (and (and (= (|l#Vec_2977| (|p#$Mutation_16120| $t10)) 0) (= (|l#Vec_2977| (|p#$Mutation_3601| $t11)) 0)) (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t12)) 0) (= (ControlFlow 0 20739) 20859)))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 24386) 20739) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 24386)))
(get-value ((ControlFlow 0 20739)))
(get-value ((ControlFlow 0 20859)))
(get-value ((ControlFlow 0 20903)))
(get-value ((ControlFlow 0 20917)))
(get-value ((ControlFlow 0 20943)))
(get-value ((ControlFlow 0 20949)))
(get-value ((ControlFlow 0 20959)))
(get-value ((ControlFlow 0 21047)))
(get-value ((ControlFlow 0 21005)))
(assert (not (= (ControlFlow 0 21005) (- 24961))))
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
(declare-datatypes ((T@$42_TestInvariants_T 0)) ((($42_TestInvariants_T (|$x#$42_TestInvariants_T| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_S 0)) ((($42_TestInvariants_S (|$y#$42_TestInvariants_S| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_R 0)) ((($42_TestInvariants_R (|$x#$42_TestInvariants_R| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_16120 0)) ((($Mutation_16120 (|l#$Mutation_16120| T@$Location) (|p#$Mutation_16120| T@Vec_2977) (|v#$Mutation_16120| T@$42_TestInvariants_S) ) ) ))
(declare-datatypes ((T@$Mutation_16078 0)) ((($Mutation_16078 (|l#$Mutation_16078| T@$Location) (|p#$Mutation_16078| T@Vec_2977) (|v#$Mutation_16078| T@$42_TestInvariants_T) ) ) ))
(declare-datatypes ((T@$Mutation_13170 0)) ((($Mutation_13170 (|l#$Mutation_13170| T@$Location) (|p#$Mutation_13170| T@Vec_2977) (|v#$Mutation_13170| T@$42_TestInvariants_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10887 0)) ((($Mutation_10887 (|l#$Mutation_10887| T@$Location) (|p#$Mutation_10887| T@Vec_2977) (|v#$Mutation_10887| T@Vec_2977) ) ) ))
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
(declare-sort |T@[Int]Bool| 0)
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
(declare-fun |$IsValid'$42_TestInvariants_R'| (T@$42_TestInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestInvariants_S'| (T@$42_TestInvariants_S) Bool)
(declare-fun |$IsValid'$42_TestInvariants_T'| (T@$42_TestInvariants_T) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |invariantsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |invariantsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |invariantsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |invariantsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |invariantsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |invariantsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |invariantsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |invariantsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |invariantsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |invariantsdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |invariantsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |invariantsdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |invariantsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |invariantsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |invariantsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |invariantsdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |invariantsdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |invariantsdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |invariantsdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestInvariants_R) ) (! (= (|$IsValid'$42_TestInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestInvariants_R| s)))
 :qid |invariantsdefaultz3bpl.937:41|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestInvariants_S) ) (! (= (|$IsValid'$42_TestInvariants_S'| s@@0) (|$IsValid'u64'| (|$y#$42_TestInvariants_S| s@@0)))
 :qid |invariantsdefaultz3bpl.950:41|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestInvariants_S'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestInvariants_T) ) (! (= (|$IsValid'$42_TestInvariants_T'| s@@1) (|$IsValid'u64'| (|$x#$42_TestInvariants_T| s@@1)))
 :qid |invariantsdefaultz3bpl.963:41|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestInvariants_T'| s@@1))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |invariantsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |invariantsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |invariantsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |invariantsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |invariantsdefaultz3bpl.275:54|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |invariantsdefaultz3bpl.73:19|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |invariantsdefaultz3bpl.82:30|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |invariantsdefaultz3bpl.63:20|
 :skolemid |34|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $42_TestInvariants_update_helper$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 25149) true)
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
(declare-datatypes ((T@$42_TestInvariants_T 0)) ((($42_TestInvariants_T (|$x#$42_TestInvariants_T| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_S 0)) ((($42_TestInvariants_S (|$y#$42_TestInvariants_S| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_R 0)) ((($42_TestInvariants_R (|$x#$42_TestInvariants_R| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_16120 0)) ((($Mutation_16120 (|l#$Mutation_16120| T@$Location) (|p#$Mutation_16120| T@Vec_2977) (|v#$Mutation_16120| T@$42_TestInvariants_S) ) ) ))
(declare-datatypes ((T@$Mutation_16078 0)) ((($Mutation_16078 (|l#$Mutation_16078| T@$Location) (|p#$Mutation_16078| T@Vec_2977) (|v#$Mutation_16078| T@$42_TestInvariants_T) ) ) ))
(declare-datatypes ((T@$Mutation_13170 0)) ((($Mutation_13170 (|l#$Mutation_13170| T@$Location) (|p#$Mutation_13170| T@Vec_2977) (|v#$Mutation_13170| T@$42_TestInvariants_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10887 0)) ((($Mutation_10887 (|l#$Mutation_10887| T@$Location) (|p#$Mutation_10887| T@Vec_2977) (|v#$Mutation_10887| T@Vec_2977) ) ) ))
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
(declare-sort |T@[Int]Bool| 0)
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
(declare-fun |$IsValid'$42_TestInvariants_R'| (T@$42_TestInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestInvariants_S'| (T@$42_TestInvariants_S) Bool)
(declare-fun |$IsValid'$42_TestInvariants_T'| (T@$42_TestInvariants_T) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |invariantsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |invariantsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |invariantsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |invariantsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |invariantsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |invariantsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |invariantsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |invariantsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |invariantsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |invariantsdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |invariantsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |invariantsdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |invariantsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |invariantsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |invariantsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |invariantsdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |invariantsdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |invariantsdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |invariantsdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestInvariants_R) ) (! (= (|$IsValid'$42_TestInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestInvariants_R| s)))
 :qid |invariantsdefaultz3bpl.937:41|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestInvariants_S) ) (! (= (|$IsValid'$42_TestInvariants_S'| s@@0) (|$IsValid'u64'| (|$y#$42_TestInvariants_S| s@@0)))
 :qid |invariantsdefaultz3bpl.950:41|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestInvariants_S'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestInvariants_T) ) (! (= (|$IsValid'$42_TestInvariants_T'| s@@1) (|$IsValid'u64'| (|$x#$42_TestInvariants_T| s@@1)))
 :qid |invariantsdefaultz3bpl.963:41|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestInvariants_T'| s@@1))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |invariantsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |invariantsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |invariantsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |invariantsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |invariantsdefaultz3bpl.275:54|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |invariantsdefaultz3bpl.73:19|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |invariantsdefaultz3bpl.82:30|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |invariantsdefaultz3bpl.63:20|
 :skolemid |34|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () T@$42_TestInvariants_R)
(push 1)
(set-info :boogie-vc-id $42_TestInvariants_valid_R_pack$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 25256) (let ((anon0$1_correct  (=> (and (|$IsValid'u64'| 2) (= $t1@0 ($42_TestInvariants_R 2))) (and (=> (= (ControlFlow 0 21565) (- 0 25302)) (> (|$x#$42_TestInvariants_R| $t1@0) 1)) (=> (> (|$x#$42_TestInvariants_R| $t1@0) 1) (=> (and (= $t1@0 $t1@0) (= (ControlFlow 0 21565) (- 0 25321))) (= (|$x#$42_TestInvariants_R| $t1@0) 2)))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 25256) 21565) anon0$1_correct)))
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
(declare-datatypes ((T@$42_TestInvariants_T 0)) ((($42_TestInvariants_T (|$x#$42_TestInvariants_T| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_S 0)) ((($42_TestInvariants_S (|$y#$42_TestInvariants_S| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_R 0)) ((($42_TestInvariants_R (|$x#$42_TestInvariants_R| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_16120 0)) ((($Mutation_16120 (|l#$Mutation_16120| T@$Location) (|p#$Mutation_16120| T@Vec_2977) (|v#$Mutation_16120| T@$42_TestInvariants_S) ) ) ))
(declare-datatypes ((T@$Mutation_16078 0)) ((($Mutation_16078 (|l#$Mutation_16078| T@$Location) (|p#$Mutation_16078| T@Vec_2977) (|v#$Mutation_16078| T@$42_TestInvariants_T) ) ) ))
(declare-datatypes ((T@$Mutation_13170 0)) ((($Mutation_13170 (|l#$Mutation_13170| T@$Location) (|p#$Mutation_13170| T@Vec_2977) (|v#$Mutation_13170| T@$42_TestInvariants_R) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10887 0)) ((($Mutation_10887 (|l#$Mutation_10887| T@$Location) (|p#$Mutation_10887| T@Vec_2977) (|v#$Mutation_10887| T@Vec_2977) ) ) ))
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
(declare-sort |T@[Int]Bool| 0)
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
(declare-fun |$IsValid'$42_TestInvariants_R'| (T@$42_TestInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestInvariants_S'| (T@$42_TestInvariants_S) Bool)
(declare-fun |$IsValid'$42_TestInvariants_T'| (T@$42_TestInvariants_T) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |invariantsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |invariantsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |invariantsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |invariantsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |invariantsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |invariantsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |invariantsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |invariantsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |invariantsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |invariantsdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |invariantsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |invariantsdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |invariantsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |invariantsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |invariantsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |invariantsdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |invariantsdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |invariantsdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |invariantsdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestInvariants_R) ) (! (= (|$IsValid'$42_TestInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestInvariants_R| s)))
 :qid |invariantsdefaultz3bpl.937:41|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestInvariants_S) ) (! (= (|$IsValid'$42_TestInvariants_S'| s@@0) (|$IsValid'u64'| (|$y#$42_TestInvariants_S| s@@0)))
 :qid |invariantsdefaultz3bpl.950:41|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestInvariants_S'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestInvariants_T) ) (! (= (|$IsValid'$42_TestInvariants_T'| s@@1) (|$IsValid'u64'| (|$x#$42_TestInvariants_T| s@@1)))
 :qid |invariantsdefaultz3bpl.963:41|
 :skolemid |30|
 :pattern ( (|$IsValid'$42_TestInvariants_T'| s@@1))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |invariantsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |invariantsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |invariantsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |invariantsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |invariantsdefaultz3bpl.275:54|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |invariantsdefaultz3bpl.73:19|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |invariantsdefaultz3bpl.82:30|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |invariantsdefaultz3bpl.63:20|
 :skolemid |34|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () T@$42_TestInvariants_R)
(declare-fun $t3@0 () T@$Mutation_13170)
(declare-fun MapConstVec_3206 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_3206 () Int)
(declare-fun |$temp_0'$42_TestInvariants_R'@0| () T@$42_TestInvariants_R)
(declare-fun $t5@0 () T@$42_TestInvariants_R)
(declare-fun $t3@1 () T@$Mutation_13170)
(declare-fun $t1@1 () T@$42_TestInvariants_R)
(declare-fun $t0 () T@$Mutation_13170)
(declare-fun $t3 () T@$Mutation_13170)
(push 1)
(set-info :boogie-vc-id $42_TestInvariants_valid_R_update$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 25334) (let ((anon0$1_correct  (=> (and (|$IsValid'u64'| 3) (= $t1@0 ($42_TestInvariants_R 3))) (and (=> (= (ControlFlow 0 21759) (- 0 25406)) (> (|$x#$42_TestInvariants_R| $t1@0) 1)) (=> (> (|$x#$42_TestInvariants_R| $t1@0) 1) (=> (and (= $t1@0 $t1@0) (= $t3@0 ($Mutation_13170 ($Local 1) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) $t1@0))) (=> (and (and (= |$temp_0'$42_TestInvariants_R'@0| (|v#$Mutation_13170| $t3@0)) (= |$temp_0'$42_TestInvariants_R'@0| |$temp_0'$42_TestInvariants_R'@0|)) (and (|$IsValid'u64'| 2) (= $t5@0 ($42_TestInvariants_R 2)))) (and (=> (= (ControlFlow 0 21759) (- 0 25472)) (> (|$x#$42_TestInvariants_R| $t5@0) 1)) (=> (> (|$x#$42_TestInvariants_R| $t5@0) 1) (=> (= $t3@1 ($Mutation_13170 (|l#$Mutation_13170| $t3@0) (|p#$Mutation_13170| $t3@0) $t5@0)) (and (=> (= (ControlFlow 0 21759) (- 0 25493)) (> (|$x#$42_TestInvariants_R| (|v#$Mutation_13170| $t3@1)) 1)) (=> (> (|$x#$42_TestInvariants_R| (|v#$Mutation_13170| $t3@1)) 1) (=> (= $t1@1 (|v#$Mutation_13170| $t3@1)) (=> (and (= $t1@1 $t1@1) (= (ControlFlow 0 21759) (- 0 25528))) (= (|$x#$42_TestInvariants_R| $t1@1) 2)))))))))))))))
(let ((anon0_correct  (=> (= (|l#Vec_2977| (|p#$Mutation_13170| $t0)) 0) (=> (and (= (|l#Vec_2977| (|p#$Mutation_13170| $t3)) 0) (= (ControlFlow 0 21639) 21759)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 25334) 21639) anon0_correct)))
PreconditionGeneratedEntry_correct))))
))
(check-sat)
(pop 1)
; Valid
