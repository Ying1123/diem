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
(declare-datatypes ((T@$42_TestReferences_WithdrawalCapability 0)) ((($42_TestReferences_WithdrawalCapability (|$account_address#$42_TestReferences_WithdrawalCapability| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestReferences_WithdrawalCapability| 0)
(declare-datatypes ((T@$Memory_18412 0)) ((($Memory_18412 (|domain#$Memory_18412| |T@[Int]Bool|) (|contents#$Memory_18412| |T@[Int]$42_TestReferences_WithdrawalCapability|) ) ) ))
(declare-datatypes ((T@$42_TestReferences_T 0)) ((($42_TestReferences_T (|$a#$42_TestReferences_T| Int) ) ) ))
(declare-sort |T@[Int]$42_TestReferences_T| 0)
(declare-datatypes ((T@Vec_11640 0)) (((Vec_11640 (|v#Vec_11640| |T@[Int]$42_TestReferences_T|) (|l#Vec_11640| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14923 0)) ((($Mutation_14923 (|l#$Mutation_14923| T@$Location) (|p#$Mutation_14923| T@Vec_1349) (|v#$Mutation_14923| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_13298 0)) ((($Mutation_13298 (|l#$Mutation_13298| T@$Location) (|p#$Mutation_13298| T@Vec_1349) (|v#$Mutation_13298| T@$42_TestReferences_T) ) ) ))
(declare-datatypes ((T@$Mutation_12283 0)) ((($Mutation_12283 (|l#$Mutation_12283| T@$Location) (|p#$Mutation_12283| T@Vec_1349) (|v#$Mutation_12283| T@Vec_11640) ) ) ))
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
(declare-fun |$IsEqual'vec'$42_TestReferences_T''| (T@Vec_11640 T@Vec_11640) Bool)
(declare-fun InRangeVec_9132 (T@Vec_11640 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestReferences_T_| (|T@[Int]$42_TestReferences_T| Int) T@$42_TestReferences_T)
(declare-fun |$IsValid'vec'$42_TestReferences_T''| (T@Vec_11640) Bool)
(declare-fun |$IsValid'$42_TestReferences_T'| (T@$42_TestReferences_T) Bool)
(declare-fun |$IndexOfVec'$42_TestReferences_T'| (T@Vec_11640 T@$42_TestReferences_T) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_1349 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'$42_TestReferences_WithdrawalCapability'| (T@$42_TestReferences_WithdrawalCapability) Bool)
(declare-fun IndexOfVec_11640 (T@Vec_11640 T@$42_TestReferences_T) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]$42_TestReferences_T| |T@[Int]$42_TestReferences_T| Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#3| (Int Int |T@[Int]$42_TestReferences_T| Int Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]$42_TestReferences_T| |T@[Int]$42_TestReferences_T| Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |referencesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |referencesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |referencesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |referencesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |referencesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |referencesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |referencesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |referencesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_11640) (v2 T@Vec_11640) ) (! (= (|$IsEqual'vec'$42_TestReferences_T''| v1 v2)  (and (= (|l#Vec_11640| v1) (|l#Vec_11640| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_9132 v1 i@@0) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v1) i@@0) (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v2) i@@0)))
 :qid |referencesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |referencesdefaultz3bpl.613:46|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$42_TestReferences_T''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_11640) ) (! (= (|$IsValid'vec'$42_TestReferences_T''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_11640| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_9132 v@@4 i@@1) (|$IsValid'$42_TestReferences_T'| (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@4) i@@1)))
 :qid |referencesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |referencesdefaultz3bpl.619:46|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$42_TestReferences_T''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_11640) (e T@$42_TestReferences_T) ) (! (let ((i@@2 (|$IndexOfVec'$42_TestReferences_T'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_9132 v@@5 i@@3)) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) i@@3) e))
 :qid |referencesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_9132 v@@5 i@@2)) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) j) e)))
 :qid |referencesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |referencesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$42_TestReferences_T'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |referencesdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |referencesdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |referencesdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |referencesdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |referencesdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |referencesdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |referencesdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_1349| v1@@1) (|l#Vec_1349| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@1) i@@8)))
 :qid |referencesdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |referencesdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@8) i@@9)))
 :qid |referencesdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |referencesdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) i@@11) e@@1))
 :qid |referencesdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) j@@1) e@@1)))
 :qid |referencesdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |referencesdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |referencesdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_1349) (v2@@3 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |referencesdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |referencesdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |referencesdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestReferences_T) ) (! (= (|$IsValid'$42_TestReferences_T'| s) (|$IsValid'u64'| (|$a#$42_TestReferences_T| s)))
 :qid |referencesdefaultz3bpl.1294:41|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestReferences_T'| s))
)))
(assert (forall ((s@@0 T@$42_TestReferences_WithdrawalCapability) ) (! (= (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0) (|$IsValid'address'| (|$account_address#$42_TestReferences_WithdrawalCapability| s@@0)))
 :qid |referencesdefaultz3bpl.1307:60|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0))
)))
(assert (forall ((v@@10 T@Vec_11640) (i@@12 Int) ) (! (= (InRangeVec_9132 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_11640| v@@10))))
 :qid |referencesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_9132 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_1349) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_1349| v@@11))))
 :qid |referencesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_11640) (e@@2 T@$42_TestReferences_T) ) (! (let ((i@@14 (IndexOfVec_11640 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_9132 v@@12 i@@15) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) i@@15) e@@2))
 :qid |referencesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_9132 v@@12 i@@14) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) j@@2) e@@2)))
 :qid |referencesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |referencesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_11640 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_1349) (e@@3 Int) ) (! (let ((i@@16 (IndexOfVec_1349 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_4118 v@@13 i@@17) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@17) e@@3))
 :qid |referencesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_4118 v@@13 i@@16) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) j@@3) e@@3)))
 :qid |referencesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |referencesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |referencesdefaultz3bpl.275:54|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]$42_TestReferences_T|) (|l#4| |T@[Int]$42_TestReferences_T|) (|l#5| Int) (|l#6| T@$42_TestReferences_T) (i@@19 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]$42_TestReferences_T_| |l#3| i@@19) (|Select__T@[Int]$42_TestReferences_T_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |referencesdefaultz3bpl.73:19|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]$42_TestReferences_T|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$42_TestReferences_T) (i@@20 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]$42_TestReferences_T_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |referencesdefaultz3bpl.82:30|
 :skolemid |46|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$42_TestReferences_T|) (|l#4@@1| |T@[Int]$42_TestReferences_T|) (|l#5@@1| Int) (|l#6@@0| T@$42_TestReferences_T) (j@@4 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]$42_TestReferences_T_| |l#3@@1| j@@4) (|Select__T@[Int]$42_TestReferences_T_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |referencesdefaultz3bpl.63:20|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |referencesdefaultz3bpl.73:19|
 :skolemid |48|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |referencesdefaultz3bpl.82:30|
 :skolemid |49|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |referencesdefaultz3bpl.63:20|
 :skolemid |50|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $t0@0 () T@$Mutation_4742)
(declare-fun _$t0 () T@$Mutation_4742)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun |$temp_0'u64'@1| () Int)
(declare-fun $t1@0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t2@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun |$temp_0'u64'@0| () Int)
(push 1)
(set-info :boogie-vc-id $42_TestReferences_increment$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 25649) (let ((anon4_Else_correct  (=> (not $abort_flag@0) (=> (and (and (= $t0@0 ($Mutation_4742 (|l#$Mutation_4742| _$t0) (|p#$Mutation_4742| _$t0) inline$$AddU64$0$dst@2)) (= |$temp_0'u64'@1| (|v#$Mutation_4742| $t0@0))) (and (= |$temp_0'u64'@1| |$temp_0'u64'@1|) (= (ControlFlow 0 21668) (- 0 25896)))) (= (|v#$Mutation_4742| $t0@0) (+ $t1@0 1))))))
(let ((anon4_Then_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 21620) 21686) anon4_Then_correct) (=> (= (ControlFlow 0 21620) 21668) anon4_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t2@0 1) $MAX_U64) (= (ControlFlow 0 21618) 21620)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t2@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t2@0 1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 21566) 21686) anon4_Then_correct) (=> (= (ControlFlow 0 21566) 21668) anon4_Else_correct))))))
(let ((anon0$1_correct  (=> (= (|l#$Mutation_4742| _$t0) ($Param 0)) (=> (and (|$IsValid'u64'| (|v#$Mutation_4742| _$t0)) (= $t1@0 (|v#$Mutation_4742| _$t0))) (=> (and (and (= |$temp_0'u64'@0| (|v#$Mutation_4742| _$t0)) (= |$temp_0'u64'@0| |$temp_0'u64'@0|)) (and (= $t2@0 (|v#$Mutation_4742| _$t0)) (|$IsValid'u64'| 1))) (and (=> (= (ControlFlow 0 21626) 21618) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 21626) 21566) inline$$AddU64$0$anon3_Else_correct)))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 25649) 21626) anon0$1_correct)))
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
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-datatypes ((T@$42_TestReferences_WithdrawalCapability 0)) ((($42_TestReferences_WithdrawalCapability (|$account_address#$42_TestReferences_WithdrawalCapability| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestReferences_WithdrawalCapability| 0)
(declare-datatypes ((T@$Memory_18412 0)) ((($Memory_18412 (|domain#$Memory_18412| |T@[Int]Bool|) (|contents#$Memory_18412| |T@[Int]$42_TestReferences_WithdrawalCapability|) ) ) ))
(declare-datatypes ((T@$42_TestReferences_T 0)) ((($42_TestReferences_T (|$a#$42_TestReferences_T| Int) ) ) ))
(declare-sort |T@[Int]$42_TestReferences_T| 0)
(declare-datatypes ((T@Vec_11640 0)) (((Vec_11640 (|v#Vec_11640| |T@[Int]$42_TestReferences_T|) (|l#Vec_11640| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14923 0)) ((($Mutation_14923 (|l#$Mutation_14923| T@$Location) (|p#$Mutation_14923| T@Vec_1349) (|v#$Mutation_14923| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_13298 0)) ((($Mutation_13298 (|l#$Mutation_13298| T@$Location) (|p#$Mutation_13298| T@Vec_1349) (|v#$Mutation_13298| T@$42_TestReferences_T) ) ) ))
(declare-datatypes ((T@$Mutation_12283 0)) ((($Mutation_12283 (|l#$Mutation_12283| T@$Location) (|p#$Mutation_12283| T@Vec_1349) (|v#$Mutation_12283| T@Vec_11640) ) ) ))
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
(declare-fun |$IsEqual'vec'$42_TestReferences_T''| (T@Vec_11640 T@Vec_11640) Bool)
(declare-fun InRangeVec_9132 (T@Vec_11640 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestReferences_T_| (|T@[Int]$42_TestReferences_T| Int) T@$42_TestReferences_T)
(declare-fun |$IsValid'vec'$42_TestReferences_T''| (T@Vec_11640) Bool)
(declare-fun |$IsValid'$42_TestReferences_T'| (T@$42_TestReferences_T) Bool)
(declare-fun |$IndexOfVec'$42_TestReferences_T'| (T@Vec_11640 T@$42_TestReferences_T) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_1349 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'$42_TestReferences_WithdrawalCapability'| (T@$42_TestReferences_WithdrawalCapability) Bool)
(declare-fun IndexOfVec_11640 (T@Vec_11640 T@$42_TestReferences_T) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]$42_TestReferences_T| |T@[Int]$42_TestReferences_T| Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#3| (Int Int |T@[Int]$42_TestReferences_T| Int Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]$42_TestReferences_T| |T@[Int]$42_TestReferences_T| Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |referencesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |referencesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |referencesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |referencesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |referencesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |referencesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |referencesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |referencesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_11640) (v2 T@Vec_11640) ) (! (= (|$IsEqual'vec'$42_TestReferences_T''| v1 v2)  (and (= (|l#Vec_11640| v1) (|l#Vec_11640| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_9132 v1 i@@0) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v1) i@@0) (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v2) i@@0)))
 :qid |referencesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |referencesdefaultz3bpl.613:46|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$42_TestReferences_T''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_11640) ) (! (= (|$IsValid'vec'$42_TestReferences_T''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_11640| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_9132 v@@4 i@@1) (|$IsValid'$42_TestReferences_T'| (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@4) i@@1)))
 :qid |referencesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |referencesdefaultz3bpl.619:46|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$42_TestReferences_T''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_11640) (e T@$42_TestReferences_T) ) (! (let ((i@@2 (|$IndexOfVec'$42_TestReferences_T'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_9132 v@@5 i@@3)) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) i@@3) e))
 :qid |referencesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_9132 v@@5 i@@2)) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) j) e)))
 :qid |referencesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |referencesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$42_TestReferences_T'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |referencesdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |referencesdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |referencesdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |referencesdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |referencesdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |referencesdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |referencesdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_1349| v1@@1) (|l#Vec_1349| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@1) i@@8)))
 :qid |referencesdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |referencesdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@8) i@@9)))
 :qid |referencesdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |referencesdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) i@@11) e@@1))
 :qid |referencesdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) j@@1) e@@1)))
 :qid |referencesdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |referencesdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |referencesdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_1349) (v2@@3 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |referencesdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |referencesdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |referencesdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestReferences_T) ) (! (= (|$IsValid'$42_TestReferences_T'| s) (|$IsValid'u64'| (|$a#$42_TestReferences_T| s)))
 :qid |referencesdefaultz3bpl.1294:41|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestReferences_T'| s))
)))
(assert (forall ((s@@0 T@$42_TestReferences_WithdrawalCapability) ) (! (= (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0) (|$IsValid'address'| (|$account_address#$42_TestReferences_WithdrawalCapability| s@@0)))
 :qid |referencesdefaultz3bpl.1307:60|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0))
)))
(assert (forall ((v@@10 T@Vec_11640) (i@@12 Int) ) (! (= (InRangeVec_9132 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_11640| v@@10))))
 :qid |referencesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_9132 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_1349) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_1349| v@@11))))
 :qid |referencesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_11640) (e@@2 T@$42_TestReferences_T) ) (! (let ((i@@14 (IndexOfVec_11640 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_9132 v@@12 i@@15) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) i@@15) e@@2))
 :qid |referencesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_9132 v@@12 i@@14) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) j@@2) e@@2)))
 :qid |referencesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |referencesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_11640 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_1349) (e@@3 Int) ) (! (let ((i@@16 (IndexOfVec_1349 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_4118 v@@13 i@@17) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@17) e@@3))
 :qid |referencesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_4118 v@@13 i@@16) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) j@@3) e@@3)))
 :qid |referencesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |referencesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |referencesdefaultz3bpl.275:54|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]$42_TestReferences_T|) (|l#4| |T@[Int]$42_TestReferences_T|) (|l#5| Int) (|l#6| T@$42_TestReferences_T) (i@@19 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]$42_TestReferences_T_| |l#3| i@@19) (|Select__T@[Int]$42_TestReferences_T_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |referencesdefaultz3bpl.73:19|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]$42_TestReferences_T|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$42_TestReferences_T) (i@@20 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]$42_TestReferences_T_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |referencesdefaultz3bpl.82:30|
 :skolemid |46|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$42_TestReferences_T|) (|l#4@@1| |T@[Int]$42_TestReferences_T|) (|l#5@@1| Int) (|l#6@@0| T@$42_TestReferences_T) (j@@4 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]$42_TestReferences_T_| |l#3@@1| j@@4) (|Select__T@[Int]$42_TestReferences_T_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |referencesdefaultz3bpl.63:20|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |referencesdefaultz3bpl.73:19|
 :skolemid |48|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |referencesdefaultz3bpl.82:30|
 :skolemid |49|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |referencesdefaultz3bpl.63:20|
 :skolemid |50|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () T@$Mutation_4742)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun $t0@0 () T@$Mutation_4742)
