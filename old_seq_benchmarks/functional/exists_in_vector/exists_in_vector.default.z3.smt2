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
(declare-datatypes ((T@$Mutation_8979 0)) ((($Mutation_8979 (|l#$Mutation_8979| T@$Location) (|p#$Mutation_8979| T@Vec_2977) (|v#$Mutation_8979| T@Vec_2977) ) ) ))
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
 :qid |existsinvectordefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |existsinvectordefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |existsinvectordefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |existsinvectordefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |existsinvectordefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |existsinvectordefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |existsinvectordefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |existsinvectordefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u64''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |existsinvectordefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |existsinvectordefaultz3bpl.613:29|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u64''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |existsinvectordefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |existsinvectordefaultz3bpl.619:29|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |existsinvectordefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |existsinvectordefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |existsinvectordefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_2977| v1@@0) (|l#Vec_2977| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_2977 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_2977| v2@@0) i@@4)))
 :qid |existsinvectordefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |existsinvectordefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_2977 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@6) i@@5)))
 :qid |existsinvectordefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |existsinvectordefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_2977 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@7) e@@0))
 :qid |existsinvectordefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_2977 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |existsinvectordefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |existsinvectordefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |existsinvectordefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_2977) (v2@@2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |existsinvectordefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |existsinvectordefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |existsinvectordefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_2977) (i@@8 Int) ) (! (= (InRangeVec_2977 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_2977| v@@8))))
 :qid |existsinvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_2977) (e@@1 Int) ) (! (let ((i@@9 (IndexOfVec_2977 v@@9 e@@1)))
(ite  (not (exists ((i@@10 Int) ) (!  (and (InRangeVec_2977 v@@9 i@@10) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@10) e@@1))
 :qid |existsinvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@9 (- 0 1))  (and (and (InRangeVec_2977 v@@9 i@@9) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@9) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@9)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) j@@1) e@@1)))
 :qid |existsinvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |existsinvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@9 e@@1))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |existsinvectordefaultz3bpl.275:54|
 :skolemid |49|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@12 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@12) (ite  (and (>= i@@12 |l#0@@0|) (< i@@12 |l#1|)) (ite (< i@@12 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@12) (|Select__T@[Int]Int_| |l#4| (- i@@12 |l#5|))) |l#6|))
 :qid |existsinvectordefaultz3bpl.73:19|
 :skolemid |50|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@12))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@13 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@13) (ite  (and (<= |l#0@@1| i@@13) (< i@@13 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@13) |l#4@@0|)) |l#5@@0|))
 :qid |existsinvectordefaultz3bpl.82:30|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@13))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@2 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2) (ite  (and (>= j@@2 |l#0@@2|) (< j@@2 |l#1@@1|)) (ite (< j@@2 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@2) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@2 |l#5@@1|))) |l#6@@0|))
 :qid |existsinvectordefaultz3bpl.63:20|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () T@Vec_2977)
(push 1)
(set-info :boogie-vc-id $42_VectorExists_do_nothing_ref$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14899) (let ((anon0$1_correct  (=> (and (|$IsValid'vec'u64''| _$t0) (= _$t0 _$t0)) (and (=> (= (ControlFlow 0 13925) (- 0 14940)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 13925) (- 0 14947)) (|$IsEqual'vec'u64''| _$t0 _$t0)) (=> (|$IsEqual'vec'u64''| _$t0 _$t0) (and (=> (= (ControlFlow 0 13925) (- 0 14954)) (exists ((l Int) ) (!  (and (|$IsValid'u64'| l) (= l (|l#Vec_2977| _$t0)))
 :qid |existsinvectordefaultz3bpl.1160:15|
 :skolemid |38|
))) (=> (exists ((l@@0 Int) ) (!  (and (|$IsValid'u64'| l@@0) (= l@@0 (|l#Vec_2977| _$t0)))
 :qid |existsinvectordefaultz3bpl.1160:15|
 :skolemid |38|
)) (and (=> (= (ControlFlow 0 13925) (- 0 14973)) (exists ((l@@1 Int) ) (!  (and (and (|$IsValid'u64'| l@@1) (= l@@1 (|l#Vec_2977| _$t0))) (= l@@1 (|l#Vec_2977| _$t0)))
 :qid |existsinvectordefaultz3bpl.1165:15|
 :skolemid |39|
))) (=> (exists ((l@@2 Int) ) (!  (and (and (|$IsValid'u64'| l@@2) (= l@@2 (|l#Vec_2977| _$t0))) (= l@@2 (|l#Vec_2977| _$t0)))
 :qid |existsinvectordefaultz3bpl.1165:15|
 :skolemid |39|
)) (and (=> (= (ControlFlow 0 13925) (- 0 15001)) (=> (let (($range_0 _$t0))
(exists (($i_1 Int) ) (!  (and (InRangeVec_2977 $range_0 $i_1) (let ((x (|Select__T@[Int]Int_| (|v#Vec_2977| $range_0) $i_1)))
(= x 0)))
 :qid |existsinvectordefaultz3bpl.1109:33|
 :skolemid |35|
))) (let (($range_0@@0 _$t0))
(exists (($i_1@@0 Int) ) (!  (and (InRangeVec_2977 $range_0@@0 $i_1@@0) (let ((x@@0 (|Select__T@[Int]Int_| (|v#Vec_2977| $range_0@@0) $i_1@@0)))
(= x@@0 0)))
 :qid |existsinvectordefaultz3bpl.1109:33|
 :skolemid |35|
))))) (=> (=> (let (($range_0 _$t0))
(exists (($i_1@@1 Int) ) (!  (and (InRangeVec_2977 $range_0 $i_1@@1) (let ((x (|Select__T@[Int]Int_| (|v#Vec_2977| $range_0) $i_1@@1)))
(= x 0)))
 :qid |existsinvectordefaultz3bpl.1109:33|
 :skolemid |35|
))) (let (($range_0@@0 _$t0))
(exists (($i_1@@2 Int) ) (!  (and (InRangeVec_2977 $range_0@@0 $i_1@@2) (let ((x@@0 (|Select__T@[Int]Int_| (|v#Vec_2977| $range_0@@0) $i_1@@2)))
(= x@@0 0)))
 :qid |existsinvectordefaultz3bpl.1109:33|
 :skolemid |35|
)))) (and (=> (= (ControlFlow 0 13925) (- 0 15016)) (=> (let (($range_2 ($Range 0 (|l#Vec_2977| _$t0))))
(exists (($i_3 Int) ) (!  (and ($InRange $range_2 $i_3) (let ((i@@14 $i_3))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| _$t0) i@@14) 0)))
 :qid |existsinvectordefaultz3bpl.1115:52|
 :skolemid |36|
))) (let (($range_2@@0 ($Range 0 (|l#Vec_2977| _$t0))))
(exists (($i_3@@0 Int) ) (!  (and ($InRange $range_2@@0 $i_3@@0) (let ((i@@15 $i_3@@0))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| _$t0) i@@15) 0)))
 :qid |existsinvectordefaultz3bpl.1115:52|
 :skolemid |36|
))))) (=> (=> (let (($range_2 ($Range 0 (|l#Vec_2977| _$t0))))
(exists (($i_3@@1 Int) ) (!  (and ($InRange $range_2 $i_3@@1) (let ((i@@14 $i_3@@1))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| _$t0) i@@14) 0)))
 :qid |existsinvectordefaultz3bpl.1115:52|
 :skolemid |36|
))) (let (($range_2@@0 ($Range 0 (|l#Vec_2977| _$t0))))
(exists (($i_3@@2 Int) ) (!  (and ($InRange $range_2@@0 $i_3@@2) (let ((i@@15 $i_3@@2))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| _$t0) i@@15) 0)))
 :qid |existsinvectordefaultz3bpl.1115:52|
 :skolemid |36|
)))) (and (=> (= (ControlFlow 0 13925) (- 0 15031)) (=> (exists ((i@@16 Int) ) (!  (and (and (|$IsValid'u64'| i@@16) (and (<= 0 i@@16) (< i@@16 (|l#Vec_2977| _$t0)))) (= (|Select__T@[Int]Int_| (|v#Vec_2977| _$t0) i@@16) 0))
 :qid |existsinvectordefaultz3bpl.1121:13|
 :skolemid |37|
)) (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (<= 0 i@@17) (< i@@17 (|l#Vec_2977| _$t0)))) (= (|Select__T@[Int]Int_| (|v#Vec_2977| _$t0) i@@17) 0))
 :qid |existsinvectordefaultz3bpl.1121:13|
 :skolemid |37|
)))) (=> (=> (exists ((i@@18 Int) ) (!  (and (and (|$IsValid'u64'| i@@18) (and (<= 0 i@@18) (< i@@18 (|l#Vec_2977| _$t0)))) (= (|Select__T@[Int]Int_| (|v#Vec_2977| _$t0) i@@18) 0))
 :qid |existsinvectordefaultz3bpl.1121:13|
 :skolemid |37|
)) (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (and (<= 0 i@@19) (< i@@19 (|l#Vec_2977| _$t0)))) (= (|Select__T@[Int]Int_| (|v#Vec_2977| _$t0) i@@19) 0))
 :qid |existsinvectordefaultz3bpl.1121:13|
 :skolemid |37|
))) (and (=> (= (ControlFlow 0 13925) (- 0 15046)) (forall ((e@@2 Int) ) (!  (=> (|$IsValid'u64'| e@@2) (=> (let (($range_0@@1 _$t0))
(exists (($i_1@@3 Int) ) (!  (and (InRangeVec_2977 $range_0@@1 $i_1@@3) (let ((x@@1 (|Select__T@[Int]Int_| (|v#Vec_2977| $range_0@@1) $i_1@@3)))
(= x@@1 e@@2)))
 :qid |existsinvectordefaultz3bpl.1109:33|
 :skolemid |35|
))) (let (($range_0@@2 _$t0))
(exists (($i_1@@4 Int) ) (!  (and (InRangeVec_2977 $range_0@@2 $i_1@@4) (let ((x@@2 (|Select__T@[Int]Int_| (|v#Vec_2977| $range_0@@2) $i_1@@4)))
(= x@@2 e@@2)))
 :qid |existsinvectordefaultz3bpl.1109:33|
 :skolemid |35|
)))))
 :qid |existsinvectordefaultz3bpl.1185:15|
 :skolemid |40|
))) (=> (forall ((e@@3 Int) ) (!  (=> (|$IsValid'u64'| e@@3) (=> (let (($range_0@@1 _$t0))
(exists (($i_1@@5 Int) ) (!  (and (InRangeVec_2977 $range_0@@1 $i_1@@5) (let ((x@@1 (|Select__T@[Int]Int_| (|v#Vec_2977| $range_0@@1) $i_1@@5)))
(= x@@1 e@@3)))
 :qid |existsinvectordefaultz3bpl.1109:33|
 :skolemid |35|
))) (let (($range_0@@2 _$t0))
(exists (($i_1@@6 Int) ) (!  (and (InRangeVec_2977 $range_0@@2 $i_1@@6) (let ((x@@2 (|Select__T@[Int]Int_| (|v#Vec_2977| $range_0@@2) $i_1@@6)))
(= x@@2 e@@3)))
 :qid |existsinvectordefaultz3bpl.1109:33|
 :skolemid |35|
)))))
 :qid |existsinvectordefaultz3bpl.1185:15|
 :skolemid |40|
)) (and (=> (= (ControlFlow 0 13925) (- 0 15070)) (forall ((e@@4 Int) ) (!  (=> (|$IsValid'u64'| e@@4) (=> (let (($range_2@@1 ($Range 0 (|l#Vec_2977| _$t0))))
(exists (($i_3@@3 Int) ) (!  (and ($InRange $range_2@@1 $i_3@@3) (let ((i@@20 $i_3@@3))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| _$t0) i@@20) e@@4)))
 :qid |existsinvectordefaultz3bpl.1115:52|
 :skolemid |36|
))) (let (($range_2@@2 ($Range 0 (|l#Vec_2977| _$t0))))
(exists (($i_3@@4 Int) ) (!  (and ($InRange $range_2@@2 $i_3@@4) (let ((i@@21 $i_3@@4))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| _$t0) i@@21) e@@4)))
 :qid |existsinvectordefaultz3bpl.1115:52|
 :skolemid |36|
)))))
 :qid |existsinvectordefaultz3bpl.1190:15|
 :skolemid |41|
))) (=> (forall ((e@@5 Int) ) (!  (=> (|$IsValid'u64'| e@@5) (=> (let (($range_2@@1 ($Range 0 (|l#Vec_2977| _$t0))))
(exists (($i_3@@5 Int) ) (!  (and ($InRange $range_2@@1 $i_3@@5) (let ((i@@20 $i_3@@5))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| _$t0) i@@20) e@@5)))
 :qid |existsinvectordefaultz3bpl.1115:52|
 :skolemid |36|
))) (let (($range_2@@2 ($Range 0 (|l#Vec_2977| _$t0))))
(exists (($i_3@@6 Int) ) (!  (and ($InRange $range_2@@2 $i_3@@6) (let ((i@@21 $i_3@@6))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| _$t0) i@@21) e@@5)))
 :qid |existsinvectordefaultz3bpl.1115:52|
 :skolemid |36|
)))))
 :qid |existsinvectordefaultz3bpl.1190:15|
 :skolemid |41|
)) (=> (= (ControlFlow 0 13925) (- 0 15094)) (forall ((e@@6 Int) ) (!  (=> (|$IsValid'u64'| e@@6) (=> (exists ((i@@22 Int) ) (!  (and (and (|$IsValid'u64'| i@@22) (and (<= 0 i@@22) (< i@@22 (|l#Vec_2977| _$t0)))) (= (|Select__T@[Int]Int_| (|v#Vec_2977| _$t0) i@@22) e@@6))
 :qid |existsinvectordefaultz3bpl.1121:13|
 :skolemid |37|
)) (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (<= 0 i@@23) (< i@@23 (|l#Vec_2977| _$t0)))) (= (|Select__T@[Int]Int_| (|v#Vec_2977| _$t0) i@@23) e@@6))
 :qid |existsinvectordefaultz3bpl.1121:13|
 :skolemid |37|
))))
 :qid |existsinvectordefaultz3bpl.1195:15|
 :skolemid |42|
))))))))))))))))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 14899) 13925) anon0$1_correct)))
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
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8979 0)) ((($Mutation_8979 (|l#$Mutation_8979| T@$Location) (|p#$Mutation_8979| T@Vec_2977) (|v#$Mutation_8979| T@Vec_2977) ) ) ))
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
 :qid |existsinvectordefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |existsinvectordefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |existsinvectordefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |existsinvectordefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |existsinvectordefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |existsinvectordefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |existsinvectordefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |existsinvectordefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u64''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |existsinvectordefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |existsinvectordefaultz3bpl.613:29|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u64''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |existsinvectordefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |existsinvectordefaultz3bpl.619:29|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |existsinvectordefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |existsinvectordefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |existsinvectordefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_2977| v1@@0) (|l#Vec_2977| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_2977 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_2977| v2@@0) i@@4)))
 :qid |existsinvectordefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |existsinvectordefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_2977 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@6) i@@5)))
 :qid |existsinvectordefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |existsinvectordefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_2977 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@7) e@@0))
 :qid |existsinvectordefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_2977 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |existsinvectordefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |existsinvectordefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |existsinvectordefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_2977) (v2@@2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |existsinvectordefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |existsinvectordefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |existsinvectordefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_2977) (i@@8 Int) ) (! (= (InRangeVec_2977 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_2977| v@@8))))
 :qid |existsinvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_2977) (e@@1 Int) ) (! (let ((i@@9 (IndexOfVec_2977 v@@9 e@@1)))
(ite  (not (exists ((i@@10 Int) ) (!  (and (InRangeVec_2977 v@@9 i@@10) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@10) e@@1))
 :qid |existsinvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@9 (- 0 1))  (and (and (InRangeVec_2977 v@@9 i@@9) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@9) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@9)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) j@@1) e@@1)))
 :qid |existsinvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |existsinvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@9 e@@1))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |existsinvectordefaultz3bpl.275:54|
 :skolemid |49|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@12 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@12) (ite  (and (>= i@@12 |l#0@@0|) (< i@@12 |l#1|)) (ite (< i@@12 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@12) (|Select__T@[Int]Int_| |l#4| (- i@@12 |l#5|))) |l#6|))
 :qid |existsinvectordefaultz3bpl.73:19|
 :skolemid |50|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@12))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@13 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@13) (ite  (and (<= |l#0@@1| i@@13) (< i@@13 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@13) |l#4@@0|)) |l#5@@0|))
 :qid |existsinvectordefaultz3bpl.82:30|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@13))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@2 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2) (ite  (and (>= j@@2 |l#0@@2|) (< j@@2 |l#1@@1|)) (ite (< j@@2 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@2) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@2 |l#5@@1|))) |l#6@@0|))
 :qid |existsinvectordefaultz3bpl.63:20|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () T@$Mutation_8979)
(declare-fun $t1@0 () T@Vec_2977)
(declare-fun |$temp_0'vec'u64''@0| () T@Vec_2977)
(declare-fun |$temp_0'vec'u64''@1| () T@Vec_2977)
(push 1)
(set-info :boogie-vc-id $42_VectorExists_do_nothing_ref_mut$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 15133) (let ((anon0$1_correct  (=> (= (|l#$Mutation_8979| _$t0) ($Param 0)) (=> (and (|$IsValid'vec'u64''| (|v#$Mutation_8979| _$t0)) (= $t1@0 (|v#$Mutation_8979| _$t0))) (=> (and (and (= |$temp_0'vec'u64''@0| (|v#$Mutation_8979| _$t0)) (= |$temp_0'vec'u64''@0| |$temp_0'vec'u64''@0|)) (and (= |$temp_0'vec'u64''@1| (|v#$Mutation_8979| _$t0)) (= |$temp_0'vec'u64''@1| |$temp_0'vec'u64''@1|))) (and (=> (= (ControlFlow 0 14274) (- 0 15225)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 14274) (- 0 15232)) (|$IsEqual'vec'u64''| $t1@0 (|v#$Mutation_8979| _$t0))) (=> (|$IsEqual'vec'u64''| $t1@0 (|v#$Mutation_8979| _$t0)) (and (=> (= (ControlFlow 0 14274) (- 0 15241)) (exists ((l Int) ) (!  (and (|$IsValid'u64'| l) (= l (|l#Vec_2977| $t1@0)))
 :qid |existsinvectordefaultz3bpl.1248:15|
 :skolemid |43|
))) (=> (exists ((l@@0 Int) ) (!  (and (|$IsValid'u64'| l@@0) (= l@@0 (|l#Vec_2977| $t1@0)))
 :qid |existsinvectordefaultz3bpl.1248:15|
 :skolemid |43|
)) (and (=> (= (ControlFlow 0 14274) (- 0 15260)) (exists ((l@@1 Int) ) (!  (and (|$IsValid'u64'| l@@1) (= l@@1 (|l#Vec_2977| (|v#$Mutation_8979| _$t0))))
 :qid |existsinvectordefaultz3bpl.1253:15|
 :skolemid |44|
))) (=> (exists ((l@@2 Int) ) (!  (and (|$IsValid'u64'| l@@2) (= l@@2 (|l#Vec_2977| (|v#$Mutation_8979| _$t0))))
 :qid |existsinvectordefaultz3bpl.1253:15|
 :skolemid |44|
)) (and (=> (= (ControlFlow 0 14274) (- 0 15281)) (exists ((l@@3 Int) ) (!  (and (and (|$IsValid'u64'| l@@3) (= l@@3 (|l#Vec_2977| $t1@0))) (= l@@3 (|l#Vec_2977| (|v#$Mutation_8979| _$t0))))
 :qid |existsinvectordefaultz3bpl.1258:15|
 :skolemid |45|
))) (=> (exists ((l@@4 Int) ) (!  (and (and (|$IsValid'u64'| l@@4) (= l@@4 (|l#Vec_2977| $t1@0))) (= l@@4 (|l#Vec_2977| (|v#$Mutation_8979| _$t0))))
 :qid |existsinvectordefaultz3bpl.1258:15|
 :skolemid |45|
)) (and (=> (= (ControlFlow 0 14274) (- 0 15311)) (=> (let (($range_0 $t1@0))
(exists (($i_1 Int) ) (!  (and (InRangeVec_2977 $range_0 $i_1) (let ((x (|Select__T@[Int]Int_| (|v#Vec_2977| $range_0) $i_1)))
(= x 0)))
 :qid |existsinvectordefaultz3bpl.1109:33|
 :skolemid |35|
))) (let (($range_0@@0 (|v#$Mutation_8979| _$t0)))
(exists (($i_1@@0 Int) ) (!  (and (InRangeVec_2977 $range_0@@0 $i_1@@0) (let ((x@@0 (|Select__T@[Int]Int_| (|v#Vec_2977| $range_0@@0) $i_1@@0)))
(= x@@0 0)))
 :qid |existsinvectordefaultz3bpl.1109:33|
 :skolemid |35|
))))) (=> (=> (let (($range_0 $t1@0))
(exists (($i_1@@1 Int) ) (!  (and (InRangeVec_2977 $range_0 $i_1@@1) (let ((x (|Select__T@[Int]Int_| (|v#Vec_2977| $range_0) $i_1@@1)))
(= x 0)))
 :qid |existsinvectordefaultz3bpl.1109:33|
 :skolemid |35|
))) (let (($range_0@@0 (|v#$Mutation_8979| _$t0)))
(exists (($i_1@@2 Int) ) (!  (and (InRangeVec_2977 $range_0@@0 $i_1@@2) (let ((x@@0 (|Select__T@[Int]Int_| (|v#Vec_2977| $range_0@@0) $i_1@@2)))
(= x@@0 0)))
 :qid |existsinvectordefaultz3bpl.1109:33|
 :skolemid |35|
)))) (and (=> (= (ControlFlow 0 14274) (- 0 15328)) (=> (let (($range_2 ($Range 0 (|l#Vec_2977| $t1@0))))
(exists (($i_3 Int) ) (!  (and ($InRange $range_2 $i_3) (let ((i@@14 $i_3))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| $t1@0) i@@14) 0)))
 :qid |existsinvectordefaultz3bpl.1115:52|
 :skolemid |36|
))) (let (($range_2@@0 ($Range 0 (|l#Vec_2977| (|v#$Mutation_8979| _$t0)))))
(exists (($i_3@@0 Int) ) (!  (and ($InRange $range_2@@0 $i_3@@0) (let ((i@@15 $i_3@@0))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_8979| _$t0)) i@@15) 0)))
 :qid |existsinvectordefaultz3bpl.1115:52|
 :skolemid |36|
))))) (=> (=> (let (($range_2 ($Range 0 (|l#Vec_2977| $t1@0))))
(exists (($i_3@@1 Int) ) (!  (and ($InRange $range_2 $i_3@@1) (let ((i@@14 $i_3@@1))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| $t1@0) i@@14) 0)))
 :qid |existsinvectordefaultz3bpl.1115:52|
 :skolemid |36|
))) (let (($range_2@@0 ($Range 0 (|l#Vec_2977| (|v#$Mutation_8979| _$t0)))))
(exists (($i_3@@2 Int) ) (!  (and ($InRange $range_2@@0 $i_3@@2) (let ((i@@15 $i_3@@2))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_8979| _$t0)) i@@15) 0)))
 :qid |existsinvectordefaultz3bpl.1115:52|
 :skolemid |36|
)))) (and (=> (= (ControlFlow 0 14274) (- 0 15345)) (=> (exists ((i@@16 Int) ) (!  (and (and (|$IsValid'u64'| i@@16) (and (<= 0 i@@16) (< i@@16 (|l#Vec_2977| $t1@0)))) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t1@0) i@@16) 0))
 :qid |existsinvectordefaultz3bpl.1121:13|
 :skolemid |37|
)) (exists ((i@@17 Int) ) (!  (and (and (|$IsValid'u64'| i@@17) (and (<= 0 i@@17) (< i@@17 (|l#Vec_2977| (|v#$Mutation_8979| _$t0))))) (= (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_8979| _$t0)) i@@17) 0))
 :qid |existsinvectordefaultz3bpl.1121:13|
 :skolemid |37|
)))) (=> (=> (exists ((i@@18 Int) ) (!  (and (and (|$IsValid'u64'| i@@18) (and (<= 0 i@@18) (< i@@18 (|l#Vec_2977| $t1@0)))) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t1@0) i@@18) 0))
 :qid |existsinvectordefaultz3bpl.1121:13|
 :skolemid |37|
)) (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (and (<= 0 i@@19) (< i@@19 (|l#Vec_2977| (|v#$Mutation_8979| _$t0))))) (= (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_8979| _$t0)) i@@19) 0))
 :qid |existsinvectordefaultz3bpl.1121:13|
 :skolemid |37|
))) (and (=> (= (ControlFlow 0 14274) (- 0 15362)) (forall ((e@@2 Int) ) (!  (=> (|$IsValid'u64'| e@@2) (=> (let (($range_0@@1 $t1@0))
(exists (($i_1@@3 Int) ) (!  (and (InRangeVec_2977 $range_0@@1 $i_1@@3) (let ((x@@1 (|Select__T@[Int]Int_| (|v#Vec_2977| $range_0@@1) $i_1@@3)))
(= x@@1 e@@2)))
 :qid |existsinvectordefaultz3bpl.1109:33|
 :skolemid |35|
))) (let (($range_0@@2 (|v#$Mutation_8979| _$t0)))
(exists (($i_1@@4 Int) ) (!  (and (InRangeVec_2977 $range_0@@2 $i_1@@4) (let ((x@@2 (|Select__T@[Int]Int_| (|v#Vec_2977| $range_0@@2) $i_1@@4)))
(= x@@2 e@@2)))
 :qid |existsinvectordefaultz3bpl.1109:33|
 :skolemid |35|
)))))
 :qid |existsinvectordefaultz3bpl.1278:15|
 :skolemid |46|
))) (=> (forall ((e@@3 Int) ) (!  (=> (|$IsValid'u64'| e@@3) (=> (let (($range_0@@1 $t1@0))
(exists (($i_1@@5 Int) ) (!  (and (InRangeVec_2977 $range_0@@1 $i_1@@5) (let ((x@@1 (|Select__T@[Int]Int_| (|v#Vec_2977| $range_0@@1) $i_1@@5)))
(= x@@1 e@@3)))
 :qid |existsinvectordefaultz3bpl.1109:33|
 :skolemid |35|
))) (let (($range_0@@2 (|v#$Mutation_8979| _$t0)))
(exists (($i_1@@6 Int) ) (!  (and (InRangeVec_2977 $range_0@@2 $i_1@@6) (let ((x@@2 (|Select__T@[Int]Int_| (|v#Vec_2977| $range_0@@2) $i_1@@6)))
(= x@@2 e@@3)))
 :qid |existsinvectordefaultz3bpl.1109:33|
 :skolemid |35|
)))))
 :qid |existsinvectordefaultz3bpl.1278:15|
 :skolemid |46|
)) (and (=> (= (ControlFlow 0 14274) (- 0 15388)) (forall ((e@@4 Int) ) (!  (=> (|$IsValid'u64'| e@@4) (=> (let (($range_2@@1 ($Range 0 (|l#Vec_2977| $t1@0))))
(exists (($i_3@@3 Int) ) (!  (and ($InRange $range_2@@1 $i_3@@3) (let ((i@@20 $i_3@@3))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| $t1@0) i@@20) e@@4)))
 :qid |existsinvectordefaultz3bpl.1115:52|
 :skolemid |36|
))) (let (($range_2@@2 ($Range 0 (|l#Vec_2977| (|v#$Mutation_8979| _$t0)))))
(exists (($i_3@@4 Int) ) (!  (and ($InRange $range_2@@2 $i_3@@4) (let ((i@@21 $i_3@@4))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_8979| _$t0)) i@@21) e@@4)))
 :qid |existsinvectordefaultz3bpl.1115:52|
 :skolemid |36|
)))))
 :qid |existsinvectordefaultz3bpl.1283:15|
 :skolemid |47|
))) (=> (forall ((e@@5 Int) ) (!  (=> (|$IsValid'u64'| e@@5) (=> (let (($range_2@@1 ($Range 0 (|l#Vec_2977| $t1@0))))
(exists (($i_3@@5 Int) ) (!  (and ($InRange $range_2@@1 $i_3@@5) (let ((i@@20 $i_3@@5))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| $t1@0) i@@20) e@@5)))
 :qid |existsinvectordefaultz3bpl.1115:52|
 :skolemid |36|
))) (let (($range_2@@2 ($Range 0 (|l#Vec_2977| (|v#$Mutation_8979| _$t0)))))
(exists (($i_3@@6 Int) ) (!  (and ($InRange $range_2@@2 $i_3@@6) (let ((i@@21 $i_3@@6))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_8979| _$t0)) i@@21) e@@5)))
 :qid |existsinvectordefaultz3bpl.1115:52|
 :skolemid |36|
)))))
 :qid |existsinvectordefaultz3bpl.1283:15|
 :skolemid |47|
)) (=> (= (ControlFlow 0 14274) (- 0 15414)) (forall ((e@@6 Int) ) (!  (=> (|$IsValid'u64'| e@@6) (=> (exists ((i@@22 Int) ) (!  (and (and (|$IsValid'u64'| i@@22) (and (<= 0 i@@22) (< i@@22 (|l#Vec_2977| $t1@0)))) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t1@0) i@@22) e@@6))
 :qid |existsinvectordefaultz3bpl.1121:13|
 :skolemid |37|
)) (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (and (<= 0 i@@23) (< i@@23 (|l#Vec_2977| (|v#$Mutation_8979| _$t0))))) (= (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_8979| _$t0)) i@@23) e@@6))
 :qid |existsinvectordefaultz3bpl.1121:13|
 :skolemid |37|
))))
 :qid |existsinvectordefaultz3bpl.1288:15|
 :skolemid |48|
))))))))))))))))))))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 15133) 14274) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(pop 1)
; Valid
