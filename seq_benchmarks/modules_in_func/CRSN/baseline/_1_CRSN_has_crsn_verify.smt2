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
(push 1)
(set-info :boogie-vc-id $1_CRSN_has_crsn$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 93663) true)
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