(declare-fun |$temp_0'u64'@1| () Int)
(push 1)
(set-info :boogie-vc-id $42_TestReferences_mut_b$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 25932) (let ((anon0$1_correct  (=> (= (|l#$Mutation_4742| _$t0) ($Param 0)) (=> (and (and (and (|$IsValid'u64'| (|v#$Mutation_4742| _$t0)) (= |$temp_0'u64'@0| (|v#$Mutation_4742| _$t0))) (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (|$IsValid'u64'| 10))) (and (and (= $t0@0 ($Mutation_4742 (|l#$Mutation_4742| _$t0) (|p#$Mutation_4742| _$t0) 10)) (= |$temp_0'u64'@1| (|v#$Mutation_4742| $t0@0))) (and (= |$temp_0'u64'@1| |$temp_0'u64'@1|) (= (ControlFlow 0 21824) (- 0 26036))))) (= (|v#$Mutation_4742| $t0@0) 10)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 25932) 21824) anon0$1_correct)))
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
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-datatypes ((T@$42_TestReferences_WithdrawalCapability 0)) ((($42_TestReferences_WithdrawalCapability (|$account_address#$42_TestReferences_WithdrawalCapability| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestReferences_WithdrawalCapability| 0)
(declare-datatypes ((T@$Memory_18412 0)) ((($Memory_18412 (|domain#$Memory_18412| |T@[Int]Bool|) (|contents#$Memory_18412| |T@[Int]$42_TestReferences_WithdrawalCapability|) ) ) ))
(declare-datatypes ((T@$42_TestReferences_T 0)) ((($42_TestReferences_T (|$a#$42_TestReferences_T| Int) ) ) ))
(declare-sort |T@[Int]$42_TestReferences_T| 0)
(declare-datatypes ((T@Vec_11640 0)) (((Vec_11640 (|v#Vec_11640| |T@[Int]$42_TestReferences_T|) (|l#Vec_11640| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14923 0)) ((($Mutation_14923 (|l#$Mutation_14923| T@$Location) (|p#$Mutation_14923| T@Vec_1349) (|v#$Mutation_14923| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_13298 0)) ((($Mutation_13298 (|l#$Mutation_13298| T@$Location) (|p#$Mutation_13298| T@Vec_1349) (|v#$Mutation_13298| T@$42_TestReferences_T) ) ) ))
(declare-datatypes ((T@$Mutation_12283 0)) ((($Mutation_12283 (|l#$Mutation_12283| T@$Location) (|p#$Mutation_12283| T@Vec_1349) (|v#$Mutation_12283| T@Vec_11640) ) ) ))
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
(declare-fun |$IsEqual'vec'$42_TestReferences_T''| (T@Vec_11640 T@Vec_11640) Bool)
(declare-fun InRangeVec_9132 (T@Vec_11640 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestReferences_T_| (|T@[Int]$42_TestReferences_T| Int) T@$42_TestReferences_T)
(declare-fun |$IsValid'vec'$42_TestReferences_T''| (T@Vec_11640) Bool)
(declare-fun |$IsValid'$42_TestReferences_T'| (T@$42_TestReferences_T) Bool)
(declare-fun |$IndexOfVec'$42_TestReferences_T'| (T@Vec_11640 T@$42_TestReferences_T) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_1349 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'$42_TestReferences_WithdrawalCapability'| (T@$42_TestReferences_WithdrawalCapability) Bool)
(declare-fun IndexOfVec_11640 (T@Vec_11640 T@$42_TestReferences_T) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]$42_TestReferences_T| |T@[Int]$42_TestReferences_T| Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#3| (Int Int |T@[Int]$42_TestReferences_T| Int Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]$42_TestReferences_T| |T@[Int]$42_TestReferences_T| Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |referencesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |referencesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |referencesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |referencesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |referencesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |referencesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |referencesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |referencesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_11640) (v2 T@Vec_11640) ) (! (= (|$IsEqual'vec'$42_TestReferences_T''| v1 v2)  (and (= (|l#Vec_11640| v1) (|l#Vec_11640| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_9132 v1 i@@0) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v1) i@@0) (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v2) i@@0)))
 :qid |referencesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |referencesdefaultz3bpl.613:46|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$42_TestReferences_T''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_11640) ) (! (= (|$IsValid'vec'$42_TestReferences_T''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_11640| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_9132 v@@4 i@@1) (|$IsValid'$42_TestReferences_T'| (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@4) i@@1)))
 :qid |referencesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |referencesdefaultz3bpl.619:46|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$42_TestReferences_T''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_11640) (e T@$42_TestReferences_T) ) (! (let ((i@@2 (|$IndexOfVec'$42_TestReferences_T'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_9132 v@@5 i@@3)) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) i@@3) e))
 :qid |referencesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_9132 v@@5 i@@2)) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) j) e)))
 :qid |referencesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |referencesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$42_TestReferences_T'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |referencesdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |referencesdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |referencesdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |referencesdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |referencesdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |referencesdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |referencesdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_1349| v1@@1) (|l#Vec_1349| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@1) i@@8)))
 :qid |referencesdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |referencesdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@8) i@@9)))
 :qid |referencesdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |referencesdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) i@@11) e@@1))
 :qid |referencesdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) j@@1) e@@1)))
 :qid |referencesdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |referencesdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |referencesdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_1349) (v2@@3 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |referencesdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |referencesdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |referencesdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestReferences_T) ) (! (= (|$IsValid'$42_TestReferences_T'| s) (|$IsValid'u64'| (|$a#$42_TestReferences_T| s)))
 :qid |referencesdefaultz3bpl.1294:41|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestReferences_T'| s))
)))
(assert (forall ((s@@0 T@$42_TestReferences_WithdrawalCapability) ) (! (= (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0) (|$IsValid'address'| (|$account_address#$42_TestReferences_WithdrawalCapability| s@@0)))
 :qid |referencesdefaultz3bpl.1307:60|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0))
)))
(assert (forall ((v@@10 T@Vec_11640) (i@@12 Int) ) (! (= (InRangeVec_9132 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_11640| v@@10))))
 :qid |referencesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_9132 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_1349) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_1349| v@@11))))
 :qid |referencesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_11640) (e@@2 T@$42_TestReferences_T) ) (! (let ((i@@14 (IndexOfVec_11640 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_9132 v@@12 i@@15) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) i@@15) e@@2))
 :qid |referencesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_9132 v@@12 i@@14) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) j@@2) e@@2)))
 :qid |referencesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |referencesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_11640 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_1349) (e@@3 Int) ) (! (let ((i@@16 (IndexOfVec_1349 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_4118 v@@13 i@@17) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@17) e@@3))
 :qid |referencesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_4118 v@@13 i@@16) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) j@@3) e@@3)))
 :qid |referencesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |referencesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |referencesdefaultz3bpl.275:54|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]$42_TestReferences_T|) (|l#4| |T@[Int]$42_TestReferences_T|) (|l#5| Int) (|l#6| T@$42_TestReferences_T) (i@@19 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]$42_TestReferences_T_| |l#3| i@@19) (|Select__T@[Int]$42_TestReferences_T_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |referencesdefaultz3bpl.73:19|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]$42_TestReferences_T|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$42_TestReferences_T) (i@@20 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]$42_TestReferences_T_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |referencesdefaultz3bpl.82:30|
 :skolemid |46|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$42_TestReferences_T|) (|l#4@@1| |T@[Int]$42_TestReferences_T|) (|l#5@@1| Int) (|l#6@@0| T@$42_TestReferences_T) (j@@4 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]$42_TestReferences_T_| |l#3@@1| j@@4) (|Select__T@[Int]$42_TestReferences_T_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |referencesdefaultz3bpl.63:20|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |referencesdefaultz3bpl.73:19|
 :skolemid |48|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |referencesdefaultz3bpl.82:30|
 :skolemid |49|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |referencesdefaultz3bpl.63:20|
 :skolemid |50|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t7@0 () Bool)
