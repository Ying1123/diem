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
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-datatypes ((T@Vec_5695 0)) (((Vec_5695 (|v#Vec_5695| |T@[Int]Bool|) (|l#Vec_5695| Int) ) ) ))
(declare-datatypes ((T@$1_BitVector_BitVector 0)) ((($1_BitVector_BitVector (|$length#$1_BitVector_BitVector| Int) (|$bit_field#$1_BitVector_BitVector| T@Vec_5695) ) ) ))
(declare-datatypes ((T@$1_CRSN_CRSN 0)) ((($1_CRSN_CRSN (|$min_nonce#$1_CRSN_CRSN| Int) (|$size#$1_CRSN_CRSN| Int) (|$slots#$1_CRSN_CRSN| T@$1_BitVector_BitVector) ) ) ))
(declare-sort |T@[Int]$1_CRSN_CRSN| 0)
(declare-datatypes ((T@$Memory_26041 0)) ((($Memory_26041 (|domain#$Memory_26041| |T@[Int]Bool|) (|contents#$Memory_26041| |T@[Int]$1_CRSN_CRSN|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_27154 0)) ((($Mutation_27154 (|l#$Mutation_27154| T@$Location) (|p#$Mutation_27154| T@Vec_1349) (|v#$Mutation_27154| T@$1_CRSN_CRSN) ) ) ))
(declare-datatypes ((T@$Mutation_22005 0)) ((($Mutation_22005 (|l#$Mutation_22005| T@$Location) (|p#$Mutation_22005| T@Vec_1349) (|v#$Mutation_22005| T@$1_BitVector_BitVector) ) ) ))
(declare-datatypes ((T@$Mutation_4710 0)) ((($Mutation_4710 (|l#$Mutation_4710| T@$Location) (|p#$Mutation_4710| T@Vec_1349) (|v#$Mutation_4710| Int) ) ) ))
(declare-datatypes ((T@$Mutation_19728 0)) ((($Mutation_19728 (|l#$Mutation_19728| T@$Location) (|p#$Mutation_19728| T@Vec_1349) (|v#$Mutation_19728| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_1349) (|v#$Mutation_3601| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_17547 0)) ((($Mutation_17547 (|l#$Mutation_17547| T@$Location) (|p#$Mutation_17547| T@Vec_1349) (|v#$Mutation_17547| T@Vec_5695) ) ) ))
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
(declare-fun |$IsEqual'vec'bool''| (T@Vec_5695 T@Vec_5695) Bool)
(declare-fun InRangeVec_2977 (T@Vec_5695 Int) Bool)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |$IsValid'vec'bool''| (T@Vec_5695) Bool)
(declare-fun |$IndexOfVec'bool'| (T@Vec_5695 Bool) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4086 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'$1_BitVector_BitVector'| (T@$1_BitVector_BitVector) Bool)
(declare-fun |$IsValid'$1_CRSN_CRSN'| (T@$1_CRSN_CRSN) Bool)
(declare-fun IndexOfVec_5695 (T@Vec_5695 Bool) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#3| (Int Int |T@[Int]Bool| Int Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |CRSNbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |CRSNbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |CRSNbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |CRSNbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |CRSNbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |CRSNbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |CRSNbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |CRSNbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_5695) (v2 T@Vec_5695) ) (! (= (|$IsEqual'vec'bool''| v1 v2)  (and (= (|l#Vec_5695| v1) (|l#Vec_5695| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v1) i@@0) (|Select__T@[Int]Bool_| (|v#Vec_5695| v2) i@@0)))
 :qid |CRSNbpl.615:13|
 :skolemid |17|
))))
 :qid |CRSNbpl.613:30|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'bool''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_5695) ) (! (= (|$IsValid'vec'bool''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_5695| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) true)
 :qid |CRSNbpl.621:13|
 :skolemid |19|
))))
 :qid |CRSNbpl.619:30|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'bool''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_5695) (e Bool) ) (! (let ((i@@2 (|$IndexOfVec'bool'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v@@5) i@@3) e))
 :qid |CRSNbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v@@5) j) e)))
 :qid |CRSNbpl.634:17|
 :skolemid |22|
)))))
 :qid |CRSNbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'bool'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4086 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |CRSNbpl.796:13|
 :skolemid |24|
))))
 :qid |CRSNbpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4086 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |CRSNbpl.802:13|
 :skolemid |26|
))))
 :qid |CRSNbpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4086 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |CRSNbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4086 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |CRSNbpl.815:17|
 :skolemid |29|
)))))
 :qid |CRSNbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |CRSNbpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |CRSNbpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |CRSNbpl.1075:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |CRSNbpl.1078:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_BitVector_BitVector) ) (! (= (|$IsValid'$1_BitVector_BitVector'| s)  (and (|$IsValid'u64'| (|$length#$1_BitVector_BitVector| s)) (|$IsValid'vec'bool''| (|$bit_field#$1_BitVector_BitVector| s))))
 :qid |CRSNbpl.1130:43|
 :skolemid |35|
 :pattern ( (|$IsValid'$1_BitVector_BitVector'| s))
)))
(assert (forall ((s@@0 T@$1_CRSN_CRSN) ) (! (= (|$IsValid'$1_CRSN_CRSN'| s@@0)  (and (and (|$IsValid'u64'| (|$min_nonce#$1_CRSN_CRSN| s@@0)) (|$IsValid'u64'| (|$size#$1_CRSN_CRSN| s@@0))) (|$IsValid'$1_BitVector_BitVector'| (|$slots#$1_CRSN_CRSN| s@@0))))
 :qid |CRSNbpl.2758:33|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_CRSN_CRSN'| s@@0))
)))
(assert (forall ((v@@8 T@Vec_5695) (i@@8 Int) ) (! (= (InRangeVec_2977 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_5695| v@@8))))
 :qid |CRSNbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (i@@9 Int) ) (! (= (InRangeVec_4086 v@@9 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_1349| v@@9))))
 :qid |CRSNbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4086 v@@9 i@@9))
)))
(assert (forall ((v@@10 T@Vec_5695) (e@@1 Bool) ) (! (let ((i@@10 (IndexOfVec_5695 v@@10 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_2977 v@@10 i@@11) (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v@@10) i@@11) e@@1))
 :qid |CRSNbpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_2977 v@@10 i@@10) (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v@@10) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v@@10) j@@1) e@@1)))
 :qid |CRSNbpl.117:17|
 :skolemid |1|
)))))
 :qid |CRSNbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_5695 v@@10 e@@1))
)))
(assert (forall ((v@@11 T@Vec_1349) (e@@2 Int) ) (! (let ((i@@12 (IndexOfVec_1349 v@@11 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_4086 v@@11 i@@13) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@13) e@@2))
 :qid |CRSNbpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_4086 v@@11 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) j@@2) e@@2)))
 :qid |CRSNbpl.117:17|
 :skolemid |1|
)))))
 :qid |CRSNbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@11 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |CRSNbpl.275:54|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Bool|) (|l#4| |T@[Int]Bool|) (|l#5| Int) (|l#6| Bool) (i@@15 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]Bool_| |l#3| i@@15) (|Select__T@[Int]Bool_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |CRSNbpl.73:19|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Bool|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Bool) (i@@16 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]Bool_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |CRSNbpl.82:30|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Bool|) (|l#4@@1| |T@[Int]Bool|) (|l#5@@1| Int) (|l#6@@0| Bool) (j@@3 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]Bool_| |l#3@@1| j@@3) (|Select__T@[Int]Bool_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |CRSNbpl.63:20|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |CRSNbpl.73:19|
 :skolemid |46|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |CRSNbpl.82:30|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |CRSNbpl.63:20|
 :skolemid |48|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
; Valid
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t5@0 () Bool)
(declare-fun $1_CRSN_CRSN_$memory () T@$Memory_26041)
(declare-fun _$t0 () T@$signer)
(declare-fun _$t1 () Int)
(declare-fun $t9 () T@$1_CRSN_CRSN)
(declare-fun $t10 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun inline$$1_BitVector_is_index_set$0$$ret0@1 () Bool)
(declare-fun $abort_flag@9 () Bool)
(declare-fun $t4@0 () Bool)
(declare-fun $t13@0 () Int)
(declare-fun $abort_code@9 () Int)
(declare-fun $abort_flag@8 () Bool)
(declare-fun |inline$$1_Vector_borrow'bool'$0$dst@2| () Bool)
(declare-fun $abort_code@8 () Int)
(declare-fun inline$$1_BitVector_is_index_set$0$$t6@1 () Int)
(declare-fun inline$$1_BitVector_is_index_set$0$$ret0@0 () Bool)
(declare-fun |inline$$1_Vector_borrow'bool'$0$dst@0| () Bool)
(declare-fun inline$$1_BitVector_is_index_set$0$$t10@1 () T@Vec_5695)
(declare-fun inline$$Sub$0$dst@2 () Int)
(declare-fun |inline$$1_Vector_borrow'bool'$0$dst@1| () Bool)
(declare-fun $abort_flag@7 () Bool)
(declare-fun $abort_code@7 () Int)
(declare-fun inline$$Lt$1$dst@1 () Bool)
(declare-fun $t31@0 () T@$1_BitVector_BitVector)
(declare-fun inline$$1_BitVector_is_index_set$0$$t9@0 () Int)
(declare-fun |inline$$1_Vector_length'bool'$1$l@1| () Int)
(declare-fun inline$$1_BitVector_is_index_set$0$$t4@1 () T@Vec_5695)
(declare-fun $t16@1 () T@$Mutation_27154)
(declare-fun inline$$Sub$0$dst@0 () Int)
(declare-fun $t29@0 () Int)
(declare-fun inline$$Sub$0$dst@1 () Int)
(declare-fun $abort_code@6 () Int)
(declare-fun $abort_flag@6 () Bool)
(declare-fun inline$$Ge$0$dst@1 () Bool)
(declare-fun $abort_flag@5 () Bool)
(declare-fun $abort_code@5 () Int)
(declare-fun inline$$CastU128$0$dst@1 () Int)
(declare-fun inline$$AddU128$0$dst@2 () Int)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$AddU128$0$dst@0 () Int)
(declare-fun inline$$CastU128$1$dst@1 () Int)
(declare-fun inline$$CastU128$2$dst@1 () Int)
(declare-fun inline$$AddU128$0$dst@1 () Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun inline$$CastU128$2$dst@0 () Int)
(declare-fun inline$$1_BitVector_length$0$$ret0@1 () Int)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_flag@2 () Bool)
(declare-fun |inline$$1_Vector_length'bool'$0$l@1| () Int)
(declare-fun inline$$1_BitVector_length$0$$ret0@0 () Int)
(declare-fun inline$$1_BitVector_length$0$$t1@1 () T@Vec_5695)
(declare-fun $t23@0 () T@$1_BitVector_BitVector)
(declare-fun inline$$CastU128$1$dst@0 () Int)
(declare-fun $t21@0 () Int)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun inline$$CastU128$0$dst@0 () Int)
(declare-fun $t17@0 () Int)
(declare-fun |$temp_0'$1_CRSN_CRSN'@0| () T@$1_CRSN_CRSN)
(declare-fun $t16 () T@$Mutation_27154)
(declare-fun $t11 () Int)
(declare-fun $t16@0 () T@$Mutation_27154)
(declare-fun MapConstVec_4315 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4315 () Int)
(declare-fun |Select__T@[Int]$1_CRSN_CRSN_| (|T@[Int]$1_CRSN_CRSN| Int) T@$1_CRSN_CRSN)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$1_CRSN_has_crsn$0$$t1@1 () Bool)
(declare-fun $t15 () Int)
(declare-fun $1_Signer_is_txn_signer (T@$signer) Bool)
(declare-fun $1_Signer_is_txn_signer_addr (Int) Bool)
(declare-fun $t7 () T@$Mutation_27154)
(push 1)
(set-info :boogie-vc-id $1_CRSN_check$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 81761) (let ((L9_correct  (=> (= $t5@0 $t5@0) (and (=> (= (ControlFlow 0 37532) (- 0 83628)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_26041| $1_CRSN_CRSN_$memory) (|$addr#$signer| _$t0))))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_26041| $1_CRSN_CRSN_$memory) (|$addr#$signer| _$t0)))) (=> (= (ControlFlow 0 37532) (- 0 83641)) (not (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_26041| $1_CRSN_CRSN_$memory) (|$addr#$signer| _$t0)) (>= _$t1 (|$min_nonce#$1_CRSN_CRSN| $t9))) (< (+ _$t1 (|$min_nonce#$1_CRSN_CRSN| $t9)) (|l#Vec_5695| (|$bit_field#$1_BitVector_BitVector| (|$slots#$1_CRSN_CRSN| $t9))))) (>= $t10 (|l#Vec_5695| (|$bit_field#$1_BitVector_BitVector| (|$slots#$1_CRSN_CRSN| $t9))))))))))))
(let ((anon44_Else$1_correct  (=> (= inline$$Not$0$dst@1 inline$$Not$0$dst@1) (=> (and (= $t5@0 inline$$Not$0$dst@1) (= (ControlFlow 0 37454) 37532)) L9_correct))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not inline$$1_BitVector_is_index_set$0$$ret0@1)) (= (ControlFlow 0 37436) 37454)) anon44_Else$1_correct)))
(let ((anon44_Else_correct  (=> (and (not $abort_flag@9) (= (ControlFlow 0 37442) 37436)) inline$$Not$0$anon0_correct)))
(let ((anon42_Then_correct  (=> (and (and $t4@0 (= false false)) (and (= $t5@0 false) (= (ControlFlow 0 37582) 37532))) L9_correct)))
(let ((L11_correct  (and (=> (= (ControlFlow 0 35619) (- 0 83452)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_26041| $1_CRSN_CRSN_$memory) (|$addr#$signer| _$t0))) (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_26041| $1_CRSN_CRSN_$memory) (|$addr#$signer| _$t0)) (>= _$t1 (|$min_nonce#$1_CRSN_CRSN| $t9))) (< (+ _$t1 (|$min_nonce#$1_CRSN_CRSN| $t9)) (|l#Vec_5695| (|$bit_field#$1_BitVector_BitVector| (|$slots#$1_CRSN_CRSN| $t9))))) (>= $t10 (|l#Vec_5695| (|$bit_field#$1_BitVector_BitVector| (|$slots#$1_CRSN_CRSN| $t9))))))) (=> (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_26041| $1_CRSN_CRSN_$memory) (|$addr#$signer| _$t0))) (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_26041| $1_CRSN_CRSN_$memory) (|$addr#$signer| _$t0)) (>= _$t1 (|$min_nonce#$1_CRSN_CRSN| $t9))) (< (+ _$t1 (|$min_nonce#$1_CRSN_CRSN| $t9)) (|l#Vec_5695| (|$bit_field#$1_BitVector_BitVector| (|$slots#$1_CRSN_CRSN| $t9))))) (>= $t10 (|l#Vec_5695| (|$bit_field#$1_BitVector_BitVector| (|$slots#$1_CRSN_CRSN| $t9)))))) (=> (= (ControlFlow 0 35619) (- 0 83506)) (or (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_26041| $1_CRSN_CRSN_$memory) (|$addr#$signer| _$t0))) (= 1 $t13@0)) (and (and (and (and (|Select__T@[Int]Bool_| (|domain#$Memory_26041| $1_CRSN_CRSN_$memory) (|$addr#$signer| _$t0)) (>= _$t1 (|$min_nonce#$1_CRSN_CRSN| $t9))) (< (+ _$t1 (|$min_nonce#$1_CRSN_CRSN| $t9)) (|l#Vec_5695| (|$bit_field#$1_BitVector_BitVector| (|$slots#$1_CRSN_CRSN| $t9))))) (>= $t10 (|l#Vec_5695| (|$bit_field#$1_BitVector_BitVector| (|$slots#$1_CRSN_CRSN| $t9))))) (= 7 $t13@0))))))))
(let ((anon44_Then_correct  (=> (and (and $abort_flag@9 (= $abort_code@9 $abort_code@9)) (and (= $t13@0 $abort_code@9) (= (ControlFlow 0 37546) 35619))) L11_correct)))
(let ((inline$$1_BitVector_is_index_set$0$anon10_Else_correct  (=> (not $abort_flag@8) (=> (and (and (= |inline$$1_Vector_borrow'bool'$0$dst@2| |inline$$1_Vector_borrow'bool'$0$dst@2|) (= $abort_code@9 $abort_code@8)) (and (= inline$$1_BitVector_is_index_set$0$$ret0@1 |inline$$1_Vector_borrow'bool'$0$dst@2|) (= $abort_flag@9 $abort_flag@8))) (and (=> (= (ControlFlow 0 37364) 37546) anon44_Then_correct) (=> (= (ControlFlow 0 37364) 37442) anon44_Else_correct))))))
(let ((inline$$1_BitVector_is_index_set$0$L3_correct  (=> (= $abort_code@9 inline$$1_BitVector_is_index_set$0$$t6@1) (=> (and (= inline$$1_BitVector_is_index_set$0$$ret0@1 inline$$1_BitVector_is_index_set$0$$ret0@0) (= $abort_flag@9 true)) (and (=> (= (ControlFlow 0 37197) 37546) anon44_Then_correct) (=> (= (ControlFlow 0 37197) 37442) anon44_Else_correct))))))
(let ((inline$$1_BitVector_is_index_set$0$anon10_Then_correct  (=> (and (and $abort_flag@8 (= $abort_code@8 $abort_code@8)) (and (= inline$$1_BitVector_is_index_set$0$$t6@1 $abort_code@8) (= (ControlFlow 0 37378) 37197))) inline$$1_BitVector_is_index_set$0$L3_correct)))
(let ((|inline$$1_Vector_borrow'bool'$0$anon3_Then$1_correct|  (=> (= $abort_flag@8 true) (=> (and (= $abort_code@8 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'bool'$0$dst@2| |inline$$1_Vector_borrow'bool'$0$dst@0|)) (and (=> (= (ControlFlow 0 37340) 37378) inline$$1_BitVector_is_index_set$0$anon10_Then_correct) (=> (= (ControlFlow 0 37340) 37364) inline$$1_BitVector_is_index_set$0$anon10_Else_correct))))))
(let ((|inline$$1_Vector_borrow'bool'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_2977 inline$$1_BitVector_is_index_set$0$$t10@1 inline$$Sub$0$dst@2)) (= (ControlFlow 0 37338) 37340)) |inline$$1_Vector_borrow'bool'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'bool'$0$anon3_Else_correct|  (=> (InRangeVec_2977 inline$$1_BitVector_is_index_set$0$$t10@1 inline$$Sub$0$dst@2) (=> (and (and (= |inline$$1_Vector_borrow'bool'$0$dst@1| (|Select__T@[Int]Bool_| (|v#Vec_5695| inline$$1_BitVector_is_index_set$0$$t10@1) inline$$Sub$0$dst@2)) (= $abort_flag@8 $abort_flag@7)) (and (= $abort_code@8 $abort_code@7) (= |inline$$1_Vector_borrow'bool'$0$dst@2| |inline$$1_Vector_borrow'bool'$0$dst@1|))) (and (=> (= (ControlFlow 0 37288) 37378) inline$$1_BitVector_is_index_set$0$anon10_Then_correct) (=> (= (ControlFlow 0 37288) 37364) inline$$1_BitVector_is_index_set$0$anon10_Else_correct))))))
(let ((inline$$1_BitVector_is_index_set$0$anon9_Then_correct  (=> (and inline$$Lt$1$dst@1 (= inline$$1_BitVector_is_index_set$0$$t10@1 (|$bit_field#$1_BitVector_BitVector| $t31@0))) (and (=> (= (ControlFlow 0 37346) 37338) |inline$$1_Vector_borrow'bool'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 37346) 37288) |inline$$1_Vector_borrow'bool'$0$anon3_Else_correct|)))))
(let ((inline$$1_BitVector_is_index_set$0$anon9_Else_correct  (=> (and (and (not inline$$Lt$1$dst@1) (= inline$$1_BitVector_is_index_set$0$$t9@0 inline$$1_BitVector_is_index_set$0$$t9@0)) (and (= inline$$1_BitVector_is_index_set$0$$t6@1 inline$$1_BitVector_is_index_set$0$$t9@0) (= (ControlFlow 0 37191) 37197))) inline$$1_BitVector_is_index_set$0$L3_correct)))
(let ((inline$$1_BitVector_is_index_set$0$anon8_Else$1_correct  (=> (|$IsValid'u64'| 0) (=> (and (and (|$IsValid'u64'| inline$$1_BitVector_is_index_set$0$$t9@0) (= inline$$1_BitVector_is_index_set$0$$t9@0 7)) (and (= inline$$1_BitVector_is_index_set$0$$t9@0 inline$$1_BitVector_is_index_set$0$$t9@0) (= inline$$Lt$1$dst@1 inline$$Lt$1$dst@1))) (and (=> (= (ControlFlow 0 37175) 37346) inline$$1_BitVector_is_index_set$0$anon9_Then_correct) (=> (= (ControlFlow 0 37175) 37191) inline$$1_BitVector_is_index_set$0$anon9_Else_correct))))))
(let ((inline$$Lt$1$anon0_correct  (=> (and (= inline$$Lt$1$dst@1 (< inline$$Sub$0$dst@2 |inline$$1_Vector_length'bool'$1$l@1|)) (= (ControlFlow 0 37139) 37175)) inline$$1_BitVector_is_index_set$0$anon8_Else$1_correct)))
(let ((inline$$1_BitVector_is_index_set$0$anon8_Else_correct  (=> (and (not $abort_flag@7) (= (ControlFlow 0 37145) 37139)) inline$$Lt$1$anon0_correct)))
(let ((inline$$1_BitVector_is_index_set$0$anon8_Then_correct  (=> (and (and $abort_flag@7 (= $abort_code@7 $abort_code@7)) (and (= inline$$1_BitVector_is_index_set$0$$t6@1 $abort_code@7) (= (ControlFlow 0 37392) 37197))) inline$$1_BitVector_is_index_set$0$L3_correct)))
(let ((|inline$$1_Vector_length'bool'$1$anon0_correct|  (=> (= |inline$$1_Vector_length'bool'$1$l@1| (|l#Vec_5695| inline$$1_BitVector_is_index_set$0$$t4@1)) (and (=> (= (ControlFlow 0 37085) 37392) inline$$1_BitVector_is_index_set$0$anon8_Then_correct) (=> (= (ControlFlow 0 37085) 37145) inline$$1_BitVector_is_index_set$0$anon8_Else_correct)))))
(let ((inline$$1_BitVector_is_index_set$0$anon0_correct  (=> (and (and (= $t31@0 $t31@0) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@2)) (and (= inline$$1_BitVector_is_index_set$0$$t4@1 (|$bit_field#$1_BitVector_BitVector| $t31@0)) (= (ControlFlow 0 37091) 37085))) |inline$$1_Vector_length'bool'$1$anon0_correct|)))
(let ((anon43_Else_correct  (=> (and (and (not $abort_flag@7) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@2)) (and (= $t31@0 (|$slots#$1_CRSN_CRSN| (|v#$Mutation_27154| $t16@1))) (= (ControlFlow 0 37398) 37091))) inline$$1_BitVector_is_index_set$0$anon0_correct)))
(let ((anon43_Then_correct  (=> (and (and $abort_flag@7 (= $abort_code@7 $abort_code@7)) (and (= $t13@0 $abort_code@7) (= (ControlFlow 0 37560) 35619))) L11_correct)))
(let ((inline$$Sub$0$anon3_Then$1_correct  (=> (= $abort_code@7 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@7 true) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@0)) (and (=> (= (ControlFlow 0 36732) 37560) anon43_Then_correct) (=> (= (ControlFlow 0 36732) 37398) anon43_Else_correct))))))
(let ((inline$$Sub$0$anon3_Then_correct  (=> (and (< _$t1 $t29@0) (= (ControlFlow 0 36730) 36732)) inline$$Sub$0$anon3_Then$1_correct)))
(let ((inline$$Sub$0$anon3_Else_correct  (=> (<= $t29@0 _$t1) (=> (and (and (= inline$$Sub$0$dst@1 (- _$t1 $t29@0)) (= $abort_code@7 $abort_code@6)) (and (= $abort_flag@7 $abort_flag@6) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@1))) (and (=> (= (ControlFlow 0 36682) 37560) anon43_Then_correct) (=> (= (ControlFlow 0 36682) 37398) anon43_Else_correct))))))
(let ((anon42_Else_correct  (=> (and (not $t4@0) (= $t29@0 (|$min_nonce#$1_CRSN_CRSN| (|v#$Mutation_27154| $t16@1)))) (and (=> (= (ControlFlow 0 36738) 36730) inline$$Sub$0$anon3_Then_correct) (=> (= (ControlFlow 0 36738) 36682) inline$$Sub$0$anon3_Else_correct)))))
(let ((anon41_Else$1_correct  (=> (and (and (= inline$$Ge$0$dst@1 inline$$Ge$0$dst@1) (= $abort_flag@6 $abort_flag@5)) (and (= $abort_code@6 $abort_code@5) (= $t4@0 inline$$Ge$0$dst@1))) (and (=> (= (ControlFlow 0 36587) 37582) anon42_Then_correct) (=> (= (ControlFlow 0 36587) 36738) anon42_Else_correct)))))
(let ((inline$$Ge$0$anon0_correct  (=> (and (= inline$$Ge$0$dst@1 (>= inline$$CastU128$0$dst@1 inline$$AddU128$0$dst@2)) (= (ControlFlow 0 36569) 36587)) anon41_Else$1_correct)))
(let ((anon41_Else_correct  (=> (and (not $abort_flag@5) (= (ControlFlow 0 36575) 36569)) inline$$Ge$0$anon0_correct)))
(let ((anon36_Then_correct  (=> inline$$Lt$0$dst@1 (=> (and (and (= true true) (= $abort_flag@6 $abort_flag@0)) (and (= $abort_code@6 $abort_code@1) (= $t4@0 true))) (and (=> (= (ControlFlow 0 37670) 37582) anon42_Then_correct) (=> (= (ControlFlow 0 37670) 36738) anon42_Else_correct))))))
(let ((anon41_Then_correct  (=> (and (and $abort_flag@5 (= $abort_code@5 $abort_code@5)) (and (= $t13@0 $abort_code@5) (= (ControlFlow 0 37596) 35619))) L11_correct)))
(let ((inline$$AddU128$0$anon3_Then$1_correct  (=> (= $abort_flag@5 true) (=> (and (= $abort_code@5 $EXEC_FAILURE_CODE) (= inline$$AddU128$0$dst@2 inline$$AddU128$0$dst@0)) (and (=> (= (ControlFlow 0 36515) 37596) anon41_Then_correct) (=> (= (ControlFlow 0 36515) 36575) anon41_Else_correct))))))
(let ((inline$$AddU128$0$anon3_Then_correct  (=> (and (> (+ inline$$CastU128$1$dst@1 inline$$CastU128$2$dst@1) $MAX_U128) (= (ControlFlow 0 36513) 36515)) inline$$AddU128$0$anon3_Then$1_correct)))
(let ((inline$$AddU128$0$anon3_Else_correct  (=> (>= $MAX_U128 (+ inline$$CastU128$1$dst@1 inline$$CastU128$2$dst@1)) (=> (and (and (= inline$$AddU128$0$dst@1 (+ inline$$CastU128$1$dst@1 inline$$CastU128$2$dst@1)) (= $abort_flag@5 $abort_flag@4)) (and (= $abort_code@5 $abort_code@4) (= inline$$AddU128$0$dst@2 inline$$AddU128$0$dst@1))) (and (=> (= (ControlFlow 0 36461) 37596) anon41_Then_correct) (=> (= (ControlFlow 0 36461) 36575) anon41_Else_correct))))))
(let ((anon40_Else_correct  (=> (not $abort_flag@4) (and (=> (= (ControlFlow 0 36521) 36513) inline$$AddU128$0$anon3_Then_correct) (=> (= (ControlFlow 0 36521) 36461) inline$$AddU128$0$anon3_Else_correct)))))
(let ((anon40_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@4 $abort_code@4)) (and (= $t13@0 $abort_code@4) (= (ControlFlow 0 37610) 35619))) L11_correct)))
(let ((inline$$CastU128$2$anon3_Then$1_correct  (=> (= $abort_code@4 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@4 true) (= inline$$CastU128$2$dst@1 inline$$CastU128$2$dst@0)) (and (=> (= (ControlFlow 0 36354) 37610) anon40_Then_correct) (=> (= (ControlFlow 0 36354) 36521) anon40_Else_correct))))))
(let ((inline$$CastU128$2$anon3_Then_correct  (=> (and (> inline$$1_BitVector_length$0$$ret0@1 $MAX_U128) (= (ControlFlow 0 36352) 36354)) inline$$CastU128$2$anon3_Then$1_correct)))
(let ((inline$$CastU128$2$anon3_Else_correct  (=> (and (and (>= $MAX_U128 inline$$1_BitVector_length$0$$ret0@1) (= $abort_code@4 $abort_code@3)) (and (= $abort_flag@4 $abort_flag@3) (= inline$$CastU128$2$dst@1 inline$$1_BitVector_length$0$$ret0@1))) (and (=> (= (ControlFlow 0 36304) 37610) anon40_Then_correct) (=> (= (ControlFlow 0 36304) 36521) anon40_Else_correct)))))
(let ((anon39_Else_correct  (=> (not $abort_flag@3) (and (=> (= (ControlFlow 0 36360) 36352) inline$$CastU128$2$anon3_Then_correct) (=> (= (ControlFlow 0 36360) 36304) inline$$CastU128$2$anon3_Else_correct)))))
(let ((anon39_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@3 $abort_code@3)) (and (= $t13@0 $abort_code@3) (= (ControlFlow 0 37624) 35619))) L11_correct)))
(let ((inline$$1_BitVector_length$0$anon3_Else_correct  (=> (and (and (not $abort_flag@2) (= |inline$$1_Vector_length'bool'$0$l@1| |inline$$1_Vector_length'bool'$0$l@1|)) (and (= $abort_flag@3 $abort_flag@2) (= inline$$1_BitVector_length$0$$ret0@1 |inline$$1_Vector_length'bool'$0$l@1|))) (and (=> (= (ControlFlow 0 36203) 37624) anon39_Then_correct) (=> (= (ControlFlow 0 36203) 36360) anon39_Else_correct)))))
(let ((inline$$1_BitVector_length$0$anon3_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $abort_flag@3 true) (= inline$$1_BitVector_length$0$$ret0@1 inline$$1_BitVector_length$0$$ret0@0))) (and (=> (= (ControlFlow 0 36221) 37624) anon39_Then_correct) (=> (= (ControlFlow 0 36221) 36360) anon39_Else_correct)))))
(let ((|inline$$1_Vector_length'bool'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'bool'$0$l@1| (|l#Vec_5695| inline$$1_BitVector_length$0$$t1@1)) (and (=> (= (ControlFlow 0 36179) 36221) inline$$1_BitVector_length$0$anon3_Then_correct) (=> (= (ControlFlow 0 36179) 36203) inline$$1_BitVector_length$0$anon3_Else_correct)))))
(let ((inline$$1_BitVector_length$0$anon0_correct  (=> (= $t23@0 $t23@0) (=> (and (= inline$$1_BitVector_length$0$$t1@1 (|$bit_field#$1_BitVector_BitVector| $t23@0)) (= (ControlFlow 0 36185) 36179)) |inline$$1_Vector_length'bool'$0$anon0_correct|))))
(let ((anon38_Else_correct  (=> (not $abort_flag@2) (=> (and (= $t23@0 (|$slots#$1_CRSN_CRSN| (|v#$Mutation_27154| $t16@1))) (= (ControlFlow 0 36227) 36185)) inline$$1_BitVector_length$0$anon0_correct))))
(let ((anon38_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t13@0 $abort_code@3) (= (ControlFlow 0 37638) 35619))) L11_correct)))
(let ((inline$$CastU128$1$anon3_Then$1_correct  (=> (= $abort_code@3 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@2 true) (= inline$$CastU128$1$dst@1 inline$$CastU128$1$dst@0)) (and (=> (= (ControlFlow 0 35983) 37638) anon38_Then_correct) (=> (= (ControlFlow 0 35983) 36227) anon38_Else_correct))))))
(let ((inline$$CastU128$1$anon3_Then_correct  (=> (and (> $t21@0 $MAX_U128) (= (ControlFlow 0 35981) 35983)) inline$$CastU128$1$anon3_Then$1_correct)))
(let ((inline$$CastU128$1$anon3_Else_correct  (=> (and (and (>= $MAX_U128 $t21@0) (= $abort_code@3 $abort_code@2)) (and (= $abort_flag@2 $abort_flag@1) (= inline$$CastU128$1$dst@1 $t21@0))) (and (=> (= (ControlFlow 0 35933) 37638) anon38_Then_correct) (=> (= (ControlFlow 0 35933) 36227) anon38_Else_correct)))))
(let ((anon37_Else_correct  (=> (and (not $abort_flag@1) (= $t21@0 (|$min_nonce#$1_CRSN_CRSN| (|v#$Mutation_27154| $t16@1)))) (and (=> (= (ControlFlow 0 35989) 35981) inline$$CastU128$1$anon3_Then_correct) (=> (= (ControlFlow 0 35989) 35933) inline$$CastU128$1$anon3_Else_correct)))))
(let ((anon37_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t13@0 $abort_code@2) (= (ControlFlow 0 37652) 35619))) L11_correct)))
(let ((inline$$CastU128$0$anon3_Then$1_correct  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= inline$$CastU128$0$dst@1 inline$$CastU128$0$dst@0)) (and (=> (= (ControlFlow 0 35844) 37652) anon37_Then_correct) (=> (= (ControlFlow 0 35844) 35989) anon37_Else_correct))))))
(let ((inline$$CastU128$0$anon3_Then_correct  (=> (and (> _$t1 $MAX_U128) (= (ControlFlow 0 35842) 35844)) inline$$CastU128$0$anon3_Then$1_correct)))
(let ((inline$$CastU128$0$anon3_Else_correct  (=> (and (and (>= $MAX_U128 _$t1) (= $abort_flag@1 $abort_flag@0)) (and (= $abort_code@2 $abort_code@1) (= inline$$CastU128$0$dst@1 _$t1))) (and (=> (= (ControlFlow 0 35794) 37652) anon37_Then_correct) (=> (= (ControlFlow 0 35794) 35989) anon37_Else_correct)))))
(let ((anon36_Else_correct  (=> (not inline$$Lt$0$dst@1) (and (=> (= (ControlFlow 0 35850) 35842) inline$$CastU128$0$anon3_Then_correct) (=> (= (ControlFlow 0 35850) 35794) inline$$CastU128$0$anon3_Else_correct)))))
(let ((inline$$Lt$0$anon0_correct  (=> (= inline$$Lt$0$dst@1 (< _$t1 $t17@0)) (and (=> (= (ControlFlow 0 35711) 37670) anon36_Then_correct) (=> (= (ControlFlow 0 35711) 35850) anon36_Else_correct)))))
(let ((anon35_Else_correct  (=> (not $abort_flag@0) (=> (and (and (= |$temp_0'$1_CRSN_CRSN'@0| (|v#$Mutation_27154| $t16@1)) (= |$temp_0'$1_CRSN_CRSN'@0| |$temp_0'$1_CRSN_CRSN'@0|)) (and (= $t17@0 (|$min_nonce#$1_CRSN_CRSN| (|v#$Mutation_27154| $t16@1))) (= (ControlFlow 0 35717) 35711))) inline$$Lt$0$anon0_correct))))
(let ((anon35_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t13@0 $abort_code@1) (= (ControlFlow 0 37684) 35619))) L11_correct)))
(let ((anon34_Then$1_correct  (=> (= $t16@1 $t16) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 37736) 37684) anon35_Then_correct) (=> (= (ControlFlow 0 37736) 35717) anon35_Else_correct))))))
(let ((anon34_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_26041| $1_CRSN_CRSN_$memory) $t11)) (= (ControlFlow 0 37734) 37736)) anon34_Then$1_correct)))
(let ((anon34_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_26041| $1_CRSN_CRSN_$memory) $t11) (=> (and (and (= $t16@0 ($Mutation_27154 ($Global $t11) (Vec_1349 (MapConstVec_4315 DefaultVecElem_4315) 0) (|Select__T@[Int]$1_CRSN_CRSN_| (|contents#$Memory_26041| $1_CRSN_CRSN_$memory) $t11))) (= $t16@1 $t16@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 35645) 37684) anon35_Then_correct) (=> (= (ControlFlow 0 35645) 35717) anon35_Else_correct))))))
(let ((anon33_Then_correct  (=> inline$$1_CRSN_has_crsn$0$$t1@1 (and (=> (= (ControlFlow 0 35623) 37734) anon34_Then_correct) (=> (= (ControlFlow 0 35623) 35645) anon34_Else_correct)))))
(let ((anon33_Else_correct  (=> (and (and (not inline$$1_CRSN_has_crsn$0$$t1@1) (= $t15 $t15)) (and (= $t13@0 $t15) (= (ControlFlow 0 35475) 35619))) L11_correct)))
(let ((anon32_Else_correct  (=> (and (not false) (|$IsValid'u64'| 0)) (=> (and (and (|$IsValid'u64'| $t15) (= $t15 1)) (and (= $t15 $t15) (= inline$$1_CRSN_has_crsn$0$$t1@1 inline$$1_CRSN_has_crsn$0$$t1@1))) (and (=> (= (ControlFlow 0 35459) 35623) anon33_Then_correct) (=> (= (ControlFlow 0 35459) 35475) anon33_Else_correct))))))
(let ((anon32_Then_correct true))
(let ((inline$$1_CRSN_has_crsn$0$anon0_correct  (=> (= $t11 $t11) (=> (and (= inline$$1_CRSN_has_crsn$0$$t1@1 (|Select__T@[Int]Bool_| (|domain#$Memory_26041| $1_CRSN_CRSN_$memory) $t11)) (= inline$$1_CRSN_has_crsn$0$$t1@1 inline$$1_CRSN_has_crsn$0$$t1@1)) (and (=> (= (ControlFlow 0 35417) 37750) anon32_Then_correct) (=> (= (ControlFlow 0 35417) 35459) anon32_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (and (and (|$IsValid'address'| (|$addr#$signer| _$t0)) ($1_Signer_is_txn_signer _$t0)) ($1_Signer_is_txn_signer_addr (|$addr#$signer| _$t0))) (and (|$IsValid'u64'| _$t1) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$1_CRSN_CRSN_| (|contents#$Memory_26041| $1_CRSN_CRSN_$memory) $a_0)))
(|$IsValid'$1_CRSN_CRSN'| $rsc))
 :qid |CRSNbpl.3484:20|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]$1_CRSN_CRSN_| (|contents#$Memory_26041| $1_CRSN_CRSN_$memory) $a_0))
)))) (and (and (and (= $t9 (|Select__T@[Int]$1_CRSN_CRSN_| (|contents#$Memory_26041| $1_CRSN_CRSN_$memory) (|$addr#$signer| _$t0))) (= $t10 (- _$t1 (|$min_nonce#$1_CRSN_CRSN| $t9)))) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (and (|$IsValid'address'| $t11) (= $t11 (|$addr#$signer| _$t0))) (and (= $t11 $t11) (= (ControlFlow 0 35423) 35417))))) inline$$1_CRSN_has_crsn$0$anon0_correct)))
(let ((anon0_correct  (=> (= (|l#Vec_1349| (|p#$Mutation_27154| $t7)) 0) (=> (and (= (|l#Vec_1349| (|p#$Mutation_27154| $t16)) 0) (= (ControlFlow 0 35206) 35423)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 81761) 35206) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
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
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-datatypes ((T@Vec_5695 0)) (((Vec_5695 (|v#Vec_5695| |T@[Int]Bool|) (|l#Vec_5695| Int) ) ) ))
(declare-datatypes ((T@$1_BitVector_BitVector 0)) ((($1_BitVector_BitVector (|$length#$1_BitVector_BitVector| Int) (|$bit_field#$1_BitVector_BitVector| T@Vec_5695) ) ) ))
(declare-datatypes ((T@$1_CRSN_CRSN 0)) ((($1_CRSN_CRSN (|$min_nonce#$1_CRSN_CRSN| Int) (|$size#$1_CRSN_CRSN| Int) (|$slots#$1_CRSN_CRSN| T@$1_BitVector_BitVector) ) ) ))
(declare-sort |T@[Int]$1_CRSN_CRSN| 0)
(declare-datatypes ((T@$Memory_26041 0)) ((($Memory_26041 (|domain#$Memory_26041| |T@[Int]Bool|) (|contents#$Memory_26041| |T@[Int]$1_CRSN_CRSN|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_27154 0)) ((($Mutation_27154 (|l#$Mutation_27154| T@$Location) (|p#$Mutation_27154| T@Vec_1349) (|v#$Mutation_27154| T@$1_CRSN_CRSN) ) ) ))
(declare-datatypes ((T@$Mutation_22005 0)) ((($Mutation_22005 (|l#$Mutation_22005| T@$Location) (|p#$Mutation_22005| T@Vec_1349) (|v#$Mutation_22005| T@$1_BitVector_BitVector) ) ) ))
(declare-datatypes ((T@$Mutation_4710 0)) ((($Mutation_4710 (|l#$Mutation_4710| T@$Location) (|p#$Mutation_4710| T@Vec_1349) (|v#$Mutation_4710| Int) ) ) ))
(declare-datatypes ((T@$Mutation_19728 0)) ((($Mutation_19728 (|l#$Mutation_19728| T@$Location) (|p#$Mutation_19728| T@Vec_1349) (|v#$Mutation_19728| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_1349) (|v#$Mutation_3601| Bool) ) ) ))
(declare-datatypes ((T@$Mutation_17547 0)) ((($Mutation_17547 (|l#$Mutation_17547| T@$Location) (|p#$Mutation_17547| T@Vec_1349) (|v#$Mutation_17547| T@Vec_5695) ) ) ))
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
(declare-fun |$IsEqual'vec'bool''| (T@Vec_5695 T@Vec_5695) Bool)
(declare-fun InRangeVec_2977 (T@Vec_5695 Int) Bool)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |$IsValid'vec'bool''| (T@Vec_5695) Bool)
(declare-fun |$IndexOfVec'bool'| (T@Vec_5695 Bool) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4086 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'$1_BitVector_BitVector'| (T@$1_BitVector_BitVector) Bool)
(declare-fun |$IsValid'$1_CRSN_CRSN'| (T@$1_CRSN_CRSN) Bool)
(declare-fun IndexOfVec_5695 (T@Vec_5695 Bool) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#3| (Int Int |T@[Int]Bool| Int Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Bool| |T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |CRSNbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |CRSNbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |CRSNbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |CRSNbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |CRSNbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |CRSNbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |CRSNbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |CRSNbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_5695) (v2 T@Vec_5695) ) (! (= (|$IsEqual'vec'bool''| v1 v2)  (and (= (|l#Vec_5695| v1) (|l#Vec_5695| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v1) i@@0) (|Select__T@[Int]Bool_| (|v#Vec_5695| v2) i@@0)))
 :qid |CRSNbpl.615:13|
 :skolemid |17|
))))
 :qid |CRSNbpl.613:30|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'bool''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_5695) ) (! (= (|$IsValid'vec'bool''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_5695| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) true)
 :qid |CRSNbpl.621:13|
 :skolemid |19|
))))
 :qid |CRSNbpl.619:30|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'bool''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_5695) (e Bool) ) (! (let ((i@@2 (|$IndexOfVec'bool'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v@@5) i@@3) e))
 :qid |CRSNbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v@@5) j) e)))
 :qid |CRSNbpl.634:17|
 :skolemid |22|
)))))
 :qid |CRSNbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'bool'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4086 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |CRSNbpl.796:13|
 :skolemid |24|
))))
 :qid |CRSNbpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4086 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |CRSNbpl.802:13|
 :skolemid |26|
))))
 :qid |CRSNbpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4086 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |CRSNbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4086 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |CRSNbpl.815:17|
 :skolemid |29|
)))))
 :qid |CRSNbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |CRSNbpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |CRSNbpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |CRSNbpl.1075:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |CRSNbpl.1078:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_BitVector_BitVector) ) (! (= (|$IsValid'$1_BitVector_BitVector'| s)  (and (|$IsValid'u64'| (|$length#$1_BitVector_BitVector| s)) (|$IsValid'vec'bool''| (|$bit_field#$1_BitVector_BitVector| s))))
 :qid |CRSNbpl.1130:43|
 :skolemid |35|
 :pattern ( (|$IsValid'$1_BitVector_BitVector'| s))
)))
(assert (forall ((s@@0 T@$1_CRSN_CRSN) ) (! (= (|$IsValid'$1_CRSN_CRSN'| s@@0)  (and (and (|$IsValid'u64'| (|$min_nonce#$1_CRSN_CRSN| s@@0)) (|$IsValid'u64'| (|$size#$1_CRSN_CRSN| s@@0))) (|$IsValid'$1_BitVector_BitVector'| (|$slots#$1_CRSN_CRSN| s@@0))))
 :qid |CRSNbpl.2758:33|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_CRSN_CRSN'| s@@0))
)))
(assert (forall ((v@@8 T@Vec_5695) (i@@8 Int) ) (! (= (InRangeVec_2977 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_5695| v@@8))))
 :qid |CRSNbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (i@@9 Int) ) (! (= (InRangeVec_4086 v@@9 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_1349| v@@9))))
 :qid |CRSNbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4086 v@@9 i@@9))
)))
(assert (forall ((v@@10 T@Vec_5695) (e@@1 Bool) ) (! (let ((i@@10 (IndexOfVec_5695 v@@10 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_2977 v@@10 i@@11) (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v@@10) i@@11) e@@1))
 :qid |CRSNbpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_2977 v@@10 i@@10) (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v@@10) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Bool_| (|v#Vec_5695| v@@10) j@@1) e@@1)))
 :qid |CRSNbpl.117:17|
 :skolemid |1|
)))))
 :qid |CRSNbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_5695 v@@10 e@@1))
)))
(assert (forall ((v@@11 T@Vec_1349) (e@@2 Int) ) (! (let ((i@@12 (IndexOfVec_1349 v@@11 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_4086 v@@11 i@@13) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@13) e@@2))
 :qid |CRSNbpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_4086 v@@11 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) j@@2) e@@2)))
 :qid |CRSNbpl.117:17|
 :skolemid |1|
)))))
 :qid |CRSNbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@11 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |CRSNbpl.275:54|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Bool|) (|l#4| |T@[Int]Bool|) (|l#5| Int) (|l#6| Bool) (i@@15 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]Bool_| |l#3| i@@15) (|Select__T@[Int]Bool_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |CRSNbpl.73:19|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Bool|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Bool) (i@@16 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]Bool_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |CRSNbpl.82:30|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Bool|) (|l#4@@1| |T@[Int]Bool|) (|l#5@@1| Int) (|l#6@@0| Bool) (j@@3 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]Bool_| |l#3@@1| j@@3) (|Select__T@[Int]Bool_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |CRSNbpl.63:20|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |CRSNbpl.73:19|
 :skolemid |46|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |CRSNbpl.82:30|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |CRSNbpl.63:20|
 :skolemid |48|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
; Valid

