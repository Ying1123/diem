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
(declare-datatypes ((T@$42_TestNestedInvariants_Nested 0)) ((($42_TestNestedInvariants_Nested (|$x#$42_TestNestedInvariants_Nested| Int) ) ) ))
(declare-datatypes ((T@$42_TestNestedInvariants_Outer 0)) ((($42_TestNestedInvariants_Outer (|$y#$42_TestNestedInvariants_Outer| Int) (|$n#$42_TestNestedInvariants_Outer| T@$42_TestNestedInvariants_Nested) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10863 0)) ((($Mutation_10863 (|l#$Mutation_10863| T@$Location) (|p#$Mutation_10863| T@Vec_2977) (|v#$Mutation_10863| T@$42_TestNestedInvariants_Nested) ) ) ))
(declare-datatypes ((T@$Mutation_10815 0)) ((($Mutation_10815 (|l#$Mutation_10815| T@$Location) (|p#$Mutation_10815| T@Vec_2977) (|v#$Mutation_10815| T@$42_TestNestedInvariants_Outer) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8628 0)) ((($Mutation_8628 (|l#$Mutation_8628| T@$Location) (|p#$Mutation_8628| T@Vec_2977) (|v#$Mutation_8628| T@Vec_2977) ) ) ))
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
(declare-fun |$IsValid'$42_TestNestedInvariants_Nested'| (T@$42_TestNestedInvariants_Nested) Bool)
(declare-fun |$IsValid'$42_TestNestedInvariants_Outer'| (T@$42_TestNestedInvariants_Outer) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |nestedinvariantsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |nestedinvariantsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |nestedinvariantsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |nestedinvariantsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |nestedinvariantsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |nestedinvariantsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |nestedinvariantsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |nestedinvariantsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |nestedinvariantsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |nestedinvariantsdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |nestedinvariantsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |nestedinvariantsdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |nestedinvariantsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |nestedinvariantsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |nestedinvariantsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |nestedinvariantsdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |nestedinvariantsdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |nestedinvariantsdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |nestedinvariantsdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestNestedInvariants_Nested) ) (! (= (|$IsValid'$42_TestNestedInvariants_Nested'| s) (|$IsValid'u64'| (|$x#$42_TestNestedInvariants_Nested| s)))
 :qid |nestedinvariantsdefaultz3bpl.932:52|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestNestedInvariants_Nested'| s))
)))
(assert (forall ((s@@0 T@$42_TestNestedInvariants_Outer) ) (! (= (|$IsValid'$42_TestNestedInvariants_Outer'| s@@0)  (and (|$IsValid'u64'| (|$y#$42_TestNestedInvariants_Outer| s@@0)) (|$IsValid'$42_TestNestedInvariants_Nested'| (|$n#$42_TestNestedInvariants_Outer| s@@0))))
 :qid |nestedinvariantsdefaultz3bpl.948:51|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestNestedInvariants_Outer'| s@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |nestedinvariantsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |nestedinvariantsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |nestedinvariantsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |nestedinvariantsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |nestedinvariantsdefaultz3bpl.275:54|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |nestedinvariantsdefaultz3bpl.73:19|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |nestedinvariantsdefaultz3bpl.82:30|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |nestedinvariantsdefaultz3bpl.63:20|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t4@0 () T@$42_TestNestedInvariants_Nested)
(declare-fun $t0@0 () T@$42_TestNestedInvariants_Outer)
(declare-fun $t5@0 () T@$Mutation_10815)
(declare-fun MapConstVec_3206 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_3206 () Int)
(declare-fun |$temp_0'$42_TestNestedInvariants_Outer'@0| () T@$42_TestNestedInvariants_Outer)
(declare-fun $t7@0 () T@$Mutation_3601)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t7@1 () T@$Mutation_3601)
(declare-fun $t5@1 () T@$Mutation_10815)
(declare-fun $t9@0 () T@$Mutation_10863)
(declare-fun $t10@0 () T@$Mutation_3601)
(declare-fun $t10@1 () T@$Mutation_3601)
(declare-fun $t9@1 () T@$Mutation_10863)
(declare-fun $t5@2 () T@$Mutation_10815)
(declare-fun $t1 () T@$Mutation_10815)
(declare-fun $t5 () T@$Mutation_10815)
(declare-fun $t7 () T@$Mutation_3601)
(declare-fun $t9 () T@$Mutation_10863)
(declare-fun $t10 () T@$Mutation_3601)
(push 1)
(set-info :boogie-vc-id $42_TestNestedInvariants_mutate$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 15385) (let ((anon0$1_correct  (=> (|$IsValid'u64'| 3) (=> (and (|$IsValid'u64'| 2) (= $t4@0 ($42_TestNestedInvariants_Nested 2))) (and (=> (= (ControlFlow 0 13687) (- 0 15495)) (> (|$x#$42_TestNestedInvariants_Nested| $t4@0) 0)) (=> (> (|$x#$42_TestNestedInvariants_Nested| $t4@0) 0) (=> (= $t0@0 ($42_TestNestedInvariants_Outer 3 $t4@0)) (and (=> (= (ControlFlow 0 13687) (- 0 15518)) (< (|$y#$42_TestNestedInvariants_Outer| $t0@0) 4)) (=> (< (|$y#$42_TestNestedInvariants_Outer| $t0@0) 4) (and (=> (= (ControlFlow 0 13687) (- 0 15528)) (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| $t0@0)) (|$y#$42_TestNestedInvariants_Outer| $t0@0))) (=> (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| $t0@0)) (|$y#$42_TestNestedInvariants_Outer| $t0@0)) (=> (and (= $t0@0 $t0@0) (= $t5@0 ($Mutation_10815 ($Local 0) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) $t0@0))) (=> (and (and (= |$temp_0'$42_TestNestedInvariants_Outer'@0| (|v#$Mutation_10815| $t5@0)) (= |$temp_0'$42_TestNestedInvariants_Outer'@0| |$temp_0'$42_TestNestedInvariants_Outer'@0|)) (and (|$IsValid'u64'| 2) (= $t7@0 ($Mutation_3601 (|l#$Mutation_10815| $t5@0) (let ((l (|l#Vec_2977| (|p#$Mutation_10815| $t5@0))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_10815| $t5@0)) l 0) (+ l 1))) (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@0)))))) (=> (and (and (and (= $t7@1 ($Mutation_3601 (|l#$Mutation_3601| $t7@0) (|p#$Mutation_3601| $t7@0) 2)) (= $t5@1 ($Mutation_10815 (|l#$Mutation_10815| $t5@0) (|p#$Mutation_10815| $t5@0) ($42_TestNestedInvariants_Outer (|v#$Mutation_3601| $t7@1) (|$n#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@0)))))) (and (|$IsValid'u64'| 1) (= $t9@0 ($Mutation_10863 (|l#$Mutation_10815| $t5@1) (let ((l@@0 (|l#Vec_2977| (|p#$Mutation_10815| $t5@1))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_10815| $t5@1)) l@@0 1) (+ l@@0 1))) (|$n#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@1)))))) (and (and (= $t10@0 ($Mutation_3601 (|l#$Mutation_10863| $t9@0) (let ((l@@1 (|l#Vec_2977| (|p#$Mutation_10863| $t9@0))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_10863| $t9@0)) l@@1 0) (+ l@@1 1))) (|$x#$42_TestNestedInvariants_Nested| (|v#$Mutation_10863| $t9@0)))) (= $t10@1 ($Mutation_3601 (|l#$Mutation_3601| $t10@0) (|p#$Mutation_3601| $t10@0) 1))) (and (= $t9@1 ($Mutation_10863 (|l#$Mutation_10863| $t9@0) (|p#$Mutation_10863| $t9@0) ($42_TestNestedInvariants_Nested (|v#$Mutation_3601| $t10@1)))) (= $t5@2 ($Mutation_10815 (|l#$Mutation_10815| $t5@1) (|p#$Mutation_10815| $t5@1) ($42_TestNestedInvariants_Outer (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@1)) (|v#$Mutation_10863| $t9@1))))))) (and (=> (= (ControlFlow 0 13687) (- 0 15718)) (< (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@2)) 4)) (=> (< (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@2)) 4) (and (=> (= (ControlFlow 0 13687) (- 0 15730)) (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@2))) (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@2)))) (=> (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@2))) (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@2))) (=> (= (ControlFlow 0 13687) (- 0 15747)) (> (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@2))) 0))))))))))))))))))))
(let ((anon0_correct  (=> (and (= (|l#Vec_2977| (|p#$Mutation_10815| $t1)) 0) (= (|l#Vec_2977| (|p#$Mutation_10815| $t5)) 0)) (=> (and (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t7)) 0) (= (|l#Vec_2977| (|p#$Mutation_10863| $t9)) 0)) (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t10)) 0) (= (ControlFlow 0 13437) 13687))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 15385) 13437) anon0_correct)))
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
(declare-datatypes ((T@$42_TestNestedInvariants_Nested 0)) ((($42_TestNestedInvariants_Nested (|$x#$42_TestNestedInvariants_Nested| Int) ) ) ))
(declare-datatypes ((T@$42_TestNestedInvariants_Outer 0)) ((($42_TestNestedInvariants_Outer (|$y#$42_TestNestedInvariants_Outer| Int) (|$n#$42_TestNestedInvariants_Outer| T@$42_TestNestedInvariants_Nested) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10863 0)) ((($Mutation_10863 (|l#$Mutation_10863| T@$Location) (|p#$Mutation_10863| T@Vec_2977) (|v#$Mutation_10863| T@$42_TestNestedInvariants_Nested) ) ) ))
(declare-datatypes ((T@$Mutation_10815 0)) ((($Mutation_10815 (|l#$Mutation_10815| T@$Location) (|p#$Mutation_10815| T@Vec_2977) (|v#$Mutation_10815| T@$42_TestNestedInvariants_Outer) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8628 0)) ((($Mutation_8628 (|l#$Mutation_8628| T@$Location) (|p#$Mutation_8628| T@Vec_2977) (|v#$Mutation_8628| T@Vec_2977) ) ) ))
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
(declare-fun |$IsValid'$42_TestNestedInvariants_Nested'| (T@$42_TestNestedInvariants_Nested) Bool)
(declare-fun |$IsValid'$42_TestNestedInvariants_Outer'| (T@$42_TestNestedInvariants_Outer) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |nestedinvariantsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |nestedinvariantsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |nestedinvariantsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |nestedinvariantsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |nestedinvariantsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |nestedinvariantsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |nestedinvariantsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |nestedinvariantsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |nestedinvariantsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |nestedinvariantsdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |nestedinvariantsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |nestedinvariantsdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |nestedinvariantsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |nestedinvariantsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |nestedinvariantsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |nestedinvariantsdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |nestedinvariantsdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |nestedinvariantsdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |nestedinvariantsdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestNestedInvariants_Nested) ) (! (= (|$IsValid'$42_TestNestedInvariants_Nested'| s) (|$IsValid'u64'| (|$x#$42_TestNestedInvariants_Nested| s)))
 :qid |nestedinvariantsdefaultz3bpl.932:52|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestNestedInvariants_Nested'| s))
)))
(assert (forall ((s@@0 T@$42_TestNestedInvariants_Outer) ) (! (= (|$IsValid'$42_TestNestedInvariants_Outer'| s@@0)  (and (|$IsValid'u64'| (|$y#$42_TestNestedInvariants_Outer| s@@0)) (|$IsValid'$42_TestNestedInvariants_Nested'| (|$n#$42_TestNestedInvariants_Outer| s@@0))))
 :qid |nestedinvariantsdefaultz3bpl.948:51|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestNestedInvariants_Outer'| s@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |nestedinvariantsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |nestedinvariantsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |nestedinvariantsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |nestedinvariantsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |nestedinvariantsdefaultz3bpl.275:54|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |nestedinvariantsdefaultz3bpl.73:19|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |nestedinvariantsdefaultz3bpl.82:30|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |nestedinvariantsdefaultz3bpl.63:20|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t4@0 () T@$42_TestNestedInvariants_Nested)
(declare-fun $t0@0 () T@$42_TestNestedInvariants_Outer)
(declare-fun $t5@0 () T@$Mutation_10815)
(declare-fun MapConstVec_3206 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_3206 () Int)
(declare-fun |$temp_0'$42_TestNestedInvariants_Outer'@0| () T@$42_TestNestedInvariants_Outer)
(declare-fun $t7@0 () T@$Mutation_10863)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t8@0 () T@$Mutation_3601)
(declare-fun $t8@1 () T@$Mutation_3601)
(declare-fun $t7@1 () T@$Mutation_10863)
(declare-fun $t5@1 () T@$Mutation_10815)
(declare-fun $t1 () T@$Mutation_10815)
(declare-fun $t5 () T@$Mutation_10815)
(declare-fun $t7 () T@$Mutation_10863)
(declare-fun $t8 () T@$Mutation_3601)
(push 1)
(set-info :boogie-vc-id $42_TestNestedInvariants_mutate_inner_data_invariant_invalid$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 15793) (let ((anon0$1_correct  (=> (|$IsValid'u64'| 3) (=> (and (|$IsValid'u64'| 2) (= $t4@0 ($42_TestNestedInvariants_Nested 2))) (and (=> (= (ControlFlow 0 14034) (- 0 15889)) (> (|$x#$42_TestNestedInvariants_Nested| $t4@0) 0)) (=> (> (|$x#$42_TestNestedInvariants_Nested| $t4@0) 0) (=> (= $t0@0 ($42_TestNestedInvariants_Outer 3 $t4@0)) (and (=> (= (ControlFlow 0 14034) (- 0 15912)) (< (|$y#$42_TestNestedInvariants_Outer| $t0@0) 4)) (=> (< (|$y#$42_TestNestedInvariants_Outer| $t0@0) 4) (and (=> (= (ControlFlow 0 14034) (- 0 15922)) (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| $t0@0)) (|$y#$42_TestNestedInvariants_Outer| $t0@0))) (=> (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| $t0@0)) (|$y#$42_TestNestedInvariants_Outer| $t0@0)) (=> (and (= $t0@0 $t0@0) (= $t5@0 ($Mutation_10815 ($Local 0) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) $t0@0))) (=> (and (and (and (= |$temp_0'$42_TestNestedInvariants_Outer'@0| (|v#$Mutation_10815| $t5@0)) (= |$temp_0'$42_TestNestedInvariants_Outer'@0| |$temp_0'$42_TestNestedInvariants_Outer'@0|)) (and (|$IsValid'u64'| 0) (= $t7@0 ($Mutation_10863 (|l#$Mutation_10815| $t5@0) (let ((l (|l#Vec_2977| (|p#$Mutation_10815| $t5@0))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_10815| $t5@0)) l 1) (+ l 1))) (|$n#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@0)))))) (and (and (= $t8@0 ($Mutation_3601 (|l#$Mutation_10863| $t7@0) (let ((l@@0 (|l#Vec_2977| (|p#$Mutation_10863| $t7@0))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_10863| $t7@0)) l@@0 0) (+ l@@0 1))) (|$x#$42_TestNestedInvariants_Nested| (|v#$Mutation_10863| $t7@0)))) (= $t8@1 ($Mutation_3601 (|l#$Mutation_3601| $t8@0) (|p#$Mutation_3601| $t8@0) 0))) (and (= $t7@1 ($Mutation_10863 (|l#$Mutation_10863| $t7@0) (|p#$Mutation_10863| $t7@0) ($42_TestNestedInvariants_Nested (|v#$Mutation_3601| $t8@1)))) (= $t5@1 ($Mutation_10815 (|l#$Mutation_10815| $t5@0) (|p#$Mutation_10815| $t5@0) ($42_TestNestedInvariants_Outer (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@0)) (|v#$Mutation_10863| $t7@1))))))) (and (=> (= (ControlFlow 0 14034) (- 0 16060)) (< (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@1)) 4)) (=> (< (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@1)) 4) (and (=> (= (ControlFlow 0 14034) (- 0 16072)) (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@1))) (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@1)))) (=> (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@1))) (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@1))) (=> (= (ControlFlow 0 14034) (- 0 16089)) (> (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@1))) 0)))))))))))))))))))
(let ((anon0_correct  (=> (= (|l#Vec_2977| (|p#$Mutation_10815| $t1)) 0) (=> (and (and (= (|l#Vec_2977| (|p#$Mutation_10815| $t5)) 0) (= (|l#Vec_2977| (|p#$Mutation_10863| $t7)) 0)) (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t8)) 0) (= (ControlFlow 0 13824) 14034))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 15793) 13824) anon0_correct)))
PreconditionGeneratedEntry_correct))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 15793)))
(get-value ((ControlFlow 0 13824)))
(get-value ((ControlFlow 0 14034)))
(assert (not (= (ControlFlow 0 14034) (- 16089))))
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
(declare-datatypes ((T@$42_TestNestedInvariants_Nested 0)) ((($42_TestNestedInvariants_Nested (|$x#$42_TestNestedInvariants_Nested| Int) ) ) ))
(declare-datatypes ((T@$42_TestNestedInvariants_Outer 0)) ((($42_TestNestedInvariants_Outer (|$y#$42_TestNestedInvariants_Outer| Int) (|$n#$42_TestNestedInvariants_Outer| T@$42_TestNestedInvariants_Nested) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10863 0)) ((($Mutation_10863 (|l#$Mutation_10863| T@$Location) (|p#$Mutation_10863| T@Vec_2977) (|v#$Mutation_10863| T@$42_TestNestedInvariants_Nested) ) ) ))
(declare-datatypes ((T@$Mutation_10815 0)) ((($Mutation_10815 (|l#$Mutation_10815| T@$Location) (|p#$Mutation_10815| T@Vec_2977) (|v#$Mutation_10815| T@$42_TestNestedInvariants_Outer) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8628 0)) ((($Mutation_8628 (|l#$Mutation_8628| T@$Location) (|p#$Mutation_8628| T@Vec_2977) (|v#$Mutation_8628| T@Vec_2977) ) ) ))
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
(declare-fun |$IsValid'$42_TestNestedInvariants_Nested'| (T@$42_TestNestedInvariants_Nested) Bool)
(declare-fun |$IsValid'$42_TestNestedInvariants_Outer'| (T@$42_TestNestedInvariants_Outer) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |nestedinvariantsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |nestedinvariantsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |nestedinvariantsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |nestedinvariantsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |nestedinvariantsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |nestedinvariantsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |nestedinvariantsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |nestedinvariantsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |nestedinvariantsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |nestedinvariantsdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |nestedinvariantsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |nestedinvariantsdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |nestedinvariantsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |nestedinvariantsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |nestedinvariantsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |nestedinvariantsdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |nestedinvariantsdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |nestedinvariantsdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |nestedinvariantsdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestNestedInvariants_Nested) ) (! (= (|$IsValid'$42_TestNestedInvariants_Nested'| s) (|$IsValid'u64'| (|$x#$42_TestNestedInvariants_Nested| s)))
 :qid |nestedinvariantsdefaultz3bpl.932:52|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestNestedInvariants_Nested'| s))
)))
(assert (forall ((s@@0 T@$42_TestNestedInvariants_Outer) ) (! (= (|$IsValid'$42_TestNestedInvariants_Outer'| s@@0)  (and (|$IsValid'u64'| (|$y#$42_TestNestedInvariants_Outer| s@@0)) (|$IsValid'$42_TestNestedInvariants_Nested'| (|$n#$42_TestNestedInvariants_Outer| s@@0))))
 :qid |nestedinvariantsdefaultz3bpl.948:51|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestNestedInvariants_Outer'| s@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |nestedinvariantsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |nestedinvariantsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |nestedinvariantsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |nestedinvariantsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |nestedinvariantsdefaultz3bpl.275:54|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |nestedinvariantsdefaultz3bpl.73:19|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |nestedinvariantsdefaultz3bpl.82:30|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |nestedinvariantsdefaultz3bpl.63:20|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t4@0 () T@$42_TestNestedInvariants_Nested)
(declare-fun $t0@0 () T@$42_TestNestedInvariants_Outer)
(declare-fun $t5@0 () T@$Mutation_10815)
(declare-fun MapConstVec_3206 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_3206 () Int)
(declare-fun |$temp_0'$42_TestNestedInvariants_Outer'@0| () T@$42_TestNestedInvariants_Outer)
(declare-fun $t7@0 () T@$Mutation_3601)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t7@1 () T@$Mutation_3601)
(declare-fun $t5@1 () T@$Mutation_10815)
(declare-fun $t1 () T@$Mutation_10815)
(declare-fun $t5 () T@$Mutation_10815)
(declare-fun $t7 () T@$Mutation_3601)
(push 1)
(set-info :boogie-vc-id $42_TestNestedInvariants_mutate_outer_data_invariant_invalid$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16118) (let ((anon0$1_correct  (=> (|$IsValid'u64'| 3) (=> (and (|$IsValid'u64'| 2) (= $t4@0 ($42_TestNestedInvariants_Nested 2))) (and (=> (= (ControlFlow 0 14338) (- 0 16204)) (> (|$x#$42_TestNestedInvariants_Nested| $t4@0) 0)) (=> (> (|$x#$42_TestNestedInvariants_Nested| $t4@0) 0) (=> (= $t0@0 ($42_TestNestedInvariants_Outer 3 $t4@0)) (and (=> (= (ControlFlow 0 14338) (- 0 16227)) (< (|$y#$42_TestNestedInvariants_Outer| $t0@0) 4)) (=> (< (|$y#$42_TestNestedInvariants_Outer| $t0@0) 4) (and (=> (= (ControlFlow 0 14338) (- 0 16237)) (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| $t0@0)) (|$y#$42_TestNestedInvariants_Outer| $t0@0))) (=> (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| $t0@0)) (|$y#$42_TestNestedInvariants_Outer| $t0@0)) (=> (and (and (and (= $t0@0 $t0@0) (= $t5@0 ($Mutation_10815 ($Local 0) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) $t0@0))) (and (= |$temp_0'$42_TestNestedInvariants_Outer'@0| (|v#$Mutation_10815| $t5@0)) (= |$temp_0'$42_TestNestedInvariants_Outer'@0| |$temp_0'$42_TestNestedInvariants_Outer'@0|))) (and (and (|$IsValid'u64'| 2) (= $t7@0 ($Mutation_3601 (|l#$Mutation_10815| $t5@0) (let ((l (|l#Vec_2977| (|p#$Mutation_10815| $t5@0))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_10815| $t5@0)) l 0) (+ l 1))) (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@0))))) (and (= $t7@1 ($Mutation_3601 (|l#$Mutation_3601| $t7@0) (|p#$Mutation_3601| $t7@0) 2)) (= $t5@1 ($Mutation_10815 (|l#$Mutation_10815| $t5@0) (|p#$Mutation_10815| $t5@0) ($42_TestNestedInvariants_Outer (|v#$Mutation_3601| $t7@1) (|$n#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@0)))))))) (and (=> (= (ControlFlow 0 14338) (- 0 16342)) (< (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@1)) 4)) (=> (< (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@1)) 4) (and (=> (= (ControlFlow 0 14338) (- 0 16354)) (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@1))) (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@1)))) (=> (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@1))) (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@1))) (=> (= (ControlFlow 0 14338) (- 0 16371)) (> (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| (|v#$Mutation_10815| $t5@1))) 0))))))))))))))))))
(let ((anon0_correct  (=> (and (and (= (|l#Vec_2977| (|p#$Mutation_10815| $t1)) 0) (= (|l#Vec_2977| (|p#$Mutation_10815| $t5)) 0)) (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t7)) 0) (= (ControlFlow 0 14154) 14338))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 16118) 14154) anon0_correct)))
PreconditionGeneratedEntry_correct))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 16118)))
(get-value ((ControlFlow 0 14154)))
(get-value ((ControlFlow 0 14338)))
(assert (not (= (ControlFlow 0 14338) (- 16354))))
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
(declare-datatypes ((T@$42_TestNestedInvariants_Nested 0)) ((($42_TestNestedInvariants_Nested (|$x#$42_TestNestedInvariants_Nested| Int) ) ) ))
(declare-datatypes ((T@$42_TestNestedInvariants_Outer 0)) ((($42_TestNestedInvariants_Outer (|$y#$42_TestNestedInvariants_Outer| Int) (|$n#$42_TestNestedInvariants_Outer| T@$42_TestNestedInvariants_Nested) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10863 0)) ((($Mutation_10863 (|l#$Mutation_10863| T@$Location) (|p#$Mutation_10863| T@Vec_2977) (|v#$Mutation_10863| T@$42_TestNestedInvariants_Nested) ) ) ))
(declare-datatypes ((T@$Mutation_10815 0)) ((($Mutation_10815 (|l#$Mutation_10815| T@$Location) (|p#$Mutation_10815| T@Vec_2977) (|v#$Mutation_10815| T@$42_TestNestedInvariants_Outer) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8628 0)) ((($Mutation_8628 (|l#$Mutation_8628| T@$Location) (|p#$Mutation_8628| T@Vec_2977) (|v#$Mutation_8628| T@Vec_2977) ) ) ))
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
(declare-fun |$IsValid'$42_TestNestedInvariants_Nested'| (T@$42_TestNestedInvariants_Nested) Bool)
(declare-fun |$IsValid'$42_TestNestedInvariants_Outer'| (T@$42_TestNestedInvariants_Outer) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |nestedinvariantsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |nestedinvariantsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |nestedinvariantsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |nestedinvariantsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |nestedinvariantsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |nestedinvariantsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |nestedinvariantsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |nestedinvariantsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |nestedinvariantsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |nestedinvariantsdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |nestedinvariantsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |nestedinvariantsdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |nestedinvariantsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |nestedinvariantsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |nestedinvariantsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |nestedinvariantsdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |nestedinvariantsdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |nestedinvariantsdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |nestedinvariantsdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestNestedInvariants_Nested) ) (! (= (|$IsValid'$42_TestNestedInvariants_Nested'| s) (|$IsValid'u64'| (|$x#$42_TestNestedInvariants_Nested| s)))
 :qid |nestedinvariantsdefaultz3bpl.932:52|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestNestedInvariants_Nested'| s))
)))
(assert (forall ((s@@0 T@$42_TestNestedInvariants_Outer) ) (! (= (|$IsValid'$42_TestNestedInvariants_Outer'| s@@0)  (and (|$IsValid'u64'| (|$y#$42_TestNestedInvariants_Outer| s@@0)) (|$IsValid'$42_TestNestedInvariants_Nested'| (|$n#$42_TestNestedInvariants_Outer| s@@0))))
 :qid |nestedinvariantsdefaultz3bpl.948:51|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestNestedInvariants_Outer'| s@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |nestedinvariantsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |nestedinvariantsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |nestedinvariantsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |nestedinvariantsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |nestedinvariantsdefaultz3bpl.275:54|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |nestedinvariantsdefaultz3bpl.73:19|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |nestedinvariantsdefaultz3bpl.82:30|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |nestedinvariantsdefaultz3bpl.63:20|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t2@0 () T@$42_TestNestedInvariants_Nested)
(declare-fun $t3@0 () T@$42_TestNestedInvariants_Outer)
(push 1)
(set-info :boogie-vc-id $42_TestNestedInvariants_new$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16401) (let ((anon0$1_correct  (=> (|$IsValid'u64'| 3) (=> (and (|$IsValid'u64'| 2) (= $t2@0 ($42_TestNestedInvariants_Nested 2))) (and (=> (= (ControlFlow 0 14505) (- 0 16457)) (> (|$x#$42_TestNestedInvariants_Nested| $t2@0) 0)) (=> (> (|$x#$42_TestNestedInvariants_Nested| $t2@0) 0) (=> (= $t3@0 ($42_TestNestedInvariants_Outer 3 $t2@0)) (and (=> (= (ControlFlow 0 14505) (- 0 16480)) (< (|$y#$42_TestNestedInvariants_Outer| $t3@0) 4)) (=> (< (|$y#$42_TestNestedInvariants_Outer| $t3@0) 4) (=> (= (ControlFlow 0 14505) (- 0 16490)) (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| $t3@0)) (|$y#$42_TestNestedInvariants_Outer| $t3@0))))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 16401) 14505) anon0$1_correct)))
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
(declare-datatypes ((T@$42_TestNestedInvariants_Nested 0)) ((($42_TestNestedInvariants_Nested (|$x#$42_TestNestedInvariants_Nested| Int) ) ) ))
(declare-datatypes ((T@$42_TestNestedInvariants_Outer 0)) ((($42_TestNestedInvariants_Outer (|$y#$42_TestNestedInvariants_Outer| Int) (|$n#$42_TestNestedInvariants_Outer| T@$42_TestNestedInvariants_Nested) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10863 0)) ((($Mutation_10863 (|l#$Mutation_10863| T@$Location) (|p#$Mutation_10863| T@Vec_2977) (|v#$Mutation_10863| T@$42_TestNestedInvariants_Nested) ) ) ))
(declare-datatypes ((T@$Mutation_10815 0)) ((($Mutation_10815 (|l#$Mutation_10815| T@$Location) (|p#$Mutation_10815| T@Vec_2977) (|v#$Mutation_10815| T@$42_TestNestedInvariants_Outer) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8628 0)) ((($Mutation_8628 (|l#$Mutation_8628| T@$Location) (|p#$Mutation_8628| T@Vec_2977) (|v#$Mutation_8628| T@Vec_2977) ) ) ))
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
(declare-fun |$IsValid'$42_TestNestedInvariants_Nested'| (T@$42_TestNestedInvariants_Nested) Bool)
(declare-fun |$IsValid'$42_TestNestedInvariants_Outer'| (T@$42_TestNestedInvariants_Outer) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |nestedinvariantsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |nestedinvariantsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |nestedinvariantsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |nestedinvariantsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |nestedinvariantsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |nestedinvariantsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |nestedinvariantsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |nestedinvariantsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |nestedinvariantsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |nestedinvariantsdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |nestedinvariantsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |nestedinvariantsdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |nestedinvariantsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |nestedinvariantsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |nestedinvariantsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |nestedinvariantsdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |nestedinvariantsdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |nestedinvariantsdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |nestedinvariantsdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestNestedInvariants_Nested) ) (! (= (|$IsValid'$42_TestNestedInvariants_Nested'| s) (|$IsValid'u64'| (|$x#$42_TestNestedInvariants_Nested| s)))
 :qid |nestedinvariantsdefaultz3bpl.932:52|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestNestedInvariants_Nested'| s))
)))
(assert (forall ((s@@0 T@$42_TestNestedInvariants_Outer) ) (! (= (|$IsValid'$42_TestNestedInvariants_Outer'| s@@0)  (and (|$IsValid'u64'| (|$y#$42_TestNestedInvariants_Outer| s@@0)) (|$IsValid'$42_TestNestedInvariants_Nested'| (|$n#$42_TestNestedInvariants_Outer| s@@0))))
 :qid |nestedinvariantsdefaultz3bpl.948:51|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestNestedInvariants_Outer'| s@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |nestedinvariantsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |nestedinvariantsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |nestedinvariantsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |nestedinvariantsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |nestedinvariantsdefaultz3bpl.275:54|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |nestedinvariantsdefaultz3bpl.73:19|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |nestedinvariantsdefaultz3bpl.82:30|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |nestedinvariantsdefaultz3bpl.63:20|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t2@0 () T@$42_TestNestedInvariants_Nested)
(declare-fun $t3@0 () T@$42_TestNestedInvariants_Outer)
(push 1)
(set-info :boogie-vc-id $42_TestNestedInvariants_new_inner_data_invariant_invalid$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16517) (let ((anon0$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (|$IsValid'u64'| 0) (= $t2@0 ($42_TestNestedInvariants_Nested 0))) (and (=> (= (ControlFlow 0 14646) (- 0 16573)) (> (|$x#$42_TestNestedInvariants_Nested| $t2@0) 0)) (=> (> (|$x#$42_TestNestedInvariants_Nested| $t2@0) 0) (=> (= $t3@0 ($42_TestNestedInvariants_Outer 2 $t2@0)) (and (=> (= (ControlFlow 0 14646) (- 0 16596)) (< (|$y#$42_TestNestedInvariants_Outer| $t3@0) 4)) (=> (< (|$y#$42_TestNestedInvariants_Outer| $t3@0) 4) (=> (= (ControlFlow 0 14646) (- 0 16606)) (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| $t3@0)) (|$y#$42_TestNestedInvariants_Outer| $t3@0))))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 16517) 14646) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 16517)))
(get-value ((ControlFlow 0 14646)))
(assert (not (= (ControlFlow 0 14646) (- 16573))))
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
(declare-datatypes ((T@$42_TestNestedInvariants_Nested 0)) ((($42_TestNestedInvariants_Nested (|$x#$42_TestNestedInvariants_Nested| Int) ) ) ))
(declare-datatypes ((T@$42_TestNestedInvariants_Outer 0)) ((($42_TestNestedInvariants_Outer (|$y#$42_TestNestedInvariants_Outer| Int) (|$n#$42_TestNestedInvariants_Outer| T@$42_TestNestedInvariants_Nested) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10863 0)) ((($Mutation_10863 (|l#$Mutation_10863| T@$Location) (|p#$Mutation_10863| T@Vec_2977) (|v#$Mutation_10863| T@$42_TestNestedInvariants_Nested) ) ) ))
(declare-datatypes ((T@$Mutation_10815 0)) ((($Mutation_10815 (|l#$Mutation_10815| T@$Location) (|p#$Mutation_10815| T@Vec_2977) (|v#$Mutation_10815| T@$42_TestNestedInvariants_Outer) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8628 0)) ((($Mutation_8628 (|l#$Mutation_8628| T@$Location) (|p#$Mutation_8628| T@Vec_2977) (|v#$Mutation_8628| T@Vec_2977) ) ) ))
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
(declare-fun |$IsValid'$42_TestNestedInvariants_Nested'| (T@$42_TestNestedInvariants_Nested) Bool)
(declare-fun |$IsValid'$42_TestNestedInvariants_Outer'| (T@$42_TestNestedInvariants_Outer) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |nestedinvariantsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |nestedinvariantsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |nestedinvariantsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |nestedinvariantsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |nestedinvariantsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |nestedinvariantsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |nestedinvariantsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |nestedinvariantsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |nestedinvariantsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |nestedinvariantsdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |nestedinvariantsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |nestedinvariantsdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |nestedinvariantsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |nestedinvariantsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |nestedinvariantsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |nestedinvariantsdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |nestedinvariantsdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |nestedinvariantsdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |nestedinvariantsdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestNestedInvariants_Nested) ) (! (= (|$IsValid'$42_TestNestedInvariants_Nested'| s) (|$IsValid'u64'| (|$x#$42_TestNestedInvariants_Nested| s)))
 :qid |nestedinvariantsdefaultz3bpl.932:52|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestNestedInvariants_Nested'| s))
)))
(assert (forall ((s@@0 T@$42_TestNestedInvariants_Outer) ) (! (= (|$IsValid'$42_TestNestedInvariants_Outer'| s@@0)  (and (|$IsValid'u64'| (|$y#$42_TestNestedInvariants_Outer| s@@0)) (|$IsValid'$42_TestNestedInvariants_Nested'| (|$n#$42_TestNestedInvariants_Outer| s@@0))))
 :qid |nestedinvariantsdefaultz3bpl.948:51|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestNestedInvariants_Outer'| s@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |nestedinvariantsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |nestedinvariantsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |nestedinvariantsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |nestedinvariantsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |nestedinvariantsdefaultz3bpl.275:54|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |nestedinvariantsdefaultz3bpl.73:19|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |nestedinvariantsdefaultz3bpl.82:30|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |nestedinvariantsdefaultz3bpl.63:20|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t2@0 () T@$42_TestNestedInvariants_Nested)
(declare-fun $t3@0 () T@$42_TestNestedInvariants_Outer)
(push 1)
(set-info :boogie-vc-id $42_TestNestedInvariants_new_outer_data_invariant_invalid$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16633) (let ((anon0$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (|$IsValid'u64'| 2) (= $t2@0 ($42_TestNestedInvariants_Nested 2))) (and (=> (= (ControlFlow 0 14787) (- 0 16689)) (> (|$x#$42_TestNestedInvariants_Nested| $t2@0) 0)) (=> (> (|$x#$42_TestNestedInvariants_Nested| $t2@0) 0) (=> (= $t3@0 ($42_TestNestedInvariants_Outer 2 $t2@0)) (and (=> (= (ControlFlow 0 14787) (- 0 16712)) (< (|$y#$42_TestNestedInvariants_Outer| $t3@0) 4)) (=> (< (|$y#$42_TestNestedInvariants_Outer| $t3@0) 4) (=> (= (ControlFlow 0 14787) (- 0 16722)) (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| $t3@0)) (|$y#$42_TestNestedInvariants_Outer| $t3@0))))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 16633) 14787) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 16633)))
(get-value ((ControlFlow 0 14787)))
(assert (not (= (ControlFlow 0 14787) (- 16722))))
(check-sat)
(pop 1)
; Invalid