(declare-fun $t0@0 () Int)
(declare-fun inline$$42_TestReferences_mut_b$0$$t0@1 () T@$Mutation_4742)
(declare-fun $t0@1 () Int)
(declare-fun |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@1| () Int)
(declare-fun $t3@0 () T@$Mutation_4742)
(declare-fun |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@2| () Int)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun $t1 () T@$Mutation_4742)
(declare-fun $t3 () T@$Mutation_4742)
(push 1)
(set-info :boogie-vc-id $42_TestReferences_mut_ref$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 26052) (let ((L4_correct  (=> (= (ControlFlow 0 22167) (- 0 26347)) false)))
(let ((anon7_Then_correct  (=> (and (and $t7@0 (|$IsValid'u64'| 1)) (and (= 1 1) (= (ControlFlow 0 22157) 22167))) L4_correct)))
(let ((anon7_Else_correct  (=> (and (not $t7@0) (= (ControlFlow 0 22137) (- 0 26340))) (not false))))
(let ((anon6_Else_correct  (=> (and (not false) (= $t0@0 (|v#$Mutation_4742| inline$$42_TestReferences_mut_b$0$$t0@1))) (=> (and (and (= $t0@1 (|v#$Mutation_4742| inline$$42_TestReferences_mut_b$0$$t0@1)) (= $t0@1 $t0@1)) (and (|$IsValid'u64'| 10) (= $t7@0  (not (= $t0@1 10))))) (and (=> (= (ControlFlow 0 22123) 22157) anon7_Then_correct) (=> (= (ControlFlow 0 22123) 22137) anon7_Else_correct))))))
(let ((anon6_Then_correct true))
(let ((inline$$42_TestReferences_mut_b$0$anon0_correct  (=> (and (= |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@1| (|v#$Mutation_4742| $t3@0)) (= |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@1| |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@1|)) (=> (and (and (|$IsValid'u64'| 10) (= inline$$42_TestReferences_mut_b$0$$t0@1 ($Mutation_4742 (|l#$Mutation_4742| $t3@0) (|p#$Mutation_4742| $t3@0) 10))) (and (= |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@2| (|v#$Mutation_4742| inline$$42_TestReferences_mut_b$0$$t0@1)) (= |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@2| |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@2|))) (and (=> (= (ControlFlow 0 22075) 22181) anon6_Then_correct) (=> (= (ControlFlow 0 22075) 22123) anon6_Else_correct))))))
(let ((anon0$1_correct  (=> (and (|$IsValid'u64'| 20) (= 20 20)) (=> (and (and (= $t3@0 ($Mutation_4742 ($Local 0) (Vec_1349 (MapConstVec_4347 DefaultVecElem_4347) 0) 20)) (= |$temp_0'u64'@0| (|v#$Mutation_4742| $t3@0))) (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (= (ControlFlow 0 22081) 22075))) inline$$42_TestReferences_mut_b$0$anon0_correct))))
(let ((anon0_correct  (=> (= (|l#Vec_1349| (|p#$Mutation_4742| $t1)) 0) (=> (and (= (|l#Vec_1349| (|p#$Mutation_4742| $t3)) 0) (= (ControlFlow 0 21902) 22081)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 26052) 21902) anon0_correct)))
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
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-datatypes ((T@$42_TestReferences_WithdrawalCapability 0)) ((($42_TestReferences_WithdrawalCapability (|$account_address#$42_TestReferences_WithdrawalCapability| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestReferences_WithdrawalCapability| 0)
(declare-datatypes ((T@$Memory_18412 0)) ((($Memory_18412 (|domain#$Memory_18412| |T@[Int]Bool|) (|contents#$Memory_18412| |T@[Int]$42_TestReferences_WithdrawalCapability|) ) ) ))
(declare-datatypes ((T@$42_TestReferences_T 0)) ((($42_TestReferences_T (|$a#$42_TestReferences_T| Int) ) ) ))
(declare-sort |T@[Int]$42_TestReferences_T| 0)
(declare-datatypes ((T@Vec_11640 0)) (((Vec_11640 (|v#Vec_11640| |T@[Int]$42_TestReferences_T|) (|l#Vec_11640| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14923 0)) ((($Mutation_14923 (|l#$Mutation_14923| T@$Location) (|p#$Mutation_14923| T@Vec_1349) (|v#$Mutation_14923| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_13298 0)) ((($Mutation_13298 (|l#$Mutation_13298| T@$Location) (|p#$Mutation_13298| T@Vec_1349) (|v#$Mutation_13298| T@$42_TestReferences_T) ) ) ))
(declare-datatypes ((T@$Mutation_12283 0)) ((($Mutation_12283 (|l#$Mutation_12283| T@$Location) (|p#$Mutation_12283| T@Vec_1349) (|v#$Mutation_12283| T@Vec_11640) ) ) ))
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
(declare-fun |$IsEqual'vec'$42_TestReferences_T''| (T@Vec_11640 T@Vec_11640) Bool)
(declare-fun InRangeVec_9132 (T@Vec_11640 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestReferences_T_| (|T@[Int]$42_TestReferences_T| Int) T@$42_TestReferences_T)
(declare-fun |$IsValid'vec'$42_TestReferences_T''| (T@Vec_11640) Bool)
(declare-fun |$IsValid'$42_TestReferences_T'| (T@$42_TestReferences_T) Bool)
(declare-fun |$IndexOfVec'$42_TestReferences_T'| (T@Vec_11640 T@$42_TestReferences_T) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_1349 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'$42_TestReferences_WithdrawalCapability'| (T@$42_TestReferences_WithdrawalCapability) Bool)
(declare-fun IndexOfVec_11640 (T@Vec_11640 T@$42_TestReferences_T) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]$42_TestReferences_T| |T@[Int]$42_TestReferences_T| Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#3| (Int Int |T@[Int]$42_TestReferences_T| Int Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]$42_TestReferences_T| |T@[Int]$42_TestReferences_T| Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |referencesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |referencesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |referencesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |referencesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |referencesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |referencesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |referencesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |referencesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_11640) (v2 T@Vec_11640) ) (! (= (|$IsEqual'vec'$42_TestReferences_T''| v1 v2)  (and (= (|l#Vec_11640| v1) (|l#Vec_11640| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_9132 v1 i@@0) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v1) i@@0) (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v2) i@@0)))
 :qid |referencesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |referencesdefaultz3bpl.613:46|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$42_TestReferences_T''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_11640) ) (! (= (|$IsValid'vec'$42_TestReferences_T''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_11640| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_9132 v@@4 i@@1) (|$IsValid'$42_TestReferences_T'| (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@4) i@@1)))
 :qid |referencesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |referencesdefaultz3bpl.619:46|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$42_TestReferences_T''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_11640) (e T@$42_TestReferences_T) ) (! (let ((i@@2 (|$IndexOfVec'$42_TestReferences_T'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_9132 v@@5 i@@3)) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) i@@3) e))
 :qid |referencesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_9132 v@@5 i@@2)) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) j) e)))
 :qid |referencesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |referencesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$42_TestReferences_T'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |referencesdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |referencesdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |referencesdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |referencesdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |referencesdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |referencesdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |referencesdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_1349| v1@@1) (|l#Vec_1349| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@1) i@@8)))
 :qid |referencesdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |referencesdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@8) i@@9)))
 :qid |referencesdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |referencesdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) i@@11) e@@1))
 :qid |referencesdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) j@@1) e@@1)))
 :qid |referencesdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |referencesdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |referencesdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_1349) (v2@@3 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |referencesdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |referencesdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |referencesdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestReferences_T) ) (! (= (|$IsValid'$42_TestReferences_T'| s) (|$IsValid'u64'| (|$a#$42_TestReferences_T| s)))
 :qid |referencesdefaultz3bpl.1294:41|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestReferences_T'| s))
)))
(assert (forall ((s@@0 T@$42_TestReferences_WithdrawalCapability) ) (! (= (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0) (|$IsValid'address'| (|$account_address#$42_TestReferences_WithdrawalCapability| s@@0)))
 :qid |referencesdefaultz3bpl.1307:60|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0))
)))
(assert (forall ((v@@10 T@Vec_11640) (i@@12 Int) ) (! (= (InRangeVec_9132 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_11640| v@@10))))
 :qid |referencesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_9132 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_1349) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_1349| v@@11))))
 :qid |referencesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_11640) (e@@2 T@$42_TestReferences_T) ) (! (let ((i@@14 (IndexOfVec_11640 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_9132 v@@12 i@@15) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) i@@15) e@@2))
 :qid |referencesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_9132 v@@12 i@@14) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) j@@2) e@@2)))
 :qid |referencesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |referencesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_11640 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_1349) (e@@3 Int) ) (! (let ((i@@16 (IndexOfVec_1349 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_4118 v@@13 i@@17) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@17) e@@3))
 :qid |referencesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_4118 v@@13 i@@16) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) j@@3) e@@3)))
 :qid |referencesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |referencesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |referencesdefaultz3bpl.275:54|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]$42_TestReferences_T|) (|l#4| |T@[Int]$42_TestReferences_T|) (|l#5| Int) (|l#6| T@$42_TestReferences_T) (i@@19 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]$42_TestReferences_T_| |l#3| i@@19) (|Select__T@[Int]$42_TestReferences_T_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |referencesdefaultz3bpl.73:19|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]$42_TestReferences_T|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$42_TestReferences_T) (i@@20 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]$42_TestReferences_T_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |referencesdefaultz3bpl.82:30|
 :skolemid |46|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$42_TestReferences_T|) (|l#4@@1| |T@[Int]$42_TestReferences_T|) (|l#5@@1| Int) (|l#6@@0| T@$42_TestReferences_T) (j@@4 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]$42_TestReferences_T_| |l#3@@1| j@@4) (|Select__T@[Int]$42_TestReferences_T_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |referencesdefaultz3bpl.63:20|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |referencesdefaultz3bpl.73:19|
 :skolemid |48|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |referencesdefaultz3bpl.82:30|
 :skolemid |49|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |referencesdefaultz3bpl.63:20|
 :skolemid |50|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t7@0 () Bool)
(declare-fun $t0@0 () Int)
(declare-fun inline$$42_TestReferences_mut_b$0$$t0@1 () T@$Mutation_4742)
(declare-fun $t0@1 () Int)
(declare-fun |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@1| () Int)
(declare-fun $t3@0 () T@$Mutation_4742)
(declare-fun |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@2| () Int)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun $t1 () T@$Mutation_4742)
(declare-fun $t3 () T@$Mutation_4742)
(push 1)
(set-info :boogie-vc-id $42_TestReferences_mut_ref_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 26364) (let ((L4_correct  (=> (= (ControlFlow 0 22535) (- 0 26659)) true)))
(let ((anon7_Then_correct  (=> (and (and $t7@0 (|$IsValid'u64'| 1)) (and (= 1 1) (= (ControlFlow 0 22525) 22535))) L4_correct)))
(let ((anon7_Else_correct  (=> (and (not $t7@0) (= (ControlFlow 0 22505) (- 0 26652))) (not true))))
(let ((anon6_Else_correct  (=> (and (not false) (= $t0@0 (|v#$Mutation_4742| inline$$42_TestReferences_mut_b$0$$t0@1))) (=> (and (and (= $t0@1 (|v#$Mutation_4742| inline$$42_TestReferences_mut_b$0$$t0@1)) (= $t0@1 $t0@1)) (and (|$IsValid'u64'| 10) (= $t7@0  (not (= $t0@1 10))))) (and (=> (= (ControlFlow 0 22491) 22525) anon7_Then_correct) (=> (= (ControlFlow 0 22491) 22505) anon7_Else_correct))))))
(let ((anon6_Then_correct true))
(let ((inline$$42_TestReferences_mut_b$0$anon0_correct  (=> (and (= |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@1| (|v#$Mutation_4742| $t3@0)) (= |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@1| |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@1|)) (=> (and (and (|$IsValid'u64'| 10) (= inline$$42_TestReferences_mut_b$0$$t0@1 ($Mutation_4742 (|l#$Mutation_4742| $t3@0) (|p#$Mutation_4742| $t3@0) 10))) (and (= |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@2| (|v#$Mutation_4742| inline$$42_TestReferences_mut_b$0$$t0@1)) (= |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@2| |inline$$42_TestReferences_mut_b$0$$temp_0'u64'@2|))) (and (=> (= (ControlFlow 0 22443) 22549) anon6_Then_correct) (=> (= (ControlFlow 0 22443) 22491) anon6_Else_correct))))))
(let ((anon0$1_correct  (=> (and (|$IsValid'u64'| 20) (= 20 20)) (=> (and (and (= $t3@0 ($Mutation_4742 ($Local 0) (Vec_1349 (MapConstVec_4347 DefaultVecElem_4347) 0) 20)) (= |$temp_0'u64'@0| (|v#$Mutation_4742| $t3@0))) (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (= (ControlFlow 0 22449) 22443))) inline$$42_TestReferences_mut_b$0$anon0_correct))))
(let ((anon0_correct  (=> (= (|l#Vec_1349| (|p#$Mutation_4742| $t1)) 0) (=> (and (= (|l#Vec_1349| (|p#$Mutation_4742| $t3)) 0) (= (ControlFlow 0 22270) 22449)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 26364) 22270) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 26364)))
(get-value ((ControlFlow 0 22270)))
(get-value ((ControlFlow 0 22449)))
(get-value ((ControlFlow 0 22443)))
(get-value ((ControlFlow 0 22491)))
(get-value ((ControlFlow 0 22505)))
(assert (not (= (ControlFlow 0 22505) (- 26652))))
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
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-datatypes ((T@$42_TestReferences_WithdrawalCapability 0)) ((($42_TestReferences_WithdrawalCapability (|$account_address#$42_TestReferences_WithdrawalCapability| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestReferences_WithdrawalCapability| 0)
(declare-datatypes ((T@$Memory_18412 0)) ((($Memory_18412 (|domain#$Memory_18412| |T@[Int]Bool|) (|contents#$Memory_18412| |T@[Int]$42_TestReferences_WithdrawalCapability|) ) ) ))
(declare-datatypes ((T@$42_TestReferences_T 0)) ((($42_TestReferences_T (|$a#$42_TestReferences_T| Int) ) ) ))
(declare-sort |T@[Int]$42_TestReferences_T| 0)
(declare-datatypes ((T@Vec_11640 0)) (((Vec_11640 (|v#Vec_11640| |T@[Int]$42_TestReferences_T|) (|l#Vec_11640| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14923 0)) ((($Mutation_14923 (|l#$Mutation_14923| T@$Location) (|p#$Mutation_14923| T@Vec_1349) (|v#$Mutation_14923| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_13298 0)) ((($Mutation_13298 (|l#$Mutation_13298| T@$Location) (|p#$Mutation_13298| T@Vec_1349) (|v#$Mutation_13298| T@$42_TestReferences_T) ) ) ))
(declare-datatypes ((T@$Mutation_12283 0)) ((($Mutation_12283 (|l#$Mutation_12283| T@$Location) (|p#$Mutation_12283| T@Vec_1349) (|v#$Mutation_12283| T@Vec_11640) ) ) ))
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
(declare-fun |$IsEqual'vec'$42_TestReferences_T''| (T@Vec_11640 T@Vec_11640) Bool)
(declare-fun InRangeVec_9132 (T@Vec_11640 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestReferences_T_| (|T@[Int]$42_TestReferences_T| Int) T@$42_TestReferences_T)
(declare-fun |$IsValid'vec'$42_TestReferences_T''| (T@Vec_11640) Bool)
(declare-fun |$IsValid'$42_TestReferences_T'| (T@$42_TestReferences_T) Bool)
(declare-fun |$IndexOfVec'$42_TestReferences_T'| (T@Vec_11640 T@$42_TestReferences_T) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_1349 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'$42_TestReferences_WithdrawalCapability'| (T@$42_TestReferences_WithdrawalCapability) Bool)
(declare-fun IndexOfVec_11640 (T@Vec_11640 T@$42_TestReferences_T) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]$42_TestReferences_T| |T@[Int]$42_TestReferences_T| Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#3| (Int Int |T@[Int]$42_TestReferences_T| Int Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]$42_TestReferences_T| |T@[Int]$42_TestReferences_T| Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |referencesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |referencesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |referencesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |referencesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |referencesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |referencesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |referencesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |referencesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_11640) (v2 T@Vec_11640) ) (! (= (|$IsEqual'vec'$42_TestReferences_T''| v1 v2)  (and (= (|l#Vec_11640| v1) (|l#Vec_11640| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_9132 v1 i@@0) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v1) i@@0) (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v2) i@@0)))
 :qid |referencesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |referencesdefaultz3bpl.613:46|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$42_TestReferences_T''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_11640) ) (! (= (|$IsValid'vec'$42_TestReferences_T''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_11640| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_9132 v@@4 i@@1) (|$IsValid'$42_TestReferences_T'| (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@4) i@@1)))
 :qid |referencesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |referencesdefaultz3bpl.619:46|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$42_TestReferences_T''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_11640) (e T@$42_TestReferences_T) ) (! (let ((i@@2 (|$IndexOfVec'$42_TestReferences_T'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_9132 v@@5 i@@3)) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) i@@3) e))
 :qid |referencesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_9132 v@@5 i@@2)) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) j) e)))
 :qid |referencesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |referencesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$42_TestReferences_T'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |referencesdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |referencesdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |referencesdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |referencesdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |referencesdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |referencesdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |referencesdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_1349| v1@@1) (|l#Vec_1349| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@1) i@@8)))
 :qid |referencesdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |referencesdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@8) i@@9)))
 :qid |referencesdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |referencesdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) i@@11) e@@1))
 :qid |referencesdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) j@@1) e@@1)))
 :qid |referencesdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |referencesdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |referencesdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_1349) (v2@@3 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |referencesdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |referencesdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |referencesdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestReferences_T) ) (! (= (|$IsValid'$42_TestReferences_T'| s) (|$IsValid'u64'| (|$a#$42_TestReferences_T| s)))
 :qid |referencesdefaultz3bpl.1294:41|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestReferences_T'| s))
)))
(assert (forall ((s@@0 T@$42_TestReferences_WithdrawalCapability) ) (! (= (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0) (|$IsValid'address'| (|$account_address#$42_TestReferences_WithdrawalCapability| s@@0)))
 :qid |referencesdefaultz3bpl.1307:60|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0))
)))
(assert (forall ((v@@10 T@Vec_11640) (i@@12 Int) ) (! (= (InRangeVec_9132 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_11640| v@@10))))
 :qid |referencesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_9132 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_1349) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_1349| v@@11))))
 :qid |referencesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_11640) (e@@2 T@$42_TestReferences_T) ) (! (let ((i@@14 (IndexOfVec_11640 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_9132 v@@12 i@@15) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) i@@15) e@@2))
 :qid |referencesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_9132 v@@12 i@@14) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) j@@2) e@@2)))
 :qid |referencesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |referencesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_11640 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_1349) (e@@3 Int) ) (! (let ((i@@16 (IndexOfVec_1349 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_4118 v@@13 i@@17) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@17) e@@3))
 :qid |referencesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_4118 v@@13 i@@16) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) j@@3) e@@3)))
 :qid |referencesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |referencesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |referencesdefaultz3bpl.275:54|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]$42_TestReferences_T|) (|l#4| |T@[Int]$42_TestReferences_T|) (|l#5| Int) (|l#6| T@$42_TestReferences_T) (i@@19 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]$42_TestReferences_T_| |l#3| i@@19) (|Select__T@[Int]$42_TestReferences_T_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |referencesdefaultz3bpl.73:19|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]$42_TestReferences_T|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$42_TestReferences_T) (i@@20 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]$42_TestReferences_T_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |referencesdefaultz3bpl.82:30|
 :skolemid |46|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$42_TestReferences_T|) (|l#4@@1| |T@[Int]$42_TestReferences_T|) (|l#5@@1| Int) (|l#6@@0| T@$42_TestReferences_T) (j@@4 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]$42_TestReferences_T_| |l#3@@1| j@@4) (|Select__T@[Int]$42_TestReferences_T_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |referencesdefaultz3bpl.63:20|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |referencesdefaultz3bpl.73:19|
 :skolemid |48|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |referencesdefaultz3bpl.82:30|
 :skolemid |49|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |referencesdefaultz3bpl.63:20|
 :skolemid |50|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@2| () T@$Mutation_4742)
(declare-fun $t7@0 () T@$Mutation_4742)
(declare-fun $t5@1 () T@$Mutation_14923)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$m'@1| () T@$Mutation_14923)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t1@1 () T@Vec_1349)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@0| () T@$Mutation_4742)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$m'@0| () T@$Mutation_14923)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$v@1| () T@Vec_1349)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@1| () T@$Mutation_4742)
(declare-fun $t5@0 () T@$Mutation_14923)
(declare-fun $abort_code@0 () Int)
(declare-fun $t1@0 () T@Vec_1349)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_14923)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun $t3@0 () T@$Mutation_14923)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_1349)
(declare-fun $t0 () T@$Mutation_4742)
(declare-fun $t3 () T@$Mutation_14923)
(declare-fun $t5 () T@$Mutation_14923)
(declare-fun $t7 () T@$Mutation_4742)
(push 1)
(set-info :boogie-vc-id $42_TestReferences_mutate_vector$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 26676) (let ((anon10_Else_correct  (=> (not $abort_flag@0) (=> (and (and (and (= |$temp_0'u64'@0| (|v#$Mutation_4742| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|)) (= |$temp_0'u64'@0| |$temp_0'u64'@0|)) (and (|$IsValid'u64'| 0) (= $t7@0 ($Mutation_4742 (|l#$Mutation_4742| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) (|p#$Mutation_4742| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) 0)))) (and (and (= $t5@1 ($Mutation_14923 (|l#$Mutation_14923| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (|p#$Mutation_14923| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (Vec_1349 (|Store__T@[Int]Int_| (|v#Vec_1349| (|v#$Mutation_14923| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|)) (|Select__T@[Int]Int_| (|v#Vec_1349| (|p#$Mutation_4742| $t7@0)) (|l#Vec_1349| (|p#$Mutation_14923| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|))) (|v#$Mutation_4742| $t7@0)) (|l#Vec_1349| (|v#$Mutation_14923| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|))))) (= $t1@1 (|v#$Mutation_14923| $t5@1))) (and (= $t1@1 $t1@1) (= (ControlFlow 0 23077) (- 0 27129))))) (= (|Select__T@[Int]Int_| (|v#Vec_1349| $t1@1) 0) 0)))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@0|) (= |inline$$1_Vector_borrow_mut'u64'$0$m'@1| |inline$$1_Vector_borrow_mut'u64'$0$m'@0|))) (and (=> (= (ControlFlow 0 22981) 23091) anon10_Then_correct) (=> (= (ControlFlow 0 22981) 23077) anon10_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_4118 |inline$$1_Vector_borrow_mut'u64'$0$v@1| 0)) (= (ControlFlow 0 22979) 22981)) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|  (=> (and (InRangeVec_4118 |inline$$1_Vector_borrow_mut'u64'$0$v@1| 0) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@1| ($Mutation_4742 (|l#$Mutation_14923| $t5@0) (let ((l (|l#Vec_1349| (|p#$Mutation_14923| $t5@0))))
(Vec_1349 (|Store__T@[Int]Int_| (|v#Vec_1349| (|p#$Mutation_14923| $t5@0)) l 0) (+ l 1))) (|Select__T@[Int]Int_| (|v#Vec_1349| |inline$$1_Vector_borrow_mut'u64'$0$v@1|) 0)))) (=> (and (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@1|) (= |inline$$1_Vector_borrow_mut'u64'$0$m'@1| $t5@0))) (and (=> (= (ControlFlow 0 22929) 23091) anon10_Then_correct) (=> (= (ControlFlow 0 22929) 23077) anon10_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$0$v@1| (|v#$Mutation_14923| $t5@0)) (and (=> (= (ControlFlow 0 22899) 22979) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 22899) 22929) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|)))))
(let ((anon9_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_14923| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t5@0 ($Mutation_14923 ($Local 1) (Vec_1349 (MapConstVec_4347 DefaultVecElem_4347) 0) $t1@0))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 22989) 22899))) |inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|))))
(let ((anon9_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_14923 (|l#$Mutation_14923| $t3@0) (|p#$Mutation_14923| $t3@0) (let ((l@@0 (|l#Vec_1349| (|v#$Mutation_14923| $t3@0))))
(Vec_1349 (|Store__T@[Int]Int_| (|v#Vec_1349| (|v#$Mutation_14923| $t3@0)) l@@0 1) (+ l@@0 1))))) (and (=> (= (ControlFlow 0 22763) 23111) anon9_Then_correct) (=> (= (ControlFlow 0 22763) 22989) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t3@0 ($Mutation_14923 ($Local 1) (Vec_1349 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 22769) 22763))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon8_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_1349 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 22674) 23125) anon8_Then_correct) (=> (= (ControlFlow 0 22674) 22769) anon8_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 22680) 22674) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (|l#Vec_1349| (|p#$Mutation_4742| $t0)) 0) (=> (and (and (= (|l#Vec_1349| (|p#$Mutation_14923| $t3)) 0) (= (|l#Vec_1349| (|p#$Mutation_14923| $t5)) 0)) (and (= (|l#Vec_1349| (|p#$Mutation_4742| $t7)) 0) (= (ControlFlow 0 22650) 22680))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 26676) 22650) anon0_correct)))
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
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-datatypes ((T@$42_TestReferences_WithdrawalCapability 0)) ((($42_TestReferences_WithdrawalCapability (|$account_address#$42_TestReferences_WithdrawalCapability| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestReferences_WithdrawalCapability| 0)
(declare-datatypes ((T@$Memory_18412 0)) ((($Memory_18412 (|domain#$Memory_18412| |T@[Int]Bool|) (|contents#$Memory_18412| |T@[Int]$42_TestReferences_WithdrawalCapability|) ) ) ))
(declare-datatypes ((T@$42_TestReferences_T 0)) ((($42_TestReferences_T (|$a#$42_TestReferences_T| Int) ) ) ))
(declare-sort |T@[Int]$42_TestReferences_T| 0)
(declare-datatypes ((T@Vec_11640 0)) (((Vec_11640 (|v#Vec_11640| |T@[Int]$42_TestReferences_T|) (|l#Vec_11640| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14923 0)) ((($Mutation_14923 (|l#$Mutation_14923| T@$Location) (|p#$Mutation_14923| T@Vec_1349) (|v#$Mutation_14923| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_13298 0)) ((($Mutation_13298 (|l#$Mutation_13298| T@$Location) (|p#$Mutation_13298| T@Vec_1349) (|v#$Mutation_13298| T@$42_TestReferences_T) ) ) ))
(declare-datatypes ((T@$Mutation_12283 0)) ((($Mutation_12283 (|l#$Mutation_12283| T@$Location) (|p#$Mutation_12283| T@Vec_1349) (|v#$Mutation_12283| T@Vec_11640) ) ) ))
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
(declare-fun |$IsEqual'vec'$42_TestReferences_T''| (T@Vec_11640 T@Vec_11640) Bool)
(declare-fun InRangeVec_9132 (T@Vec_11640 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestReferences_T_| (|T@[Int]$42_TestReferences_T| Int) T@$42_TestReferences_T)
(declare-fun |$IsValid'vec'$42_TestReferences_T''| (T@Vec_11640) Bool)
(declare-fun |$IsValid'$42_TestReferences_T'| (T@$42_TestReferences_T) Bool)
(declare-fun |$IndexOfVec'$42_TestReferences_T'| (T@Vec_11640 T@$42_TestReferences_T) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_1349 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'$42_TestReferences_WithdrawalCapability'| (T@$42_TestReferences_WithdrawalCapability) Bool)
(declare-fun IndexOfVec_11640 (T@Vec_11640 T@$42_TestReferences_T) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]$42_TestReferences_T| |T@[Int]$42_TestReferences_T| Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#3| (Int Int |T@[Int]$42_TestReferences_T| Int Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]$42_TestReferences_T| |T@[Int]$42_TestReferences_T| Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |referencesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |referencesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |referencesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |referencesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |referencesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |referencesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |referencesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |referencesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_11640) (v2 T@Vec_11640) ) (! (= (|$IsEqual'vec'$42_TestReferences_T''| v1 v2)  (and (= (|l#Vec_11640| v1) (|l#Vec_11640| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_9132 v1 i@@0) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v1) i@@0) (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v2) i@@0)))
 :qid |referencesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |referencesdefaultz3bpl.613:46|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$42_TestReferences_T''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_11640) ) (! (= (|$IsValid'vec'$42_TestReferences_T''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_11640| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_9132 v@@4 i@@1) (|$IsValid'$42_TestReferences_T'| (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@4) i@@1)))
 :qid |referencesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |referencesdefaultz3bpl.619:46|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$42_TestReferences_T''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_11640) (e T@$42_TestReferences_T) ) (! (let ((i@@2 (|$IndexOfVec'$42_TestReferences_T'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_9132 v@@5 i@@3)) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) i@@3) e))
 :qid |referencesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_9132 v@@5 i@@2)) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) j) e)))
 :qid |referencesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |referencesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$42_TestReferences_T'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |referencesdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |referencesdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |referencesdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |referencesdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |referencesdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |referencesdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |referencesdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_1349| v1@@1) (|l#Vec_1349| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@1) i@@8)))
 :qid |referencesdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |referencesdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@8) i@@9)))
 :qid |referencesdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |referencesdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) i@@11) e@@1))
 :qid |referencesdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) j@@1) e@@1)))
 :qid |referencesdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |referencesdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |referencesdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_1349) (v2@@3 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |referencesdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |referencesdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |referencesdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestReferences_T) ) (! (= (|$IsValid'$42_TestReferences_T'| s) (|$IsValid'u64'| (|$a#$42_TestReferences_T| s)))
 :qid |referencesdefaultz3bpl.1294:41|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestReferences_T'| s))
)))
(assert (forall ((s@@0 T@$42_TestReferences_WithdrawalCapability) ) (! (= (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0) (|$IsValid'address'| (|$account_address#$42_TestReferences_WithdrawalCapability| s@@0)))
 :qid |referencesdefaultz3bpl.1307:60|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0))
)))
(assert (forall ((v@@10 T@Vec_11640) (i@@12 Int) ) (! (= (InRangeVec_9132 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_11640| v@@10))))
 :qid |referencesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_9132 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_1349) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_1349| v@@11))))
 :qid |referencesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_11640) (e@@2 T@$42_TestReferences_T) ) (! (let ((i@@14 (IndexOfVec_11640 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_9132 v@@12 i@@15) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) i@@15) e@@2))
 :qid |referencesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_9132 v@@12 i@@14) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) j@@2) e@@2)))
 :qid |referencesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |referencesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_11640 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_1349) (e@@3 Int) ) (! (let ((i@@16 (IndexOfVec_1349 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_4118 v@@13 i@@17) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@17) e@@3))
 :qid |referencesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_4118 v@@13 i@@16) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) j@@3) e@@3)))
 :qid |referencesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |referencesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |referencesdefaultz3bpl.275:54|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]$42_TestReferences_T|) (|l#4| |T@[Int]$42_TestReferences_T|) (|l#5| Int) (|l#6| T@$42_TestReferences_T) (i@@19 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]$42_TestReferences_T_| |l#3| i@@19) (|Select__T@[Int]$42_TestReferences_T_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |referencesdefaultz3bpl.73:19|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]$42_TestReferences_T|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$42_TestReferences_T) (i@@20 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]$42_TestReferences_T_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |referencesdefaultz3bpl.82:30|
 :skolemid |46|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$42_TestReferences_T|) (|l#4@@1| |T@[Int]$42_TestReferences_T|) (|l#5@@1| Int) (|l#6@@0| T@$42_TestReferences_T) (j@@4 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]$42_TestReferences_T_| |l#3@@1| j@@4) (|Select__T@[Int]$42_TestReferences_T_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |referencesdefaultz3bpl.63:20|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |referencesdefaultz3bpl.73:19|
 :skolemid |48|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |referencesdefaultz3bpl.82:30|
 :skolemid |49|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |referencesdefaultz3bpl.63:20|
 :skolemid |50|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t4@0 () T@$Mutation_4742)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@2| () T@$Mutation_4742)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun $t0@0 () T@$Mutation_14923)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$m'@1| () T@$Mutation_14923)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'vec'u64''@1| () T@Vec_1349)
(declare-fun $t2@0 () T@Vec_1349)
(declare-fun $abort_code@2 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t6@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@0| () T@$Mutation_4742)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$m'@0| () T@$Mutation_14923)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$v@1| () T@Vec_1349)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@1| () T@$Mutation_4742)
(declare-fun _$t0 () T@$Mutation_14923)
(declare-fun $abort_code@0 () Int)
(declare-fun |$temp_0'vec'u64''@0| () T@Vec_1349)
(declare-fun $t1 () T@$Mutation_4742)
(declare-fun $t4 () T@$Mutation_4742)
(push 1)
(set-info :boogie-vc-id $42_TestReferences_mutate_vector_param$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 27157) (let ((anon7_Else_correct  (=> (and (not $abort_flag@1) (= $t4@0 ($Mutation_4742 (|l#$Mutation_4742| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) (|p#$Mutation_4742| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) inline$$AddU64$0$dst@2))) (=> (and (and (= $t0@0 ($Mutation_14923 (|l#$Mutation_14923| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (|p#$Mutation_14923| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (Vec_1349 (|Store__T@[Int]Int_| (|v#Vec_1349| (|v#$Mutation_14923| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|)) (|Select__T@[Int]Int_| (|v#Vec_1349| (|p#$Mutation_4742| $t4@0)) (|l#Vec_1349| (|p#$Mutation_14923| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|))) (|v#$Mutation_4742| $t4@0)) (|l#Vec_1349| (|v#$Mutation_14923| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|))))) (= |$temp_0'vec'u64''@1| (|v#$Mutation_14923| $t0@0))) (and (= |$temp_0'vec'u64''@1| |$temp_0'vec'u64''@1|) (= (ControlFlow 0 23759) (- 0 27618)))) (= (|Select__T@[Int]Int_| (|v#Vec_1349| (|v#$Mutation_14923| $t0@0)) 0) (+ (|Select__T@[Int]Int_| (|v#Vec_1349| $t2@0) 0) 1))))))
(let ((anon7_Then_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 23677) 23773) anon7_Then_correct) (=> (= (ControlFlow 0 23677) 23759) anon7_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t6@0 1) $MAX_U64) (= (ControlFlow 0 23675) 23677)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t6@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t6@0 1)) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 23623) 23773) anon7_Then_correct) (=> (= (ControlFlow 0 23623) 23759) anon7_Else_correct))))))
(let ((anon6_Else_correct  (=> (not $abort_flag@0) (=> (and (and (= |$temp_0'u64'@0| (|v#$Mutation_4742| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|)) (= |$temp_0'u64'@0| |$temp_0'u64'@0|)) (and (= $t6@0 (|v#$Mutation_4742| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|)) (|$IsValid'u64'| 1))) (and (=> (= (ControlFlow 0 23683) 23675) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 23683) 23623) inline$$AddU64$0$anon3_Else_correct))))))
(let ((anon6_Then_correct true))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@0|) (= |inline$$1_Vector_borrow_mut'u64'$0$m'@1| |inline$$1_Vector_borrow_mut'u64'$0$m'@0|))) (and (=> (= (ControlFlow 0 23492) 23793) anon6_Then_correct) (=> (= (ControlFlow 0 23492) 23683) anon6_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_4118 |inline$$1_Vector_borrow_mut'u64'$0$v@1| 0)) (= (ControlFlow 0 23490) 23492)) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|  (=> (and (InRangeVec_4118 |inline$$1_Vector_borrow_mut'u64'$0$v@1| 0) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@1| ($Mutation_4742 (|l#$Mutation_14923| _$t0) (let ((l (|l#Vec_1349| (|p#$Mutation_14923| _$t0))))
(Vec_1349 (|Store__T@[Int]Int_| (|v#Vec_1349| (|p#$Mutation_14923| _$t0)) l 0) (+ l 1))) (|Select__T@[Int]Int_| (|v#Vec_1349| |inline$$1_Vector_borrow_mut'u64'$0$v@1|) 0)))) (=> (and (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@1|) (= |inline$$1_Vector_borrow_mut'u64'$0$m'@1| _$t0))) (and (=> (= (ControlFlow 0 23440) 23793) anon6_Then_correct) (=> (= (ControlFlow 0 23440) 23683) anon6_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$0$v@1| (|v#$Mutation_14923| _$t0)) (and (=> (= (ControlFlow 0 23410) 23490) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 23410) 23440) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|)))))
(let ((anon0$1_correct  (=> (= (|l#$Mutation_14923| _$t0) ($Param 0)) (=> (and (|$IsValid'vec'u64''| (|v#$Mutation_14923| _$t0)) (= $t2@0 (|v#$Mutation_14923| _$t0))) (=> (and (and (= |$temp_0'vec'u64''@0| (|v#$Mutation_14923| _$t0)) (= |$temp_0'vec'u64''@0| |$temp_0'vec'u64''@0|)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 23500) 23410))) |inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|)))))
(let ((anon0_correct  (=> (= (|l#Vec_1349| (|p#$Mutation_4742| $t1)) 0) (=> (and (= (|l#Vec_1349| (|p#$Mutation_4742| $t4)) 0) (= (ControlFlow 0 23268) 23500)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 27157) 23268) anon0_correct)))
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
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-datatypes ((T@$42_TestReferences_WithdrawalCapability 0)) ((($42_TestReferences_WithdrawalCapability (|$account_address#$42_TestReferences_WithdrawalCapability| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestReferences_WithdrawalCapability| 0)
(declare-datatypes ((T@$Memory_18412 0)) ((($Memory_18412 (|domain#$Memory_18412| |T@[Int]Bool|) (|contents#$Memory_18412| |T@[Int]$42_TestReferences_WithdrawalCapability|) ) ) ))
(declare-datatypes ((T@$42_TestReferences_T 0)) ((($42_TestReferences_T (|$a#$42_TestReferences_T| Int) ) ) ))
(declare-sort |T@[Int]$42_TestReferences_T| 0)
(declare-datatypes ((T@Vec_11640 0)) (((Vec_11640 (|v#Vec_11640| |T@[Int]$42_TestReferences_T|) (|l#Vec_11640| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14923 0)) ((($Mutation_14923 (|l#$Mutation_14923| T@$Location) (|p#$Mutation_14923| T@Vec_1349) (|v#$Mutation_14923| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_13298 0)) ((($Mutation_13298 (|l#$Mutation_13298| T@$Location) (|p#$Mutation_13298| T@Vec_1349) (|v#$Mutation_13298| T@$42_TestReferences_T) ) ) ))
(declare-datatypes ((T@$Mutation_12283 0)) ((($Mutation_12283 (|l#$Mutation_12283| T@$Location) (|p#$Mutation_12283| T@Vec_1349) (|v#$Mutation_12283| T@Vec_11640) ) ) ))
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
(declare-fun |$IsEqual'vec'$42_TestReferences_T''| (T@Vec_11640 T@Vec_11640) Bool)
(declare-fun InRangeVec_9132 (T@Vec_11640 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestReferences_T_| (|T@[Int]$42_TestReferences_T| Int) T@$42_TestReferences_T)
(declare-fun |$IsValid'vec'$42_TestReferences_T''| (T@Vec_11640) Bool)
(declare-fun |$IsValid'$42_TestReferences_T'| (T@$42_TestReferences_T) Bool)
(declare-fun |$IndexOfVec'$42_TestReferences_T'| (T@Vec_11640 T@$42_TestReferences_T) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_1349 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'$42_TestReferences_WithdrawalCapability'| (T@$42_TestReferences_WithdrawalCapability) Bool)
(declare-fun IndexOfVec_11640 (T@Vec_11640 T@$42_TestReferences_T) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]$42_TestReferences_T| |T@[Int]$42_TestReferences_T| Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#3| (Int Int |T@[Int]$42_TestReferences_T| Int Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]$42_TestReferences_T| |T@[Int]$42_TestReferences_T| Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |referencesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |referencesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |referencesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |referencesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |referencesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |referencesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |referencesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |referencesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_11640) (v2 T@Vec_11640) ) (! (= (|$IsEqual'vec'$42_TestReferences_T''| v1 v2)  (and (= (|l#Vec_11640| v1) (|l#Vec_11640| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_9132 v1 i@@0) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v1) i@@0) (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v2) i@@0)))
 :qid |referencesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |referencesdefaultz3bpl.613:46|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$42_TestReferences_T''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_11640) ) (! (= (|$IsValid'vec'$42_TestReferences_T''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_11640| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_9132 v@@4 i@@1) (|$IsValid'$42_TestReferences_T'| (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@4) i@@1)))
 :qid |referencesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |referencesdefaultz3bpl.619:46|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$42_TestReferences_T''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_11640) (e T@$42_TestReferences_T) ) (! (let ((i@@2 (|$IndexOfVec'$42_TestReferences_T'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_9132 v@@5 i@@3)) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) i@@3) e))
 :qid |referencesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_9132 v@@5 i@@2)) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) j) e)))
 :qid |referencesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |referencesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$42_TestReferences_T'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |referencesdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |referencesdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |referencesdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |referencesdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |referencesdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |referencesdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |referencesdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_1349| v1@@1) (|l#Vec_1349| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@1) i@@8)))
 :qid |referencesdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |referencesdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@8) i@@9)))
 :qid |referencesdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |referencesdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) i@@11) e@@1))
 :qid |referencesdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) j@@1) e@@1)))
 :qid |referencesdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |referencesdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |referencesdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_1349) (v2@@3 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |referencesdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |referencesdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |referencesdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestReferences_T) ) (! (= (|$IsValid'$42_TestReferences_T'| s) (|$IsValid'u64'| (|$a#$42_TestReferences_T| s)))
 :qid |referencesdefaultz3bpl.1294:41|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestReferences_T'| s))
)))
(assert (forall ((s@@0 T@$42_TestReferences_WithdrawalCapability) ) (! (= (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0) (|$IsValid'address'| (|$account_address#$42_TestReferences_WithdrawalCapability| s@@0)))
 :qid |referencesdefaultz3bpl.1307:60|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0))
)))
(assert (forall ((v@@10 T@Vec_11640) (i@@12 Int) ) (! (= (InRangeVec_9132 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_11640| v@@10))))
 :qid |referencesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_9132 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_1349) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_1349| v@@11))))
 :qid |referencesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_11640) (e@@2 T@$42_TestReferences_T) ) (! (let ((i@@14 (IndexOfVec_11640 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_9132 v@@12 i@@15) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) i@@15) e@@2))
 :qid |referencesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_9132 v@@12 i@@14) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) j@@2) e@@2)))
 :qid |referencesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |referencesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_11640 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_1349) (e@@3 Int) ) (! (let ((i@@16 (IndexOfVec_1349 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_4118 v@@13 i@@17) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@17) e@@3))
 :qid |referencesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_4118 v@@13 i@@16) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) j@@3) e@@3)))
 :qid |referencesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |referencesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |referencesdefaultz3bpl.275:54|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]$42_TestReferences_T|) (|l#4| |T@[Int]$42_TestReferences_T|) (|l#5| Int) (|l#6| T@$42_TestReferences_T) (i@@19 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]$42_TestReferences_T_| |l#3| i@@19) (|Select__T@[Int]$42_TestReferences_T_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |referencesdefaultz3bpl.73:19|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]$42_TestReferences_T|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$42_TestReferences_T) (i@@20 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]$42_TestReferences_T_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |referencesdefaultz3bpl.82:30|
 :skolemid |46|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$42_TestReferences_T|) (|l#4@@1| |T@[Int]$42_TestReferences_T|) (|l#5@@1| Int) (|l#6@@0| T@$42_TestReferences_T) (j@@4 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]$42_TestReferences_T_| |l#3@@1| j@@4) (|Select__T@[Int]$42_TestReferences_T_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |referencesdefaultz3bpl.63:20|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |referencesdefaultz3bpl.73:19|
 :skolemid |48|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |referencesdefaultz3bpl.82:30|
 :skolemid |49|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |referencesdefaultz3bpl.63:20|
 :skolemid |50|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () T@$42_TestReferences_T)
(declare-fun $t1@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestReferences_ref_param$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 27649) (let ((anon0$1_correct  (=> (|$IsValid'$42_TestReferences_T'| _$t0) (=> (and (and (= _$t0 _$t0) (= $t1@0 (|$a#$42_TestReferences_T| _$t0))) (and (= $t1@0 $t1@0) (= (ControlFlow 0 23951) (- 0 27714)))) (= $t1@0 (|$a#$42_TestReferences_T| _$t0))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 27649) 23951) anon0$1_correct)))
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
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-datatypes ((T@$42_TestReferences_WithdrawalCapability 0)) ((($42_TestReferences_WithdrawalCapability (|$account_address#$42_TestReferences_WithdrawalCapability| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestReferences_WithdrawalCapability| 0)
(declare-datatypes ((T@$Memory_18412 0)) ((($Memory_18412 (|domain#$Memory_18412| |T@[Int]Bool|) (|contents#$Memory_18412| |T@[Int]$42_TestReferences_WithdrawalCapability|) ) ) ))
(declare-datatypes ((T@$42_TestReferences_T 0)) ((($42_TestReferences_T (|$a#$42_TestReferences_T| Int) ) ) ))
(declare-sort |T@[Int]$42_TestReferences_T| 0)
(declare-datatypes ((T@Vec_11640 0)) (((Vec_11640 (|v#Vec_11640| |T@[Int]$42_TestReferences_T|) (|l#Vec_11640| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14923 0)) ((($Mutation_14923 (|l#$Mutation_14923| T@$Location) (|p#$Mutation_14923| T@Vec_1349) (|v#$Mutation_14923| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_13298 0)) ((($Mutation_13298 (|l#$Mutation_13298| T@$Location) (|p#$Mutation_13298| T@Vec_1349) (|v#$Mutation_13298| T@$42_TestReferences_T) ) ) ))
(declare-datatypes ((T@$Mutation_12283 0)) ((($Mutation_12283 (|l#$Mutation_12283| T@$Location) (|p#$Mutation_12283| T@Vec_1349) (|v#$Mutation_12283| T@Vec_11640) ) ) ))
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
(declare-fun |$IsEqual'vec'$42_TestReferences_T''| (T@Vec_11640 T@Vec_11640) Bool)
(declare-fun InRangeVec_9132 (T@Vec_11640 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestReferences_T_| (|T@[Int]$42_TestReferences_T| Int) T@$42_TestReferences_T)
(declare-fun |$IsValid'vec'$42_TestReferences_T''| (T@Vec_11640) Bool)
(declare-fun |$IsValid'$42_TestReferences_T'| (T@$42_TestReferences_T) Bool)
(declare-fun |$IndexOfVec'$42_TestReferences_T'| (T@Vec_11640 T@$42_TestReferences_T) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_1349 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'$42_TestReferences_WithdrawalCapability'| (T@$42_TestReferences_WithdrawalCapability) Bool)
(declare-fun IndexOfVec_11640 (T@Vec_11640 T@$42_TestReferences_T) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]$42_TestReferences_T| |T@[Int]$42_TestReferences_T| Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#3| (Int Int |T@[Int]$42_TestReferences_T| Int Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]$42_TestReferences_T| |T@[Int]$42_TestReferences_T| Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |referencesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |referencesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |referencesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |referencesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |referencesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |referencesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |referencesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |referencesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_11640) (v2 T@Vec_11640) ) (! (= (|$IsEqual'vec'$42_TestReferences_T''| v1 v2)  (and (= (|l#Vec_11640| v1) (|l#Vec_11640| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_9132 v1 i@@0) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v1) i@@0) (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v2) i@@0)))
 :qid |referencesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |referencesdefaultz3bpl.613:46|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$42_TestReferences_T''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_11640) ) (! (= (|$IsValid'vec'$42_TestReferences_T''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_11640| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_9132 v@@4 i@@1) (|$IsValid'$42_TestReferences_T'| (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@4) i@@1)))
 :qid |referencesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |referencesdefaultz3bpl.619:46|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$42_TestReferences_T''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_11640) (e T@$42_TestReferences_T) ) (! (let ((i@@2 (|$IndexOfVec'$42_TestReferences_T'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_9132 v@@5 i@@3)) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) i@@3) e))
 :qid |referencesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_9132 v@@5 i@@2)) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) j) e)))
 :qid |referencesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |referencesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$42_TestReferences_T'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |referencesdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |referencesdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |referencesdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |referencesdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |referencesdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |referencesdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |referencesdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_1349| v1@@1) (|l#Vec_1349| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@1) i@@8)))
 :qid |referencesdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |referencesdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@8) i@@9)))
 :qid |referencesdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |referencesdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) i@@11) e@@1))
 :qid |referencesdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) j@@1) e@@1)))
 :qid |referencesdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |referencesdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |referencesdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_1349) (v2@@3 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |referencesdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |referencesdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |referencesdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestReferences_T) ) (! (= (|$IsValid'$42_TestReferences_T'| s) (|$IsValid'u64'| (|$a#$42_TestReferences_T| s)))
 :qid |referencesdefaultz3bpl.1294:41|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestReferences_T'| s))
)))
(assert (forall ((s@@0 T@$42_TestReferences_WithdrawalCapability) ) (! (= (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0) (|$IsValid'address'| (|$account_address#$42_TestReferences_WithdrawalCapability| s@@0)))
 :qid |referencesdefaultz3bpl.1307:60|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0))
)))
(assert (forall ((v@@10 T@Vec_11640) (i@@12 Int) ) (! (= (InRangeVec_9132 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_11640| v@@10))))
 :qid |referencesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_9132 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_1349) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_1349| v@@11))))
 :qid |referencesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_11640) (e@@2 T@$42_TestReferences_T) ) (! (let ((i@@14 (IndexOfVec_11640 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_9132 v@@12 i@@15) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) i@@15) e@@2))
 :qid |referencesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_9132 v@@12 i@@14) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) j@@2) e@@2)))
 :qid |referencesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |referencesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_11640 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_1349) (e@@3 Int) ) (! (let ((i@@16 (IndexOfVec_1349 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_4118 v@@13 i@@17) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@17) e@@3))
 :qid |referencesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_4118 v@@13 i@@16) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) j@@3) e@@3)))
 :qid |referencesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |referencesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |referencesdefaultz3bpl.275:54|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]$42_TestReferences_T|) (|l#4| |T@[Int]$42_TestReferences_T|) (|l#5| Int) (|l#6| T@$42_TestReferences_T) (i@@19 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]$42_TestReferences_T_| |l#3| i@@19) (|Select__T@[Int]$42_TestReferences_T_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |referencesdefaultz3bpl.73:19|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]$42_TestReferences_T|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$42_TestReferences_T) (i@@20 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]$42_TestReferences_T_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |referencesdefaultz3bpl.82:30|
 :skolemid |46|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$42_TestReferences_T|) (|l#4@@1| |T@[Int]$42_TestReferences_T|) (|l#5@@1| Int) (|l#6@@0| T@$42_TestReferences_T) (j@@4 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]$42_TestReferences_T_| |l#3@@1| j@@4) (|Select__T@[Int]$42_TestReferences_T_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |referencesdefaultz3bpl.63:20|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |referencesdefaultz3bpl.73:19|
 :skolemid |48|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |referencesdefaultz3bpl.82:30|
 :skolemid |49|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |referencesdefaultz3bpl.63:20|
 :skolemid |50|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_length'$42_TestReferences_T'$0$l@1| () Int)
