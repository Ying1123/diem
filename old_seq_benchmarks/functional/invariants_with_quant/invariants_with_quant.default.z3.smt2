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
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8876 0)) ((($Mutation_8876 (|l#$Mutation_8876| T@$Location) (|p#$Mutation_8876| T@Vec_2977) (|v#$Mutation_8876| T@Vec_2977) ) ) ))
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
(declare-fun |$IsEqual'vec'u64''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_2977 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |invariantswithquantdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |invariantswithquantdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |invariantswithquantdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |invariantswithquantdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |invariantswithquantdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |invariantswithquantdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |invariantswithquantdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |invariantswithquantdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u64''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |invariantswithquantdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |invariantswithquantdefaultz3bpl.613:29|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u64''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |invariantswithquantdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |invariantswithquantdefaultz3bpl.619:29|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |invariantswithquantdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |invariantswithquantdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |invariantswithquantdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_2977| v1@@0) (|l#Vec_2977| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_2977 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_2977| v2@@0) i@@4)))
 :qid |invariantswithquantdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |invariantswithquantdefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_2977 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@6) i@@5)))
 :qid |invariantswithquantdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |invariantswithquantdefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_2977 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@7) e@@0))
 :qid |invariantswithquantdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_2977 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |invariantswithquantdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |invariantswithquantdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |invariantswithquantdefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_2977) (v2@@2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |invariantswithquantdefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |invariantswithquantdefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |invariantswithquantdefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_2977) (i@@8 Int) ) (! (= (InRangeVec_2977 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_2977| v@@8))))
 :qid |invariantswithquantdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_2977) (e@@1 Int) ) (! (let ((i@@9 (IndexOfVec_2977 v@@9 e@@1)))
(ite  (not (exists ((i@@10 Int) ) (!  (and (InRangeVec_2977 v@@9 i@@10) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@10) e@@1))
 :qid |invariantswithquantdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@9 (- 0 1))  (and (and (InRangeVec_2977 v@@9 i@@9) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@9) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@9)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) j@@1) e@@1)))
 :qid |invariantswithquantdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |invariantswithquantdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@9 e@@1))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |invariantswithquantdefaultz3bpl.275:54|
 :skolemid |39|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@12 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@12) (ite  (and (>= i@@12 |l#0@@0|) (< i@@12 |l#1|)) (ite (< i@@12 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@12) (|Select__T@[Int]Int_| |l#4| (- i@@12 |l#5|))) |l#6|))
 :qid |invariantswithquantdefaultz3bpl.73:19|
 :skolemid |40|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@12))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@13 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@13) (ite  (and (<= |l#0@@1| i@@13) (< i@@13 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@13) |l#4@@0|)) |l#5@@0|))
 :qid |invariantswithquantdefaultz3bpl.82:30|
 :skolemid |41|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@13))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@2 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2) (ite  (and (>= j@@2 |l#0@@2|) (< j@@2 |l#1@@1|)) (ite (< j@@2 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@2) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@2 |l#5@@1|))) |l#6@@0|))
 :qid |invariantswithquantdefaultz3bpl.63:20|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@2 () T@Vec_2977)
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_8876)
(declare-fun $t6@0 () T@$Mutation_8876)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t0@1 () T@Vec_2977)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_8876)
(declare-fun MapConstVec_3206 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_3206 () Int)
(declare-fun $t4@0 () T@$Mutation_8876)
(declare-fun $t0@0 () T@Vec_2977)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_8876)
(declare-fun $t2@0 () T@$Mutation_8876)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_2977)
(declare-fun $t2 () T@$Mutation_8876)
(declare-fun $t4 () T@$Mutation_8876)
(declare-fun $t6 () T@$Mutation_8876)
(push 1)
(set-info :boogie-vc-id $42_TestQuantInvariant_vector_of_proper_positives$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14764) (let ((anon13_Else_correct  (=> (not false) (=> (and (= $t0@2 (|v#$Mutation_8876| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= $t0@2 $t0@2)) (and (=> (= (ControlFlow 0 14021) (- 0 15127)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 14021) (- 0 15134)) (let (($range_0 $t0@2))
(forall (($i_1 Int) ) (!  (=> (InRangeVec_2977 $range_0 $i_1) (let ((n (|Select__T@[Int]Int_| (|v#Vec_2977| $range_0) $i_1)))
(> n 0)))
 :qid |invariantswithquantdefaultz3bpl.1221:37|
 :skolemid |35|
)))) (=> (let (($range_0 $t0@2))
(forall (($i_1@@0 Int) ) (!  (=> (InRangeVec_2977 $range_0 $i_1@@0) (let ((n (|Select__T@[Int]Int_| (|v#Vec_2977| $range_0) $i_1@@0)))
(> n 0)))
 :qid |invariantswithquantdefaultz3bpl.1221:37|
 :skolemid |35|
))) (and (=> (= (ControlFlow 0 14021) (- 0 15165)) (let (($range_0@@0 ($Range 0 (|l#Vec_2977| $t0@2))))
(let (($range_1 ($Range 0 (|l#Vec_2977| $t0@2))))
(forall (($i_2 Int) ($i_3 Int) ) (!  (=> ($InRange $range_0@@0 $i_2) (=> ($InRange $range_1 $i_3) (let ((i@@14 $i_2))
(let ((j@@3 $i_3))
 (=> (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t0@2) i@@14) (|Select__T@[Int]Int_| (|v#Vec_2977| $t0@2) j@@3)) (= i@@14 j@@3))))))
 :qid |invariantswithquantdefaultz3bpl.1227:97|
 :skolemid |36|
))))) (=> (let (($range_0@@0 ($Range 0 (|l#Vec_2977| $t0@2))))
(let (($range_1 ($Range 0 (|l#Vec_2977| $t0@2))))
(forall (($i_2@@0 Int) ($i_3@@0 Int) ) (!  (=> ($InRange $range_0@@0 $i_2@@0) (=> ($InRange $range_1 $i_3@@0) (let ((i@@14 $i_2@@0))
(let ((j@@3 $i_3@@0))
 (=> (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t0@2) i@@14) (|Select__T@[Int]Int_| (|v#Vec_2977| $t0@2) j@@3)) (= i@@14 j@@3))))))
 :qid |invariantswithquantdefaultz3bpl.1227:97|
 :skolemid |36|
)))) (and (=> (= (ControlFlow 0 14021) (- 0 15233)) (forall ((i@@15 Int) (j@@4 Int) ) (!  (=> (|$IsValid'u64'| i@@15) (=> (|$IsValid'u64'| j@@4) (=> (and (and (and (and (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t0@2) i@@15) (|Select__T@[Int]Int_| (|v#Vec_2977| $t0@2) j@@4)) (>= i@@15 0)) (< i@@15 (|l#Vec_2977| $t0@2))) (>= j@@4 0)) (< j@@4 (|l#Vec_2977| $t0@2))) (= i@@15 j@@4))))
 :qid |invariantswithquantdefaultz3bpl.1234:15|
 :skolemid |37|
 :pattern ( (|Select__T@[Int]Int_| (|v#Vec_2977| $t0@2) i@@15) (|Select__T@[Int]Int_| (|v#Vec_2977| $t0@2) j@@4))
))) (=> (forall ((i@@16 Int) (j@@5 Int) ) (!  (=> (|$IsValid'u64'| i@@16) (=> (|$IsValid'u64'| j@@5) (=> (and (and (and (and (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t0@2) i@@16) (|Select__T@[Int]Int_| (|v#Vec_2977| $t0@2) j@@5)) (>= i@@16 0)) (< i@@16 (|l#Vec_2977| $t0@2))) (>= j@@5 0)) (< j@@5 (|l#Vec_2977| $t0@2))) (= i@@16 j@@5))))
 :qid |invariantswithquantdefaultz3bpl.1234:15|
 :skolemid |37|
 :pattern ( (|Select__T@[Int]Int_| (|v#Vec_2977| $t0@2) i@@16) (|Select__T@[Int]Int_| (|v#Vec_2977| $t0@2) j@@5))
)) (=> (= (ControlFlow 0 14021) (- 0 15316)) (let (($range_0@@1 ($Range 0 (|l#Vec_2977| $t0@2))))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@1) (let ((i@@17 $i_1@@1))
(let ((i@@18 (|Select__T@[Int]Int_| (|v#Vec_2977| $t0@2) i@@17)))
(> i@@18 0))))
 :qid |invariantswithquantdefaultz3bpl.1239:56|
 :skolemid |38|
 :pattern ( (let ((i@@19 $i_1@@1))
(|Select__T@[Int]Int_| (|v#Vec_2977| $t0@2) i@@19)))
))))))))))))))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_8876 (|l#$Mutation_8876| $t6@0) (|p#$Mutation_8876| $t6@0) (let ((l (|l#Vec_2977| (|v#$Mutation_8876| $t6@0))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_8876| $t6@0)) l 3) (+ l 1))))) (and (=> (= (ControlFlow 0 13741) 14035) anon13_Then_correct) (=> (= (ControlFlow 0 13741) 14021) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (not false) (=> (and (and (= $t0@1 (|v#$Mutation_8876| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t6@0 ($Mutation_8876 ($Local 0) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) $t0@1))) (and (|$IsValid'u64'| 3) (= (ControlFlow 0 13747) 13741))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_8876 (|l#$Mutation_8876| $t4@0) (|p#$Mutation_8876| $t4@0) (let ((l@@0 (|l#Vec_2977| (|v#$Mutation_8876| $t4@0))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_8876| $t4@0)) l@@0 2) (+ l@@0 1))))) (and (=> (= (ControlFlow 0 13654) 14059) anon12_Then_correct) (=> (= (ControlFlow 0 13654) 13747) anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_8876| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t4@0 ($Mutation_8876 ($Local 0) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) $t0@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 13660) 13654))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon11_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_8876 (|l#$Mutation_8876| $t2@0) (|p#$Mutation_8876| $t2@0) (let ((l@@1 (|l#Vec_2977| (|v#$Mutation_8876| $t2@0))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_8876| $t2@0)) l@@1 1) (+ l@@1 1))))) (and (=> (= (ControlFlow 0 13567) 14073) anon11_Then_correct) (=> (= (ControlFlow 0 13567) 13660) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t2@0 ($Mutation_8876 ($Local 0) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 13573) 13567))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0)) (and (=> (= (ControlFlow 0 13478) 14087) anon10_Then_correct) (=> (= (ControlFlow 0 13478) 13573) anon10_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 13484) 13478) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (and (= (|l#Vec_2977| (|p#$Mutation_8876| $t2)) 0) (= (|l#Vec_2977| (|p#$Mutation_8876| $t4)) 0)) (and (= (|l#Vec_2977| (|p#$Mutation_8876| $t6)) 0) (= (ControlFlow 0 13454) 13484))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 14764) 13454) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
