(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $42_TestVector_none$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 70210) true)
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@7 () Bool)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$0$$ret0@1| () Int)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$1$$ret0@1| () Int)
(declare-fun $abort_code@6 () Int)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$1$$t6@1| () Int)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$1$$ret0@0| () Int)
(declare-fun $abort_flag@5 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$1$$t2@1| () Int)
(declare-fun $abort_flag@6 () Bool)
(declare-fun $abort_code@5 () Int)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$1$$t3@2| () T@Vec_6775)
(declare-fun |inline$$1_Vector_pop_back'u64'$1$m'| () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_pop_back'u64'$1$e@2| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$1$e@0| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$1$len@1| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$1$e@1| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$1$v@1| () T@Vec_6775)
(declare-fun |inline$$1_Vector_pop_back'u64'$1$m'@1| () T@$Mutation_26505)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$1$$t7@1| () T@$Mutation_26505)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun |inline$$1_Vector_is_empty'u64'$1$b@1| () Bool)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$1$$t3@1| () T@Vec_6775)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$1$$t7@0| () T@$Mutation_26505)
(declare-fun |inline$$42_TestVector_some'u64'$0$$ret0@1| () |T@$42_TestVector_T'u64'|)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$0$$t6@1| () Int)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$0$$ret0@0| () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$0$$t2@1| () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$0$$t3@2| () T@Vec_6775)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$m'| () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$e@2| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$e@0| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$len@1| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$e@1| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$v@1| () T@Vec_6775)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$0$$t7@1| () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_is_empty'u64'$0$b@1| () Bool)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$0$$t3@1| () T@Vec_6775)
(declare-fun |inline$$42_TestVector_unwrap_or'u64'$0$$t7@0| () T@$Mutation_26505)
(declare-fun |inline$$42_TestVector_none'u64'$0$$ret0@1| () |T@$42_TestVector_T'u64'|)
(declare-fun |inline$$42_TestVector_some'u64'$0$$ret0@0| () |T@$42_TestVector_T'u64'|)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |inline$$42_TestVector_some'u64'$0$$t1@1| () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun |inline$$42_TestVector_some'u64'$0$$t5@1| () |T@$42_TestVector_T'u64'|)
(declare-fun |inline$$42_TestVector_some'u64'$0$$t3@1| () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () T@Vec_6775)
(declare-fun |inline$$42_TestVector_some'u64'$0$$t3@0| () T@$Mutation_26505)
(declare-fun |inline$$42_TestVector_none'u64'$0$$t2@1| () |T@$42_TestVector_T'u64'|)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_6775)
(push 1)
(set-info :boogie-vc-id $42_TestVector_option_type$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 70325) (let ((anon13_Else_correct  (=> (not $abort_flag@7) (=> (and (= |inline$$42_TestVector_unwrap_or'u64'$0$$ret0@1| |inline$$42_TestVector_unwrap_or'u64'$0$$ret0@1|) (= |inline$$42_TestVector_unwrap_or'u64'$1$$ret0@1| |inline$$42_TestVector_unwrap_or'u64'$1$$ret0@1|)) (and (=> (= (ControlFlow 0 49758) (- 0 71688)) (= |inline$$42_TestVector_unwrap_or'u64'$0$$ret0@1| 0)) (=> (= |inline$$42_TestVector_unwrap_or'u64'$0$$ret0@1| 0) (=> (= (ControlFlow 0 49758) (- 0 71696)) (= |inline$$42_TestVector_unwrap_or'u64'$1$$ret0@1| 42))))))))
(let ((anon13_Then_correct true))
(let ((|inline$$42_TestVector_unwrap_or'u64'$1$L5_correct|  (=> (= $abort_flag@7 true) (=> (and (= $abort_code@6 |inline$$42_TestVector_unwrap_or'u64'$1$$t6@1|) (= |inline$$42_TestVector_unwrap_or'u64'$1$$ret0@1| |inline$$42_TestVector_unwrap_or'u64'$1$$ret0@0|)) (and (=> (= (ControlFlow 0 49682) 49772) anon13_Then_correct) (=> (= (ControlFlow 0 49682) 49758) anon13_Else_correct))))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$1$anon11_Then_correct|  (=> (and (and $abort_flag@5 (= $abort_code@4 $abort_code@4)) (and (= |inline$$42_TestVector_unwrap_or'u64'$1$$t6@1| $abort_code@4) (= (ControlFlow 0 49676) 49682))) |inline$$42_TestVector_unwrap_or'u64'$1$L5_correct|)))
(let ((|inline$$42_TestVector_unwrap_or'u64'$1$anon9_Then_correct|  (=> (and (and $abort_flag@4 (= $abort_code@3 $abort_code@3)) (and (= |inline$$42_TestVector_unwrap_or'u64'$1$$t6@1| $abort_code@3) (= (ControlFlow 0 49710) 49682))) |inline$$42_TestVector_unwrap_or'u64'$1$L5_correct|)))
(let ((|inline$$42_TestVector_unwrap_or'u64'$1$L3_correct|  (=> (and (and (= |inline$$42_TestVector_unwrap_or'u64'$1$$t2@1| |inline$$42_TestVector_unwrap_or'u64'$1$$t2@1|) (= $abort_flag@7 $abort_flag@6)) (and (= $abort_code@6 $abort_code@5) (= |inline$$42_TestVector_unwrap_or'u64'$1$$ret0@1| |inline$$42_TestVector_unwrap_or'u64'$1$$t2@1|))) (and (=> (= (ControlFlow 0 49662) 49772) anon13_Then_correct) (=> (= (ControlFlow 0 49662) 49758) anon13_Else_correct)))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$1$anon11_Else_correct|  (=> (not $abort_flag@5) (=> (and (= |inline$$42_TestVector_unwrap_or'u64'$1$$t3@2| (|v#$Mutation_26505| |inline$$1_Vector_pop_back'u64'$1$m'|)) (= |inline$$1_Vector_pop_back'u64'$1$e@2| |inline$$1_Vector_pop_back'u64'$1$e@2|)) (=> (and (and (= $abort_code@5 $abort_code@4) (= $abort_flag@6 $abort_flag@5)) (and (= |inline$$42_TestVector_unwrap_or'u64'$1$$t2@1| |inline$$1_Vector_pop_back'u64'$1$e@2|) (= (ControlFlow 0 49650) 49662))) |inline$$42_TestVector_unwrap_or'u64'$1$L3_correct|)))))
(let ((|inline$$1_Vector_pop_back'u64'$1$anon3_Then$1_correct|  (=> (= $abort_code@4 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@5 true) (= |inline$$1_Vector_pop_back'u64'$1$e@2| |inline$$1_Vector_pop_back'u64'$1$e@0|)) (and (=> (= (ControlFlow 0 49620) 49676) |inline$$42_TestVector_unwrap_or'u64'$1$anon11_Then_correct|) (=> (= (ControlFlow 0 49620) 49650) |inline$$42_TestVector_unwrap_or'u64'$1$anon11_Else_correct|))))))
(let ((|inline$$1_Vector_pop_back'u64'$1$anon3_Then_correct|  (=> (and (= |inline$$1_Vector_pop_back'u64'$1$len@1| 0) (= (ControlFlow 0 49618) 49620)) |inline$$1_Vector_pop_back'u64'$1$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_pop_back'u64'$1$anon3_Else_correct|  (=> (and (not (= |inline$$1_Vector_pop_back'u64'$1$len@1| 0)) (= |inline$$1_Vector_pop_back'u64'$1$e@1| (|Select__T@[Int]Int_| (|v#Vec_6775| |inline$$1_Vector_pop_back'u64'$1$v@1|) (- |inline$$1_Vector_pop_back'u64'$1$len@1| 1)))) (=> (and (and (= |inline$$1_Vector_pop_back'u64'$1$m'@1| ($Mutation_26505 (|l#$Mutation_26505| |inline$$42_TestVector_unwrap_or'u64'$1$$t7@1|) (|p#$Mutation_26505| |inline$$42_TestVector_unwrap_or'u64'$1$$t7@1|) (let ((l (- (|l#Vec_6775| |inline$$1_Vector_pop_back'u64'$1$v@1|) 1)))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| |inline$$1_Vector_pop_back'u64'$1$v@1|) l DefaultVecElem_4347) l)))) (= $abort_code@4 $abort_code@3)) (and (= $abort_flag@5 $abort_flag@4) (= |inline$$1_Vector_pop_back'u64'$1$e@2| |inline$$1_Vector_pop_back'u64'$1$e@1|))) (and (=> (= (ControlFlow 0 49570) 49676) |inline$$42_TestVector_unwrap_or'u64'$1$anon11_Then_correct|) (=> (= (ControlFlow 0 49570) 49650) |inline$$42_TestVector_unwrap_or'u64'$1$anon11_Else_correct|))))))
(let ((|inline$$1_Vector_pop_back'u64'$1$anon0_correct|  (=> (and (= |inline$$1_Vector_pop_back'u64'$1$v@1| (|v#$Mutation_26505| |inline$$42_TestVector_unwrap_or'u64'$1$$t7@1|)) (= |inline$$1_Vector_pop_back'u64'$1$len@1| (|l#Vec_6775| |inline$$1_Vector_pop_back'u64'$1$v@1|))) (and (=> (= (ControlFlow 0 49544) 49618) |inline$$1_Vector_pop_back'u64'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 49544) 49570) |inline$$1_Vector_pop_back'u64'$1$anon3_Else_correct|)))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$1$anon10_Else_correct|  (=> (not |inline$$1_Vector_is_empty'u64'$1$b@1|) (=> (and (= |inline$$42_TestVector_unwrap_or'u64'$1$$t7@1| ($Mutation_26505 ($Local 3) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$42_TestVector_unwrap_or'u64'$1$$t3@1|)) (= (ControlFlow 0 49628) 49544)) |inline$$1_Vector_pop_back'u64'$1$anon0_correct|))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$1$anon10_Then_correct|  (=> (and |inline$$1_Vector_is_empty'u64'$1$b@1| (= 0 0)) (=> (and (and (= $abort_code@5 $abort_code@3) (= $abort_flag@6 $abort_flag@4)) (and (= |inline$$42_TestVector_unwrap_or'u64'$1$$t2@1| 0) (= (ControlFlow 0 49696) 49662))) |inline$$42_TestVector_unwrap_or'u64'$1$L3_correct|))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$1$anon9_Else_correct|  (=> (not $abort_flag@4) (and (=> (= (ControlFlow 0 49425) 49696) |inline$$42_TestVector_unwrap_or'u64'$1$anon10_Then_correct|) (=> (= (ControlFlow 0 49425) 49628) |inline$$42_TestVector_unwrap_or'u64'$1$anon10_Else_correct|)))))
(let ((|inline$$1_Vector_is_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_is_empty'u64'$1$b@1| (= (|l#Vec_6775| |inline$$42_TestVector_unwrap_or'u64'$1$$t3@1|) 0)) (and (=> (= (ControlFlow 0 49411) 49710) |inline$$42_TestVector_unwrap_or'u64'$1$anon9_Then_correct|) (=> (= (ControlFlow 0 49411) 49425) |inline$$42_TestVector_unwrap_or'u64'$1$anon9_Else_correct|)))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$1$anon0_correct|  (=> (and (= (|l#Vec_6775| (|p#$Mutation_26505| |inline$$42_TestVector_unwrap_or'u64'$1$$t7@0|)) 0) (= |inline$$42_TestVector_some'u64'$0$$ret0@1| |inline$$42_TestVector_some'u64'$0$$ret0@1|)) (=> (and (and (= 0 0) (= |inline$$42_TestVector_unwrap_or'u64'$1$$t3@1| (|$v#$42_TestVector_T'u64'| |inline$$42_TestVector_some'u64'$0$$ret0@1|))) (and (= |inline$$42_TestVector_unwrap_or'u64'$1$$t3@1| |inline$$42_TestVector_unwrap_or'u64'$1$$t3@1|) (= (ControlFlow 0 49417) 49411))) |inline$$1_Vector_is_empty'u64'$1$anon0_correct|))))
(let ((anon12_Else_correct  (=> (not $abort_flag@4) (=> (and (|$IsValid'u64'| 0) (= (ControlFlow 0 49716) 49417)) |inline$$42_TestVector_unwrap_or'u64'$1$anon0_correct|))))
(let ((anon12_Then_correct true))
(let ((|inline$$42_TestVector_unwrap_or'u64'$0$L5_correct|  (=> (= $abort_flag@4 true) (=> (and (= $abort_code@3 |inline$$42_TestVector_unwrap_or'u64'$0$$t6@1|) (= |inline$$42_TestVector_unwrap_or'u64'$0$$ret0@1| |inline$$42_TestVector_unwrap_or'u64'$0$$ret0@0|)) (and (=> (= (ControlFlow 0 49012) 49792) anon12_Then_correct) (=> (= (ControlFlow 0 49012) 49716) anon12_Else_correct))))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$0$anon11_Then_correct|  (=> (and (and $abort_flag@2 (= $abort_code@1 $abort_code@1)) (and (= |inline$$42_TestVector_unwrap_or'u64'$0$$t6@1| $abort_code@1) (= (ControlFlow 0 49006) 49012))) |inline$$42_TestVector_unwrap_or'u64'$0$L5_correct|)))
(let ((|inline$$42_TestVector_unwrap_or'u64'$0$anon9_Then_correct|  (=> (and (and $abort_flag@1 (= $abort_code@0 $abort_code@0)) (and (= |inline$$42_TestVector_unwrap_or'u64'$0$$t6@1| $abort_code@0) (= (ControlFlow 0 49040) 49012))) |inline$$42_TestVector_unwrap_or'u64'$0$L5_correct|)))
(let ((|inline$$42_TestVector_unwrap_or'u64'$0$L3_correct|  (=> (and (and (= |inline$$42_TestVector_unwrap_or'u64'$0$$t2@1| |inline$$42_TestVector_unwrap_or'u64'$0$$t2@1|) (= $abort_flag@4 $abort_flag@3)) (and (= $abort_code@3 $abort_code@2) (= |inline$$42_TestVector_unwrap_or'u64'$0$$ret0@1| |inline$$42_TestVector_unwrap_or'u64'$0$$t2@1|))) (and (=> (= (ControlFlow 0 48992) 49792) anon12_Then_correct) (=> (= (ControlFlow 0 48992) 49716) anon12_Else_correct)))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$0$anon11_Else_correct|  (=> (not $abort_flag@2) (=> (and (= |inline$$42_TestVector_unwrap_or'u64'$0$$t3@2| (|v#$Mutation_26505| |inline$$1_Vector_pop_back'u64'$0$m'|)) (= |inline$$1_Vector_pop_back'u64'$0$e@2| |inline$$1_Vector_pop_back'u64'$0$e@2|)) (=> (and (and (= $abort_code@2 $abort_code@1) (= $abort_flag@3 $abort_flag@2)) (and (= |inline$$42_TestVector_unwrap_or'u64'$0$$t2@1| |inline$$1_Vector_pop_back'u64'$0$e@2|) (= (ControlFlow 0 48980) 48992))) |inline$$42_TestVector_unwrap_or'u64'$0$L3_correct|)))))
(let ((|inline$$1_Vector_pop_back'u64'$0$anon3_Then$1_correct|  (=> (= $abort_code@1 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@2 true) (= |inline$$1_Vector_pop_back'u64'$0$e@2| |inline$$1_Vector_pop_back'u64'$0$e@0|)) (and (=> (= (ControlFlow 0 48950) 49006) |inline$$42_TestVector_unwrap_or'u64'$0$anon11_Then_correct|) (=> (= (ControlFlow 0 48950) 48980) |inline$$42_TestVector_unwrap_or'u64'$0$anon11_Else_correct|))))))
(let ((|inline$$1_Vector_pop_back'u64'$0$anon3_Then_correct|  (=> (and (= |inline$$1_Vector_pop_back'u64'$0$len@1| 0) (= (ControlFlow 0 48948) 48950)) |inline$$1_Vector_pop_back'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_pop_back'u64'$0$anon3_Else_correct|  (=> (and (not (= |inline$$1_Vector_pop_back'u64'$0$len@1| 0)) (= |inline$$1_Vector_pop_back'u64'$0$e@1| (|Select__T@[Int]Int_| (|v#Vec_6775| |inline$$1_Vector_pop_back'u64'$0$v@1|) (- |inline$$1_Vector_pop_back'u64'$0$len@1| 1)))) (=> (and (and (= |inline$$1_Vector_pop_back'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| |inline$$42_TestVector_unwrap_or'u64'$0$$t7@1|) (|p#$Mutation_26505| |inline$$42_TestVector_unwrap_or'u64'$0$$t7@1|) (let ((l@@0 (- (|l#Vec_6775| |inline$$1_Vector_pop_back'u64'$0$v@1|) 1)))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| |inline$$1_Vector_pop_back'u64'$0$v@1|) l@@0 DefaultVecElem_4347) l@@0)))) (= $abort_code@1 $abort_code@0)) (and (= $abort_flag@2 $abort_flag@1) (= |inline$$1_Vector_pop_back'u64'$0$e@2| |inline$$1_Vector_pop_back'u64'$0$e@1|))) (and (=> (= (ControlFlow 0 48900) 49006) |inline$$42_TestVector_unwrap_or'u64'$0$anon11_Then_correct|) (=> (= (ControlFlow 0 48900) 48980) |inline$$42_TestVector_unwrap_or'u64'$0$anon11_Else_correct|))))))
(let ((|inline$$1_Vector_pop_back'u64'$0$anon0_correct|  (=> (and (= |inline$$1_Vector_pop_back'u64'$0$v@1| (|v#$Mutation_26505| |inline$$42_TestVector_unwrap_or'u64'$0$$t7@1|)) (= |inline$$1_Vector_pop_back'u64'$0$len@1| (|l#Vec_6775| |inline$$1_Vector_pop_back'u64'$0$v@1|))) (and (=> (= (ControlFlow 0 48874) 48948) |inline$$1_Vector_pop_back'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 48874) 48900) |inline$$1_Vector_pop_back'u64'$0$anon3_Else_correct|)))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$0$anon10_Else_correct|  (=> (not |inline$$1_Vector_is_empty'u64'$0$b@1|) (=> (and (= |inline$$42_TestVector_unwrap_or'u64'$0$$t7@1| ($Mutation_26505 ($Local 3) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$42_TestVector_unwrap_or'u64'$0$$t3@1|)) (= (ControlFlow 0 48958) 48874)) |inline$$1_Vector_pop_back'u64'$0$anon0_correct|))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$0$anon10_Then_correct|  (=> (and |inline$$1_Vector_is_empty'u64'$0$b@1| (= 0 0)) (=> (and (and (= $abort_code@2 $abort_code@0) (= $abort_flag@3 $abort_flag@1)) (and (= |inline$$42_TestVector_unwrap_or'u64'$0$$t2@1| 0) (= (ControlFlow 0 49026) 48992))) |inline$$42_TestVector_unwrap_or'u64'$0$L3_correct|))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$0$anon9_Else_correct|  (=> (not $abort_flag@1) (and (=> (= (ControlFlow 0 48755) 49026) |inline$$42_TestVector_unwrap_or'u64'$0$anon10_Then_correct|) (=> (= (ControlFlow 0 48755) 48958) |inline$$42_TestVector_unwrap_or'u64'$0$anon10_Else_correct|)))))
(let ((|inline$$1_Vector_is_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_is_empty'u64'$0$b@1| (= (|l#Vec_6775| |inline$$42_TestVector_unwrap_or'u64'$0$$t3@1|) 0)) (and (=> (= (ControlFlow 0 48741) 49040) |inline$$42_TestVector_unwrap_or'u64'$0$anon9_Then_correct|) (=> (= (ControlFlow 0 48741) 48755) |inline$$42_TestVector_unwrap_or'u64'$0$anon9_Else_correct|)))))
(let ((|inline$$42_TestVector_unwrap_or'u64'$0$anon0_correct|  (=> (and (= (|l#Vec_6775| (|p#$Mutation_26505| |inline$$42_TestVector_unwrap_or'u64'$0$$t7@0|)) 0) (= |inline$$42_TestVector_none'u64'$0$$ret0@1| |inline$$42_TestVector_none'u64'$0$$ret0@1|)) (=> (and (and (= 0 0) (= |inline$$42_TestVector_unwrap_or'u64'$0$$t3@1| (|$v#$42_TestVector_T'u64'| |inline$$42_TestVector_none'u64'$0$$ret0@1|))) (and (= |inline$$42_TestVector_unwrap_or'u64'$0$$t3@1| |inline$$42_TestVector_unwrap_or'u64'$0$$t3@1|) (= (ControlFlow 0 48747) 48741))) |inline$$1_Vector_is_empty'u64'$0$anon0_correct|))))
(let ((anon11_Else_correct  (=> (and (and (not $abort_flag@1) (= |inline$$42_TestVector_some'u64'$0$$ret0@1| |inline$$42_TestVector_some'u64'$0$$ret0@1|)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 49046) 48747))) |inline$$42_TestVector_unwrap_or'u64'$0$anon0_correct|)))
(let ((anon11_Then_correct true))
(let ((|inline$$42_TestVector_some'u64'$0$L2_correct|  (=> (and (= $abort_flag@1 true) (= |inline$$42_TestVector_some'u64'$0$$ret0@1| |inline$$42_TestVector_some'u64'$0$$ret0@0|)) (and (=> (= (ControlFlow 0 48348) 49806) anon11_Then_correct) (=> (= (ControlFlow 0 48348) 49046) anon11_Else_correct)))))
(let ((|inline$$42_TestVector_some'u64'$0$anon6_Then_correct|  (=> $abort_flag@0 (=> (and (= $abort_code@0 $abort_code@0) (= (ControlFlow 0 48342) 48348)) |inline$$42_TestVector_some'u64'$0$L2_correct|))))
(let ((|inline$$42_TestVector_some'u64'$0$anon5_Then_correct|  (=> $abort_flag@0 (=> (and (= $abort_code@0 $abort_code@0) (= (ControlFlow 0 48362) 48348)) |inline$$42_TestVector_some'u64'$0$L2_correct|))))
(let ((|inline$$42_TestVector_some'u64'$0$anon6_Else_correct|  (=> (and (not $abort_flag@0) (= |inline$$42_TestVector_some'u64'$0$$t1@1| (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$0$m'@1|))) (=> (and (and (= |inline$$42_TestVector_some'u64'$0$$t5@1| (|$42_TestVector_T'u64'| |inline$$42_TestVector_some'u64'$0$$t1@1|)) (= |inline$$42_TestVector_some'u64'$0$$t5@1| |inline$$42_TestVector_some'u64'$0$$t5@1|)) (and (= $abort_flag@1 $abort_flag@0) (= |inline$$42_TestVector_some'u64'$0$$ret0@1| |inline$$42_TestVector_some'u64'$0$$t5@1|))) (and (=> (= (ControlFlow 0 48328) 49806) anon11_Then_correct) (=> (= (ControlFlow 0 48328) 49046) anon11_Else_correct))))))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| |inline$$42_TestVector_some'u64'$0$$t3@1|) (|p#$Mutation_26505| |inline$$42_TestVector_some'u64'$0$$t3@1|) (let ((l@@1 (|l#Vec_6775| (|v#$Mutation_26505| |inline$$42_TestVector_some'u64'$0$$t3@1|))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| |inline$$42_TestVector_some'u64'$0$$t3@1|)) l@@1 42) (+ l@@1 1))))) (and (=> (= (ControlFlow 0 48292) 48342) |inline$$42_TestVector_some'u64'$0$anon6_Then_correct|) (=> (= (ControlFlow 0 48292) 48328) |inline$$42_TestVector_some'u64'$0$anon6_Else_correct|)))))
(let ((|inline$$42_TestVector_some'u64'$0$anon5_Else_correct|  (=> (and (and (not $abort_flag@0) (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|)) (and (= |inline$$42_TestVector_some'u64'$0$$t3@1| ($Mutation_26505 ($Local 1) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$1$v@1|)) (= (ControlFlow 0 48298) 48292))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|)))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 48209) 48362) |inline$$42_TestVector_some'u64'$0$anon5_Then_correct|) (=> (= (ControlFlow 0 48209) 48298) |inline$$42_TestVector_some'u64'$0$anon5_Else_correct|)))))
(let ((|inline$$42_TestVector_some'u64'$0$anon0_correct|  (=> (= (|l#Vec_6775| (|p#$Mutation_26505| |inline$$42_TestVector_some'u64'$0$$t3@0|)) 0) (=> (and (= 42 42) (= (ControlFlow 0 48215) 48209)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon10_Else_correct  (=> (and (and (not $abort_flag@0) (= |inline$$42_TestVector_none'u64'$0$$ret0@1| |inline$$42_TestVector_none'u64'$0$$ret0@1|)) (and (|$IsValid'u64'| 42) (= (ControlFlow 0 48368) 48215))) |inline$$42_TestVector_some'u64'$0$anon0_correct|)))
(let ((anon10_Then_correct true))
(let ((|inline$$42_TestVector_none'u64'$0$anon3_Else_correct|  (=> (not false) (=> (and (and (= |inline$$42_TestVector_none'u64'$0$$t2@1| (|$42_TestVector_T'u64'| |inline$$1_Vector_empty'u64'$0$v@1|)) (= |inline$$42_TestVector_none'u64'$0$$t2@1| |inline$$42_TestVector_none'u64'$0$$t2@1|)) (and (= $abort_flag@0 false) (= |inline$$42_TestVector_none'u64'$0$$ret0@1| |inline$$42_TestVector_none'u64'$0$$t2@1|))) (and (=> (= (ControlFlow 0 47911) 49820) anon10_Then_correct) (=> (= (ControlFlow 0 47911) 48368) anon10_Else_correct))))))
(let ((|inline$$42_TestVector_none'u64'$0$anon3_Then_correct| true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 47883) 47929) |inline$$42_TestVector_none'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 47883) 47911) |inline$$42_TestVector_none'u64'$0$anon3_Else_correct|)))))
(let ((|inline$$42_TestVector_none'u64'$0$anon0_correct|  (=> (= (ControlFlow 0 47889) 47883) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 47935) 47889) |inline$$42_TestVector_none'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (ControlFlow 0 70325) 47935) anon0$1_correct)))
anon0_correct)))))))))))))))))))))))))))))))))))))))))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $42_TestVector_some$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 71721) true)
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@2| () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@0| () Int)
(declare-fun $t0@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@1| () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun $t2@0 () T@$Mutation_26505)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_6775)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun $t2 () T@$Mutation_26505)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_borrow1$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 71931) (let ((anon10_Else_correct  (=> (not $abort_flag@0) (=> (and (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@2|) (= (ControlFlow 0 50652) (- 0 72222))) (= |inline$$1_Vector_borrow'u64'$0$dst@2| 7)))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@0|)) (and (=> (= (ControlFlow 0 50620) 50666) anon10_Then_correct) (=> (= (ControlFlow 0 50620) 50652) anon10_Else_correct))))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_4118 $t0@0 0)) (= (ControlFlow 0 50618) 50620)) |inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|  (=> (InRangeVec_4118 $t0@0 0) (=> (and (and (= |inline$$1_Vector_borrow'u64'$0$dst@1| (|Select__T@[Int]Int_| (|v#Vec_6775| $t0@0) 0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@1|))) (and (=> (= (ControlFlow 0 50568) 50666) anon10_Then_correct) (=> (= (ControlFlow 0 50568) 50652) anon10_Else_correct))))))
(let ((anon9_Else_correct  (=> (not false) (=> (and (= $t0@0 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (|$IsValid'u64'| 0)) (and (=> (= (ControlFlow 0 50626) 50618) |inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 50626) 50568) |inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|))))))
(let ((anon9_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t2@0) (|p#$Mutation_26505| $t2@0) (let ((l (|l#Vec_6775| (|v#$Mutation_26505| $t2@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t2@0)) l 7) (+ l 1))))) (and (=> (= (ControlFlow 0 50457) 50686) anon9_Then_correct) (=> (= (ControlFlow 0 50457) 50626) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t2@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 7) (= (ControlFlow 0 50463) 50457))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon8_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 50368) 50700) anon8_Then_correct) (=> (= (ControlFlow 0 50368) 50463) anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 50374) 50368) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t2)) 0) (= (ControlFlow 0 50344) 50374)) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 71931) 50344) anon0_correct)))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@2| () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@0| () Int)
(declare-fun $t0@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@1| () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun $t2@0 () T@$Mutation_26505)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_6775)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun $t2 () T@$Mutation_26505)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_borrow2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 72245) (let ((anon10_Else_correct  (=> (not $abort_flag@0) (=> (and (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@2|) (= (ControlFlow 0 51102) (- 0 72536))) (not (= |inline$$1_Vector_borrow'u64'$0$dst@2| 7))))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@0|)) (and (=> (= (ControlFlow 0 51068) 51116) anon10_Then_correct) (=> (= (ControlFlow 0 51068) 51102) anon10_Else_correct))))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_4118 $t0@0 0)) (= (ControlFlow 0 51066) 51068)) |inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|  (=> (InRangeVec_4118 $t0@0 0) (=> (and (and (= |inline$$1_Vector_borrow'u64'$0$dst@1| (|Select__T@[Int]Int_| (|v#Vec_6775| $t0@0) 0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@1|))) (and (=> (= (ControlFlow 0 51016) 51116) anon10_Then_correct) (=> (= (ControlFlow 0 51016) 51102) anon10_Else_correct))))))
(let ((anon9_Else_correct  (=> (not false) (=> (and (= $t0@0 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (|$IsValid'u64'| 0)) (and (=> (= (ControlFlow 0 51074) 51066) |inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 51074) 51016) |inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|))))))
(let ((anon9_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t2@0) (|p#$Mutation_26505| $t2@0) (let ((l (|l#Vec_6775| (|v#$Mutation_26505| $t2@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t2@0)) l 0) (+ l 1))))) (and (=> (= (ControlFlow 0 50905) 51136) anon9_Then_correct) (=> (= (ControlFlow 0 50905) 51074) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t2@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 50911) 50905))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon8_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 50816) 51150) anon8_Then_correct) (=> (= (ControlFlow 0 50816) 50911) anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 50822) 50816) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t2)) 0) (= (ControlFlow 0 50792) 50822)) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 72245) 50792) anon0_correct)))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@2| () Int)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@0| () Int)
(declare-fun $t0@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@1| () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun $t2@0 () T@$Mutation_26505)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_6775)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun $t2 () T@$Mutation_26505)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_borrow3$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 72561) (let ((L2_correct  (=> (= (ControlFlow 0 51572) (- 0 72861)) true)))
(let ((anon10_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 51562) 51572)) L2_correct))))
(let ((anon10_Else_correct  (=> (not $abort_flag@0) (=> (and (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@2|) (= (ControlFlow 0 51548) (- 0 72852))) (not true)))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@0|)) (and (=> (= (ControlFlow 0 51518) 51562) anon10_Then_correct) (=> (= (ControlFlow 0 51518) 51548) anon10_Else_correct))))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_4118 $t0@0 1)) (= (ControlFlow 0 51516) 51518)) |inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|  (=> (InRangeVec_4118 $t0@0 1) (=> (and (and (= |inline$$1_Vector_borrow'u64'$0$dst@1| (|Select__T@[Int]Int_| (|v#Vec_6775| $t0@0) 1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@1|))) (and (=> (= (ControlFlow 0 51466) 51562) anon10_Then_correct) (=> (= (ControlFlow 0 51466) 51548) anon10_Else_correct))))))
(let ((anon9_Else_correct  (=> (not false) (=> (and (= $t0@0 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 51524) 51516) |inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 51524) 51466) |inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|))))))
(let ((anon9_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t2@0) (|p#$Mutation_26505| $t2@0) (let ((l (|l#Vec_6775| (|v#$Mutation_26505| $t2@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t2@0)) l 7) (+ l 1))))) (and (=> (= (ControlFlow 0 51355) 51586) anon9_Then_correct) (=> (= (ControlFlow 0 51355) 51524) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t2@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 7) (= (ControlFlow 0 51361) 51355))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon8_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 51266) 51600) anon8_Then_correct) (=> (= (ControlFlow 0 51266) 51361) anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 51272) 51266) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t2)) 0) (= (ControlFlow 0 51242) 51272)) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 72561) 51242) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t4@0 () T@Vec_6775)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t11@0 () T@$Mutation_4742)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@2| () T@$Mutation_4742)
(declare-fun $t0@0 () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@2| () Int)
(declare-fun |$temp_0'vec'u64''@2| () T@Vec_6775)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@0| () T@$Mutation_4742)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$m'@0| () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$v@1| () T@Vec_6775)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@1| () T@$Mutation_4742)
(declare-fun _$t0 () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@0| () Int)
(declare-fun $t5@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@1| () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun |$temp_0'vec'u64''@0| () T@Vec_6775)
(declare-fun |$temp_0'vec'u64''@1| () T@Vec_6775)
(declare-fun $t1 () T@$Mutation_26505)
(declare-fun $t11 () T@$Mutation_4742)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_borrow_mut$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 72881) (let ((L2_correct  (=> (= (ControlFlow 0 52221) (- 0 73375)) (= (|l#Vec_6775| $t4@0) 0))))
(let ((anon7_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 52205) 52221)) L2_correct))))
(let ((anon6_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 52235) 52221)) L2_correct))))
(let ((anon7_Else_correct  (=> (not $abort_flag@1) (=> (and (= $t11@0 ($Mutation_4742 (|l#$Mutation_4742| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) (|p#$Mutation_4742| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) 7)) (= $t0@0 ($Mutation_26505 (|l#$Mutation_26505| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (|p#$Mutation_26505| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|)) (|Select__T@[Int]Int_| (|v#Vec_6775| (|p#$Mutation_4742| $t11@0)) (|l#Vec_6775| (|p#$Mutation_26505| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|))) (|v#$Mutation_4742| $t11@0)) (|l#Vec_6775| (|v#$Mutation_26505| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|)))))) (=> (and (and (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@2|) (= |$temp_0'vec'u64''@2| (|v#$Mutation_26505| $t0@0))) (and (= |$temp_0'vec'u64''@2| |$temp_0'vec'u64''@2|) (= (ControlFlow 0 52191) (- 0 73359)))) (not (= (|l#Vec_6775| $t4@0) 0)))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= $abort_flag@1 true)) (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@0|) (= |inline$$1_Vector_borrow_mut'u64'$0$m'@1| |inline$$1_Vector_borrow_mut'u64'$0$m'@0|))) (and (=> (= (ControlFlow 0 52107) 52205) anon7_Then_correct) (=> (= (ControlFlow 0 52107) 52191) anon7_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_4118 |inline$$1_Vector_borrow_mut'u64'$0$v@1| 0)) (= (ControlFlow 0 52105) 52107)) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|  (=> (and (InRangeVec_4118 |inline$$1_Vector_borrow_mut'u64'$0$v@1| 0) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@1| ($Mutation_4742 (|l#$Mutation_26505| _$t0) (let ((l (|l#Vec_6775| (|p#$Mutation_26505| _$t0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|p#$Mutation_26505| _$t0)) l 0) (+ l 1))) (|Select__T@[Int]Int_| (|v#Vec_6775| |inline$$1_Vector_borrow_mut'u64'$0$v@1|) 0)))) (=> (and (and (= $abort_code@2 $abort_code@1) (= $abort_flag@1 $abort_flag@0)) (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@1|) (= |inline$$1_Vector_borrow_mut'u64'$0$m'@1| _$t0))) (and (=> (= (ControlFlow 0 52055) 52205) anon7_Then_correct) (=> (= (ControlFlow 0 52055) 52191) anon7_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$0$v@1| (|v#$Mutation_26505| _$t0)) (and (=> (= (ControlFlow 0 52025) 52105) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 52025) 52055) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|)))))
(let ((anon6_Else_correct  (=> (not $abort_flag@0) (=> (and (and (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@2|) (|$IsValid'u64'| 7)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 52115) 52025))) |inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@0|)) (and (=> (= (ControlFlow 0 51891) 52235) anon6_Then_correct) (=> (= (ControlFlow 0 51891) 52115) anon6_Else_correct))))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_4118 $t5@0 0)) (= (ControlFlow 0 51889) 51891)) |inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|  (=> (InRangeVec_4118 $t5@0 0) (=> (and (and (= |inline$$1_Vector_borrow'u64'$0$dst@1| (|Select__T@[Int]Int_| (|v#Vec_6775| $t5@0) 0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@1|))) (and (=> (= (ControlFlow 0 51839) 52235) anon6_Then_correct) (=> (= (ControlFlow 0 51839) 52115) anon6_Else_correct))))))
(let ((anon0$1_correct  (=> (= (|l#$Mutation_26505| _$t0) ($Param 0)) (=> (and (and (and (|$IsValid'vec'u64''| (|v#$Mutation_26505| _$t0)) (= $t4@0 (|v#$Mutation_26505| _$t0))) (and (= |$temp_0'vec'u64''@0| (|v#$Mutation_26505| _$t0)) (= |$temp_0'vec'u64''@0| |$temp_0'vec'u64''@0|))) (and (and (= |$temp_0'vec'u64''@1| (|v#$Mutation_26505| _$t0)) (= |$temp_0'vec'u64''@1| |$temp_0'vec'u64''@1|)) (and (= $t5@0 (|v#$Mutation_26505| _$t0)) (|$IsValid'u64'| 0)))) (and (=> (= (ControlFlow 0 51897) 51889) |inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 51897) 51839) |inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|))))))
(let ((anon0_correct  (=> (= (|l#Vec_6775| (|p#$Mutation_26505| $t1)) 0) (=> (and (= (|l#Vec_6775| (|p#$Mutation_4742| $t11)) 0) (= (ControlFlow 0 51700) 51897)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 72881) 51700) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_contains'u64'$1$res@1| () Bool)
(declare-fun $t2@3 () T@Vec_6775)
(declare-fun |inline$$1_Vector_contains'u64'$0$res@1| () Bool)
(declare-fun |inline$$1_Vector_push_back'u64'$3$m'@1| () T@$Mutation_26505)
(declare-fun $t14@0 () T@$Mutation_26505)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t2@2 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_26505)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun $t12@0 () T@$Mutation_26505)
(declare-fun $t2@1 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_26505)
(declare-fun $t10@0 () T@$Mutation_26505)
(declare-fun $t2@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun $t8@0 () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_6775)
(declare-fun $t8 () T@$Mutation_26505)
(declare-fun $t10 () T@$Mutation_26505)
(declare-fun $t12 () T@$Mutation_26505)
(declare-fun $t14 () T@$Mutation_26505)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_contains$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 73398) (let ((anon22_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_contains'u64'$1$res@1| |inline$$1_Vector_contains'u64'$1$res@1|) (= $t2@3 $t2@3)) (and (= |inline$$1_Vector_contains'u64'$0$res@1| |inline$$1_Vector_contains'u64'$0$res@1|) (= |inline$$1_Vector_contains'u64'$1$res@1| |inline$$1_Vector_contains'u64'$1$res@1|))) (and (=> (= (ControlFlow 0 53208) (- 0 74014)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 53208) (- 0 74021)) (= |inline$$1_Vector_contains'u64'$0$res@1| true)) (=> (= |inline$$1_Vector_contains'u64'$0$res@1| true) (and (=> (= (ControlFlow 0 53208) (- 0 74029)) (= |inline$$1_Vector_contains'u64'$1$res@1| false)) (=> (= |inline$$1_Vector_contains'u64'$1$res@1| false) (and (=> (= (ControlFlow 0 53208) (- 0 74037)) (= (|l#Vec_6775| $t2@3) 4)) (=> (= (|l#Vec_6775| $t2@3) 4) (and (=> (= (ControlFlow 0 53208) (- 0 74047)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| $t2@3) 0) 1)) (=> (= (|Select__T@[Int]Int_| (|v#Vec_6775| $t2@3) 0) 1) (and (=> (= (ControlFlow 0 53208) (- 0 74059)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| $t2@3) 1) 2)) (=> (= (|Select__T@[Int]Int_| (|v#Vec_6775| $t2@3) 1) 2) (and (=> (= (ControlFlow 0 53208) (- 0 74071)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| $t2@3) 2) 3)) (=> (= (|Select__T@[Int]Int_| (|v#Vec_6775| $t2@3) 2) 3) (and (=> (= (ControlFlow 0 53208) (- 0 74083)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| $t2@3) 3) 5)) (=> (= (|Select__T@[Int]Int_| (|v#Vec_6775| $t2@3) 3) 5) (and (=> (= (ControlFlow 0 53208) (- 0 74095)) (let (($range_0 $t2@3))
(exists (($i_1 Int) ) (!  (and (InRangeVec_4118 $range_0 $i_1) (let ((x (|Select__T@[Int]Int_| (|v#Vec_6775| $range_0) $i_1)))
(= x 1)))
 :qid |simplevectorclientdefaultz3bpl.2343:38|
 :skolemid |44|
)))) (=> (let (($range_0 $t2@3))
(exists (($i_1@@0 Int) ) (!  (and (InRangeVec_4118 $range_0 $i_1@@0) (let ((x (|Select__T@[Int]Int_| (|v#Vec_6775| $range_0) $i_1@@0)))
(= x 1)))
 :qid |simplevectorclientdefaultz3bpl.2343:38|
 :skolemid |44|
))) (and (=> (= (ControlFlow 0 53208) (- 0 74126)) (let (($range_0@@0 $t2@3))
(exists (($i_1@@1 Int) ) (!  (and (InRangeVec_4118 $range_0@@0 $i_1@@1) (let ((x@@0 (|Select__T@[Int]Int_| (|v#Vec_6775| $range_0@@0) $i_1@@1)))
(= x@@0 2)))
 :qid |simplevectorclientdefaultz3bpl.2349:38|
 :skolemid |45|
)))) (=> (let (($range_0@@0 $t2@3))
(exists (($i_1@@2 Int) ) (!  (and (InRangeVec_4118 $range_0@@0 $i_1@@2) (let ((x@@0 (|Select__T@[Int]Int_| (|v#Vec_6775| $range_0@@0) $i_1@@2)))
(= x@@0 2)))
 :qid |simplevectorclientdefaultz3bpl.2349:38|
 :skolemid |45|
))) (and (=> (= (ControlFlow 0 53208) (- 0 74157)) (let (($range_0@@1 $t2@3))
(exists (($i_1@@3 Int) ) (!  (and (InRangeVec_4118 $range_0@@1 $i_1@@3) (let ((x@@1 (|Select__T@[Int]Int_| (|v#Vec_6775| $range_0@@1) $i_1@@3)))
(= x@@1 3)))
 :qid |simplevectorclientdefaultz3bpl.2355:38|
 :skolemid |46|
)))) (=> (let (($range_0@@1 $t2@3))
(exists (($i_1@@4 Int) ) (!  (and (InRangeVec_4118 $range_0@@1 $i_1@@4) (let ((x@@1 (|Select__T@[Int]Int_| (|v#Vec_6775| $range_0@@1) $i_1@@4)))
(= x@@1 3)))
 :qid |simplevectorclientdefaultz3bpl.2355:38|
 :skolemid |46|
))) (and (=> (= (ControlFlow 0 53208) (- 0 74188)) (not (let (($range_0@@2 $t2@3))
(exists (($i_1@@5 Int) ) (!  (and (InRangeVec_4118 $range_0@@2 $i_1@@5) (let ((x@@2 (|Select__T@[Int]Int_| (|v#Vec_6775| $range_0@@2) $i_1@@5)))
(= x@@2 4)))
 :qid |simplevectorclientdefaultz3bpl.2361:39|
 :skolemid |47|
))))) (=> (not (let (($range_0@@2 $t2@3))
(exists (($i_1@@6 Int) ) (!  (and (InRangeVec_4118 $range_0@@2 $i_1@@6) (let ((x@@2 (|Select__T@[Int]Int_| (|v#Vec_6775| $range_0@@2) $i_1@@6)))
(= x@@2 4)))
 :qid |simplevectorclientdefaultz3bpl.2361:39|
 :skolemid |47|
)))) (=> (= (ControlFlow 0 53208) (- 0 74221)) (let (($range_0@@3 $t2@3))
(exists (($i_1@@7 Int) ) (!  (and (InRangeVec_4118 $range_0@@3 $i_1@@7) (let ((x@@3 (|Select__T@[Int]Int_| (|v#Vec_6775| $range_0@@3) $i_1@@7)))
(= x@@3 5)))
 :qid |simplevectorclientdefaultz3bpl.2367:38|
 :skolemid |48|
))))))))))))))))))))))))))))))))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_contains'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_contains'u64'$1$res@1| (exists ((i@@23 Int) ) (!  (and (and (|$IsValid'u64'| i@@23) (InRangeVec_4118 $t2@3 i@@23)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| $t2@3) i@@23) 4))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (and (=> (= (ControlFlow 0 52921) 53222) anon22_Then_correct) (=> (= (ControlFlow 0 52921) 53208) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (and (not false) (= |inline$$1_Vector_contains'u64'$0$res@1| |inline$$1_Vector_contains'u64'$0$res@1|)) (=> (and (and (= $t2@3 $t2@3) (|$IsValid'u64'| 4)) (and (= 4 4) (= (ControlFlow 0 52927) 52921))) |inline$$1_Vector_contains'u64'$1$anon0_correct|))))
(let ((anon21_Then_correct true))
(let ((|inline$$1_Vector_contains'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_contains'u64'$0$res@1| (exists ((i@@24 Int) ) (!  (and (and (|$IsValid'u64'| i@@24) (InRangeVec_4118 $t2@3 i@@24)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| $t2@3) i@@24) 3))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (and (=> (= (ControlFlow 0 52839) 53246) anon21_Then_correct) (=> (= (ControlFlow 0 52839) 52927) anon21_Else_correct)))))
(let ((anon20_Else_correct  (=> (and (not false) (= $t2@3 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$3$m'@1|))) (=> (and (and (= $t2@3 $t2@3) (|$IsValid'u64'| 3)) (and (= 3 3) (= (ControlFlow 0 52845) 52839))) |inline$$1_Vector_contains'u64'$0$anon0_correct|))))
(let ((anon20_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$3$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$3$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t14@0) (|p#$Mutation_26505| $t14@0) (let ((l (|l#Vec_6775| (|v#$Mutation_26505| $t14@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t14@0)) l 5) (+ l 1))))) (and (=> (= (ControlFlow 0 52759) 53260) anon20_Then_correct) (=> (= (ControlFlow 0 52759) 52845) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (not false) (=> (and (and (= $t2@2 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= $t14@0 ($Mutation_26505 ($Local 2) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t2@2))) (and (|$IsValid'u64'| 5) (= (ControlFlow 0 52765) 52759))) |inline$$1_Vector_push_back'u64'$3$anon0_correct|))))
(let ((anon19_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t12@0) (|p#$Mutation_26505| $t12@0) (let ((l@@0 (|l#Vec_6775| (|v#$Mutation_26505| $t12@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t12@0)) l@@0 3) (+ l@@0 1))))) (and (=> (= (ControlFlow 0 52672) 53274) anon19_Then_correct) (=> (= (ControlFlow 0 52672) 52765) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (not false) (=> (and (and (= $t2@1 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t12@0 ($Mutation_26505 ($Local 2) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t2@1))) (and (|$IsValid'u64'| 3) (= (ControlFlow 0 52678) 52672))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon18_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t10@0) (|p#$Mutation_26505| $t10@0) (let ((l@@1 (|l#Vec_6775| (|v#$Mutation_26505| $t10@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t10@0)) l@@1 2) (+ l@@1 1))))) (and (=> (= (ControlFlow 0 52585) 53288) anon18_Then_correct) (=> (= (ControlFlow 0 52585) 52678) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (not false) (=> (and (and (= $t2@0 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t10@0 ($Mutation_26505 ($Local 2) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t2@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 52591) 52585))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon17_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t8@0) (|p#$Mutation_26505| $t8@0) (let ((l@@2 (|l#Vec_6775| (|v#$Mutation_26505| $t8@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t8@0)) l@@2 1) (+ l@@2 1))))) (and (=> (= (ControlFlow 0 52498) 53302) anon17_Then_correct) (=> (= (ControlFlow 0 52498) 52591) anon17_Else_correct)))))
(let ((anon16_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t8@0 ($Mutation_26505 ($Local 2) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 52504) 52498))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon16_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 52409) 53316) anon16_Then_correct) (=> (= (ControlFlow 0 52409) 52504) anon16_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 52415) 52409) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (|l#Vec_6775| (|p#$Mutation_26505| $t8)) 0) (=> (and (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t10)) 0) (= (|l#Vec_6775| (|p#$Mutation_26505| $t12)) 0)) (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t14)) 0) (= (ControlFlow 0 52385) 52415))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 73398) 52385) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () T@Vec_6775)
(declare-fun _$t0 () T@Vec_6775)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_6775)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$1_Vector_is_empty'u64'$0$b@1| () Bool)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_destroy_empty1$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 74281) (let ((anon15_Then_correct true))
(let ((anon14_Then_correct true))
(let ((L3_correct  (=> (and (= $t1@0 $t1@0) (= (ControlFlow 0 53595) (- 0 74522))) (|$IsEqual'vec'u64''| $t1@0 _$t0))))
(let ((anon15_Else_correct  (=> (and (and (not $abort_flag@0) (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|)) (and (= $t1@0 |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 53761) 53595))) L3_correct)))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 53737) 53775) anon15_Then_correct) (=> (= (ControlFlow 0 53737) 53761) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (and (not $abort_flag@0) (= (ControlFlow 0 53743) 53737)) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((|inline$$1_Vector_destroy_empty'u64'$0$anon2_Then$1_correct|  (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 53703) 53795) anon14_Then_correct) (=> (= (ControlFlow 0 53703) 53743) anon14_Else_correct)))))
(let ((|inline$$1_Vector_destroy_empty'u64'$0$anon2_Then_correct|  (=> (and (not (= (|l#Vec_6775| _$t0) 0)) (= (ControlFlow 0 53701) 53703)) |inline$$1_Vector_destroy_empty'u64'$0$anon2_Then$1_correct|)))
(let ((|inline$$1_Vector_destroy_empty'u64'$0$anon2_Else_correct|  (=> (= (|l#Vec_6775| _$t0) 0) (=> (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (=> (= (ControlFlow 0 53653) 53795) anon14_Then_correct) (=> (= (ControlFlow 0 53653) 53743) anon14_Else_correct))))))
(let ((anon13_Then_correct  (=> |inline$$1_Vector_is_empty'u64'$0$b@1| (and (=> (= (ControlFlow 0 53707) 53701) |inline$$1_Vector_destroy_empty'u64'$0$anon2_Then_correct|) (=> (= (ControlFlow 0 53707) 53653) |inline$$1_Vector_destroy_empty'u64'$0$anon2_Else_correct|)))))
(let ((anon13_Else_correct  (=> (and (and (not |inline$$1_Vector_is_empty'u64'$0$b@1|) (= _$t0 _$t0)) (and (= $t1@0 _$t0) (= (ControlFlow 0 53575) 53595))) L3_correct)))
(let ((anon12_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 53559) 53707) anon13_Then_correct) (=> (= (ControlFlow 0 53559) 53575) anon13_Else_correct)))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_is_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_is_empty'u64'$0$b@1| (= (|l#Vec_6775| _$t0) 0)) (and (=> (= (ControlFlow 0 53545) 53809) anon12_Then_correct) (=> (= (ControlFlow 0 53545) 53559) anon12_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'u64''| _$t0) (=> (and (= _$t0 _$t0) (= (ControlFlow 0 53551) 53545)) |inline$$1_Vector_is_empty'u64'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (ControlFlow 0 74281) 53551) anon0$1_correct)))
anon0_correct)))))))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t0@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_swap'u64'$0$m'| () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_swap'u64'$0$v@1| () T@Vec_6775)
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun $t4@0 () T@$Mutation_26505)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$1_Vector_is_empty'u64'$0$b@1| () Bool)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun _$t0 () T@Vec_6775)
(declare-fun $t4 () T@$Mutation_26505)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_destroy_empty2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 74543) (let ((L5_correct  (=> (= (ControlFlow 0 54133) (- 0 74891)) true)))
(let ((anon14_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 54401) 54133)) L5_correct))))
(let ((anon15_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 54123) 54133)) L5_correct))))
(let ((L3_correct  (=> (= (ControlFlow 0 54109) (- 0 74920)) (not true))))
(let ((anon14_Else_correct  (=> (not $abort_flag@1) (=> (and (= $t0@0 (|v#$Mutation_26505| |inline$$1_Vector_swap'u64'$0$m'|)) (= (ControlFlow 0 54387) 54109)) L3_correct))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|  (=> (and (= $abort_flag@1 true) (= $abort_code@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 54367) 54401) anon14_Then_correct) (=> (= (ControlFlow 0 54367) 54387) anon14_Else_correct)))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then_correct|  (=> (and (or (not (InRangeVec_4118 |inline$$1_Vector_swap'u64'$0$v@1| 0)) (not (InRangeVec_4118 |inline$$1_Vector_swap'u64'$0$v@1| 0))) (= (ControlFlow 0 54365) 54367)) |inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Else_correct|  (=> (and (and (not (or (not (InRangeVec_4118 |inline$$1_Vector_swap'u64'$0$v@1| 0)) (not (InRangeVec_4118 |inline$$1_Vector_swap'u64'$0$v@1| 0)))) (= |inline$$1_Vector_swap'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t4@0) (|p#$Mutation_26505| $t4@0) (let ((m (|v#Vec_6775| |inline$$1_Vector_swap'u64'$0$v@1|)))
(Vec_6775 (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| m 0 (|Select__T@[Int]Int_| m 0)) 0 (|Select__T@[Int]Int_| m 0)) (|l#Vec_6775| |inline$$1_Vector_swap'u64'$0$v@1|)))))) (and (= $abort_flag@1 false) (= $abort_code@2 $abort_code@0))) (and (=> (= (ControlFlow 0 54305) 54401) anon14_Then_correct) (=> (= (ControlFlow 0 54305) 54387) anon14_Else_correct)))))
(let ((|inline$$1_Vector_swap'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_swap'u64'$0$v@1| (|v#$Mutation_26505| $t4@0)) (and (=> (= (ControlFlow 0 54271) 54365) |inline$$1_Vector_swap'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 54271) 54305) |inline$$1_Vector_swap'u64'$0$anon3_Else_correct|)))))
(let ((anon13_Then_correct  (=> |inline$$1_Vector_is_empty'u64'$0$b@1| (=> (and (and (= $t4@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) _$t0)) (|$IsValid'u64'| 0)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 54373) 54271))) |inline$$1_Vector_swap'u64'$0$anon0_correct|))))
(let ((anon15_Else_correct  (=> (and (not $abort_flag@0) (= (ControlFlow 0 54099) 54109)) L3_correct)))
(let ((|inline$$1_Vector_destroy_empty'u64'$0$anon2_Then$1_correct|  (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 54085) 54123) anon15_Then_correct) (=> (= (ControlFlow 0 54085) 54099) anon15_Else_correct)))))
(let ((|inline$$1_Vector_destroy_empty'u64'$0$anon2_Then_correct|  (=> (and (not (= (|l#Vec_6775| _$t0) 0)) (= (ControlFlow 0 54083) 54085)) |inline$$1_Vector_destroy_empty'u64'$0$anon2_Then$1_correct|)))
(let ((|inline$$1_Vector_destroy_empty'u64'$0$anon2_Else_correct|  (=> (= (|l#Vec_6775| _$t0) 0) (=> (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (=> (= (ControlFlow 0 54035) 54123) anon15_Then_correct) (=> (= (ControlFlow 0 54035) 54099) anon15_Else_correct))))))
(let ((anon13_Else_correct  (=> (not |inline$$1_Vector_is_empty'u64'$0$b@1|) (and (=> (= (ControlFlow 0 54089) 54083) |inline$$1_Vector_destroy_empty'u64'$0$anon2_Then_correct|) (=> (= (ControlFlow 0 54089) 54035) |inline$$1_Vector_destroy_empty'u64'$0$anon2_Else_correct|)))))
(let ((anon12_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 53973) 54373) anon13_Then_correct) (=> (= (ControlFlow 0 53973) 54089) anon13_Else_correct)))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_is_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_is_empty'u64'$0$b@1| (= (|l#Vec_6775| _$t0) 0)) (and (=> (= (ControlFlow 0 53959) 54415) anon12_Then_correct) (=> (= (ControlFlow 0 53959) 53973) anon12_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'u64''| _$t0) (=> (and (= _$t0 _$t0) (= (ControlFlow 0 53965) 53959)) |inline$$1_Vector_is_empty'u64'$0$anon0_correct|))))
(let ((anon0_correct  (=> (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t4)) 0) (= (ControlFlow 0 53911) 53965)) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 74543) 53911) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () T@Vec_6775)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_6775)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_empty$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 74934) (let ((anon7_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|)) (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|))) (and (=> (= (ControlFlow 0 54648) (- 0 75062)) (|$IsEqual'vec'u64''| |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$1$v@1|)) (=> (|$IsEqual'vec'u64''| |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (and (=> (= (ControlFlow 0 54648) (- 0 75069)) (= (|l#Vec_6775| |inline$$1_Vector_empty'u64'$0$v@1|) 0)) (=> (= (|l#Vec_6775| |inline$$1_Vector_empty'u64'$0$v@1|) 0) (=> (= (ControlFlow 0 54648) (- 0 75079)) (= (|l#Vec_6775| |inline$$1_Vector_empty'u64'$1$v@1|) 0)))))))))
(let ((anon7_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 54580) 54662) anon7_Then_correct) (=> (= (ControlFlow 0 54580) 54648) anon7_Else_correct)))))
(let ((anon6_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 54586) 54580)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon6_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 54538) 54682) anon6_Then_correct) (=> (= (ControlFlow 0 54538) 54586) anon6_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 54544) 54538) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (ControlFlow 0 74934) 54544) anon0$1_correct)))
anon0_correct)))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () T@Vec_6775)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_id1$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 75102) (let ((anon0$1_correct  (=> (and (and (|$IsValid'vec'u64''| _$t0) (= _$t0 _$t0)) (and (= _$t0 _$t0) (= (ControlFlow 0 54806) (- 0 75156)))) (|$IsEqual'vec'u64''| _$t0 _$t0))))
(let ((anon0_correct  (=> (= (ControlFlow 0 75102) 54806) anon0$1_correct)))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@1 () T@Vec_6775)
(declare-fun |inline$$1_Vector_reverse'u64'$1$m'@1| () T@$Mutation_26505)
(declare-fun _$t0 () T@Vec_6775)
(declare-fun $t4@0 () T@$Mutation_26505)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun $t0@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_reverse'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun $t2@0 () T@$Mutation_26505)
(declare-fun $t2 () T@$Mutation_26505)
(declare-fun $t4 () T@$Mutation_26505)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_id2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 75171) (let ((anon7_Else_correct  (=> (and (and (not false) (= $t0@1 (|v#$Mutation_26505| |inline$$1_Vector_reverse'u64'$1$m'@1|))) (and (= $t0@1 $t0@1) (= (ControlFlow 0 55070) (- 0 75397)))) (|$IsEqual'vec'u64''| $t0@1 _$t0))))
(let ((anon7_Then_correct true))
(let ((|inline$$1_Vector_reverse'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_reverse'u64'$1$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t4@0) (|p#$Mutation_26505| $t4@0) (let ((l (|l#Vec_6775| (|v#$Mutation_26505| $t4@0))))
(Vec_6775 (|lambda#6| 0 l (|v#Vec_6775| (|v#$Mutation_26505| $t4@0)) l 1 DefaultVecElem_4347) l)))) (and (=> (= (ControlFlow 0 55030) 55084) anon7_Then_correct) (=> (= (ControlFlow 0 55030) 55070) anon7_Else_correct)))))
(let ((anon6_Else_correct  (=> (and (and (not false) (= $t0@0 (|v#$Mutation_26505| |inline$$1_Vector_reverse'u64'$0$m'@1|))) (and (= $t4@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t0@0)) (= (ControlFlow 0 55036) 55030))) |inline$$1_Vector_reverse'u64'$1$anon0_correct|)))
(let ((anon6_Then_correct true))
(let ((|inline$$1_Vector_reverse'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_reverse'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t2@0) (|p#$Mutation_26505| $t2@0) (let ((l@@0 (|l#Vec_6775| (|v#$Mutation_26505| $t2@0))))
(Vec_6775 (|lambda#6| 0 l@@0 (|v#Vec_6775| (|v#$Mutation_26505| $t2@0)) l@@0 1 DefaultVecElem_4347) l@@0)))) (and (=> (= (ControlFlow 0 54959) 55104) anon6_Then_correct) (=> (= (ControlFlow 0 54959) 55036) anon6_Else_correct)))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'vec'u64''| _$t0) (= _$t0 _$t0)) (and (= $t2@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) _$t0)) (= (ControlFlow 0 54965) 54959))) |inline$$1_Vector_reverse'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (|l#Vec_6775| (|p#$Mutation_26505| $t2)) 0) (=> (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t4)) 0) (= (ControlFlow 0 54888) 54965)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 75171) 54888) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $t0@3 () T@Vec_6775)
(declare-fun |inline$$1_Vector_reverse'u64'$1$m'@1| () T@$Mutation_26505)
(declare-fun _$t0 () T@Vec_6775)
(declare-fun $t15@0 () T@$Mutation_26505)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun $t0@2 () T@Vec_6775)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t0@1 () T@Vec_6775)
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@2| () T@$Mutation_26505)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_code@2 () Int)
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@0| () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_swap'u64'$0$v@1| () T@Vec_6775)
(declare-fun inline$$Sub$0$dst@2 () Int)
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun $t10@0 () T@$Mutation_26505)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$Sub$0$dst@0 () Int)
(declare-fun |inline$$1_Vector_length'u64'$0$l@1| () Int)
(declare-fun inline$$Sub$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Le$1$dst@1 () Bool)
(declare-fun $t0@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_reverse'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun $t14@0 () T@$Mutation_26505)
(declare-fun $t10 () T@$Mutation_26505)
(declare-fun $t14 () T@$Mutation_26505)
(declare-fun $t15 () T@$Mutation_26505)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_id3$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 75419) (let ((anon23_Then_correct true))
(let ((anon22_Then_correct true))
(let ((anon25_Else_correct  (=> (and (and (not $abort_flag@2) (= $t0@3 (|v#$Mutation_26505| |inline$$1_Vector_reverse'u64'$1$m'@1|))) (and (= $t0@3 $t0@3) (= (ControlFlow 0 55588) (- 0 76114)))) (|$IsEqual'vec'u64''| $t0@3 _$t0))))
(let ((anon25_Then_correct true))
(let ((|inline$$1_Vector_reverse'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_reverse'u64'$1$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t15@0) (|p#$Mutation_26505| $t15@0) (let ((l (|l#Vec_6775| (|v#$Mutation_26505| $t15@0))))
(Vec_6775 (|lambda#6| 0 l (|v#Vec_6775| (|v#$Mutation_26505| $t15@0)) l 1 DefaultVecElem_4347) l)))) (and (=> (= (ControlFlow 0 55548) 55602) anon25_Then_correct) (=> (= (ControlFlow 0 55548) 55588) anon25_Else_correct)))))
(let ((L3_correct  (=> (and (= $t15@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t0@2)) (= (ControlFlow 0 55554) 55548)) |inline$$1_Vector_reverse'u64'$1$anon0_correct|)))
(let ((anon23_Else_correct  (=> (and (not $abort_flag@1) (= $t0@1 (|v#$Mutation_26505| |inline$$1_Vector_swap'u64'$0$m'@2|))) (=> (and (and (= $t0@2 $t0@1) (= $abort_flag@2 $abort_flag@1)) (and (= $abort_code@3 $abort_code@2) (= (ControlFlow 0 56021) 55554))) L3_correct))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= |inline$$1_Vector_swap'u64'$0$m'@2| |inline$$1_Vector_swap'u64'$0$m'@0|)) (and (=> (= (ControlFlow 0 56001) 56035) anon23_Then_correct) (=> (= (ControlFlow 0 56001) 56021) anon23_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then_correct|  (=> (and (or (not (InRangeVec_4118 |inline$$1_Vector_swap'u64'$0$v@1| 0)) (not (InRangeVec_4118 |inline$$1_Vector_swap'u64'$0$v@1| inline$$Sub$0$dst@2))) (= (ControlFlow 0 55999) 56001)) |inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Else_correct|  (=> (not (or (not (InRangeVec_4118 |inline$$1_Vector_swap'u64'$0$v@1| 0)) (not (InRangeVec_4118 |inline$$1_Vector_swap'u64'$0$v@1| inline$$Sub$0$dst@2)))) (=> (and (and (= |inline$$1_Vector_swap'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t10@0) (|p#$Mutation_26505| $t10@0) (let ((m (|v#Vec_6775| |inline$$1_Vector_swap'u64'$0$v@1|)))
(Vec_6775 (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| m 0 (|Select__T@[Int]Int_| m inline$$Sub$0$dst@2)) inline$$Sub$0$dst@2 (|Select__T@[Int]Int_| m 0)) (|l#Vec_6775| |inline$$1_Vector_swap'u64'$0$v@1|))))) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= |inline$$1_Vector_swap'u64'$0$m'@2| |inline$$1_Vector_swap'u64'$0$m'@1|))) (and (=> (= (ControlFlow 0 55939) 56035) anon23_Then_correct) (=> (= (ControlFlow 0 55939) 56021) anon23_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_swap'u64'$0$v@1| (|v#$Mutation_26505| $t10@0)) (and (=> (= (ControlFlow 0 55905) 55999) |inline$$1_Vector_swap'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 55905) 55939) |inline$$1_Vector_swap'u64'$0$anon3_Else_correct|)))))
(let ((anon22_Else_correct  (=> (and (not $abort_flag@0) (= (ControlFlow 0 56007) 55905)) |inline$$1_Vector_swap'u64'$0$anon0_correct|)))
(let ((inline$$Sub$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@0)) (and (=> (= (ControlFlow 0 55779) 56049) anon22_Then_correct) (=> (= (ControlFlow 0 55779) 56007) anon22_Else_correct))))))
(let ((inline$$Sub$0$anon3_Then_correct  (=> (and (< |inline$$1_Vector_length'u64'$0$l@1| 1) (= (ControlFlow 0 55777) 55779)) inline$$Sub$0$anon3_Then$1_correct)))
(let ((inline$$Sub$0$anon3_Else_correct  (=> (<= 1 |inline$$1_Vector_length'u64'$0$l@1|) (=> (and (and (= inline$$Sub$0$dst@1 (- |inline$$1_Vector_length'u64'$0$l@1| 1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@1))) (and (=> (= (ControlFlow 0 55729) 56049) anon22_Then_correct) (=> (= (ControlFlow 0 55729) 56007) anon22_Else_correct))))))
(let ((anon21_Then_correct  (=> (and (and inline$$Le$1$dst@1 (= $t10@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) _$t0))) (and (|$IsValid'u64'| 0) (|$IsValid'u64'| 1))) (and (=> (= (ControlFlow 0 55785) 55777) inline$$Sub$0$anon3_Then_correct) (=> (= (ControlFlow 0 55785) 55729) inline$$Sub$0$anon3_Else_correct)))))
(let ((anon24_Else_correct  (=> (and (not false) (= $t0@0 (|v#$Mutation_26505| |inline$$1_Vector_reverse'u64'$0$m'@1|))) (=> (and (and (= $t0@2 $t0@0) (= $abort_flag@2 false)) (and (= $abort_code@3 $abort_code@0) (= (ControlFlow 0 55495) 55554))) L3_correct))))
(let ((anon20_Then_correct  (=> inline$$Le$0$dst@1 (=> (and (and (= $t0@2 _$t0) (= $abort_flag@2 false)) (and (= $abort_code@3 $abort_code@0) (= (ControlFlow 0 56053) 55554))) L3_correct))))
(let ((anon24_Then_correct true))
(let ((|inline$$1_Vector_reverse'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_reverse'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t14@0) (|p#$Mutation_26505| $t14@0) (let ((l@@0 (|l#Vec_6775| (|v#$Mutation_26505| $t14@0))))
(Vec_6775 (|lambda#6| 0 l@@0 (|v#Vec_6775| (|v#$Mutation_26505| $t14@0)) l@@0 1 DefaultVecElem_4347) l@@0)))) (and (=> (= (ControlFlow 0 55475) 55622) anon24_Then_correct) (=> (= (ControlFlow 0 55475) 55495) anon24_Else_correct)))))
(let ((anon21_Else_correct  (=> (not inline$$Le$1$dst@1) (=> (and (= $t14@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) _$t0)) (= (ControlFlow 0 55481) 55475)) |inline$$1_Vector_reverse'u64'$0$anon0_correct|))))
(let ((inline$$Le$1$anon0_correct  (=> (= inline$$Le$1$dst@1 (<= |inline$$1_Vector_length'u64'$0$l@1| 3)) (and (=> (= (ControlFlow 0 55410) 55785) anon21_Then_correct) (=> (= (ControlFlow 0 55410) 55481) anon21_Else_correct)))))
(let ((anon20_Else_correct  (=> (not inline$$Le$0$dst@1) (=> (and (|$IsValid'u64'| 3) (= (ControlFlow 0 55416) 55410)) inline$$Le$1$anon0_correct))))
(let ((inline$$Le$0$anon0_correct  (=> (= inline$$Le$0$dst@1 (<= |inline$$1_Vector_length'u64'$0$l@1| 1)) (and (=> (= (ControlFlow 0 55350) 56053) anon20_Then_correct) (=> (= (ControlFlow 0 55350) 55416) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|)) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 55356) 55350))) inline$$Le$0$anon0_correct)))
(let ((anon19_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_6775| _$t0)) (and (=> (= (ControlFlow 0 55282) 56067) anon19_Then_correct) (=> (= (ControlFlow 0 55282) 55356) anon19_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'u64''| _$t0) (=> (and (= _$t0 _$t0) (= (ControlFlow 0 55288) 55282)) |inline$$1_Vector_length'u64'$0$anon0_correct|))))
(let ((anon0_correct  (=> (and (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t10)) 0) (= (|l#Vec_6775| (|p#$Mutation_26505| $t14)) 0)) (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t15)) 0) (= (ControlFlow 0 55230) 55288))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 75419) 55230) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_index_of'u64'$1$res2@2| () Int)
(declare-fun |inline$$1_Vector_index_of'u64'$1$res1@1| () Bool)
(declare-fun $t2@6 () T@Vec_6775)
(declare-fun |inline$$1_Vector_index_of'u64'$0$res1@1| () Bool)
(declare-fun |inline$$1_Vector_index_of'u64'$0$res2@2| () Int)
(declare-fun |inline$$1_Vector_index_of'u64'$1$res2@1| () Int)
(declare-fun |inline$$1_Vector_index_of'u64'$0$res2@1| () Int)
(declare-fun |inline$$1_Vector_reverse'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun $t22@0 () T@$Mutation_26505)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun $t2@5 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$5$m'@1| () T@$Mutation_26505)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun $t20@0 () T@$Mutation_26505)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t2@4 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$4$m'@1| () T@$Mutation_26505)
(declare-fun $t18@0 () T@$Mutation_26505)
(declare-fun $t2@3 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$3$m'@1| () T@$Mutation_26505)
(declare-fun $t16@0 () T@$Mutation_26505)
(declare-fun $t2@2 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_26505)
(declare-fun $t14@0 () T@$Mutation_26505)
(declare-fun $t2@1 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_26505)
(declare-fun $t12@0 () T@$Mutation_26505)
(declare-fun $t2@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun $t10@0 () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_6775)
(declare-fun $t10 () T@$Mutation_26505)
(declare-fun $t12 () T@$Mutation_26505)
(declare-fun $t14 () T@$Mutation_26505)
(declare-fun $t16 () T@$Mutation_26505)
(declare-fun $t18 () T@$Mutation_26505)
(declare-fun $t20 () T@$Mutation_26505)
(declare-fun $t22 () T@$Mutation_26505)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_index_of$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 76140) (let ((anon31_Else_correct  (=> (and (and (and (not false) (= |inline$$1_Vector_index_of'u64'$1$res2@2| |inline$$1_Vector_index_of'u64'$1$res2@2|)) (and (= |inline$$1_Vector_index_of'u64'$1$res1@1| |inline$$1_Vector_index_of'u64'$1$res1@1|) (= $t2@6 $t2@6))) (and (and (= |inline$$1_Vector_index_of'u64'$0$res1@1| |inline$$1_Vector_index_of'u64'$0$res1@1|) (= |inline$$1_Vector_index_of'u64'$0$res2@2| |inline$$1_Vector_index_of'u64'$0$res2@2|)) (and (= |inline$$1_Vector_index_of'u64'$1$res1@1| |inline$$1_Vector_index_of'u64'$1$res1@1|) (= |inline$$1_Vector_index_of'u64'$1$res2@2| |inline$$1_Vector_index_of'u64'$1$res2@2|)))) (and (=> (= (ControlFlow 0 57289) (- 0 77146)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 57289) (- 0 77153)) (= |inline$$1_Vector_index_of'u64'$0$res1@1| false)) (=> (= |inline$$1_Vector_index_of'u64'$0$res1@1| false) (and (=> (= (ControlFlow 0 57289) (- 0 77161)) (= |inline$$1_Vector_index_of'u64'$0$res2@2| 0)) (=> (= |inline$$1_Vector_index_of'u64'$0$res2@2| 0) (and (=> (= (ControlFlow 0 57289) (- 0 77169)) (= |inline$$1_Vector_index_of'u64'$1$res1@1| true)) (=> (= |inline$$1_Vector_index_of'u64'$1$res1@1| true) (and (=> (= (ControlFlow 0 57289) (- 0 77177)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| $t2@6) 1) 7)) (=> (= (|Select__T@[Int]Int_| (|v#Vec_6775| $t2@6) 1) 7) (and (=> (= (ControlFlow 0 57289) (- 0 77189)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| $t2@6) 2) 7)) (=> (= (|Select__T@[Int]Int_| (|v#Vec_6775| $t2@6) 2) 7) (=> (= (ControlFlow 0 57289) (- 0 77201)) (= |inline$$1_Vector_index_of'u64'$1$res2@2| 1)))))))))))))))))
(let ((anon31_Then_correct true))
(let ((|inline$$1_Vector_index_of'u64'$1$anon3_Else_correct|  (=> (> 0 |inline$$1_Vector_index_of'u64'$1$res2@1|) (=> (and (= |inline$$1_Vector_index_of'u64'$1$res1@1| false) (= |inline$$1_Vector_index_of'u64'$1$res2@2| 0)) (and (=> (= (ControlFlow 0 57143) 57303) anon31_Then_correct) (=> (= (ControlFlow 0 57143) 57289) anon31_Else_correct))))))
(let ((|inline$$1_Vector_index_of'u64'$1$anon3_Then_correct|  (=> (>= |inline$$1_Vector_index_of'u64'$1$res2@1| 0) (=> (and (= |inline$$1_Vector_index_of'u64'$1$res1@1| true) (= |inline$$1_Vector_index_of'u64'$1$res2@2| |inline$$1_Vector_index_of'u64'$1$res2@1|)) (and (=> (= (ControlFlow 0 57153) 57303) anon31_Then_correct) (=> (= (ControlFlow 0 57153) 57289) anon31_Else_correct))))))
(let ((|inline$$1_Vector_index_of'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_index_of'u64'$1$res2@1| (|$IndexOfVec'u64'| $t2@6 7)) (and (=> (= (ControlFlow 0 57131) 57153) |inline$$1_Vector_index_of'u64'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 57131) 57143) |inline$$1_Vector_index_of'u64'$1$anon3_Else_correct|)))))
(let ((anon30_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_index_of'u64'$0$res2@2| |inline$$1_Vector_index_of'u64'$0$res2@2|) (= |inline$$1_Vector_index_of'u64'$0$res1@1| |inline$$1_Vector_index_of'u64'$0$res1@1|)) (=> (and (and (= $t2@6 $t2@6) (|$IsValid'u64'| 7)) (and (= 7 7) (= (ControlFlow 0 57161) 57131))) |inline$$1_Vector_index_of'u64'$1$anon0_correct|)))))
(let ((anon30_Then_correct true))
(let ((|inline$$1_Vector_index_of'u64'$0$anon3_Else_correct|  (=> (> 0 |inline$$1_Vector_index_of'u64'$0$res2@1|) (=> (and (= |inline$$1_Vector_index_of'u64'$0$res1@1| false) (= |inline$$1_Vector_index_of'u64'$0$res2@2| 0)) (and (=> (= (ControlFlow 0 56994) 57327) anon30_Then_correct) (=> (= (ControlFlow 0 56994) 57161) anon30_Else_correct))))))
(let ((|inline$$1_Vector_index_of'u64'$0$anon3_Then_correct|  (=> (>= |inline$$1_Vector_index_of'u64'$0$res2@1| 0) (=> (and (= |inline$$1_Vector_index_of'u64'$0$res1@1| true) (= |inline$$1_Vector_index_of'u64'$0$res2@2| |inline$$1_Vector_index_of'u64'$0$res2@1|)) (and (=> (= (ControlFlow 0 57004) 57327) anon30_Then_correct) (=> (= (ControlFlow 0 57004) 57161) anon30_Else_correct))))))
(let ((|inline$$1_Vector_index_of'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_index_of'u64'$0$res2@1| (|$IndexOfVec'u64'| $t2@6 4)) (and (=> (= (ControlFlow 0 56982) 57004) |inline$$1_Vector_index_of'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 56982) 56994) |inline$$1_Vector_index_of'u64'$0$anon3_Else_correct|)))))
(let ((anon29_Else_correct  (=> (and (not false) (= $t2@6 (|v#$Mutation_26505| |inline$$1_Vector_reverse'u64'$0$m'@1|))) (=> (and (and (= $t2@6 $t2@6) (|$IsValid'u64'| 4)) (and (= 4 4) (= (ControlFlow 0 57012) 56982))) |inline$$1_Vector_index_of'u64'$0$anon0_correct|))))
(let ((anon29_Then_correct true))
(let ((|inline$$1_Vector_reverse'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_reverse'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t22@0) (|p#$Mutation_26505| $t22@0) (let ((l (|l#Vec_6775| (|v#$Mutation_26505| $t22@0))))
(Vec_6775 (|lambda#6| 0 l (|v#Vec_6775| (|v#$Mutation_26505| $t22@0)) l 1 DefaultVecElem_4347) l)))) (and (=> (= (ControlFlow 0 56865) 57341) anon29_Then_correct) (=> (= (ControlFlow 0 56865) 57012) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (and (and (not false) (= $t2@5 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$5$m'@1|))) (and (= $t22@0 ($Mutation_26505 ($Local 2) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t2@5)) (= (ControlFlow 0 56871) 56865))) |inline$$1_Vector_reverse'u64'$0$anon0_correct|)))
(let ((anon28_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$5$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$5$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t20@0) (|p#$Mutation_26505| $t20@0) (let ((l@@0 (|l#Vec_6775| (|v#$Mutation_26505| $t20@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t20@0)) l@@0 1) (+ l@@0 1))))) (and (=> (= (ControlFlow 0 56794) 57355) anon28_Then_correct) (=> (= (ControlFlow 0 56794) 56871) anon28_Else_correct)))))
(let ((anon27_Else_correct  (=> (not false) (=> (and (and (= $t2@4 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$4$m'@1|)) (= $t20@0 ($Mutation_26505 ($Local 2) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t2@4))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 56800) 56794))) |inline$$1_Vector_push_back'u64'$5$anon0_correct|))))
(let ((anon27_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$4$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$4$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t18@0) (|p#$Mutation_26505| $t18@0) (let ((l@@1 (|l#Vec_6775| (|v#$Mutation_26505| $t18@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t18@0)) l@@1 7) (+ l@@1 1))))) (and (=> (= (ControlFlow 0 56707) 57369) anon27_Then_correct) (=> (= (ControlFlow 0 56707) 56800) anon27_Else_correct)))))
(let ((anon26_Else_correct  (=> (not false) (=> (and (and (= $t2@3 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$3$m'@1|)) (= $t18@0 ($Mutation_26505 ($Local 2) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t2@3))) (and (|$IsValid'u64'| 7) (= (ControlFlow 0 56713) 56707))) |inline$$1_Vector_push_back'u64'$4$anon0_correct|))))
(let ((anon26_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$3$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$3$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t16@0) (|p#$Mutation_26505| $t16@0) (let ((l@@2 (|l#Vec_6775| (|v#$Mutation_26505| $t16@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t16@0)) l@@2 7) (+ l@@2 1))))) (and (=> (= (ControlFlow 0 56620) 57383) anon26_Then_correct) (=> (= (ControlFlow 0 56620) 56713) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (not false) (=> (and (and (= $t2@2 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= $t16@0 ($Mutation_26505 ($Local 2) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t2@2))) (and (|$IsValid'u64'| 7) (= (ControlFlow 0 56626) 56620))) |inline$$1_Vector_push_back'u64'$3$anon0_correct|))))
(let ((anon25_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t14@0) (|p#$Mutation_26505| $t14@0) (let ((l@@3 (|l#Vec_6775| (|v#$Mutation_26505| $t14@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t14@0)) l@@3 3) (+ l@@3 1))))) (and (=> (= (ControlFlow 0 56533) 57397) anon25_Then_correct) (=> (= (ControlFlow 0 56533) 56626) anon25_Else_correct)))))
(let ((anon24_Else_correct  (=> (not false) (=> (and (and (= $t2@1 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t14@0 ($Mutation_26505 ($Local 2) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t2@1))) (and (|$IsValid'u64'| 3) (= (ControlFlow 0 56539) 56533))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon24_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t12@0) (|p#$Mutation_26505| $t12@0) (let ((l@@4 (|l#Vec_6775| (|v#$Mutation_26505| $t12@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t12@0)) l@@4 2) (+ l@@4 1))))) (and (=> (= (ControlFlow 0 56446) 57411) anon24_Then_correct) (=> (= (ControlFlow 0 56446) 56539) anon24_Else_correct)))))
(let ((anon23_Else_correct  (=> (not false) (=> (and (and (= $t2@0 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t12@0 ($Mutation_26505 ($Local 2) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t2@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 56452) 56446))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon23_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t10@0) (|p#$Mutation_26505| $t10@0) (let ((l@@5 (|l#Vec_6775| (|v#$Mutation_26505| $t10@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t10@0)) l@@5 1) (+ l@@5 1))))) (and (=> (= (ControlFlow 0 56359) 57425) anon23_Then_correct) (=> (= (ControlFlow 0 56359) 56452) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t10@0 ($Mutation_26505 ($Local 2) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 56365) 56359))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 56270) 57439) anon22_Then_correct) (=> (= (ControlFlow 0 56270) 56365) anon22_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 56276) 56270) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (and (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t10)) 0) (= (|l#Vec_6775| (|p#$Mutation_26505| $t12)) 0)) (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t14)) 0) (= (|l#Vec_6775| (|p#$Mutation_26505| $t16)) 0))) (and (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t18)) 0) (= (|l#Vec_6775| (|p#$Mutation_26505| $t20)) 0)) (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t22)) 0) (= (ControlFlow 0 56246) 56276)))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 76140) 56246) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_length'u64'$0$l@1| () Int)
(declare-fun |inline$$1_Vector_length'u64'$1$l@1| () Int)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () T@Vec_6775)
(declare-fun $t0@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun $t4@0 () T@$Mutation_26505)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_6775)
(declare-fun $t4 () T@$Mutation_26505)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_length1$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 77245) (let ((anon16_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|)) (and (= |inline$$1_Vector_length'u64'$1$l@1| |inline$$1_Vector_length'u64'$1$l@1|) (= (ControlFlow 0 57944) (- 0 77546)))) (= |inline$$1_Vector_length'u64'$0$l@1| (+ |inline$$1_Vector_length'u64'$1$l@1| 1)))))
(let ((anon16_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$1$l@1| (|l#Vec_6775| |inline$$1_Vector_empty'u64'$1$v@1|)) (and (=> (= (ControlFlow 0 57900) 57958) anon16_Then_correct) (=> (= (ControlFlow 0 57900) 57944) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (not false) (= (ControlFlow 0 57906) 57900)) |inline$$1_Vector_length'u64'$1$anon0_correct|)))
(let ((anon15_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_6775| $t0@0)) (and (=> (= (ControlFlow 0 57856) 57978) anon15_Then_correct) (=> (= (ControlFlow 0 57856) 57906) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (not false) (=> (and (= $t0@0 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= (ControlFlow 0 57862) 57856)) |inline$$1_Vector_length'u64'$0$anon0_correct|))))
(let ((anon14_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t4@0) (|p#$Mutation_26505| $t4@0) (let ((l (|l#Vec_6775| (|v#$Mutation_26505| $t4@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t4@0)) l 1) (+ l 1))))) (and (=> (= (ControlFlow 0 57804) 57992) anon14_Then_correct) (=> (= (ControlFlow 0 57804) 57862) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= $t4@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 57810) 57804))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 57715) 58006) anon13_Then_correct) (=> (= (ControlFlow 0 57715) 57810) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 57721) 57715)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 57673) 58020) anon12_Then_correct) (=> (= (ControlFlow 0 57673) 57721) anon12_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 57679) 57673) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t4)) 0) (= (ControlFlow 0 57649) 57679)) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 77245) 57649) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_length'u64'$1$l@1| () Int)
(declare-fun |inline$$1_Vector_length'u64'$0$l@1| () Int)
(declare-fun $t0@2 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_26505)
(declare-fun $t10@0 () T@$Mutation_26505)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t0@1 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_26505)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun $t8@0 () T@$Mutation_26505)
(declare-fun $t0@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun $t6@0 () T@$Mutation_26505)
(declare-fun _$t0 () T@Vec_6775)
(declare-fun $t6 () T@$Mutation_26505)
(declare-fun $t8 () T@$Mutation_26505)
(declare-fun $t10 () T@$Mutation_26505)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_length2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 77578) (let ((anon16_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_length'u64'$1$l@1| |inline$$1_Vector_length'u64'$1$l@1|) (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|)) (and (= |inline$$1_Vector_length'u64'$1$l@1| |inline$$1_Vector_length'u64'$1$l@1|) (= (ControlFlow 0 58554) (- 0 78022)))) (= (+ |inline$$1_Vector_length'u64'$0$l@1| 3) |inline$$1_Vector_length'u64'$1$l@1|)))))
(let ((anon16_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$1$l@1| (|l#Vec_6775| $t0@2)) (and (=> (= (ControlFlow 0 58502) 58568) anon16_Then_correct) (=> (= (ControlFlow 0 58502) 58554) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (not false) (=> (and (= $t0@2 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= (ControlFlow 0 58508) 58502)) |inline$$1_Vector_length'u64'$1$anon0_correct|))))
(let ((anon15_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t10@0) (|p#$Mutation_26505| $t10@0) (let ((l (|l#Vec_6775| (|v#$Mutation_26505| $t10@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t10@0)) l 3) (+ l 1))))) (and (=> (= (ControlFlow 0 58450) 58588) anon15_Then_correct) (=> (= (ControlFlow 0 58450) 58508) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (not false) (=> (and (and (= $t0@1 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t10@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t0@1))) (and (|$IsValid'u64'| 3) (= (ControlFlow 0 58456) 58450))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon14_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t8@0) (|p#$Mutation_26505| $t8@0) (let ((l@@0 (|l#Vec_6775| (|v#$Mutation_26505| $t8@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t8@0)) l@@0 2) (+ l@@0 1))))) (and (=> (= (ControlFlow 0 58363) 58602) anon14_Then_correct) (=> (= (ControlFlow 0 58363) 58456) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t8@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t0@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 58369) 58363))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t6@0) (|p#$Mutation_26505| $t6@0) (let ((l@@1 (|l#Vec_6775| (|v#$Mutation_26505| $t6@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t6@0)) l@@1 1) (+ l@@1 1))))) (and (=> (= (ControlFlow 0 58276) 58616) anon13_Then_correct) (=> (= (ControlFlow 0 58276) 58369) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|) (= $t6@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) _$t0))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 58282) 58276))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_6775| _$t0)) (and (=> (= (ControlFlow 0 58187) 58630) anon12_Then_correct) (=> (= (ControlFlow 0 58187) 58282) anon12_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'u64''| _$t0) (=> (and (= _$t0 _$t0) (= (ControlFlow 0 58193) 58187)) |inline$$1_Vector_length'u64'$0$anon0_correct|))))
(let ((anon0_correct  (=> (and (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t6)) 0) (= (|l#Vec_6775| (|p#$Mutation_26505| $t8)) 0)) (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t10)) 0) (= (ControlFlow 0 58137) 58193))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 77578) 58137) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_length'u64'$0$l@1| () Int)
(declare-fun |inline$$1_Vector_length'u64'$1$l@1| () Int)
(declare-fun _$t0 () T@Vec_6775)
(declare-fun $t0@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun $t6@0 () T@$Mutation_26505)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun $t6 () T@$Mutation_26505)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_length3$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 78054) (let ((anon10_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|) (= |inline$$1_Vector_length'u64'$1$l@1| |inline$$1_Vector_length'u64'$1$l@1|)) (and (=> (= (ControlFlow 0 59007) (- 0 78308)) (= (|l#Vec_6775| _$t0) |inline$$1_Vector_length'u64'$0$l@1|)) (=> (= (|l#Vec_6775| _$t0) |inline$$1_Vector_length'u64'$0$l@1|) (=> (= (ControlFlow 0 59007) (- 0 78317)) (= (+ |inline$$1_Vector_length'u64'$0$l@1| 1) |inline$$1_Vector_length'u64'$1$l@1|))))))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$1$l@1| (|l#Vec_6775| $t0@0)) (and (=> (= (ControlFlow 0 58953) 59021) anon10_Then_correct) (=> (= (ControlFlow 0 58953) 59007) anon10_Else_correct)))))
(let ((anon9_Else_correct  (=> (not false) (=> (and (= $t0@0 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= (ControlFlow 0 58959) 58953)) |inline$$1_Vector_length'u64'$1$anon0_correct|))))
(let ((anon9_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t6@0) (|p#$Mutation_26505| $t6@0) (let ((l (|l#Vec_6775| (|v#$Mutation_26505| $t6@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t6@0)) l 1) (+ l 1))))) (and (=> (= (ControlFlow 0 58901) 59041) anon9_Then_correct) (=> (= (ControlFlow 0 58901) 58959) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|) (= $t6@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) _$t0))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 58907) 58901))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon8_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_6775| _$t0)) (and (=> (= (ControlFlow 0 58812) 59055) anon8_Then_correct) (=> (= (ControlFlow 0 58812) 58907) anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'u64''| _$t0) (=> (and (= _$t0 _$t0) (= (ControlFlow 0 58818) 58812)) |inline$$1_Vector_length'u64'$0$anon0_correct|))))
(let ((anon0_correct  (=> (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t6)) 0) (= (ControlFlow 0 58760) 58818)) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 78054) 58760) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_length'u64'$0$l@1| () Int)
(declare-fun |inline$$1_Vector_length'u64'$1$l@1| () Int)
(declare-fun |$temp_0'vec'u64''@1| () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun $t2@0 () T@Vec_6775)
(declare-fun $t7@0 () T@Vec_6775)
(declare-fun _$t0 () T@$Mutation_26505)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t3@0 () T@Vec_6775)
(declare-fun |$temp_0'vec'u64''@0| () T@Vec_6775)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_length4$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 78348) (let ((anon10_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|) (= |inline$$1_Vector_length'u64'$1$l@1| |inline$$1_Vector_length'u64'$1$l@1|)) (and (= |$temp_0'vec'u64''@1| (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= |$temp_0'vec'u64''@1| |$temp_0'vec'u64''@1|))) (and (=> (= (ControlFlow 0 59442) (- 0 78629)) (= (|l#Vec_6775| $t2@0) |inline$$1_Vector_length'u64'$0$l@1|)) (=> (= (|l#Vec_6775| $t2@0) |inline$$1_Vector_length'u64'$0$l@1|) (and (=> (= (ControlFlow 0 59442) (- 0 78638)) (= (+ |inline$$1_Vector_length'u64'$0$l@1| 1) |inline$$1_Vector_length'u64'$1$l@1|)) (=> (= (+ |inline$$1_Vector_length'u64'$0$l@1| 1) |inline$$1_Vector_length'u64'$1$l@1|) (and (=> (= (ControlFlow 0 59442) (- 0 78649)) (not (|$IsEqual'vec'u64''| (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$0$m'@1|) $t2@0))) (=> (not (|$IsEqual'vec'u64''| (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$0$m'@1|) $t2@0)) (=> (= (ControlFlow 0 59442) (- 0 78660)) (= (|l#Vec_6775| (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$0$m'@1|)) |inline$$1_Vector_length'u64'$1$l@1|))))))))))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$1$l@1| (|l#Vec_6775| $t7@0)) (and (=> (= (ControlFlow 0 59352) 59456) anon10_Then_correct) (=> (= (ControlFlow 0 59352) 59442) anon10_Else_correct)))))
(let ((anon9_Else_correct  (=> (not false) (=> (and (= $t7@0 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= (ControlFlow 0 59358) 59352)) |inline$$1_Vector_length'u64'$1$anon0_correct|))))
(let ((anon9_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| _$t0) (|p#$Mutation_26505| _$t0) (let ((l (|l#Vec_6775| (|v#$Mutation_26505| _$t0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| _$t0)) l 1) (+ l 1))))) (and (=> (= (ControlFlow 0 59302) 59476) anon9_Then_correct) (=> (= (ControlFlow 0 59302) 59358) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|)) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 59308) 59302))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|)))
(let ((anon8_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_6775| $t3@0)) (and (=> (= (ControlFlow 0 59223) 59490) anon8_Then_correct) (=> (= (ControlFlow 0 59223) 59308) anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (= (|l#$Mutation_26505| _$t0) ($Param 0)) (=> (and (|$IsValid'vec'u64''| (|v#$Mutation_26505| _$t0)) (= $t2@0 (|v#$Mutation_26505| _$t0))) (=> (and (and (= |$temp_0'vec'u64''@0| (|v#$Mutation_26505| _$t0)) (= |$temp_0'vec'u64''@0| |$temp_0'vec'u64''@0|)) (and (= $t3@0 (|v#$Mutation_26505| _$t0)) (= (ControlFlow 0 59229) 59223))) |inline$$1_Vector_length'u64'$0$anon0_correct|)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 78348) 59229) anon0$1_correct)))
anon0_correct))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_26505)
(declare-fun $t0@1 () T@Vec_6775)
(declare-fun $t7@0 () T@$Mutation_26505)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_26505)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () T@Vec_6775)
(declare-fun $t5@0 () T@$Mutation_26505)
(declare-fun $t0@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun $t3@0 () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_6775)
(declare-fun $t3 () T@$Mutation_26505)
(declare-fun $t5 () T@$Mutation_26505)
(declare-fun $t7 () T@$Mutation_26505)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_neq1$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 78691) (let ((anon16_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= $t0@1 $t0@1)) (and (= $t1@0 $t1@0) (= (ControlFlow 0 59992) (- 0 79106)))) (not (|$IsEqual'vec'u64''| $t0@1 $t1@0))))))
(let ((anon16_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t7@0) (|p#$Mutation_26505| $t7@0) (let ((l (|l#Vec_6775| (|v#$Mutation_26505| $t7@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t7@0)) l 1) (+ l 1))))) (and (=> (= (ControlFlow 0 59940) 60006) anon16_Then_correct) (=> (= (ControlFlow 0 59940) 59992) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (not false) (=> (and (and (= $t0@1 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t7@0 ($Mutation_26505 ($Local 1) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$1$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 59946) 59940))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon15_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t5@0) (|p#$Mutation_26505| $t5@0) (let ((l@@0 (|l#Vec_6775| (|v#$Mutation_26505| $t5@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t5@0)) l@@0 2) (+ l@@0 1))))) (and (=> (= (ControlFlow 0 59853) 60026) anon15_Then_correct) (=> (= (ControlFlow 0 59853) 59946) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t5@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t0@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 59859) 59853))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon14_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t3@0) (|p#$Mutation_26505| $t3@0) (let ((l@@1 (|l#Vec_6775| (|v#$Mutation_26505| $t3@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t3@0)) l@@1 1) (+ l@@1 1))))) (and (=> (= (ControlFlow 0 59766) 60040) anon14_Then_correct) (=> (= (ControlFlow 0 59766) 59859) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= $t3@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 59772) 59766))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 59677) 60054) anon13_Then_correct) (=> (= (ControlFlow 0 59677) 59772) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 59683) 59677)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 59635) 60068) anon12_Then_correct) (=> (= (ControlFlow 0 59635) 59683) anon12_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 59641) 59635) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t3)) 0) (= (|l#Vec_6775| (|p#$Mutation_26505| $t5)) 0)) (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t7)) 0) (= (ControlFlow 0 59611) 59641))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 78691) 59611) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_26505)
(declare-fun $t0@0 () T@Vec_6775)
(declare-fun $t5@0 () T@$Mutation_26505)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () T@Vec_6775)
(declare-fun $t3@0 () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_6775)
(declare-fun $t3 () T@$Mutation_26505)
(declare-fun $t5 () T@$Mutation_26505)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_neq2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 79135) (let ((anon13_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t0@0 $t0@0)) (and (= $t1@0 $t1@0) (= (ControlFlow 0 60512) (- 0 79457)))) (not (|$IsEqual'vec'u64''| $t0@0 $t1@0))))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t5@0) (|p#$Mutation_26505| $t5@0) (let ((l (|l#Vec_6775| (|v#$Mutation_26505| $t5@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t5@0)) l 0) (+ l 1))))) (and (=> (= (ControlFlow 0 60460) 60526) anon13_Then_correct) (=> (= (ControlFlow 0 60460) 60512) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t5@0 ($Mutation_26505 ($Local 1) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$1$v@1|))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 60466) 60460))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t3@0) (|p#$Mutation_26505| $t3@0) (let ((l@@0 (|l#Vec_6775| (|v#$Mutation_26505| $t3@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t3@0)) l@@0 1) (+ l@@0 1))))) (and (=> (= (ControlFlow 0 60373) 60546) anon12_Then_correct) (=> (= (ControlFlow 0 60373) 60466) anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= $t3@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 60379) 60373))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon11_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 60284) 60560) anon11_Then_correct) (=> (= (ControlFlow 0 60284) 60379) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 60290) 60284)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 60242) 60574) anon10_Then_correct) (=> (= (ControlFlow 0 60242) 60290) anon10_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 60248) 60242) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (|l#Vec_6775| (|p#$Mutation_26505| $t3)) 0) (=> (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t5)) 0) (= (ControlFlow 0 60218) 60248)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 79135) 60218) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_26505)
(declare-fun $t0@0 () T@Vec_6775)
(declare-fun $t5@0 () T@$Mutation_26505)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () T@Vec_6775)
(declare-fun $t3@0 () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_6775)
(declare-fun $t3 () T@$Mutation_26505)
(declare-fun $t5 () T@$Mutation_26505)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_push$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 79485) (let ((anon13_Else_correct  (=> (and (and (not false) (= $t1@0 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$1$m'@1|))) (and (= $t0@0 $t0@0) (= $t1@0 $t1@0))) (and (=> (= (ControlFlow 0 61020) (- 0 79807)) (|$IsEqual'vec'u64''| $t0@0 $t1@0)) (=> (|$IsEqual'vec'u64''| $t0@0 $t1@0) (and (=> (= (ControlFlow 0 61020) (- 0 79814)) (= (|l#Vec_6775| $t0@0) 1)) (=> (= (|l#Vec_6775| $t0@0) 1) (=> (= (ControlFlow 0 61020) (- 0 79824)) (= (|l#Vec_6775| $t1@0) 1)))))))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t5@0) (|p#$Mutation_26505| $t5@0) (let ((l (|l#Vec_6775| (|v#$Mutation_26505| $t5@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t5@0)) l 1) (+ l 1))))) (and (=> (= (ControlFlow 0 60950) 61034) anon13_Then_correct) (=> (= (ControlFlow 0 60950) 61020) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t5@0 ($Mutation_26505 ($Local 1) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$1$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 60956) 60950))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t3@0) (|p#$Mutation_26505| $t3@0) (let ((l@@0 (|l#Vec_6775| (|v#$Mutation_26505| $t3@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t3@0)) l@@0 1) (+ l@@0 1))))) (and (=> (= (ControlFlow 0 60863) 61054) anon12_Then_correct) (=> (= (ControlFlow 0 60863) 60956) anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= $t3@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 60869) 60863))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon11_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 60774) 61068) anon11_Then_correct) (=> (= (ControlFlow 0 60774) 60869) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 60780) 60774)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 60732) 61082) anon10_Then_correct) (=> (= (ControlFlow 0 60732) 60780) anon10_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 60738) 60732) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (|l#Vec_6775| (|p#$Mutation_26505| $t3)) 0) (=> (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t5)) 0) (= (ControlFlow 0 60708) 60738)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 79485) 60708) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $t0@1 () T@Vec_6775)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$m'@2| () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () T@Vec_6775)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$m'@0| () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$len@1| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$e@1| () Int)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$v@1| () T@Vec_6775)
(declare-fun |inline$$1_Vector_pop_back'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun $t6@0 () T@$Mutation_26505)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun $t0@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun $t4@0 () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_6775)
(declare-fun $t4 () T@$Mutation_26505)
(declare-fun $t6 () T@$Mutation_26505)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_push_pop$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 79853) (let ((anon13_Else_correct  (=> (not $abort_flag@0) (=> (and (and (= $t0@1 (|v#$Mutation_26505| |inline$$1_Vector_pop_back'u64'$0$m'@2|)) (= $t0@1 $t0@1)) (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= (ControlFlow 0 61632) (- 0 80271)))) (|$IsEqual'vec'u64''| $t0@1 |inline$$1_Vector_empty'u64'$1$v@1|)))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_pop_back'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_pop_back'u64'$0$m'@2| |inline$$1_Vector_pop_back'u64'$0$m'@0|)) (and (=> (= (ControlFlow 0 61582) 61646) anon13_Then_correct) (=> (= (ControlFlow 0 61582) 61632) anon13_Else_correct))))))
(let ((|inline$$1_Vector_pop_back'u64'$0$anon3_Then_correct|  (=> (and (= |inline$$1_Vector_pop_back'u64'$0$len@1| 0) (= (ControlFlow 0 61580) 61582)) |inline$$1_Vector_pop_back'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_pop_back'u64'$0$anon3_Else_correct|  (=> (and (not (= |inline$$1_Vector_pop_back'u64'$0$len@1| 0)) (= |inline$$1_Vector_pop_back'u64'$0$e@1| (|Select__T@[Int]Int_| (|v#Vec_6775| |inline$$1_Vector_pop_back'u64'$0$v@1|) (- |inline$$1_Vector_pop_back'u64'$0$len@1| 1)))) (=> (and (and (= |inline$$1_Vector_pop_back'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t6@0) (|p#$Mutation_26505| $t6@0) (let ((l (- (|l#Vec_6775| |inline$$1_Vector_pop_back'u64'$0$v@1|) 1)))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| |inline$$1_Vector_pop_back'u64'$0$v@1|) l DefaultVecElem_4347) l)))) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_pop_back'u64'$0$m'@2| |inline$$1_Vector_pop_back'u64'$0$m'@1|))) (and (=> (= (ControlFlow 0 61532) 61646) anon13_Then_correct) (=> (= (ControlFlow 0 61532) 61632) anon13_Else_correct))))))
(let ((|inline$$1_Vector_pop_back'u64'$0$anon0_correct|  (=> (and (= |inline$$1_Vector_pop_back'u64'$0$v@1| (|v#$Mutation_26505| $t6@0)) (= |inline$$1_Vector_pop_back'u64'$0$len@1| (|l#Vec_6775| |inline$$1_Vector_pop_back'u64'$0$v@1|))) (and (=> (= (ControlFlow 0 61506) 61580) |inline$$1_Vector_pop_back'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 61506) 61532) |inline$$1_Vector_pop_back'u64'$0$anon3_Else_correct|)))))
(let ((anon12_Else_correct  (=> (and (and (not false) (= $t0@0 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$0$m'@1|))) (and (= $t6@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t0@0)) (= (ControlFlow 0 61590) 61506))) |inline$$1_Vector_pop_back'u64'$0$anon0_correct|)))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t4@0) (|p#$Mutation_26505| $t4@0) (let ((l@@0 (|l#Vec_6775| (|v#$Mutation_26505| $t4@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t4@0)) l@@0 1) (+ l@@0 1))))) (and (=> (= (ControlFlow 0 61373) 61666) anon12_Then_correct) (=> (= (ControlFlow 0 61373) 61590) anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= $t4@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 61379) 61373))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon11_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 61284) 61680) anon11_Then_correct) (=> (= (ControlFlow 0 61284) 61379) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 61290) 61284)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 61242) 61694) anon10_Then_correct) (=> (= (ControlFlow 0 61242) 61290) anon10_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 61248) 61242) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (|l#Vec_6775| (|p#$Mutation_26505| $t4)) 0) (=> (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t6)) 0) (= (ControlFlow 0 61218) 61248)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 79853) 61218) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_reverse'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () T@Vec_6775)
(declare-fun $t4@0 () T@$Mutation_26505)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_6775)
(declare-fun $t4 () T@$Mutation_26505)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_reverse1$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 80297) (let ((anon10_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_26505| |inline$$1_Vector_reverse'u64'$0$m'@1|)) (= $t0@0 $t0@0)) (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= (ControlFlow 0 62012) (- 0 80509)))) (|$IsEqual'vec'u64''| $t0@0 |inline$$1_Vector_empty'u64'$1$v@1|)))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_reverse'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_reverse'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t4@0) (|p#$Mutation_26505| $t4@0) (let ((l (|l#Vec_6775| (|v#$Mutation_26505| $t4@0))))
(Vec_6775 (|lambda#6| 0 l (|v#Vec_6775| (|v#$Mutation_26505| $t4@0)) l 1 DefaultVecElem_4347) l)))) (and (=> (= (ControlFlow 0 61964) 62026) anon10_Then_correct) (=> (= (ControlFlow 0 61964) 62012) anon10_Else_correct)))))
(let ((anon9_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|)) (and (= $t4@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$0$v@1|)) (= (ControlFlow 0 61970) 61964))) |inline$$1_Vector_reverse'u64'$0$anon0_correct|)))
(let ((anon9_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 61891) 62046) anon9_Then_correct) (=> (= (ControlFlow 0 61891) 61970) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 61897) 61891)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon8_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 61849) 62060) anon8_Then_correct) (=> (= (ControlFlow 0 61849) 61897) anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 61855) 61849) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t4)) 0) (= (ControlFlow 0 61825) 61855)) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 80297) 61825) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@2 () T@Vec_6775)
(declare-fun |inline$$1_Vector_reverse'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun $t1@1 () T@Vec_6775)
(declare-fun $t11@0 () T@$Mutation_26505)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun |inline$$1_Vector_push_back'u64'$3$m'@1| () T@$Mutation_26505)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun $t0@1 () T@Vec_6775)
(declare-fun $t9@0 () T@$Mutation_26505)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t1@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_26505)
(declare-fun $t7@0 () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () T@Vec_6775)
(declare-fun $t5@0 () T@$Mutation_26505)
(declare-fun $t0@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun $t3@0 () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_6775)
(declare-fun $t3 () T@$Mutation_26505)
(declare-fun $t5 () T@$Mutation_26505)
(declare-fun $t7 () T@$Mutation_26505)
(declare-fun $t9 () T@$Mutation_26505)
(declare-fun $t11 () T@$Mutation_26505)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_reverse2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 80534) (let ((anon22_Else_correct  (=> (not false) (=> (and (and (= $t0@2 (|v#$Mutation_26505| |inline$$1_Vector_reverse'u64'$0$m'@1|)) (= $t0@2 $t0@2)) (and (= $t1@1 $t1@1) (= (ControlFlow 0 62730) (- 0 81122)))) (|$IsEqual'vec'u64''| $t0@2 $t1@1)))))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_reverse'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_reverse'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t11@0) (|p#$Mutation_26505| $t11@0) (let ((l (|l#Vec_6775| (|v#$Mutation_26505| $t11@0))))
(Vec_6775 (|lambda#6| 0 l (|v#Vec_6775| (|v#$Mutation_26505| $t11@0)) l 1 DefaultVecElem_4347) l)))) (and (=> (= (ControlFlow 0 62680) 62744) anon22_Then_correct) (=> (= (ControlFlow 0 62680) 62730) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (and (and (not false) (= $t1@1 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$3$m'@1|))) (and (= $t11@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t0@1)) (= (ControlFlow 0 62686) 62680))) |inline$$1_Vector_reverse'u64'$0$anon0_correct|)))
(let ((anon21_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$3$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$3$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t9@0) (|p#$Mutation_26505| $t9@0) (let ((l@@0 (|l#Vec_6775| (|v#$Mutation_26505| $t9@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t9@0)) l@@0 1) (+ l@@0 1))))) (and (=> (= (ControlFlow 0 62609) 62764) anon21_Then_correct) (=> (= (ControlFlow 0 62609) 62686) anon21_Else_correct)))))
(let ((anon20_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= $t9@0 ($Mutation_26505 ($Local 1) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t1@0))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 62615) 62609))) |inline$$1_Vector_push_back'u64'$3$anon0_correct|))))
(let ((anon20_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t7@0) (|p#$Mutation_26505| $t7@0) (let ((l@@1 (|l#Vec_6775| (|v#$Mutation_26505| $t7@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t7@0)) l@@1 2) (+ l@@1 1))))) (and (=> (= (ControlFlow 0 62522) 62778) anon20_Then_correct) (=> (= (ControlFlow 0 62522) 62615) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (not false) (=> (and (and (= $t0@1 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t7@0 ($Mutation_26505 ($Local 1) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$1$v@1|))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 62528) 62522))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon19_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t5@0) (|p#$Mutation_26505| $t5@0) (let ((l@@2 (|l#Vec_6775| (|v#$Mutation_26505| $t5@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t5@0)) l@@2 2) (+ l@@2 1))))) (and (=> (= (ControlFlow 0 62435) 62792) anon19_Then_correct) (=> (= (ControlFlow 0 62435) 62528) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t5@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t0@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 62441) 62435))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon18_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t3@0) (|p#$Mutation_26505| $t3@0) (let ((l@@3 (|l#Vec_6775| (|v#$Mutation_26505| $t3@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t3@0)) l@@3 1) (+ l@@3 1))))) (and (=> (= (ControlFlow 0 62348) 62806) anon18_Then_correct) (=> (= (ControlFlow 0 62348) 62441) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= $t3@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 62354) 62348))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon17_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 62259) 62820) anon17_Then_correct) (=> (= (ControlFlow 0 62259) 62354) anon17_Else_correct)))))
(let ((anon16_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 62265) 62259)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon16_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 62217) 62834) anon16_Then_correct) (=> (= (ControlFlow 0 62217) 62265) anon16_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 62223) 62217) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t3)) 0) (= (|l#Vec_6775| (|p#$Mutation_26505| $t5)) 0)) (=> (and (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t7)) 0) (= (|l#Vec_6775| (|p#$Mutation_26505| $t9)) 0)) (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t11)) 0) (= (ControlFlow 0 62193) 62223))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 80534) 62193) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@2 () T@Vec_6775)
(declare-fun |inline$$1_Vector_reverse'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun $t1@1 () T@Vec_6775)
(declare-fun $t11@0 () T@$Mutation_26505)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun |inline$$1_Vector_push_back'u64'$3$m'@1| () T@$Mutation_26505)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun $t0@1 () T@Vec_6775)
(declare-fun $t9@0 () T@$Mutation_26505)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t1@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_26505)
(declare-fun $t7@0 () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () T@Vec_6775)
(declare-fun $t5@0 () T@$Mutation_26505)
(declare-fun $t0@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun $t3@0 () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_6775)
(declare-fun $t3 () T@$Mutation_26505)
(declare-fun $t5 () T@$Mutation_26505)
(declare-fun $t7 () T@$Mutation_26505)
(declare-fun $t9 () T@$Mutation_26505)
(declare-fun $t11 () T@$Mutation_26505)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_reverse3$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 81151) (let ((anon22_Else_correct  (=> (not false) (=> (and (and (= $t0@2 (|v#$Mutation_26505| |inline$$1_Vector_reverse'u64'$0$m'@1|)) (= $t0@2 $t0@2)) (and (= $t1@1 $t1@1) (= (ControlFlow 0 63573) (- 0 81739)))) (not (|$IsEqual'vec'u64''| $t0@2 $t1@1))))))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_reverse'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_reverse'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t11@0) (|p#$Mutation_26505| $t11@0) (let ((l (|l#Vec_6775| (|v#$Mutation_26505| $t11@0))))
(Vec_6775 (|lambda#6| 0 l (|v#Vec_6775| (|v#$Mutation_26505| $t11@0)) l 1 DefaultVecElem_4347) l)))) (and (=> (= (ControlFlow 0 63521) 63587) anon22_Then_correct) (=> (= (ControlFlow 0 63521) 63573) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (and (and (not false) (= $t1@1 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$3$m'@1|))) (and (= $t11@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t0@1)) (= (ControlFlow 0 63527) 63521))) |inline$$1_Vector_reverse'u64'$0$anon0_correct|)))
(let ((anon21_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$3$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$3$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t9@0) (|p#$Mutation_26505| $t9@0) (let ((l@@0 (|l#Vec_6775| (|v#$Mutation_26505| $t9@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t9@0)) l@@0 2) (+ l@@0 1))))) (and (=> (= (ControlFlow 0 63450) 63607) anon21_Then_correct) (=> (= (ControlFlow 0 63450) 63527) anon21_Else_correct)))))
(let ((anon20_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= $t9@0 ($Mutation_26505 ($Local 1) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t1@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 63456) 63450))) |inline$$1_Vector_push_back'u64'$3$anon0_correct|))))
(let ((anon20_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t7@0) (|p#$Mutation_26505| $t7@0) (let ((l@@1 (|l#Vec_6775| (|v#$Mutation_26505| $t7@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t7@0)) l@@1 1) (+ l@@1 1))))) (and (=> (= (ControlFlow 0 63363) 63621) anon20_Then_correct) (=> (= (ControlFlow 0 63363) 63456) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (not false) (=> (and (and (= $t0@1 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t7@0 ($Mutation_26505 ($Local 1) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$1$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 63369) 63363))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon19_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t5@0) (|p#$Mutation_26505| $t5@0) (let ((l@@2 (|l#Vec_6775| (|v#$Mutation_26505| $t5@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t5@0)) l@@2 2) (+ l@@2 1))))) (and (=> (= (ControlFlow 0 63276) 63635) anon19_Then_correct) (=> (= (ControlFlow 0 63276) 63369) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t5@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t0@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 63282) 63276))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon18_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t3@0) (|p#$Mutation_26505| $t3@0) (let ((l@@3 (|l#Vec_6775| (|v#$Mutation_26505| $t3@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t3@0)) l@@3 1) (+ l@@3 1))))) (and (=> (= (ControlFlow 0 63189) 63649) anon18_Then_correct) (=> (= (ControlFlow 0 63189) 63282) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= $t3@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 63195) 63189))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon17_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 63100) 63663) anon17_Then_correct) (=> (= (ControlFlow 0 63100) 63195) anon17_Else_correct)))))
(let ((anon16_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 63106) 63100)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon16_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 63058) 63677) anon16_Then_correct) (=> (= (ControlFlow 0 63058) 63106) anon16_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 63064) 63058) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t3)) 0) (= (|l#Vec_6775| (|p#$Mutation_26505| $t5)) 0)) (=> (and (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t7)) 0) (= (|l#Vec_6775| (|p#$Mutation_26505| $t9)) 0)) (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t11)) 0) (= (ControlFlow 0 63034) 63064))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 81151) 63034) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@5 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$7$m'@1| () T@$Mutation_26505)
(declare-fun $t0@1 () T@Vec_6775)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun $t17@0 () T@$Mutation_26505)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t1@4 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$6$m'@1| () T@$Mutation_26505)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun $t15@0 () T@$Mutation_26505)
(declare-fun $t1@3 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$5$m'@1| () T@$Mutation_26505)
(declare-fun $t13@0 () T@$Mutation_26505)
(declare-fun $t1@2 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$4$m'@1| () T@$Mutation_26505)
(declare-fun $t11@0 () T@$Mutation_26505)
(declare-fun $t1@1 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$3$m'@1| () T@$Mutation_26505)
(declare-fun $t9@0 () T@$Mutation_26505)
(declare-fun $t1@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_26505)
(declare-fun $t7@0 () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () T@Vec_6775)
(declare-fun $t5@0 () T@$Mutation_26505)
(declare-fun $t0@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun $t3@0 () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_6775)
(declare-fun $t3 () T@$Mutation_26505)
(declare-fun $t5 () T@$Mutation_26505)
(declare-fun $t7 () T@$Mutation_26505)
(declare-fun $t9 () T@$Mutation_26505)
(declare-fun $t11 () T@$Mutation_26505)
(declare-fun $t13 () T@$Mutation_26505)
(declare-fun $t15 () T@$Mutation_26505)
(declare-fun $t17 () T@$Mutation_26505)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_slice$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 81770) (let ((anon31_Else_correct  (=> (and (and (not false) (= $t1@5 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$7$m'@1|))) (and (= $t0@1 $t0@1) (= $t1@5 $t1@5))) (and (=> (= (ControlFlow 0 64823) (- 0 82650)) (|$IsEqual'vec'u64''| $t0@1 (let ((m (|v#Vec_6775| $t1@5)))
(Vec_6775 (|lambda#8| 0 (- (|ub#$Range| ($Range 1 3)) (|lb#$Range| ($Range 1 3))) m (|lb#$Range| ($Range 1 3)) DefaultVecElem_4347) (ite (< (- (|ub#$Range| ($Range 1 3)) (|lb#$Range| ($Range 1 3))) 0) 0 (- (|ub#$Range| ($Range 1 3)) (|lb#$Range| ($Range 1 3)))))))) (=> (|$IsEqual'vec'u64''| $t0@1 (let ((m (|v#Vec_6775| $t1@5)))
(Vec_6775 (|lambda#8| 0 (- (|ub#$Range| ($Range 1 3)) (|lb#$Range| ($Range 1 3))) m (|lb#$Range| ($Range 1 3)) DefaultVecElem_4347) (ite (< (- (|ub#$Range| ($Range 1 3)) (|lb#$Range| ($Range 1 3))) 0) 0 (- (|ub#$Range| ($Range 1 3)) (|lb#$Range| ($Range 1 3))))))) (and (=> (= (ControlFlow 0 64823) (- 0 82665)) (not (|$IsEqual'vec'u64''| $t0@1 (let ((m@@0 (|v#Vec_6775| $t1@5)))
(Vec_6775 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 2)) (|lb#$Range| ($Range 0 2))) m@@0 (|lb#$Range| ($Range 0 2)) DefaultVecElem_4347) (ite (< (- (|ub#$Range| ($Range 0 2)) (|lb#$Range| ($Range 0 2))) 0) 0 (- (|ub#$Range| ($Range 0 2)) (|lb#$Range| ($Range 0 2))))))))) (=> (not (|$IsEqual'vec'u64''| $t0@1 (let ((m@@0 (|v#Vec_6775| $t1@5)))
(Vec_6775 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 2)) (|lb#$Range| ($Range 0 2))) m@@0 (|lb#$Range| ($Range 0 2)) DefaultVecElem_4347) (ite (< (- (|ub#$Range| ($Range 0 2)) (|lb#$Range| ($Range 0 2))) 0) 0 (- (|ub#$Range| ($Range 0 2)) (|lb#$Range| ($Range 0 2)))))))) (and (=> (= (ControlFlow 0 64823) (- 0 82682)) (|$IsEqual'vec'u64''| $t0@1 (let ((m@@1 (|v#Vec_6775| $t1@5)))
(Vec_6775 (|lambda#8| 0 (- (|ub#$Range| ($Range 4 6)) (|lb#$Range| ($Range 4 6))) m@@1 (|lb#$Range| ($Range 4 6)) DefaultVecElem_4347) (ite (< (- (|ub#$Range| ($Range 4 6)) (|lb#$Range| ($Range 4 6))) 0) 0 (- (|ub#$Range| ($Range 4 6)) (|lb#$Range| ($Range 4 6)))))))) (=> (|$IsEqual'vec'u64''| $t0@1 (let ((m@@1 (|v#Vec_6775| $t1@5)))
(Vec_6775 (|lambda#8| 0 (- (|ub#$Range| ($Range 4 6)) (|lb#$Range| ($Range 4 6))) m@@1 (|lb#$Range| ($Range 4 6)) DefaultVecElem_4347) (ite (< (- (|ub#$Range| ($Range 4 6)) (|lb#$Range| ($Range 4 6))) 0) 0 (- (|ub#$Range| ($Range 4 6)) (|lb#$Range| ($Range 4 6))))))) (and (=> (= (ControlFlow 0 64823) (- 0 82697)) (|$IsEqual'vec'u64''| (let ((m@@2 (|v#Vec_6775| $t0@1)))
(Vec_6775 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 2)) (|lb#$Range| ($Range 0 2))) m@@2 (|lb#$Range| ($Range 0 2)) DefaultVecElem_4347) (ite (< (- (|ub#$Range| ($Range 0 2)) (|lb#$Range| ($Range 0 2))) 0) 0 (- (|ub#$Range| ($Range 0 2)) (|lb#$Range| ($Range 0 2)))))) (let ((m@@3 (|v#Vec_6775| $t1@5)))
(Vec_6775 (|lambda#8| 0 (- (|ub#$Range| ($Range 4 6)) (|lb#$Range| ($Range 4 6))) m@@3 (|lb#$Range| ($Range 4 6)) DefaultVecElem_4347) (ite (< (- (|ub#$Range| ($Range 4 6)) (|lb#$Range| ($Range 4 6))) 0) 0 (- (|ub#$Range| ($Range 4 6)) (|lb#$Range| ($Range 4 6)))))))) (=> (|$IsEqual'vec'u64''| (let ((m@@2 (|v#Vec_6775| $t0@1)))
(Vec_6775 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 2)) (|lb#$Range| ($Range 0 2))) m@@2 (|lb#$Range| ($Range 0 2)) DefaultVecElem_4347) (ite (< (- (|ub#$Range| ($Range 0 2)) (|lb#$Range| ($Range 0 2))) 0) 0 (- (|ub#$Range| ($Range 0 2)) (|lb#$Range| ($Range 0 2)))))) (let ((m@@3 (|v#Vec_6775| $t1@5)))
(Vec_6775 (|lambda#8| 0 (- (|ub#$Range| ($Range 4 6)) (|lb#$Range| ($Range 4 6))) m@@3 (|lb#$Range| ($Range 4 6)) DefaultVecElem_4347) (ite (< (- (|ub#$Range| ($Range 4 6)) (|lb#$Range| ($Range 4 6))) 0) 0 (- (|ub#$Range| ($Range 4 6)) (|lb#$Range| ($Range 4 6))))))) (and (=> (= (ControlFlow 0 64823) (- 0 82720)) (|$IsEqual'vec'u64''| (let ((m@@4 (|v#Vec_6775| $t0@1)))
(Vec_6775 (|lambda#8| 0 (- (|ub#$Range| ($Range 1 2)) (|lb#$Range| ($Range 1 2))) m@@4 (|lb#$Range| ($Range 1 2)) DefaultVecElem_4347) (ite (< (- (|ub#$Range| ($Range 1 2)) (|lb#$Range| ($Range 1 2))) 0) 0 (- (|ub#$Range| ($Range 1 2)) (|lb#$Range| ($Range 1 2)))))) (let ((m@@5 (|v#Vec_6775| $t1@5)))
(Vec_6775 (|lambda#8| 0 (- (|ub#$Range| ($Range 2 3)) (|lb#$Range| ($Range 2 3))) m@@5 (|lb#$Range| ($Range 2 3)) DefaultVecElem_4347) (ite (< (- (|ub#$Range| ($Range 2 3)) (|lb#$Range| ($Range 2 3))) 0) 0 (- (|ub#$Range| ($Range 2 3)) (|lb#$Range| ($Range 2 3)))))))) (=> (|$IsEqual'vec'u64''| (let ((m@@4 (|v#Vec_6775| $t0@1)))
(Vec_6775 (|lambda#8| 0 (- (|ub#$Range| ($Range 1 2)) (|lb#$Range| ($Range 1 2))) m@@4 (|lb#$Range| ($Range 1 2)) DefaultVecElem_4347) (ite (< (- (|ub#$Range| ($Range 1 2)) (|lb#$Range| ($Range 1 2))) 0) 0 (- (|ub#$Range| ($Range 1 2)) (|lb#$Range| ($Range 1 2)))))) (let ((m@@5 (|v#Vec_6775| $t1@5)))
(Vec_6775 (|lambda#8| 0 (- (|ub#$Range| ($Range 2 3)) (|lb#$Range| ($Range 2 3))) m@@5 (|lb#$Range| ($Range 2 3)) DefaultVecElem_4347) (ite (< (- (|ub#$Range| ($Range 2 3)) (|lb#$Range| ($Range 2 3))) 0) 0 (- (|ub#$Range| ($Range 2 3)) (|lb#$Range| ($Range 2 3))))))) (=> (= (ControlFlow 0 64823) (- 0 82743)) (|$IsEqual'vec'u64''| (let ((m@@6 (|v#Vec_6775| $t1@5)))
(Vec_6775 (|lambda#8| 0 (- (|ub#$Range| ($Range 1 3)) (|lb#$Range| ($Range 1 3))) m@@6 (|lb#$Range| ($Range 1 3)) DefaultVecElem_4347) (ite (< (- (|ub#$Range| ($Range 1 3)) (|lb#$Range| ($Range 1 3))) 0) 0 (- (|ub#$Range| ($Range 1 3)) (|lb#$Range| ($Range 1 3)))))) (let ((m@@7 (|v#Vec_6775| $t1@5)))
(Vec_6775 (|lambda#8| 0 (- (|ub#$Range| ($Range 4 6)) (|lb#$Range| ($Range 4 6))) m@@7 (|lb#$Range| ($Range 4 6)) DefaultVecElem_4347) (ite (< (- (|ub#$Range| ($Range 4 6)) (|lb#$Range| ($Range 4 6))) 0) 0 (- (|ub#$Range| ($Range 4 6)) (|lb#$Range| ($Range 4 6)))))))))))))))))))))
(let ((anon31_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$7$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$7$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t17@0) (|p#$Mutation_26505| $t17@0) (let ((l (|l#Vec_6775| (|v#$Mutation_26505| $t17@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t17@0)) l 2) (+ l 1))))) (and (=> (= (ControlFlow 0 64659) 64837) anon31_Then_correct) (=> (= (ControlFlow 0 64659) 64823) anon31_Else_correct)))))
(let ((anon30_Else_correct  (=> (not false) (=> (and (and (= $t1@4 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$6$m'@1|)) (= $t17@0 ($Mutation_26505 ($Local 1) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t1@4))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 64665) 64659))) |inline$$1_Vector_push_back'u64'$7$anon0_correct|))))
(let ((anon30_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$6$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$6$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t15@0) (|p#$Mutation_26505| $t15@0) (let ((l@@0 (|l#Vec_6775| (|v#$Mutation_26505| $t15@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t15@0)) l@@0 1) (+ l@@0 1))))) (and (=> (= (ControlFlow 0 64572) 64857) anon30_Then_correct) (=> (= (ControlFlow 0 64572) 64665) anon30_Else_correct)))))
(let ((anon29_Else_correct  (=> (not false) (=> (and (and (= $t1@3 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$5$m'@1|)) (= $t15@0 ($Mutation_26505 ($Local 1) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t1@3))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 64578) 64572))) |inline$$1_Vector_push_back'u64'$6$anon0_correct|))))
(let ((anon29_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$5$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$5$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t13@0) (|p#$Mutation_26505| $t13@0) (let ((l@@1 (|l#Vec_6775| (|v#$Mutation_26505| $t13@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t13@0)) l@@1 3) (+ l@@1 1))))) (and (=> (= (ControlFlow 0 64485) 64871) anon29_Then_correct) (=> (= (ControlFlow 0 64485) 64578) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (not false) (=> (and (and (= $t1@2 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$4$m'@1|)) (= $t13@0 ($Mutation_26505 ($Local 1) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t1@2))) (and (|$IsValid'u64'| 3) (= (ControlFlow 0 64491) 64485))) |inline$$1_Vector_push_back'u64'$5$anon0_correct|))))
(let ((anon28_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$4$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$4$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t11@0) (|p#$Mutation_26505| $t11@0) (let ((l@@2 (|l#Vec_6775| (|v#$Mutation_26505| $t11@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t11@0)) l@@2 2) (+ l@@2 1))))) (and (=> (= (ControlFlow 0 64398) 64885) anon28_Then_correct) (=> (= (ControlFlow 0 64398) 64491) anon28_Else_correct)))))
(let ((anon27_Else_correct  (=> (not false) (=> (and (and (= $t1@1 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$3$m'@1|)) (= $t11@0 ($Mutation_26505 ($Local 1) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t1@1))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 64404) 64398))) |inline$$1_Vector_push_back'u64'$4$anon0_correct|))))
(let ((anon27_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$3$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$3$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t9@0) (|p#$Mutation_26505| $t9@0) (let ((l@@3 (|l#Vec_6775| (|v#$Mutation_26505| $t9@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t9@0)) l@@3 1) (+ l@@3 1))))) (and (=> (= (ControlFlow 0 64311) 64899) anon27_Then_correct) (=> (= (ControlFlow 0 64311) 64404) anon27_Else_correct)))))
(let ((anon26_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= $t9@0 ($Mutation_26505 ($Local 1) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t1@0))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 64317) 64311))) |inline$$1_Vector_push_back'u64'$3$anon0_correct|))))
(let ((anon26_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t7@0) (|p#$Mutation_26505| $t7@0) (let ((l@@4 (|l#Vec_6775| (|v#$Mutation_26505| $t7@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t7@0)) l@@4 0) (+ l@@4 1))))) (and (=> (= (ControlFlow 0 64224) 64913) anon26_Then_correct) (=> (= (ControlFlow 0 64224) 64317) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (not false) (=> (and (and (= $t0@1 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t7@0 ($Mutation_26505 ($Local 1) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$1$v@1|))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 64230) 64224))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon25_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t5@0) (|p#$Mutation_26505| $t5@0) (let ((l@@5 (|l#Vec_6775| (|v#$Mutation_26505| $t5@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t5@0)) l@@5 2) (+ l@@5 1))))) (and (=> (= (ControlFlow 0 64137) 64927) anon25_Then_correct) (=> (= (ControlFlow 0 64137) 64230) anon25_Else_correct)))))
(let ((anon24_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t5@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t0@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 64143) 64137))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon24_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t3@0) (|p#$Mutation_26505| $t3@0) (let ((l@@6 (|l#Vec_6775| (|v#$Mutation_26505| $t3@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t3@0)) l@@6 1) (+ l@@6 1))))) (and (=> (= (ControlFlow 0 64050) 64941) anon24_Then_correct) (=> (= (ControlFlow 0 64050) 64143) anon24_Else_correct)))))
(let ((anon23_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= $t3@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 64056) 64050))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon23_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 63961) 64955) anon23_Then_correct) (=> (= (ControlFlow 0 63961) 64056) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 63967) 63961)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 63919) 64969) anon22_Then_correct) (=> (= (ControlFlow 0 63919) 63967) anon22_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 63925) 63919) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (|l#Vec_6775| (|p#$Mutation_26505| $t3)) 0) (=> (and (and (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t5)) 0) (= (|l#Vec_6775| (|p#$Mutation_26505| $t7)) 0)) (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t9)) 0) (= (|l#Vec_6775| (|p#$Mutation_26505| $t11)) 0))) (and (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t13)) 0) (= (|l#Vec_6775| (|p#$Mutation_26505| $t15)) 0)) (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t17)) 0) (= (ControlFlow 0 63895) 63925)))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 81770) 63895) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t0@3 () T@Vec_6775)
(declare-fun |inline$$1_Vector_swap'u64'$1$m'@2| () T@$Mutation_26505)
(declare-fun $t1@1 () T@Vec_6775)
(declare-fun $abort_code@2 () Int)
(declare-fun |inline$$1_Vector_swap'u64'$1$m'@0| () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_swap'u64'$1$v@1| () T@Vec_6775)
(declare-fun |inline$$1_Vector_swap'u64'$1$m'@1| () T@$Mutation_26505)
(declare-fun $t14@0 () T@$Mutation_26505)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $t0@2 () T@Vec_6775)
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@2| () T@$Mutation_26505)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@0| () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_swap'u64'$0$v@1| () T@Vec_6775)
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun $t11@0 () T@$Mutation_26505)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$1_Vector_push_back'u64'$3$m'@1| () T@$Mutation_26505)
(declare-fun $t0@1 () T@Vec_6775)
(declare-fun $t9@0 () T@$Mutation_26505)
(declare-fun $t1@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_26505)
(declare-fun $t7@0 () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_empty'u64'$1$v@1| () T@Vec_6775)
(declare-fun $t5@0 () T@$Mutation_26505)
(declare-fun $t0@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun $t3@0 () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_6775)
(declare-fun $t3 () T@$Mutation_26505)
(declare-fun $t5 () T@$Mutation_26505)
(declare-fun $t7 () T@$Mutation_26505)
(declare-fun $t9 () T@$Mutation_26505)
(declare-fun $t11 () T@$Mutation_26505)
(declare-fun $t14 () T@$Mutation_26505)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_swap$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 82791) (let ((anon25_Else_correct  (=> (not $abort_flag@1) (=> (and (and (= $t0@3 (|v#$Mutation_26505| |inline$$1_Vector_swap'u64'$1$m'@2|)) (= $t0@3 $t0@3)) (and (= $t1@1 $t1@1) (= (ControlFlow 0 66199) (- 0 83701)))) (|$IsEqual'vec'u64''| $t0@3 $t1@1)))))
(let ((anon25_Then_correct true))
(let ((|inline$$1_Vector_swap'u64'$1$anon3_Then$1_correct|  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= |inline$$1_Vector_swap'u64'$1$m'@2| |inline$$1_Vector_swap'u64'$1$m'@0|)) (and (=> (= (ControlFlow 0 66149) 66213) anon25_Then_correct) (=> (= (ControlFlow 0 66149) 66199) anon25_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$1$anon3_Then_correct|  (=> (and (or (not (InRangeVec_4118 |inline$$1_Vector_swap'u64'$1$v@1| 0)) (not (InRangeVec_4118 |inline$$1_Vector_swap'u64'$1$v@1| 1))) (= (ControlFlow 0 66147) 66149)) |inline$$1_Vector_swap'u64'$1$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'u64'$1$anon3_Else_correct|  (=> (not (or (not (InRangeVec_4118 |inline$$1_Vector_swap'u64'$1$v@1| 0)) (not (InRangeVec_4118 |inline$$1_Vector_swap'u64'$1$v@1| 1)))) (=> (and (and (= |inline$$1_Vector_swap'u64'$1$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t14@0) (|p#$Mutation_26505| $t14@0) (let ((m (|v#Vec_6775| |inline$$1_Vector_swap'u64'$1$v@1|)))
(Vec_6775 (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| m 0 (|Select__T@[Int]Int_| m 1)) 1 (|Select__T@[Int]Int_| m 0)) (|l#Vec_6775| |inline$$1_Vector_swap'u64'$1$v@1|))))) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= |inline$$1_Vector_swap'u64'$1$m'@2| |inline$$1_Vector_swap'u64'$1$m'@1|))) (and (=> (= (ControlFlow 0 66087) 66213) anon25_Then_correct) (=> (= (ControlFlow 0 66087) 66199) anon25_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_swap'u64'$1$v@1| (|v#$Mutation_26505| $t14@0)) (and (=> (= (ControlFlow 0 66053) 66147) |inline$$1_Vector_swap'u64'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 66053) 66087) |inline$$1_Vector_swap'u64'$1$anon3_Else_correct|)))))
(let ((anon24_Else_correct  (=> (and (not $abort_flag@0) (= $t0@2 (|v#$Mutation_26505| |inline$$1_Vector_swap'u64'$0$m'@2|))) (=> (and (and (= $t14@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t0@2)) (|$IsValid'u64'| 0)) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 66155) 66053))) |inline$$1_Vector_swap'u64'$1$anon0_correct|))))
(let ((anon24_Then_correct true))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_swap'u64'$0$m'@2| |inline$$1_Vector_swap'u64'$0$m'@0|)) (and (=> (= (ControlFlow 0 65899) 66233) anon24_Then_correct) (=> (= (ControlFlow 0 65899) 66155) anon24_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then_correct|  (=> (and (or (not (InRangeVec_4118 |inline$$1_Vector_swap'u64'$0$v@1| 0)) (not (InRangeVec_4118 |inline$$1_Vector_swap'u64'$0$v@1| 0))) (= (ControlFlow 0 65897) 65899)) |inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Else_correct|  (=> (not (or (not (InRangeVec_4118 |inline$$1_Vector_swap'u64'$0$v@1| 0)) (not (InRangeVec_4118 |inline$$1_Vector_swap'u64'$0$v@1| 0)))) (=> (and (and (= |inline$$1_Vector_swap'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t11@0) (|p#$Mutation_26505| $t11@0) (let ((m@@0 (|v#Vec_6775| |inline$$1_Vector_swap'u64'$0$v@1|)))
(Vec_6775 (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| m@@0 0 (|Select__T@[Int]Int_| m@@0 0)) 0 (|Select__T@[Int]Int_| m@@0 0)) (|l#Vec_6775| |inline$$1_Vector_swap'u64'$0$v@1|))))) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_swap'u64'$0$m'@2| |inline$$1_Vector_swap'u64'$0$m'@1|))) (and (=> (= (ControlFlow 0 65837) 66233) anon24_Then_correct) (=> (= (ControlFlow 0 65837) 66155) anon24_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_swap'u64'$0$v@1| (|v#$Mutation_26505| $t11@0)) (and (=> (= (ControlFlow 0 65803) 65897) |inline$$1_Vector_swap'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 65803) 65837) |inline$$1_Vector_swap'u64'$0$anon3_Else_correct|)))))
(let ((anon23_Else_correct  (=> (and (not false) (= $t1@1 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$3$m'@1|))) (=> (and (and (= $t11@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t0@1)) (|$IsValid'u64'| 0)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 65905) 65803))) |inline$$1_Vector_swap'u64'$0$anon0_correct|))))
(let ((anon23_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$3$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$3$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t9@0) (|p#$Mutation_26505| $t9@0) (let ((l (|l#Vec_6775| (|v#$Mutation_26505| $t9@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t9@0)) l 1) (+ l 1))))) (and (=> (= (ControlFlow 0 65649) 66247) anon23_Then_correct) (=> (= (ControlFlow 0 65649) 65905) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= $t9@0 ($Mutation_26505 ($Local 1) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t1@0))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 65655) 65649))) |inline$$1_Vector_push_back'u64'$3$anon0_correct|))))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t7@0) (|p#$Mutation_26505| $t7@0) (let ((l@@0 (|l#Vec_6775| (|v#$Mutation_26505| $t7@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t7@0)) l@@0 2) (+ l@@0 1))))) (and (=> (= (ControlFlow 0 65562) 66261) anon22_Then_correct) (=> (= (ControlFlow 0 65562) 65655) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (not false) (=> (and (and (= $t0@1 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t7@0 ($Mutation_26505 ($Local 1) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$1$v@1|))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 65568) 65562))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon21_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t5@0) (|p#$Mutation_26505| $t5@0) (let ((l@@1 (|l#Vec_6775| (|v#$Mutation_26505| $t5@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t5@0)) l@@1 2) (+ l@@1 1))))) (and (=> (= (ControlFlow 0 65475) 66275) anon21_Then_correct) (=> (= (ControlFlow 0 65475) 65568) anon21_Else_correct)))))
(let ((anon20_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t5@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t0@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 65481) 65475))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon20_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t3@0) (|p#$Mutation_26505| $t3@0) (let ((l@@2 (|l#Vec_6775| (|v#$Mutation_26505| $t3@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t3@0)) l@@2 1) (+ l@@2 1))))) (and (=> (= (ControlFlow 0 65388) 66289) anon20_Then_correct) (=> (= (ControlFlow 0 65388) 65481) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$1$v@1| |inline$$1_Vector_empty'u64'$1$v@1|) (= $t3@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 65394) 65388))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon19_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$1$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 65299) 66303) anon19_Then_correct) (=> (= (ControlFlow 0 65299) 65394) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 65305) 65299)) |inline$$1_Vector_empty'u64'$1$anon0_correct|))))
(let ((anon18_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 65257) 66317) anon18_Then_correct) (=> (= (ControlFlow 0 65257) 65305) anon18_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 65263) 65257) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (|l#Vec_6775| (|p#$Mutation_26505| $t3)) 0) (=> (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t5)) 0) (= (|l#Vec_6775| (|p#$Mutation_26505| $t7)) 0)) (=> (and (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t9)) 0) (= (|l#Vec_6775| (|p#$Mutation_26505| $t11)) 0)) (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t14)) 0) (= (ControlFlow 0 65233) 65263))) anon0$1_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 82791) 65233) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t0@1 () T@Vec_6775)
(declare-fun |inline$$1_Vector_swap'u64'$0$m'| () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_swap'u64'$0$v@1| () T@Vec_6775)
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun $t4@0 () T@$Mutation_26505)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@0 () Int)
(declare-fun $t0@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun $t2@0 () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_6775)
(declare-fun $t2 () T@$Mutation_26505)
(declare-fun $t4 () T@$Mutation_26505)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_swap_abort1$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 83728) (let ((L2_correct  (=> (= (ControlFlow 0 66944) (- 0 84091)) true)))
(let ((anon10_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 66934) 66944)) L2_correct))))
(let ((anon10_Else_correct  (=> (not $abort_flag@0) (=> (and (= $t0@1 (|v#$Mutation_26505| |inline$$1_Vector_swap'u64'$0$m'|)) (= (ControlFlow 0 66920) (- 0 84084))) (not true)))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|  (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 66894) 66934) anon10_Then_correct) (=> (= (ControlFlow 0 66894) 66920) anon10_Else_correct)))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then_correct|  (=> (and (or (not (InRangeVec_4118 |inline$$1_Vector_swap'u64'$0$v@1| 1)) (not (InRangeVec_4118 |inline$$1_Vector_swap'u64'$0$v@1| 0))) (= (ControlFlow 0 66892) 66894)) |inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Else_correct|  (=> (and (and (not (or (not (InRangeVec_4118 |inline$$1_Vector_swap'u64'$0$v@1| 1)) (not (InRangeVec_4118 |inline$$1_Vector_swap'u64'$0$v@1| 0)))) (= |inline$$1_Vector_swap'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t4@0) (|p#$Mutation_26505| $t4@0) (let ((m (|v#Vec_6775| |inline$$1_Vector_swap'u64'$0$v@1|)))
(Vec_6775 (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| m 1 (|Select__T@[Int]Int_| m 0)) 0 (|Select__T@[Int]Int_| m 1)) (|l#Vec_6775| |inline$$1_Vector_swap'u64'$0$v@1|)))))) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 66832) 66934) anon10_Then_correct) (=> (= (ControlFlow 0 66832) 66920) anon10_Else_correct)))))
(let ((|inline$$1_Vector_swap'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_swap'u64'$0$v@1| (|v#$Mutation_26505| $t4@0)) (and (=> (= (ControlFlow 0 66798) 66892) |inline$$1_Vector_swap'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 66798) 66832) |inline$$1_Vector_swap'u64'$0$anon3_Else_correct|)))))
(let ((anon9_Else_correct  (=> (and (not false) (= $t0@0 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$0$m'@1|))) (=> (and (and (= $t4@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t0@0)) (|$IsValid'u64'| 1)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 66900) 66798))) |inline$$1_Vector_swap'u64'$0$anon0_correct|))))
(let ((anon9_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t2@0) (|p#$Mutation_26505| $t2@0) (let ((l (|l#Vec_6775| (|v#$Mutation_26505| $t2@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t2@0)) l 1) (+ l 1))))) (and (=> (= (ControlFlow 0 66644) 66958) anon9_Then_correct) (=> (= (ControlFlow 0 66644) 66900) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t2@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 66650) 66644))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon8_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 66555) 66972) anon8_Then_correct) (=> (= (ControlFlow 0 66555) 66650) anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 66561) 66555) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (|l#Vec_6775| (|p#$Mutation_26505| $t2)) 0) (=> (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t4)) 0) (= (ControlFlow 0 66531) 66561)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 83728) 66531) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t0@1 () T@Vec_6775)
(declare-fun |inline$$1_Vector_swap'u64'$0$m'| () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_swap'u64'$0$v@1| () T@Vec_6775)
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun $t4@0 () T@$Mutation_26505)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@0 () Int)
(declare-fun $t0@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun $t2@0 () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_6775)
(declare-fun $t2 () T@$Mutation_26505)
(declare-fun $t4 () T@$Mutation_26505)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_swap_abort2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 84108) (let ((L2_correct  (=> (= (ControlFlow 0 67498) (- 0 84471)) true)))
(let ((anon10_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 67488) 67498)) L2_correct))))
(let ((anon10_Else_correct  (=> (not $abort_flag@0) (=> (and (= $t0@1 (|v#$Mutation_26505| |inline$$1_Vector_swap'u64'$0$m'|)) (= (ControlFlow 0 67474) (- 0 84464))) (not true)))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|  (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 67448) 67488) anon10_Then_correct) (=> (= (ControlFlow 0 67448) 67474) anon10_Else_correct)))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then_correct|  (=> (and (or (not (InRangeVec_4118 |inline$$1_Vector_swap'u64'$0$v@1| 0)) (not (InRangeVec_4118 |inline$$1_Vector_swap'u64'$0$v@1| 1))) (= (ControlFlow 0 67446) 67448)) |inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Else_correct|  (=> (and (and (not (or (not (InRangeVec_4118 |inline$$1_Vector_swap'u64'$0$v@1| 0)) (not (InRangeVec_4118 |inline$$1_Vector_swap'u64'$0$v@1| 1)))) (= |inline$$1_Vector_swap'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t4@0) (|p#$Mutation_26505| $t4@0) (let ((m (|v#Vec_6775| |inline$$1_Vector_swap'u64'$0$v@1|)))
(Vec_6775 (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| m 0 (|Select__T@[Int]Int_| m 1)) 1 (|Select__T@[Int]Int_| m 0)) (|l#Vec_6775| |inline$$1_Vector_swap'u64'$0$v@1|)))))) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 67386) 67488) anon10_Then_correct) (=> (= (ControlFlow 0 67386) 67474) anon10_Else_correct)))))
(let ((|inline$$1_Vector_swap'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_swap'u64'$0$v@1| (|v#$Mutation_26505| $t4@0)) (and (=> (= (ControlFlow 0 67352) 67446) |inline$$1_Vector_swap'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 67352) 67386) |inline$$1_Vector_swap'u64'$0$anon3_Else_correct|)))))
(let ((anon9_Else_correct  (=> (and (not false) (= $t0@0 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$0$m'@1|))) (=> (and (and (= $t4@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t0@0)) (|$IsValid'u64'| 0)) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 67454) 67352))) |inline$$1_Vector_swap'u64'$0$anon0_correct|))))
(let ((anon9_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t2@0) (|p#$Mutation_26505| $t2@0) (let ((l (|l#Vec_6775| (|v#$Mutation_26505| $t2@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t2@0)) l 1) (+ l 1))))) (and (=> (= (ControlFlow 0 67198) 67512) anon9_Then_correct) (=> (= (ControlFlow 0 67198) 67454) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t2@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 67204) 67198))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon8_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 67109) 67526) anon8_Then_correct) (=> (= (ControlFlow 0 67109) 67204) anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 67115) 67109) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (|l#Vec_6775| (|p#$Mutation_26505| $t2)) 0) (=> (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t4)) 0) (= (ControlFlow 0 67085) 67115)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 84108) 67085) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t1 () T@$Mutation_26505)
(declare-fun _$t0 () T@Vec_6775)
(declare-fun $t2@0 () T@Vec_6775)
(declare-fun |$temp_0'vec'u64''@0| () T@Vec_6775)
(declare-fun |$temp_0'vec'u64''@1| () T@Vec_6775)
(declare-fun DefaultVecElem_4347 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestVector_test_vector_equal$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 84487) (let ((anon0$1_correct  (=> (= (|l#$Mutation_26505| _$t1) ($Param 1)) (=> (and (and (and (|$IsValid'vec'u64''| _$t0) (|$IsValid'vec'u64''| (|v#$Mutation_26505| _$t1))) (and (= $t2@0 (|v#$Mutation_26505| _$t1)) (= _$t0 _$t0))) (and (and (= |$temp_0'vec'u64''@0| (|v#$Mutation_26505| _$t1)) (= |$temp_0'vec'u64''@0| |$temp_0'vec'u64''@0|)) (and (= |$temp_0'vec'u64''@1| (|v#$Mutation_26505| _$t1)) (= |$temp_0'vec'u64''@1| |$temp_0'vec'u64''@1|)))) (and (=> (= (ControlFlow 0 67783) (- 0 84592)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 67783) (- 0 84599)) (|$IsEqual'vec'u64''| _$t0 _$t0)) (=> (|$IsEqual'vec'u64''| _$t0 _$t0) (and (=> (= (ControlFlow 0 67783) (- 0 84606)) (|$IsEqual'vec'u64''| _$t0 (let ((m (|v#Vec_6775| _$t0)))
(Vec_6775 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 (|l#Vec_6775| _$t0))) (|lb#$Range| ($Range 0 (|l#Vec_6775| _$t0)))) m (|lb#$Range| ($Range 0 (|l#Vec_6775| _$t0))) DefaultVecElem_4347) (ite (< (- (|ub#$Range| ($Range 0 (|l#Vec_6775| _$t0))) (|lb#$Range| ($Range 0 (|l#Vec_6775| _$t0)))) 0) 0 (- (|ub#$Range| ($Range 0 (|l#Vec_6775| _$t0))) (|lb#$Range| ($Range 0 (|l#Vec_6775| _$t0))))))))) (=> (|$IsEqual'vec'u64''| _$t0 (let ((m (|v#Vec_6775| _$t0)))
(Vec_6775 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 (|l#Vec_6775| _$t0))) (|lb#$Range| ($Range 0 (|l#Vec_6775| _$t0)))) m (|lb#$Range| ($Range 0 (|l#Vec_6775| _$t0))) DefaultVecElem_4347) (ite (< (- (|ub#$Range| ($Range 0 (|l#Vec_6775| _$t0))) (|lb#$Range| ($Range 0 (|l#Vec_6775| _$t0)))) 0) 0 (- (|ub#$Range| ($Range 0 (|l#Vec_6775| _$t0))) (|lb#$Range| ($Range 0 (|l#Vec_6775| _$t0)))))))) (and (=> (= (ControlFlow 0 67783) (- 0 84622)) (|$IsEqual'vec'u64''| (|v#$Mutation_26505| _$t1) (|v#$Mutation_26505| _$t1))) (=> (|$IsEqual'vec'u64''| (|v#$Mutation_26505| _$t1) (|v#$Mutation_26505| _$t1)) (and (=> (= (ControlFlow 0 67783) (- 0 84633)) (|$IsEqual'vec'u64''| $t2@0 $t2@0)) (=> (|$IsEqual'vec'u64''| $t2@0 $t2@0) (and (=> (= (ControlFlow 0 67783) (- 0 84640)) (|$IsEqual'vec'u64''| (|v#$Mutation_26505| _$t1) (let ((m@@0 (|v#Vec_6775| (|v#$Mutation_26505| _$t1))))
(Vec_6775 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 (|l#Vec_6775| (|v#$Mutation_26505| _$t1)))) (|lb#$Range| ($Range 0 (|l#Vec_6775| (|v#$Mutation_26505| _$t1))))) m@@0 (|lb#$Range| ($Range 0 (|l#Vec_6775| (|v#$Mutation_26505| _$t1)))) DefaultVecElem_4347) (ite (< (- (|ub#$Range| ($Range 0 (|l#Vec_6775| (|v#$Mutation_26505| _$t1)))) (|lb#$Range| ($Range 0 (|l#Vec_6775| (|v#$Mutation_26505| _$t1))))) 0) 0 (- (|ub#$Range| ($Range 0 (|l#Vec_6775| (|v#$Mutation_26505| _$t1)))) (|lb#$Range| ($Range 0 (|l#Vec_6775| (|v#$Mutation_26505| _$t1)))))))))) (=> (|$IsEqual'vec'u64''| (|v#$Mutation_26505| _$t1) (let ((m@@0 (|v#Vec_6775| (|v#$Mutation_26505| _$t1))))
(Vec_6775 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 (|l#Vec_6775| (|v#$Mutation_26505| _$t1)))) (|lb#$Range| ($Range 0 (|l#Vec_6775| (|v#$Mutation_26505| _$t1))))) m@@0 (|lb#$Range| ($Range 0 (|l#Vec_6775| (|v#$Mutation_26505| _$t1)))) DefaultVecElem_4347) (ite (< (- (|ub#$Range| ($Range 0 (|l#Vec_6775| (|v#$Mutation_26505| _$t1)))) (|lb#$Range| ($Range 0 (|l#Vec_6775| (|v#$Mutation_26505| _$t1))))) 0) 0 (- (|ub#$Range| ($Range 0 (|l#Vec_6775| (|v#$Mutation_26505| _$t1)))) (|lb#$Range| ($Range 0 (|l#Vec_6775| (|v#$Mutation_26505| _$t1))))))))) (=> (= (ControlFlow 0 67783) (- 0 84662)) (|$IsEqual'vec'u64''| $t2@0 (let ((m@@1 (|v#Vec_6775| $t2@0)))
(Vec_6775 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 (|l#Vec_6775| $t2@0))) (|lb#$Range| ($Range 0 (|l#Vec_6775| $t2@0)))) m@@1 (|lb#$Range| ($Range 0 (|l#Vec_6775| $t2@0))) DefaultVecElem_4347) (ite (< (- (|ub#$Range| ($Range 0 (|l#Vec_6775| $t2@0))) (|lb#$Range| ($Range 0 (|l#Vec_6775| $t2@0)))) 0) 0 (- (|ub#$Range| ($Range 0 (|l#Vec_6775| $t2@0))) (|lb#$Range| ($Range 0 (|l#Vec_6775| $t2@0)))))))))))))))))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 84487) 67783) anon0$1_correct)))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $42_TestVector_unwrap_or$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 84687) true)
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_22314 0)) (((Vec_22314 (|v#Vec_22314| |T@[Int]#0|) (|l#Vec_22314| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'#0'| 0)) (((|$42_TestVector_T'#0'| (|$v#$42_TestVector_T'#0'| T@Vec_22314) ) ) ))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_6775 0)) (((Vec_6775 (|v#Vec_6775| |T@[Int]Int|) (|l#Vec_6775| Int) ) ) ))
(declare-datatypes ((|T@$42_TestVector_T'u64'| 0)) (((|$42_TestVector_T'u64'| (|$v#$42_TestVector_T'u64'| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6775) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_26505 0)) ((($Mutation_26505 (|l#$Mutation_26505| T@$Location) (|p#$Mutation_26505| T@Vec_6775) (|v#$Mutation_26505| T@Vec_6775) ) ) ))
(declare-datatypes ((T@$Mutation_24880 0)) ((($Mutation_24880 (|l#$Mutation_24880| T@$Location) (|p#$Mutation_24880| T@Vec_6775) (|v#$Mutation_24880| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_23893 0)) ((($Mutation_23893 (|l#$Mutation_23893| T@$Location) (|p#$Mutation_23893| T@Vec_6775) (|v#$Mutation_23893| T@Vec_22314) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_22314 T@Vec_22314) Bool)
(declare-fun InRangeVec_19426 (T@Vec_22314 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_22314) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_22314 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6775 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6775 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6775) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6775 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Hash_sha3 (T@Vec_6775) T@Vec_6775)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6775) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6775 T@Vec_6775 T@Vec_6775) Bool)
(declare-fun |$IsValid'$42_TestVector_T'u64''| (|T@$42_TestVector_T'u64'|) Bool)
(declare-fun |$IsValid'$42_TestVector_T'#0''| (|T@$42_TestVector_T'#0'|) Bool)
(declare-fun IndexOfVec_6775 (T@Vec_6775 Int) Int)
(declare-fun IndexOfVec_22314 (T@Vec_22314 |T@#0|) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |simplevectorclientdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |simplevectorclientdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |simplevectorclientdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |simplevectorclientdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |simplevectorclientdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |simplevectorclientdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |simplevectorclientdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_22314) (v2 T@Vec_22314) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_22314| v1) (|l#Vec_22314| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_19426 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_22314| v2) i@@0)))
 :qid |simplevectorclientdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |simplevectorclientdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_22314) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_22314| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_19426 v@@4 i@@1) true)
 :qid |simplevectorclientdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |simplevectorclientdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_22314) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_19426 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@3) e))
 :qid |simplevectorclientdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_19426 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@5) j) e)))
 :qid |simplevectorclientdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |simplevectorclientdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6775) (v2@@0 T@Vec_6775) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6775| v1@@0) (|l#Vec_6775| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@0) i@@4)))
 :qid |simplevectorclientdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |simplevectorclientdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6775) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@6) i@@5)))
 :qid |simplevectorclientdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |simplevectorclientdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6775) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@7) e@@0))
 :qid |simplevectorclientdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@7) j@@0) e@@0)))
 :qid |simplevectorclientdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |simplevectorclientdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6775) (v2@@1 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6775| v1@@1) (|l#Vec_6775| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6775| v2@@1) i@@8)))
 :qid |simplevectorclientdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |simplevectorclientdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6775) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6775| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6775| v@@8) i@@9)))
 :qid |simplevectorclientdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |simplevectorclientdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6775) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@11) e@@1))
 :qid |simplevectorclientdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@9) j@@1) e@@1)))
 :qid |simplevectorclientdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |simplevectorclientdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6775) (v2@@2 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |simplevectorclientdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6775) (v2@@3 T@Vec_6775) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |simplevectorclientdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6775) (k2 T@Vec_6775) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |simplevectorclientdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6775) (s2 T@Vec_6775) (k1@@0 T@Vec_6775) (k2@@0 T@Vec_6775) (m1 T@Vec_6775) (m2 T@Vec_6775) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |simplevectorclientdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s |T@$42_TestVector_T'u64'|) ) (! (= (|$IsValid'$42_TestVector_T'u64''| s) (|$IsValid'vec'u64''| (|$v#$42_TestVector_T'u64'| s)))
 :qid |simplevectorclientdefaultz3bpl.1297:42|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestVector_T'u64''| s))
)))
(assert (forall ((s@@0 |T@$42_TestVector_T'#0'|) ) (! (= (|$IsValid'$42_TestVector_T'#0''| s@@0) (|$IsValid'vec'#0''| (|$v#$42_TestVector_T'#0'| s@@0)))
 :qid |simplevectorclientdefaultz3bpl.1309:41|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestVector_T'#0''| s@@0))
)))
(assert (forall ((v@@10 T@Vec_22314) (i@@12 Int) ) (! (= (InRangeVec_19426 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_22314| v@@10))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_19426 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6775) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6775| v@@11))))
 :qid |simplevectorclientdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6775) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6775 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@15) e@@2))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6775| v@@12) j@@2) e@@2)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6775 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_22314) (e@@3 |T@#0|) ) (! (let ((i@@16 (IndexOfVec_22314 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_19426 v@@13 i@@17) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@17) e@@3))
 :qid |simplevectorclientdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_19426 v@@13 i@@16) (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]#0_| (|v#Vec_22314| v@@13) j@@3) e@@3)))
 :qid |simplevectorclientdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |simplevectorclientdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_22314 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |simplevectorclientdefaultz3bpl.275:54|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@19 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@19) (|Select__T@[Int]#0_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@20 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |53|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@4 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@4) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |simplevectorclientdefaultz3bpl.73:19|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |simplevectorclientdefaultz3bpl.82:30|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |simplevectorclientdefaultz3bpl.63:20|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]Int|) (|l#3@@5| Int) (|l#4@@5| Int) (k Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]Int_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |simplevectorclientdefaultz3bpl.90:14|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@2 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_26505)
(declare-fun $t6@0 () T@$Mutation_26505)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t0@1 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_26505)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun $t4@0 () T@$Mutation_26505)
(declare-fun $t0@0 () T@Vec_6775)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_26505)
(declare-fun $t2@0 () T@$Mutation_26505)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_6775)
(declare-fun $t2 () T@$Mutation_26505)
(declare-fun $t4 () T@$Mutation_26505)
(declare-fun $t6 () T@$Mutation_26505)
(push 1)
(set-info :boogie-vc-id $42_TestVector_vector_of_proper_positives$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 85057) (let ((anon13_Else_correct  (=> (not false) (=> (and (= $t0@2 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= $t0@2 $t0@2)) (and (=> (= (ControlFlow 0 68825) (- 0 85420)) (let (($range_0 $t0@2))
(forall (($i_1 Int) ) (!  (=> (InRangeVec_4118 $range_0 $i_1) (let ((n (|Select__T@[Int]Int_| (|v#Vec_6775| $range_0) $i_1)))
(> n 0)))
 :qid |simplevectorclientdefaultz3bpl.6096:37|
 :skolemid |49|
)))) (=> (let (($range_0 $t0@2))
(forall (($i_1@@0 Int) ) (!  (=> (InRangeVec_4118 $range_0 $i_1@@0) (let ((n (|Select__T@[Int]Int_| (|v#Vec_6775| $range_0) $i_1@@0)))
(> n 0)))
 :qid |simplevectorclientdefaultz3bpl.6096:37|
 :skolemid |49|
))) (=> (= (ControlFlow 0 68825) (- 0 85451)) (let (($range_0@@0 ($Range 0 (|l#Vec_6775| $t0@2))))
(let (($range_1 ($Range 0 (|l#Vec_6775| $t0@2))))
(forall (($i_2 Int) ($i_3 Int) ) (!  (=> ($InRange $range_0@@0 $i_2) (=> ($InRange $range_1 $i_3) (let ((i@@23 $i_2))
(let ((j@@6 $i_3))
 (=> (= (|Select__T@[Int]Int_| (|v#Vec_6775| $t0@2) i@@23) (|Select__T@[Int]Int_| (|v#Vec_6775| $t0@2) j@@6)) (= i@@23 j@@6))))))
 :qid |simplevectorclientdefaultz3bpl.6102:97|
 :skolemid |50|
)))))))))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t6@0) (|p#$Mutation_26505| $t6@0) (let ((l (|l#Vec_6775| (|v#$Mutation_26505| $t6@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t6@0)) l 3) (+ l 1))))) (and (=> (= (ControlFlow 0 68691) 68839) anon13_Then_correct) (=> (= (ControlFlow 0 68691) 68825) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (not false) (=> (and (and (= $t0@1 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t6@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t0@1))) (and (|$IsValid'u64'| 3) (= (ControlFlow 0 68697) 68691))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t4@0) (|p#$Mutation_26505| $t4@0) (let ((l@@0 (|l#Vec_6775| (|v#$Mutation_26505| $t4@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t4@0)) l@@0 2) (+ l@@0 1))))) (and (=> (= (ControlFlow 0 68604) 68859) anon12_Then_correct) (=> (= (ControlFlow 0 68604) 68697) anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_26505| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t4@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) $t0@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 68610) 68604))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon11_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_26505 (|l#$Mutation_26505| $t2@0) (|p#$Mutation_26505| $t2@0) (let ((l@@1 (|l#Vec_6775| (|v#$Mutation_26505| $t2@0))))
(Vec_6775 (|Store__T@[Int]Int_| (|v#Vec_6775| (|v#$Mutation_26505| $t2@0)) l@@1 1) (+ l@@1 1))))) (and (=> (= (ControlFlow 0 68517) 68873) anon11_Then_correct) (=> (= (ControlFlow 0 68517) 68610) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t2@0 ($Mutation_26505 ($Local 0) (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 68523) 68517))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_6775 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 68428) 68887) anon10_Then_correct) (=> (= (ControlFlow 0 68428) 68523) anon10_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 68434) 68428) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t2)) 0) (= (|l#Vec_6775| (|p#$Mutation_26505| $t4)) 0)) (and (= (|l#Vec_6775| (|p#$Mutation_26505| $t6)) 0) (= (ControlFlow 0 68404) 68434))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 85057) 68404) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