(declare-fun _$t0 () T@Vec_11640)
(push 1)
(set-info :boogie-vc-id $42_TestReferences_ref_param_vec$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 27731) (let ((anon4_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_length'$42_TestReferences_T'$0$l@1| |inline$$1_Vector_length'$42_TestReferences_T'$0$l@1|) (= (ControlFlow 0 24097) (- 0 27832))) (= |inline$$1_Vector_length'$42_TestReferences_T'$0$l@1| (|l#Vec_11640| _$t0))))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_length'$42_TestReferences_T'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'$42_TestReferences_T'$0$l@1| (|l#Vec_11640| _$t0)) (and (=> (= (ControlFlow 0 24063) 24115) anon4_Then_correct) (=> (= (ControlFlow 0 24063) 24097) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'$42_TestReferences_T''| _$t0) (=> (and (= _$t0 _$t0) (= (ControlFlow 0 24069) 24063)) |inline$$1_Vector_length'$42_TestReferences_T'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (ControlFlow 0 27731) 24069) anon0$1_correct)))
anon0_correct))))))
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
(declare-datatypes ((T@$42_TestReferences_WithdrawalCapability 0)) ((($42_TestReferences_WithdrawalCapability (|$account_address#$42_TestReferences_WithdrawalCapability| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestReferences_WithdrawalCapability| 0)
(declare-datatypes ((T@$Memory_18412 0)) ((($Memory_18412 (|domain#$Memory_18412| |T@[Int]Bool|) (|contents#$Memory_18412| |T@[Int]$42_TestReferences_WithdrawalCapability|) ) ) ))
(declare-datatypes ((T@$42_TestReferences_T 0)) ((($42_TestReferences_T (|$a#$42_TestReferences_T| Int) ) ) ))
(declare-sort |T@[Int]$42_TestReferences_T| 0)
(declare-datatypes ((T@Vec_11640 0)) (((Vec_11640 (|v#Vec_11640| |T@[Int]$42_TestReferences_T|) (|l#Vec_11640| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14923 0)) ((($Mutation_14923 (|l#$Mutation_14923| T@$Location) (|p#$Mutation_14923| T@Vec_1349) (|v#$Mutation_14923| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_13298 0)) ((($Mutation_13298 (|l#$Mutation_13298| T@$Location) (|p#$Mutation_13298| T@Vec_1349) (|v#$Mutation_13298| T@$42_TestReferences_T) ) ) ))
(declare-datatypes ((T@$Mutation_12283 0)) ((($Mutation_12283 (|l#$Mutation_12283| T@$Location) (|p#$Mutation_12283| T@Vec_1349) (|v#$Mutation_12283| T@Vec_11640) ) ) ))
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
(declare-fun |$IsEqual'vec'$42_TestReferences_T''| (T@Vec_11640 T@Vec_11640) Bool)
(declare-fun InRangeVec_9132 (T@Vec_11640 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestReferences_T_| (|T@[Int]$42_TestReferences_T| Int) T@$42_TestReferences_T)
(declare-fun |$IsValid'vec'$42_TestReferences_T''| (T@Vec_11640) Bool)
(declare-fun |$IsValid'$42_TestReferences_T'| (T@$42_TestReferences_T) Bool)
(declare-fun |$IndexOfVec'$42_TestReferences_T'| (T@Vec_11640 T@$42_TestReferences_T) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_1349 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'$42_TestReferences_WithdrawalCapability'| (T@$42_TestReferences_WithdrawalCapability) Bool)
(declare-fun IndexOfVec_11640 (T@Vec_11640 T@$42_TestReferences_T) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]$42_TestReferences_T| |T@[Int]$42_TestReferences_T| Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#3| (Int Int |T@[Int]$42_TestReferences_T| Int Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]$42_TestReferences_T| |T@[Int]$42_TestReferences_T| Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |referencesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |referencesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |referencesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |referencesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |referencesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |referencesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |referencesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |referencesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_11640) (v2 T@Vec_11640) ) (! (= (|$IsEqual'vec'$42_TestReferences_T''| v1 v2)  (and (= (|l#Vec_11640| v1) (|l#Vec_11640| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_9132 v1 i@@0) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v1) i@@0) (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v2) i@@0)))
 :qid |referencesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |referencesdefaultz3bpl.613:46|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$42_TestReferences_T''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_11640) ) (! (= (|$IsValid'vec'$42_TestReferences_T''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_11640| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_9132 v@@4 i@@1) (|$IsValid'$42_TestReferences_T'| (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@4) i@@1)))
 :qid |referencesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |referencesdefaultz3bpl.619:46|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$42_TestReferences_T''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_11640) (e T@$42_TestReferences_T) ) (! (let ((i@@2 (|$IndexOfVec'$42_TestReferences_T'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_9132 v@@5 i@@3)) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) i@@3) e))
 :qid |referencesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_9132 v@@5 i@@2)) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) j) e)))
 :qid |referencesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |referencesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$42_TestReferences_T'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |referencesdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |referencesdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |referencesdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |referencesdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |referencesdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |referencesdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |referencesdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_1349| v1@@1) (|l#Vec_1349| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@1) i@@8)))
 :qid |referencesdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |referencesdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@8) i@@9)))
 :qid |referencesdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |referencesdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) i@@11) e@@1))
 :qid |referencesdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) j@@1) e@@1)))
 :qid |referencesdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |referencesdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |referencesdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_1349) (v2@@3 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |referencesdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |referencesdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |referencesdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestReferences_T) ) (! (= (|$IsValid'$42_TestReferences_T'| s) (|$IsValid'u64'| (|$a#$42_TestReferences_T| s)))
 :qid |referencesdefaultz3bpl.1294:41|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestReferences_T'| s))
)))
(assert (forall ((s@@0 T@$42_TestReferences_WithdrawalCapability) ) (! (= (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0) (|$IsValid'address'| (|$account_address#$42_TestReferences_WithdrawalCapability| s@@0)))
 :qid |referencesdefaultz3bpl.1307:60|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0))
)))
(assert (forall ((v@@10 T@Vec_11640) (i@@12 Int) ) (! (= (InRangeVec_9132 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_11640| v@@10))))
 :qid |referencesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_9132 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_1349) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_1349| v@@11))))
 :qid |referencesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_11640) (e@@2 T@$42_TestReferences_T) ) (! (let ((i@@14 (IndexOfVec_11640 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_9132 v@@12 i@@15) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) i@@15) e@@2))
 :qid |referencesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_9132 v@@12 i@@14) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) j@@2) e@@2)))
 :qid |referencesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |referencesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_11640 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_1349) (e@@3 Int) ) (! (let ((i@@16 (IndexOfVec_1349 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_4118 v@@13 i@@17) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@17) e@@3))
 :qid |referencesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_4118 v@@13 i@@16) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) j@@3) e@@3)))
 :qid |referencesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |referencesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |referencesdefaultz3bpl.275:54|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]$42_TestReferences_T|) (|l#4| |T@[Int]$42_TestReferences_T|) (|l#5| Int) (|l#6| T@$42_TestReferences_T) (i@@19 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]$42_TestReferences_T_| |l#3| i@@19) (|Select__T@[Int]$42_TestReferences_T_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |referencesdefaultz3bpl.73:19|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]$42_TestReferences_T|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$42_TestReferences_T) (i@@20 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]$42_TestReferences_T_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |referencesdefaultz3bpl.82:30|
 :skolemid |46|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$42_TestReferences_T|) (|l#4@@1| |T@[Int]$42_TestReferences_T|) (|l#5@@1| Int) (|l#6@@0| T@$42_TestReferences_T) (j@@4 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]$42_TestReferences_T_| |l#3@@1| j@@4) (|Select__T@[Int]$42_TestReferences_T_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |referencesdefaultz3bpl.63:20|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |referencesdefaultz3bpl.73:19|
 :skolemid |48|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |referencesdefaultz3bpl.82:30|
 :skolemid |49|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |referencesdefaultz3bpl.63:20|
 :skolemid |50|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |inline$$1_Vector_borrow'$42_TestReferences_T'$0$dst@2| () T@$42_TestReferences_T)
(declare-fun _$t0 () T@Vec_11640)
(declare-fun _$t1 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Vector_borrow'$42_TestReferences_T'$0$dst@0| () T@$42_TestReferences_T)
(declare-fun |inline$$1_Vector_borrow'$42_TestReferences_T'$0$dst@1| () T@$42_TestReferences_T)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestReferences_ref_return$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 27851) (let ((anon4_Else_correct  (=> (not $abort_flag@0) (=> (and (= |inline$$1_Vector_borrow'$42_TestReferences_T'$0$dst@2| |inline$$1_Vector_borrow'$42_TestReferences_T'$0$dst@2|) (= (ControlFlow 0 24383) (- 0 28033))) (= |inline$$1_Vector_borrow'$42_TestReferences_T'$0$dst@2| (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| _$t0) _$t1))))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_borrow'$42_TestReferences_T'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'$42_TestReferences_T'$0$dst@2| |inline$$1_Vector_borrow'$42_TestReferences_T'$0$dst@0|)) (and (=> (= (ControlFlow 0 24347) 24401) anon4_Then_correct) (=> (= (ControlFlow 0 24347) 24383) anon4_Else_correct))))))
(let ((|inline$$1_Vector_borrow'$42_TestReferences_T'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_9132 _$t0 _$t1)) (= (ControlFlow 0 24345) 24347)) |inline$$1_Vector_borrow'$42_TestReferences_T'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'$42_TestReferences_T'$0$anon3_Else_correct|  (=> (InRangeVec_9132 _$t0 _$t1) (=> (and (and (= |inline$$1_Vector_borrow'$42_TestReferences_T'$0$dst@1| (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| _$t0) _$t1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow'$42_TestReferences_T'$0$dst@2| |inline$$1_Vector_borrow'$42_TestReferences_T'$0$dst@1|))) (and (=> (= (ControlFlow 0 24295) 24401) anon4_Then_correct) (=> (= (ControlFlow 0 24295) 24383) anon4_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'vec'$42_TestReferences_T''| _$t0) (|$IsValid'u64'| _$t1)) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (=> (= (ControlFlow 0 24353) 24345) |inline$$1_Vector_borrow'$42_TestReferences_T'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 24353) 24295) |inline$$1_Vector_borrow'$42_TestReferences_T'$0$anon3_Else_correct|)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 27851) 24353) anon0$1_correct)))
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
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-datatypes ((T@$42_TestReferences_WithdrawalCapability 0)) ((($42_TestReferences_WithdrawalCapability (|$account_address#$42_TestReferences_WithdrawalCapability| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestReferences_WithdrawalCapability| 0)
(declare-datatypes ((T@$Memory_18412 0)) ((($Memory_18412 (|domain#$Memory_18412| |T@[Int]Bool|) (|contents#$Memory_18412| |T@[Int]$42_TestReferences_WithdrawalCapability|) ) ) ))
(declare-datatypes ((T@$42_TestReferences_T 0)) ((($42_TestReferences_T (|$a#$42_TestReferences_T| Int) ) ) ))
(declare-sort |T@[Int]$42_TestReferences_T| 0)
(declare-datatypes ((T@Vec_11640 0)) (((Vec_11640 (|v#Vec_11640| |T@[Int]$42_TestReferences_T|) (|l#Vec_11640| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14923 0)) ((($Mutation_14923 (|l#$Mutation_14923| T@$Location) (|p#$Mutation_14923| T@Vec_1349) (|v#$Mutation_14923| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_13298 0)) ((($Mutation_13298 (|l#$Mutation_13298| T@$Location) (|p#$Mutation_13298| T@Vec_1349) (|v#$Mutation_13298| T@$42_TestReferences_T) ) ) ))
(declare-datatypes ((T@$Mutation_12283 0)) ((($Mutation_12283 (|l#$Mutation_12283| T@$Location) (|p#$Mutation_12283| T@Vec_1349) (|v#$Mutation_12283| T@Vec_11640) ) ) ))
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
(declare-fun |$IsEqual'vec'$42_TestReferences_T''| (T@Vec_11640 T@Vec_11640) Bool)
(declare-fun InRangeVec_9132 (T@Vec_11640 Int) Bool)
(declare-fun |Select__T@[Int]$42_TestReferences_T_| (|T@[Int]$42_TestReferences_T| Int) T@$42_TestReferences_T)
(declare-fun |$IsValid'vec'$42_TestReferences_T''| (T@Vec_11640) Bool)
(declare-fun |$IsValid'$42_TestReferences_T'| (T@$42_TestReferences_T) Bool)
(declare-fun |$IndexOfVec'$42_TestReferences_T'| (T@Vec_11640 T@$42_TestReferences_T) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_1349 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun |$IsValid'$42_TestReferences_WithdrawalCapability'| (T@$42_TestReferences_WithdrawalCapability) Bool)
(declare-fun IndexOfVec_11640 (T@Vec_11640 T@$42_TestReferences_T) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]$42_TestReferences_T| |T@[Int]$42_TestReferences_T| Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#3| (Int Int |T@[Int]$42_TestReferences_T| Int Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]$42_TestReferences_T| |T@[Int]$42_TestReferences_T| Int T@$42_TestReferences_T) |T@[Int]$42_TestReferences_T|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |referencesdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |referencesdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |referencesdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |referencesdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |referencesdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |referencesdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |referencesdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |referencesdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_11640) (v2 T@Vec_11640) ) (! (= (|$IsEqual'vec'$42_TestReferences_T''| v1 v2)  (and (= (|l#Vec_11640| v1) (|l#Vec_11640| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_9132 v1 i@@0) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v1) i@@0) (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v2) i@@0)))
 :qid |referencesdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |referencesdefaultz3bpl.613:46|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$42_TestReferences_T''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_11640) ) (! (= (|$IsValid'vec'$42_TestReferences_T''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_11640| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_9132 v@@4 i@@1) (|$IsValid'$42_TestReferences_T'| (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@4) i@@1)))
 :qid |referencesdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |referencesdefaultz3bpl.619:46|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$42_TestReferences_T''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_11640) (e T@$42_TestReferences_T) ) (! (let ((i@@2 (|$IndexOfVec'$42_TestReferences_T'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_9132 v@@5 i@@3)) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) i@@3) e))
 :qid |referencesdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_9132 v@@5 i@@2)) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@5) j) e)))
 :qid |referencesdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |referencesdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$42_TestReferences_T'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |referencesdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |referencesdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |referencesdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |referencesdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |referencesdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |referencesdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |referencesdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_1349| v1@@1) (|l#Vec_1349| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@1) i@@8)))
 :qid |referencesdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |referencesdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@8) i@@9)))
 :qid |referencesdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |referencesdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) i@@11) e@@1))
 :qid |referencesdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@9) j@@1) e@@1)))
 :qid |referencesdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |referencesdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |referencesdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_1349) (v2@@3 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |referencesdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |referencesdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |referencesdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestReferences_T) ) (! (= (|$IsValid'$42_TestReferences_T'| s) (|$IsValid'u64'| (|$a#$42_TestReferences_T| s)))
 :qid |referencesdefaultz3bpl.1294:41|
 :skolemid |42|
 :pattern ( (|$IsValid'$42_TestReferences_T'| s))
)))
(assert (forall ((s@@0 T@$42_TestReferences_WithdrawalCapability) ) (! (= (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0) (|$IsValid'address'| (|$account_address#$42_TestReferences_WithdrawalCapability| s@@0)))
 :qid |referencesdefaultz3bpl.1307:60|
 :skolemid |43|
 :pattern ( (|$IsValid'$42_TestReferences_WithdrawalCapability'| s@@0))
)))
(assert (forall ((v@@10 T@Vec_11640) (i@@12 Int) ) (! (= (InRangeVec_9132 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_11640| v@@10))))
 :qid |referencesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_9132 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_1349) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_1349| v@@11))))
 :qid |referencesdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_11640) (e@@2 T@$42_TestReferences_T) ) (! (let ((i@@14 (IndexOfVec_11640 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_9132 v@@12 i@@15) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) i@@15) e@@2))
 :qid |referencesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_9132 v@@12 i@@14) (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]$42_TestReferences_T_| (|v#Vec_11640| v@@12) j@@2) e@@2)))
 :qid |referencesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |referencesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_11640 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_1349) (e@@3 Int) ) (! (let ((i@@16 (IndexOfVec_1349 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_4118 v@@13 i@@17) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@17) e@@3))
 :qid |referencesdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_4118 v@@13 i@@16) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@13) j@@3) e@@3)))
 :qid |referencesdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |referencesdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |referencesdefaultz3bpl.275:54|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]$42_TestReferences_T|) (|l#4| |T@[Int]$42_TestReferences_T|) (|l#5| Int) (|l#6| T@$42_TestReferences_T) (i@@19 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]$42_TestReferences_T_| |l#3| i@@19) (|Select__T@[Int]$42_TestReferences_T_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |referencesdefaultz3bpl.73:19|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]$42_TestReferences_T|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$42_TestReferences_T) (i@@20 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]$42_TestReferences_T_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |referencesdefaultz3bpl.82:30|
 :skolemid |46|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$42_TestReferences_T|) (|l#4@@1| |T@[Int]$42_TestReferences_T|) (|l#5@@1| Int) (|l#6@@0| T@$42_TestReferences_T) (j@@4 Int) ) (! (= (|Select__T@[Int]$42_TestReferences_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]$42_TestReferences_T_| |l#3@@1| j@@4) (|Select__T@[Int]$42_TestReferences_T_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |referencesdefaultz3bpl.63:20|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]$42_TestReferences_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |referencesdefaultz3bpl.73:19|
 :skolemid |48|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |referencesdefaultz3bpl.82:30|
 :skolemid |49|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |referencesdefaultz3bpl.63:20|
 :skolemid |50|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () T@$42_TestReferences_WithdrawalCapability)
(declare-fun $t1@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestReferences_withdrawal_capability_address$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 28047) (let ((anon0$1_correct  (=> (|$IsValid'$42_TestReferences_WithdrawalCapability'| _$t0) (=> (and (and (= _$t0 _$t0) (= $t1@0 (|$account_address#$42_TestReferences_WithdrawalCapability| _$t0))) (and (= $t1@0 $t1@0) (= (ControlFlow 0 24525) (- 0 28112)))) (= $t1@0 (|$account_address#$42_TestReferences_WithdrawalCapability| _$t0))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 28047) 24525) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(pop 1)
; Valid
