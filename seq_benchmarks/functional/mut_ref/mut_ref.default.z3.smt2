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
(declare-datatypes ((T@Vec_6978 0)) (((Vec_6978 (|v#Vec_6978| |T@[Int]Int|) (|l#Vec_6978| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_R 0)) ((($1_TestMutRef_R (|$value#$1_TestMutRef_R| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_T 0)) ((($1_TestMutRef_T (|$value#$1_TestMutRef_T| Int) ) ) ))
(declare-sort |T@[Int]$1_TestMutRef_T| 0)
(declare-datatypes ((T@Vec_16776 0)) (((Vec_16776 (|v#Vec_16776| |T@[Int]$1_TestMutRef_T|) (|l#Vec_16776| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_V 0)) ((($1_TestMutRef_V (|$is#$1_TestMutRef_V| T@Vec_6978) (|$ts#$1_TestMutRef_V| T@Vec_16776) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_N 0)) ((($1_TestMutRef_N (|$value#$1_TestMutRef_N| Int) (|$t#$1_TestMutRef_N| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_30903 0)) ((($Mutation_30903 (|l#$Mutation_30903| T@$Location) (|p#$Mutation_30903| T@Vec_6978) (|v#$Mutation_30903| T@$1_TestMutRef_R) ) ) ))
(declare-datatypes ((T@$Mutation_26057 0)) ((($Mutation_26057 (|l#$Mutation_26057| T@$Location) (|p#$Mutation_26057| T@Vec_6978) (|v#$Mutation_26057| T@$1_TestMutRef_V) ) ) ))
(declare-datatypes ((T@$Mutation_25002 0)) ((($Mutation_25002 (|l#$Mutation_25002| T@$Location) (|p#$Mutation_25002| T@Vec_6978) (|v#$Mutation_25002| T@$1_TestMutRef_N) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6978) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20968 0)) ((($Mutation_20968 (|l#$Mutation_20968| T@$Location) (|p#$Mutation_20968| T@Vec_6978) (|v#$Mutation_20968| T@Vec_6978) ) ) ))
(declare-datatypes ((T@$Mutation_19343 0)) ((($Mutation_19343 (|l#$Mutation_19343| T@$Location) (|p#$Mutation_19343| T@Vec_6978) (|v#$Mutation_19343| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Mutation_18356 0)) ((($Mutation_18356 (|l#$Mutation_18356| T@$Location) (|p#$Mutation_18356| T@Vec_6978) (|v#$Mutation_18356| T@Vec_16776) ) ) ))
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
(declare-fun |$IsEqual'vec'$1_TestMutRef_T''| (T@Vec_16776 T@Vec_16776) Bool)
(declare-fun InRangeVec_14013 (T@Vec_16776 Int) Bool)
(declare-fun |Select__T@[Int]$1_TestMutRef_T_| (|T@[Int]$1_TestMutRef_T| Int) T@$1_TestMutRef_T)
(declare-fun |$IsValid'vec'$1_TestMutRef_T''| (T@Vec_16776) Bool)
(declare-fun |$IsValid'$1_TestMutRef_T'| (T@$1_TestMutRef_T) Bool)
(declare-fun |$IndexOfVec'$1_TestMutRef_T'| (T@Vec_16776 T@$1_TestMutRef_T) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6978 T@Vec_6978) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6978 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6978) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6978 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6978 T@Vec_6978) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6978) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6978 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6978) T@Vec_6978)
(declare-fun $1_Hash_sha3 (T@Vec_6978) T@Vec_6978)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6978) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6978 T@Vec_6978 T@Vec_6978) Bool)
(declare-fun |$IsValid'$1_TestMutRef_N'| (T@$1_TestMutRef_N) Bool)
(declare-fun |$IsValid'$1_TestMutRef_R'| (T@$1_TestMutRef_R) Bool)
(declare-fun |$IsValid'$1_TestMutRef_V'| (T@$1_TestMutRef_V) Bool)
(declare-fun IndexOfVec_6978 (T@Vec_6978 Int) Int)
(declare-fun IndexOfVec_16776 (T@Vec_16776 T@$1_TestMutRef_T) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]$1_TestMutRef_T| |T@[Int]$1_TestMutRef_T| Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#3| (Int Int |T@[Int]$1_TestMutRef_T| Int Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]$1_TestMutRef_T| |T@[Int]$1_TestMutRef_T| Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |mutrefdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_16776) (v2 T@Vec_16776) ) (! (= (|$IsEqual'vec'$1_TestMutRef_T''| v1 v2)  (and (= (|l#Vec_16776| v1) (|l#Vec_16776| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14013 v1 i@@0) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v1) i@@0) (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v2) i@@0)))
 :qid |mutrefdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |mutrefdefaultz3bpl.613:41|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$1_TestMutRef_T''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_16776) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_16776| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14013 v@@4 i@@1) (|$IsValid'$1_TestMutRef_T'| (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@4) i@@1)))
 :qid |mutrefdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |mutrefdefaultz3bpl.619:41|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_16776) (e T@$1_TestMutRef_T) ) (! (let ((i@@2 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14013 v@@5 i@@3)) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) i@@3) e))
 :qid |mutrefdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14013 v@@5 i@@2)) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) j) e)))
 :qid |mutrefdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |mutrefdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6978) (v2@@0 T@Vec_6978) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6978| v1@@0) (|l#Vec_6978| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6978| v2@@0) i@@4)))
 :qid |mutrefdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |mutrefdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6978) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6978| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6978| v@@6) i@@5)))
 :qid |mutrefdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |mutrefdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6978) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) i@@7) e@@0))
 :qid |mutrefdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) j@@0) e@@0)))
 :qid |mutrefdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |mutrefdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6978) (v2@@1 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6978| v1@@1) (|l#Vec_6978| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6978| v2@@1) i@@8)))
 :qid |mutrefdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |mutrefdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6978) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6978| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6978| v@@8) i@@9)))
 :qid |mutrefdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |mutrefdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6978) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) i@@11) e@@1))
 :qid |mutrefdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) j@@1) e@@1)))
 :qid |mutrefdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |mutrefdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6978) (v2@@2 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |mutrefdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6978) (v2@@3 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |mutrefdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6978) (k2 T@Vec_6978) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6978) (s2 T@Vec_6978) (k1@@0 T@Vec_6978) (k2@@0 T@Vec_6978) (m1 T@Vec_6978) (m2 T@Vec_6978) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefdefaultz3bpl.1297:36|
 :skolemid |42|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefdefaultz3bpl.1311:36|
 :skolemid |43|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefdefaultz3bpl.1324:36|
 :skolemid |44|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefdefaultz3bpl.1340:36|
 :skolemid |45|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 T@Vec_16776) (i@@12 Int) ) (! (= (InRangeVec_14013 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_16776| v@@10))))
 :qid |mutrefdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14013 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6978) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6978| v@@11))))
 :qid |mutrefdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6978) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6978 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) i@@15) e@@2))
 :qid |mutrefdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) j@@2) e@@2)))
 :qid |mutrefdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |mutrefdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6978 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_16776) (e@@3 T@$1_TestMutRef_T) ) (! (let ((i@@16 (IndexOfVec_16776 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_14013 v@@13 i@@17) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) i@@17) e@@3))
 :qid |mutrefdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_14013 v@@13 i@@16) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) j@@3) e@@3)))
 :qid |mutrefdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |mutrefdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_16776 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |mutrefdefaultz3bpl.275:54|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]$1_TestMutRef_T|) (|l#4| |T@[Int]$1_TestMutRef_T|) (|l#5| Int) (|l#6| T@$1_TestMutRef_T) (i@@19 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]$1_TestMutRef_T_| |l#3| i@@19) (|Select__T@[Int]$1_TestMutRef_T_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |mutrefdefaultz3bpl.73:19|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]$1_TestMutRef_T|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$1_TestMutRef_T) (i@@20 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]$1_TestMutRef_T_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |mutrefdefaultz3bpl.82:30|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$1_TestMutRef_T|) (|l#4@@1| |T@[Int]$1_TestMutRef_T|) (|l#5@@1| Int) (|l#6@@0| T@$1_TestMutRef_T) (j@@4 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]$1_TestMutRef_T_| |l#3@@1| j@@4) (|Select__T@[Int]$1_TestMutRef_T_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |mutrefdefaultz3bpl.63:20|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |mutrefdefaultz3bpl.73:19|
 :skolemid |59|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |mutrefdefaultz3bpl.82:30|
 :skolemid |60|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |mutrefdefaultz3bpl.63:20|
 :skolemid |61|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun $t3@0 () T@$Mutation_4742)
(declare-fun $t4@0 () T@$Mutation_4742)
(declare-fun $t3@1 () T@$Mutation_4742)
(declare-fun $t1@0 () Int)
(declare-fun |inline$$1_TestMutRef_identity$0$$temp_0'u64'@1| () Int)
(declare-fun |inline$$1_TestMutRef_identity$0$$temp_0'u64'@2| () Int)
(declare-fun |inline$$1_TestMutRef_identity$0$$temp_0'u64'@3| () Int)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun $t0 () T@$Mutation_4742)
(declare-fun $t3 () T@$Mutation_4742)
(declare-fun $t4 () T@$Mutation_4742)
(push 1)
(set-info :boogie-vc-id $1_TestMutRef_call_identity$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 49184) (let ((anon4_Else_correct  (=> (not false) (=> (and (and (and (= |$temp_0'u64'@0| (|v#$Mutation_4742| $t3@0)) (= |$temp_0'u64'@0| |$temp_0'u64'@0|)) (and (|$IsValid'u64'| 2) (= $t4@0 ($Mutation_4742 (|l#$Mutation_4742| $t3@0) (|p#$Mutation_4742| $t3@0) 2)))) (and (and (= $t3@1 ($Mutation_4742 (|l#$Mutation_4742| $t3@0) (|p#$Mutation_4742| $t3@0) (|v#$Mutation_4742| $t4@0))) (= $t1@0 (|v#$Mutation_4742| $t3@1))) (and (= $t1@0 $t1@0) (= (ControlFlow 0 37359) (- 0 49457))))) (= $t1@0 2)))))
(let ((anon4_Then_correct true))
(let ((inline$$1_TestMutRef_identity$0$anon0_correct  (=> (and (= |inline$$1_TestMutRef_identity$0$$temp_0'u64'@1| (|v#$Mutation_4742| $t3@0)) (= |inline$$1_TestMutRef_identity$0$$temp_0'u64'@1| |inline$$1_TestMutRef_identity$0$$temp_0'u64'@1|)) (=> (and (and (= |inline$$1_TestMutRef_identity$0$$temp_0'u64'@2| (|v#$Mutation_4742| $t3@0)) (= |inline$$1_TestMutRef_identity$0$$temp_0'u64'@2| |inline$$1_TestMutRef_identity$0$$temp_0'u64'@2|)) (and (= |inline$$1_TestMutRef_identity$0$$temp_0'u64'@3| (|v#$Mutation_4742| $t3@0)) (= |inline$$1_TestMutRef_identity$0$$temp_0'u64'@3| |inline$$1_TestMutRef_identity$0$$temp_0'u64'@3|))) (and (=> (= (ControlFlow 0 37285) 37377) anon4_Then_correct) (=> (= (ControlFlow 0 37285) 37359) anon4_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'u64'| 1) (= 1 1)) (and (= $t3@0 ($Mutation_4742 ($Local 1) (Vec_6978 (MapConstVec_4347 DefaultVecElem_4347) 0) 1)) (= (ControlFlow 0 37293) 37285))) inline$$1_TestMutRef_identity$0$anon0_correct)))
(let ((anon0_correct  (=> (and (and (= (|l#Vec_6978| (|p#$Mutation_4742| $t0)) 0) (= (|l#Vec_6978| (|p#$Mutation_4742| $t3)) 0)) (and (= (|l#Vec_6978| (|p#$Mutation_4742| $t4)) 0) (= (ControlFlow 0 37135) 37293))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 49184) 37135) anon0_correct)))
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
(declare-datatypes ((T@Vec_6978 0)) (((Vec_6978 (|v#Vec_6978| |T@[Int]Int|) (|l#Vec_6978| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_R 0)) ((($1_TestMutRef_R (|$value#$1_TestMutRef_R| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_T 0)) ((($1_TestMutRef_T (|$value#$1_TestMutRef_T| Int) ) ) ))
(declare-sort |T@[Int]$1_TestMutRef_T| 0)
(declare-datatypes ((T@Vec_16776 0)) (((Vec_16776 (|v#Vec_16776| |T@[Int]$1_TestMutRef_T|) (|l#Vec_16776| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_V 0)) ((($1_TestMutRef_V (|$is#$1_TestMutRef_V| T@Vec_6978) (|$ts#$1_TestMutRef_V| T@Vec_16776) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_N 0)) ((($1_TestMutRef_N (|$value#$1_TestMutRef_N| Int) (|$t#$1_TestMutRef_N| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_30903 0)) ((($Mutation_30903 (|l#$Mutation_30903| T@$Location) (|p#$Mutation_30903| T@Vec_6978) (|v#$Mutation_30903| T@$1_TestMutRef_R) ) ) ))
(declare-datatypes ((T@$Mutation_26057 0)) ((($Mutation_26057 (|l#$Mutation_26057| T@$Location) (|p#$Mutation_26057| T@Vec_6978) (|v#$Mutation_26057| T@$1_TestMutRef_V) ) ) ))
(declare-datatypes ((T@$Mutation_25002 0)) ((($Mutation_25002 (|l#$Mutation_25002| T@$Location) (|p#$Mutation_25002| T@Vec_6978) (|v#$Mutation_25002| T@$1_TestMutRef_N) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6978) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20968 0)) ((($Mutation_20968 (|l#$Mutation_20968| T@$Location) (|p#$Mutation_20968| T@Vec_6978) (|v#$Mutation_20968| T@Vec_6978) ) ) ))
(declare-datatypes ((T@$Mutation_19343 0)) ((($Mutation_19343 (|l#$Mutation_19343| T@$Location) (|p#$Mutation_19343| T@Vec_6978) (|v#$Mutation_19343| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Mutation_18356 0)) ((($Mutation_18356 (|l#$Mutation_18356| T@$Location) (|p#$Mutation_18356| T@Vec_6978) (|v#$Mutation_18356| T@Vec_16776) ) ) ))
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
(declare-fun |$IsEqual'vec'$1_TestMutRef_T''| (T@Vec_16776 T@Vec_16776) Bool)
(declare-fun InRangeVec_14013 (T@Vec_16776 Int) Bool)
(declare-fun |Select__T@[Int]$1_TestMutRef_T_| (|T@[Int]$1_TestMutRef_T| Int) T@$1_TestMutRef_T)
(declare-fun |$IsValid'vec'$1_TestMutRef_T''| (T@Vec_16776) Bool)
(declare-fun |$IsValid'$1_TestMutRef_T'| (T@$1_TestMutRef_T) Bool)
(declare-fun |$IndexOfVec'$1_TestMutRef_T'| (T@Vec_16776 T@$1_TestMutRef_T) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6978 T@Vec_6978) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6978 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6978) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6978 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6978 T@Vec_6978) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6978) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6978 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6978) T@Vec_6978)
(declare-fun $1_Hash_sha3 (T@Vec_6978) T@Vec_6978)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6978) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6978 T@Vec_6978 T@Vec_6978) Bool)
(declare-fun |$IsValid'$1_TestMutRef_N'| (T@$1_TestMutRef_N) Bool)
(declare-fun |$IsValid'$1_TestMutRef_R'| (T@$1_TestMutRef_R) Bool)
(declare-fun |$IsValid'$1_TestMutRef_V'| (T@$1_TestMutRef_V) Bool)
(declare-fun IndexOfVec_6978 (T@Vec_6978 Int) Int)
(declare-fun IndexOfVec_16776 (T@Vec_16776 T@$1_TestMutRef_T) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]$1_TestMutRef_T| |T@[Int]$1_TestMutRef_T| Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#3| (Int Int |T@[Int]$1_TestMutRef_T| Int Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]$1_TestMutRef_T| |T@[Int]$1_TestMutRef_T| Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |mutrefdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_16776) (v2 T@Vec_16776) ) (! (= (|$IsEqual'vec'$1_TestMutRef_T''| v1 v2)  (and (= (|l#Vec_16776| v1) (|l#Vec_16776| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14013 v1 i@@0) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v1) i@@0) (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v2) i@@0)))
 :qid |mutrefdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |mutrefdefaultz3bpl.613:41|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$1_TestMutRef_T''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_16776) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_16776| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14013 v@@4 i@@1) (|$IsValid'$1_TestMutRef_T'| (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@4) i@@1)))
 :qid |mutrefdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |mutrefdefaultz3bpl.619:41|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_16776) (e T@$1_TestMutRef_T) ) (! (let ((i@@2 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14013 v@@5 i@@3)) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) i@@3) e))
 :qid |mutrefdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14013 v@@5 i@@2)) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) j) e)))
 :qid |mutrefdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |mutrefdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6978) (v2@@0 T@Vec_6978) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6978| v1@@0) (|l#Vec_6978| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6978| v2@@0) i@@4)))
 :qid |mutrefdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |mutrefdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6978) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6978| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6978| v@@6) i@@5)))
 :qid |mutrefdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |mutrefdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6978) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) i@@7) e@@0))
 :qid |mutrefdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) j@@0) e@@0)))
 :qid |mutrefdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |mutrefdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6978) (v2@@1 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6978| v1@@1) (|l#Vec_6978| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6978| v2@@1) i@@8)))
 :qid |mutrefdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |mutrefdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6978) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6978| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6978| v@@8) i@@9)))
 :qid |mutrefdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |mutrefdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6978) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) i@@11) e@@1))
 :qid |mutrefdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) j@@1) e@@1)))
 :qid |mutrefdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |mutrefdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6978) (v2@@2 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |mutrefdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6978) (v2@@3 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |mutrefdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6978) (k2 T@Vec_6978) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6978) (s2 T@Vec_6978) (k1@@0 T@Vec_6978) (k2@@0 T@Vec_6978) (m1 T@Vec_6978) (m2 T@Vec_6978) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefdefaultz3bpl.1297:36|
 :skolemid |42|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefdefaultz3bpl.1311:36|
 :skolemid |43|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefdefaultz3bpl.1324:36|
 :skolemid |44|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefdefaultz3bpl.1340:36|
 :skolemid |45|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 T@Vec_16776) (i@@12 Int) ) (! (= (InRangeVec_14013 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_16776| v@@10))))
 :qid |mutrefdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14013 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6978) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6978| v@@11))))
 :qid |mutrefdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6978) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6978 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) i@@15) e@@2))
 :qid |mutrefdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) j@@2) e@@2)))
 :qid |mutrefdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |mutrefdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6978 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_16776) (e@@3 T@$1_TestMutRef_T) ) (! (let ((i@@16 (IndexOfVec_16776 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_14013 v@@13 i@@17) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) i@@17) e@@3))
 :qid |mutrefdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_14013 v@@13 i@@16) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) j@@3) e@@3)))
 :qid |mutrefdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |mutrefdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_16776 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |mutrefdefaultz3bpl.275:54|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]$1_TestMutRef_T|) (|l#4| |T@[Int]$1_TestMutRef_T|) (|l#5| Int) (|l#6| T@$1_TestMutRef_T) (i@@19 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]$1_TestMutRef_T_| |l#3| i@@19) (|Select__T@[Int]$1_TestMutRef_T_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |mutrefdefaultz3bpl.73:19|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]$1_TestMutRef_T|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$1_TestMutRef_T) (i@@20 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]$1_TestMutRef_T_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |mutrefdefaultz3bpl.82:30|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$1_TestMutRef_T|) (|l#4@@1| |T@[Int]$1_TestMutRef_T|) (|l#5@@1| Int) (|l#6@@0| T@$1_TestMutRef_T) (j@@4 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]$1_TestMutRef_T_| |l#3@@1| j@@4) (|Select__T@[Int]$1_TestMutRef_T_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |mutrefdefaultz3bpl.63:20|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |mutrefdefaultz3bpl.73:19|
 :skolemid |59|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |mutrefdefaultz3bpl.82:30|
 :skolemid |60|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |mutrefdefaultz3bpl.63:20|
 :skolemid |61|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t6@4 () T@$Mutation_25002)
(declare-fun $t2@1 () T@$1_TestMutRef_N)
(declare-fun _$t0 () Bool)
(declare-fun $t11@0 () Bool)
(declare-fun $t6@2 () T@$Mutation_25002)
(declare-fun $t6@3 () T@$Mutation_25002)
(declare-fun $t7@0 () T@$Mutation_4742)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun $t10@0 () Bool)
(declare-fun $t6@0 () T@$Mutation_25002)
(declare-fun $t6@1 () T@$Mutation_25002)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path$0$$t2@1 () T@$Mutation_4742)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@3| () Int)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@2| () T@$1_TestMutRef_N)
(declare-fun inline$$1_TestMutRef_return_ref_different_path$0$$t4@1 () T@$Mutation_19343)
(declare-fun inline$$1_TestMutRef_return_ref_different_path$0$$t5@1 () T@$Mutation_4742)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@2| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path$0$$t3@1 () T@$Mutation_4742)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@1| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path$0$$t2@0 () T@$Mutation_4742)
(declare-fun inline$$1_TestMutRef_return_ref_different_path$0$$t3@0 () T@$Mutation_4742)
(declare-fun inline$$1_TestMutRef_return_ref_different_path$0$$t4@0 () T@$Mutation_19343)
(declare-fun inline$$1_TestMutRef_return_ref_different_path$0$$t5@0 () T@$Mutation_4742)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@1| () T@$1_TestMutRef_N)
(declare-fun $t5@0 () T@$1_TestMutRef_T)
(declare-fun $t2@0 () T@$1_TestMutRef_N)
(declare-fun $t1 () T@$Mutation_4742)
(declare-fun $t6 () T@$Mutation_25002)
(declare-fun $t7 () T@$Mutation_4742)
(push 1)
(set-info :boogie-vc-id $1_TestMutRef_call_return_ref_different_path$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 49497) (let ((L4_correct  (and (=> (= (ControlFlow 0 38082) (- 0 50064)) (> (|$value#$1_TestMutRef_T| (|$t#$1_TestMutRef_N| (|v#$Mutation_25002| $t6@4))) 0)) (=> (> (|$value#$1_TestMutRef_T| (|$t#$1_TestMutRef_N| (|v#$Mutation_25002| $t6@4))) 0) (=> (and (= $t2@1 (|v#$Mutation_25002| $t6@4)) (= $t2@1 $t2@1)) (and (=> (= (ControlFlow 0 38082) (- 0 50103)) (=> _$t0 (= $t2@1 ($1_TestMutRef_N 5 ($1_TestMutRef_T 2))))) (=> (=> _$t0 (= $t2@1 ($1_TestMutRef_N 5 ($1_TestMutRef_T 2)))) (=> (= (ControlFlow 0 38082) (- 0 50120)) (=> (not _$t0) (= $t2@1 ($1_TestMutRef_N 1 ($1_TestMutRef_T 5))))))))))))
(let ((anon11_Else_correct  (=> (not $t11@0) (=> (and (= $t6@4 $t6@2) (= (ControlFlow 0 38008) 38082)) L4_correct))))
(let ((anon11_Then_correct  (=> (and (and $t11@0 (= $t6@3 ($Mutation_25002 (|l#$Mutation_25002| $t6@2) (|p#$Mutation_25002| $t6@2) ($1_TestMutRef_N (|$value#$1_TestMutRef_N| (|v#$Mutation_25002| $t6@2)) ($1_TestMutRef_T (|v#$Mutation_4742| $t7@0)))))) (and (= $t6@4 $t6@3) (= (ControlFlow 0 38112) 38082))) L4_correct)))
(let ((L2_correct  (=> (= $t11@0  (and (= (|l#$Mutation_25002| $t6@2) (|l#$Mutation_4742| $t7@0)) (let ((pp (|p#$Mutation_25002| $t6@2)))
(let ((cp (|p#$Mutation_4742| $t7@0)))
(let ((pl (|l#Vec_6978| pp)))
(let ((cl (|l#Vec_6978| cp)))
(let ((el (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1 0) 2))))
 (and (and (= cl (+ pl el)) (forall ((i@@23 Int) ) (!  (=> (and (>= i@@23 0) (< i@@23 pl)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| pp) i@@23) (|Select__T@[Int]Int_| (|v#Vec_6978| cp) i@@23)))
 :qid |mutrefdefaultz3bpl.316:14|
 :skolemid |13|
))) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 el)) (or (= (|Select__T@[Int]Int_| (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1 0) 2)) i@@24) (- 0 1)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1 0) 2)) i@@24) (|Select__T@[Int]Int_| (|v#Vec_6978| cp) (+ pl i@@24)))))
 :qid |mutrefdefaultz3bpl.317:14|
 :skolemid |14|
)))))))))) (and (=> (= (ControlFlow 0 38002) 38112) anon11_Then_correct) (=> (= (ControlFlow 0 38002) 38008) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (not $t10@0) (=> (and (= $t6@2 $t6@0) (= (ControlFlow 0 37988) 38002)) L2_correct))))
(let ((anon10_Then_correct  (=> (and (and $t10@0 (= $t6@1 ($Mutation_25002 (|l#$Mutation_25002| $t6@0) (|p#$Mutation_25002| $t6@0) ($1_TestMutRef_N (|v#$Mutation_4742| $t7@0) (|$t#$1_TestMutRef_N| (|v#$Mutation_25002| $t6@0)))))) (and (= $t6@2 $t6@1) (= (ControlFlow 0 38130) 38002))) L2_correct)))
(let ((anon9_Else_correct  (=> (and (not false) (= |$temp_0'u64'@0| (|v#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path$0$$t2@1))) (=> (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (|$IsValid'u64'| 5)) (and (= $t7@0 ($Mutation_4742 (|l#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path$0$$t2@1) (|p#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path$0$$t2@1) 5)) (= $t10@0  (and (= (|l#$Mutation_25002| $t6@0) (|l#$Mutation_4742| $t7@0)) (let ((pp@@0 (|p#$Mutation_25002| $t6@0)))
(let ((cp@@0 (|p#$Mutation_4742| $t7@0)))
(let ((pl@@0 (|l#Vec_6978| pp@@0)))
(let ((cl@@0 (|l#Vec_6978| cp@@0)))
 (and (and (= cl@@0 (+ pl@@0 1)) (forall ((i@@25 Int) ) (!  (=> (and (>= i@@25 0) (< i@@25 pl@@0)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| pp@@0) i@@25) (|Select__T@[Int]Int_| (|v#Vec_6978| cp@@0) i@@25)))
 :qid |mutrefdefaultz3bpl.302:14|
 :skolemid |12|
))) (or (= 0 (- 0 1)) (= 0 (|Select__T@[Int]Int_| (|v#Vec_6978| cp@@0) pl@@0)))))))))))) (and (=> (= (ControlFlow 0 37982) 38130) anon10_Then_correct) (=> (= (ControlFlow 0 37982) 37988) anon10_Else_correct))))))
(let ((anon9_Then_correct true))
(let ((inline$$1_TestMutRef_return_ref_different_path$0$L3_correct  (=> (and (and (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@3| (|v#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path$0$$t2@1)) (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@3| |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@3|)) (and (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@2| (|v#$Mutation_25002| $t6@0)) (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@2| |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@2|))) (and (=> (= (ControlFlow 0 37906) 38148) anon9_Then_correct) (=> (= (ControlFlow 0 37906) 37982) anon9_Else_correct)))))
(let ((inline$$1_TestMutRef_return_ref_different_path$0$anon3_Else_correct  (=> (not _$t0) (=> (and (= inline$$1_TestMutRef_return_ref_different_path$0$$t4@1 ($Mutation_19343 (|l#$Mutation_25002| $t6@0) (let ((l (|l#Vec_6978| (|p#$Mutation_25002| $t6@0))))
(Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| (|p#$Mutation_25002| $t6@0)) l 1) (+ l 1))) (|$t#$1_TestMutRef_N| (|v#$Mutation_25002| $t6@0)))) (= inline$$1_TestMutRef_return_ref_different_path$0$$t5@1 ($Mutation_4742 (|l#$Mutation_19343| inline$$1_TestMutRef_return_ref_different_path$0$$t4@1) (let ((l@@0 (|l#Vec_6978| (|p#$Mutation_19343| inline$$1_TestMutRef_return_ref_different_path$0$$t4@1))))
(Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| (|p#$Mutation_19343| inline$$1_TestMutRef_return_ref_different_path$0$$t4@1)) l@@0 0) (+ l@@0 1))) (|$value#$1_TestMutRef_T| (|v#$Mutation_19343| inline$$1_TestMutRef_return_ref_different_path$0$$t4@1))))) (=> (and (and (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@2| (|v#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path$0$$t5@1)) (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@2| |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@2|)) (and (= inline$$1_TestMutRef_return_ref_different_path$0$$t2@1 inline$$1_TestMutRef_return_ref_different_path$0$$t5@1) (= (ControlFlow 0 37878) 37906))) inline$$1_TestMutRef_return_ref_different_path$0$L3_correct)))))
(let ((inline$$1_TestMutRef_return_ref_different_path$0$anon3_Then_correct  (=> (and _$t0 (= inline$$1_TestMutRef_return_ref_different_path$0$$t3@1 ($Mutation_4742 (|l#$Mutation_25002| $t6@0) (let ((l@@1 (|l#Vec_6978| (|p#$Mutation_25002| $t6@0))))
(Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| (|p#$Mutation_25002| $t6@0)) l@@1 0) (+ l@@1 1))) (|$value#$1_TestMutRef_N| (|v#$Mutation_25002| $t6@0))))) (=> (and (and (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@1| (|v#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path$0$$t3@1)) (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@1| |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@1|)) (and (= inline$$1_TestMutRef_return_ref_different_path$0$$t2@1 inline$$1_TestMutRef_return_ref_different_path$0$$t3@1) (= (ControlFlow 0 37934) 37906))) inline$$1_TestMutRef_return_ref_different_path$0$L3_correct))))
(let ((inline$$1_TestMutRef_return_ref_different_path$0$anon0_correct  (=> (= (|l#Vec_6978| (|p#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path$0$$t2@0)) 0) (=> (and (= (|l#Vec_6978| (|p#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path$0$$t3@0)) 0) (= (|l#Vec_6978| (|p#$Mutation_19343| inline$$1_TestMutRef_return_ref_different_path$0$$t4@0)) 0)) (=> (and (and (= (|l#Vec_6978| (|p#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path$0$$t5@0)) 0) (= _$t0 _$t0)) (and (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@1| (|v#$Mutation_25002| $t6@0)) (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@1| |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@1|))) (and (=> (= (ControlFlow 0 37836) 37934) inline$$1_TestMutRef_return_ref_different_path$0$anon3_Then_correct) (=> (= (ControlFlow 0 37836) 37878) inline$$1_TestMutRef_return_ref_different_path$0$anon3_Else_correct)))))))
(let ((anon0$1_correct  (=> (and (and (= _$t0 _$t0) (|$IsValid'u64'| 1)) (and (|$IsValid'u64'| 2) (= $t5@0 ($1_TestMutRef_T 2)))) (and (=> (= (ControlFlow 0 37942) (- 0 49652)) (> (|$value#$1_TestMutRef_T| $t5@0) 0)) (=> (> (|$value#$1_TestMutRef_T| $t5@0) 0) (=> (and (and (= $t2@0 ($1_TestMutRef_N 1 $t5@0)) (= $t2@0 $t2@0)) (and (= $t6@0 ($Mutation_25002 ($Local 2) (Vec_6978 (MapConstVec_4347 DefaultVecElem_4347) 0) $t2@0)) (= (ControlFlow 0 37942) 37836))) inline$$1_TestMutRef_return_ref_different_path$0$anon0_correct))))))
(let ((anon0_correct  (=> (and (and (= (|l#Vec_6978| (|p#$Mutation_4742| $t1)) 0) (= (|l#Vec_6978| (|p#$Mutation_25002| $t6)) 0)) (and (= (|l#Vec_6978| (|p#$Mutation_4742| $t7)) 0) (= (ControlFlow 0 37485) 37942))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 49497) 37485) anon0_correct)))
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
(declare-datatypes ((T@Vec_6978 0)) (((Vec_6978 (|v#Vec_6978| |T@[Int]Int|) (|l#Vec_6978| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_R 0)) ((($1_TestMutRef_R (|$value#$1_TestMutRef_R| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_T 0)) ((($1_TestMutRef_T (|$value#$1_TestMutRef_T| Int) ) ) ))
(declare-sort |T@[Int]$1_TestMutRef_T| 0)
(declare-datatypes ((T@Vec_16776 0)) (((Vec_16776 (|v#Vec_16776| |T@[Int]$1_TestMutRef_T|) (|l#Vec_16776| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_V 0)) ((($1_TestMutRef_V (|$is#$1_TestMutRef_V| T@Vec_6978) (|$ts#$1_TestMutRef_V| T@Vec_16776) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_N 0)) ((($1_TestMutRef_N (|$value#$1_TestMutRef_N| Int) (|$t#$1_TestMutRef_N| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_30903 0)) ((($Mutation_30903 (|l#$Mutation_30903| T@$Location) (|p#$Mutation_30903| T@Vec_6978) (|v#$Mutation_30903| T@$1_TestMutRef_R) ) ) ))
(declare-datatypes ((T@$Mutation_26057 0)) ((($Mutation_26057 (|l#$Mutation_26057| T@$Location) (|p#$Mutation_26057| T@Vec_6978) (|v#$Mutation_26057| T@$1_TestMutRef_V) ) ) ))
(declare-datatypes ((T@$Mutation_25002 0)) ((($Mutation_25002 (|l#$Mutation_25002| T@$Location) (|p#$Mutation_25002| T@Vec_6978) (|v#$Mutation_25002| T@$1_TestMutRef_N) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6978) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20968 0)) ((($Mutation_20968 (|l#$Mutation_20968| T@$Location) (|p#$Mutation_20968| T@Vec_6978) (|v#$Mutation_20968| T@Vec_6978) ) ) ))
(declare-datatypes ((T@$Mutation_19343 0)) ((($Mutation_19343 (|l#$Mutation_19343| T@$Location) (|p#$Mutation_19343| T@Vec_6978) (|v#$Mutation_19343| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Mutation_18356 0)) ((($Mutation_18356 (|l#$Mutation_18356| T@$Location) (|p#$Mutation_18356| T@Vec_6978) (|v#$Mutation_18356| T@Vec_16776) ) ) ))
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
(declare-fun |$IsEqual'vec'$1_TestMutRef_T''| (T@Vec_16776 T@Vec_16776) Bool)
(declare-fun InRangeVec_14013 (T@Vec_16776 Int) Bool)
(declare-fun |Select__T@[Int]$1_TestMutRef_T_| (|T@[Int]$1_TestMutRef_T| Int) T@$1_TestMutRef_T)
(declare-fun |$IsValid'vec'$1_TestMutRef_T''| (T@Vec_16776) Bool)
(declare-fun |$IsValid'$1_TestMutRef_T'| (T@$1_TestMutRef_T) Bool)
(declare-fun |$IndexOfVec'$1_TestMutRef_T'| (T@Vec_16776 T@$1_TestMutRef_T) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6978 T@Vec_6978) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6978 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6978) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6978 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6978 T@Vec_6978) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6978) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6978 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6978) T@Vec_6978)
(declare-fun $1_Hash_sha3 (T@Vec_6978) T@Vec_6978)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6978) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6978 T@Vec_6978 T@Vec_6978) Bool)
(declare-fun |$IsValid'$1_TestMutRef_N'| (T@$1_TestMutRef_N) Bool)
(declare-fun |$IsValid'$1_TestMutRef_R'| (T@$1_TestMutRef_R) Bool)
(declare-fun |$IsValid'$1_TestMutRef_V'| (T@$1_TestMutRef_V) Bool)
(declare-fun IndexOfVec_6978 (T@Vec_6978 Int) Int)
(declare-fun IndexOfVec_16776 (T@Vec_16776 T@$1_TestMutRef_T) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]$1_TestMutRef_T| |T@[Int]$1_TestMutRef_T| Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#3| (Int Int |T@[Int]$1_TestMutRef_T| Int Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]$1_TestMutRef_T| |T@[Int]$1_TestMutRef_T| Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |mutrefdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_16776) (v2 T@Vec_16776) ) (! (= (|$IsEqual'vec'$1_TestMutRef_T''| v1 v2)  (and (= (|l#Vec_16776| v1) (|l#Vec_16776| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14013 v1 i@@0) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v1) i@@0) (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v2) i@@0)))
 :qid |mutrefdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |mutrefdefaultz3bpl.613:41|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$1_TestMutRef_T''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_16776) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_16776| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14013 v@@4 i@@1) (|$IsValid'$1_TestMutRef_T'| (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@4) i@@1)))
 :qid |mutrefdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |mutrefdefaultz3bpl.619:41|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_16776) (e T@$1_TestMutRef_T) ) (! (let ((i@@2 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14013 v@@5 i@@3)) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) i@@3) e))
 :qid |mutrefdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14013 v@@5 i@@2)) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) j) e)))
 :qid |mutrefdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |mutrefdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6978) (v2@@0 T@Vec_6978) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6978| v1@@0) (|l#Vec_6978| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6978| v2@@0) i@@4)))
 :qid |mutrefdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |mutrefdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6978) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6978| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6978| v@@6) i@@5)))
 :qid |mutrefdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |mutrefdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6978) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) i@@7) e@@0))
 :qid |mutrefdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) j@@0) e@@0)))
 :qid |mutrefdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |mutrefdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6978) (v2@@1 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6978| v1@@1) (|l#Vec_6978| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6978| v2@@1) i@@8)))
 :qid |mutrefdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |mutrefdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6978) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6978| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6978| v@@8) i@@9)))
 :qid |mutrefdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |mutrefdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6978) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) i@@11) e@@1))
 :qid |mutrefdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) j@@1) e@@1)))
 :qid |mutrefdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |mutrefdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6978) (v2@@2 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |mutrefdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6978) (v2@@3 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |mutrefdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6978) (k2 T@Vec_6978) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6978) (s2 T@Vec_6978) (k1@@0 T@Vec_6978) (k2@@0 T@Vec_6978) (m1 T@Vec_6978) (m2 T@Vec_6978) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefdefaultz3bpl.1297:36|
 :skolemid |42|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefdefaultz3bpl.1311:36|
 :skolemid |43|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefdefaultz3bpl.1324:36|
 :skolemid |44|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefdefaultz3bpl.1340:36|
 :skolemid |45|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 T@Vec_16776) (i@@12 Int) ) (! (= (InRangeVec_14013 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_16776| v@@10))))
 :qid |mutrefdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14013 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6978) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6978| v@@11))))
 :qid |mutrefdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6978) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6978 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) i@@15) e@@2))
 :qid |mutrefdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) j@@2) e@@2)))
 :qid |mutrefdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |mutrefdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6978 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_16776) (e@@3 T@$1_TestMutRef_T) ) (! (let ((i@@16 (IndexOfVec_16776 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_14013 v@@13 i@@17) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) i@@17) e@@3))
 :qid |mutrefdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_14013 v@@13 i@@16) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) j@@3) e@@3)))
 :qid |mutrefdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |mutrefdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_16776 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |mutrefdefaultz3bpl.275:54|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]$1_TestMutRef_T|) (|l#4| |T@[Int]$1_TestMutRef_T|) (|l#5| Int) (|l#6| T@$1_TestMutRef_T) (i@@19 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]$1_TestMutRef_T_| |l#3| i@@19) (|Select__T@[Int]$1_TestMutRef_T_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |mutrefdefaultz3bpl.73:19|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]$1_TestMutRef_T|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$1_TestMutRef_T) (i@@20 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]$1_TestMutRef_T_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |mutrefdefaultz3bpl.82:30|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$1_TestMutRef_T|) (|l#4@@1| |T@[Int]$1_TestMutRef_T|) (|l#5@@1| Int) (|l#6@@0| T@$1_TestMutRef_T) (j@@4 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]$1_TestMutRef_T_| |l#3@@1| j@@4) (|Select__T@[Int]$1_TestMutRef_T_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |mutrefdefaultz3bpl.63:20|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |mutrefdefaultz3bpl.73:19|
 :skolemid |59|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |mutrefdefaultz3bpl.82:30|
 :skolemid |60|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |mutrefdefaultz3bpl.63:20|
 :skolemid |61|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret0@1 () T@$Mutation_4742)
(declare-fun $t13@0 () T@$Mutation_4742)
(declare-fun $t12@1 () T@$Mutation_26057)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1 () T@$Mutation_26057)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t4@1 () T@$1_TestMutRef_V)
(declare-fun _$t0 () Bool)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun MapConstVec_14033 (T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun DefaultVecElem_14033 () T@$1_TestMutRef_T)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret0@0 () T@$Mutation_4742)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@0 () T@$Mutation_26057)
(declare-fun $abort_code@4 () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$t6@1 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@3| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$t2@1 () T@$Mutation_4742)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'$1_TestMutRef_V'@2| () T@$1_TestMutRef_V)
(declare-fun $t12@0 () T@$Mutation_26057)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@2| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$dst@2| () T@$Mutation_4742)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$dst@0| () T@$Mutation_4742)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$v@1| () T@Vec_6978)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$dst@1| () T@$Mutation_4742)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$t3@1 () T@$Mutation_20968)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@1| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@2| () T@$Mutation_4742)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@0| () T@$Mutation_4742)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$v@1| () T@Vec_6978)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@1| () T@$Mutation_4742)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$t7@1 () T@$Mutation_20968)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$t2@0 () T@$Mutation_4742)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$t3@0 () T@$Mutation_20968)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$t5@0 () T@$Mutation_4742)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$t7@0 () T@$Mutation_20968)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$t9@0 () T@$Mutation_4742)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'$1_TestMutRef_V'@1| () T@$1_TestMutRef_V)
(declare-fun $t1@1 () T@Vec_6978)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_20968)
(declare-fun $t4@0 () T@$1_TestMutRef_V)
(declare-fun |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1| () T@Vec_16776)
(declare-fun $t9@0 () T@$Mutation_20968)
(declare-fun $t1@0 () T@Vec_6978)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_20968)
(declare-fun $t7@0 () T@$Mutation_20968)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_6978)
(declare-fun $t2 () T@$Mutation_4742)
(declare-fun $t7 () T@$Mutation_20968)
(declare-fun $t9 () T@$Mutation_20968)
(declare-fun $t12 () T@$Mutation_26057)
(declare-fun $t13 () T@$Mutation_4742)
(push 1)
(set-info :boogie-vc-id $1_TestMutRef_call_return_ref_different_path_vec$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 50148) (let ((anon16_Else_correct  (=> (and (not $abort_flag@3) (= |$temp_0'u64'@0| (|v#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret0@1))) (=> (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (|$IsValid'u64'| 5)) (and (= $t13@0 ($Mutation_4742 (|l#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret0@1) (|p#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret0@1) 5)) (= $t12@1 ($Mutation_26057 (|l#$Mutation_26057| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1) (|p#$Mutation_26057| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1) (let (($$sel0 (|$is#$1_TestMutRef_V| (|v#$Mutation_26057| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1))))
($1_TestMutRef_V (Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| $$sel0) (|Select__T@[Int]Int_| (|v#Vec_6978| (|p#$Mutation_4742| $t13@0)) (+ (|l#Vec_6978| (|p#$Mutation_26057| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1)) 1)) (|v#$Mutation_4742| $t13@0)) (|l#Vec_6978| $$sel0)) (|$ts#$1_TestMutRef_V| (|v#$Mutation_26057| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1)))))))) (and (=> (= (ControlFlow 0 39763) (- 0 51260)) (let (($range_0 (|$ts#$1_TestMutRef_V| (|v#$Mutation_26057| $t12@1))))
(forall (($i_1 Int) ) (!  (=> (InRangeVec_14013 $range_0 $i_1) (let (($elem (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| $range_0) $i_1)))
(> (|$value#$1_TestMutRef_T| $elem) 0)))
 :qid |mutrefdefaultz3bpl.1766:73|
 :skolemid |46|
)))) (=> (let (($range_0 (|$ts#$1_TestMutRef_V| (|v#$Mutation_26057| $t12@1))))
(forall (($i_1@@0 Int) ) (!  (=> (InRangeVec_14013 $range_0 $i_1@@0) (let (($elem (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| $range_0) $i_1@@0)))
(> (|$value#$1_TestMutRef_T| $elem) 0)))
 :qid |mutrefdefaultz3bpl.1766:73|
 :skolemid |46|
))) (=> (and (= $t4@1 (|v#$Mutation_26057| $t12@1)) (= $t4@1 $t4@1)) (and (=> (= (ControlFlow 0 39763) (- 0 51322)) (=> _$t0 (and (|$IsEqual'vec'u64''| (|$is#$1_TestMutRef_V| $t4@1) (|$is#$1_TestMutRef_V| ($1_TestMutRef_V (let ((m2@@0 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 5) 1))))
(let ((l2 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 5) 1))))
(let ((m1@@0 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(let ((l1 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(Vec_6978 (|lambda#5| 0 (+ l1 l2) l1 m1@@0 m2@@0 l1 DefaultVecElem_4347) (+ l1 l2)))))) (Vec_16776 (MapConstVec_14033 DefaultVecElem_14033) 0)))) (|$IsEqual'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| $t4@1) (|$ts#$1_TestMutRef_V| ($1_TestMutRef_V (let ((m2@@0 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 5) 1))))
(let ((l2 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 5) 1))))
(let ((m1@@0 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(let ((l1 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(Vec_6978 (|lambda#5| 0 (+ l1 l2) l1 m1@@0 m2@@0 l1 DefaultVecElem_4347) (+ l1 l2)))))) (Vec_16776 (MapConstVec_14033 DefaultVecElem_14033) 0))))))) (=> (=> _$t0 (and (|$IsEqual'vec'u64''| (|$is#$1_TestMutRef_V| $t4@1) (|$is#$1_TestMutRef_V| ($1_TestMutRef_V (let ((m2@@0 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 5) 1))))
(let ((l2 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 5) 1))))
(let ((m1@@0 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(let ((l1 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(Vec_6978 (|lambda#5| 0 (+ l1 l2) l1 m1@@0 m2@@0 l1 DefaultVecElem_4347) (+ l1 l2)))))) (Vec_16776 (MapConstVec_14033 DefaultVecElem_14033) 0)))) (|$IsEqual'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| $t4@1) (|$ts#$1_TestMutRef_V| ($1_TestMutRef_V (let ((m2@@0 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 5) 1))))
(let ((l2 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 5) 1))))
(let ((m1@@0 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(let ((l1 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(Vec_6978 (|lambda#5| 0 (+ l1 l2) l1 m1@@0 m2@@0 l1 DefaultVecElem_4347) (+ l1 l2)))))) (Vec_16776 (MapConstVec_14033 DefaultVecElem_14033) 0)))))) (=> (= (ControlFlow 0 39763) (- 0 51345)) (=> (not _$t0) (and (|$IsEqual'vec'u64''| (|$is#$1_TestMutRef_V| $t4@1) (|$is#$1_TestMutRef_V| ($1_TestMutRef_V (let ((m2@@1 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 2) 1))))
(let ((l2@@0 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 2) 1))))
(let ((m1@@1 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 5) 1))))
(let ((l1@@0 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 5) 1))))
(Vec_6978 (|lambda#5| 0 (+ l1@@0 l2@@0) l1@@0 m1@@1 m2@@1 l1@@0 DefaultVecElem_4347) (+ l1@@0 l2@@0)))))) (Vec_16776 (MapConstVec_14033 DefaultVecElem_14033) 0)))) (|$IsEqual'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| $t4@1) (|$ts#$1_TestMutRef_V| ($1_TestMutRef_V (let ((m2@@1 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 2) 1))))
(let ((l2@@0 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 2) 1))))
(let ((m1@@1 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 5) 1))))
(let ((l1@@0 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 5) 1))))
(Vec_6978 (|lambda#5| 0 (+ l1@@0 l2@@0) l1@@0 m1@@1 m2@@1 l1@@0 DefaultVecElem_4347) (+ l1@@0 l2@@0)))))) (Vec_16776 (MapConstVec_14033 DefaultVecElem_14033) 0))))))))))))))))
(let ((anon16_Then_correct true))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec$0$L13_correct  (=> (and (and (= $abort_flag@3 true) (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret0@1 inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret0@0)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1 inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@0) (= $abort_code@4 inline$$1_TestMutRef_return_ref_different_path_vec$0$$t6@1))) (and (=> (= (ControlFlow 0 39328) 39777) anon16_Then_correct) (=> (= (ControlFlow 0 39328) 39763) anon16_Else_correct)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec$0$anon8_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$t6@1 $abort_code@2) (= (ControlFlow 0 39574) 39328))) inline$$1_TestMutRef_return_ref_different_path_vec$0$L13_correct)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec$0$anon9_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$t6@1 $abort_code@1) (= (ControlFlow 0 39322) 39328))) inline$$1_TestMutRef_return_ref_different_path_vec$0$L13_correct)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec$0$L3_correct  (=> (and (and (and (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@3| (|v#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t2@1)) (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@3| |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@3|)) (and (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'$1_TestMutRef_V'@2| (|v#$Mutation_26057| $t12@0)) (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'$1_TestMutRef_V'@2| |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'$1_TestMutRef_V'@2|))) (and (and (= $abort_flag@3 $abort_flag@2) (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret0@1 inline$$1_TestMutRef_return_ref_different_path_vec$0$$t2@1)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1 $t12@0) (= $abort_code@4 $abort_code@3)))) (and (=> (= (ControlFlow 0 39308) 39777) anon16_Then_correct) (=> (= (ControlFlow 0 39308) 39763) anon16_Else_correct)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec$0$anon8_Else_correct  (=> (not $abort_flag@1) (=> (and (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@2| (|v#$Mutation_4742| |inline$$1_Vector_borrow_mut'u64'$1$dst@2|)) (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@2| |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@2|)) (=> (and (and (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$t2@1 |inline$$1_Vector_borrow_mut'u64'$1$dst@2|) (= $abort_code@3 $abort_code@2)) (and (= $abort_flag@2 $abort_flag@1) (= (ControlFlow 0 39560) 39308))) inline$$1_TestMutRef_return_ref_different_path_vec$0$L3_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$1$anon3_Then$1_correct|  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow_mut'u64'$1$dst@2| |inline$$1_Vector_borrow_mut'u64'$1$dst@0|)) (and (=> (= (ControlFlow 0 39532) 39574) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon8_Then_correct) (=> (= (ControlFlow 0 39532) 39560) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon8_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$1$anon3_Then_correct|  (=> (and (not (InRangeVec_4118 |inline$$1_Vector_borrow_mut'u64'$1$v@1| 1)) (= (ControlFlow 0 39530) 39532)) |inline$$1_Vector_borrow_mut'u64'$1$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$1$anon3_Else_correct|  (=> (InRangeVec_4118 |inline$$1_Vector_borrow_mut'u64'$1$v@1| 1) (=> (and (and (= |inline$$1_Vector_borrow_mut'u64'$1$dst@1| ($Mutation_4742 (|l#$Mutation_20968| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t3@1) (let ((l (|l#Vec_6978| (|p#$Mutation_20968| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t3@1))))
(Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| (|p#$Mutation_20968| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t3@1)) l 1) (+ l 1))) (|Select__T@[Int]Int_| (|v#Vec_6978| |inline$$1_Vector_borrow_mut'u64'$1$v@1|) 1))) (= $abort_flag@1 false)) (and (= $abort_code@2 $abort_code@0) (= |inline$$1_Vector_borrow_mut'u64'$1$dst@2| |inline$$1_Vector_borrow_mut'u64'$1$dst@1|))) (and (=> (= (ControlFlow 0 39480) 39574) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon8_Then_correct) (=> (= (ControlFlow 0 39480) 39560) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon8_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$1$v@1| (|v#$Mutation_20968| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t3@1)) (and (=> (= (ControlFlow 0 39450) 39530) |inline$$1_Vector_borrow_mut'u64'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 39450) 39480) |inline$$1_Vector_borrow_mut'u64'$1$anon3_Else_correct|)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec$0$anon7_Then_correct  (=> (and (and _$t0 (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$t3@1 ($Mutation_20968 (|l#$Mutation_26057| $t12@0) (let ((l@@0 (|l#Vec_6978| (|p#$Mutation_26057| $t12@0))))
(Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| (|p#$Mutation_26057| $t12@0)) l@@0 0) (+ l@@0 1))) (|$is#$1_TestMutRef_V| (|v#$Mutation_26057| $t12@0))))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 39540) 39450))) |inline$$1_Vector_borrow_mut'u64'$1$anon0_correct|)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec$0$anon9_Else_correct  (=> (not $abort_flag@0) (=> (and (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@1| (|v#$Mutation_4742| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|)) (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@1| |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@1|)) (=> (and (and (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$t2@1 |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) (= $abort_code@3 $abort_code@1)) (and (= $abort_flag@2 $abort_flag@0) (= (ControlFlow 0 39280) 39308))) inline$$1_TestMutRef_return_ref_different_path_vec$0$L3_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@0|)) (and (=> (= (ControlFlow 0 39252) 39322) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon9_Then_correct) (=> (= (ControlFlow 0 39252) 39280) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon9_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_4118 |inline$$1_Vector_borrow_mut'u64'$0$v@1| 0)) (= (ControlFlow 0 39250) 39252)) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|  (=> (InRangeVec_4118 |inline$$1_Vector_borrow_mut'u64'$0$v@1| 0) (=> (and (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@1| ($Mutation_4742 (|l#$Mutation_20968| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t7@1) (let ((l@@1 (|l#Vec_6978| (|p#$Mutation_20968| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t7@1))))
(Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| (|p#$Mutation_20968| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t7@1)) l@@1 0) (+ l@@1 1))) (|Select__T@[Int]Int_| (|v#Vec_6978| |inline$$1_Vector_borrow_mut'u64'$0$v@1|) 0))) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@1|))) (and (=> (= (ControlFlow 0 39200) 39322) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon9_Then_correct) (=> (= (ControlFlow 0 39200) 39280) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon9_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$0$v@1| (|v#$Mutation_20968| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t7@1)) (and (=> (= (ControlFlow 0 39170) 39250) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 39170) 39200) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec$0$anon7_Else_correct  (=> (and (and (not _$t0) (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$t7@1 ($Mutation_20968 (|l#$Mutation_26057| $t12@0) (let ((l@@2 (|l#Vec_6978| (|p#$Mutation_26057| $t12@0))))
(Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| (|p#$Mutation_26057| $t12@0)) l@@2 0) (+ l@@2 1))) (|$is#$1_TestMutRef_V| (|v#$Mutation_26057| $t12@0))))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 39260) 39170))) |inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec$0$anon0_correct  (=> (and (and (and (= (|l#Vec_6978| (|p#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t2@0)) 0) (= (|l#Vec_6978| (|p#$Mutation_20968| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t3@0)) 0)) (and (= (|l#Vec_6978| (|p#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t5@0)) 0) (= (|l#Vec_6978| (|p#$Mutation_20968| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t7@0)) 0))) (and (and (= (|l#Vec_6978| (|p#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t9@0)) 0) (= _$t0 _$t0)) (and (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'$1_TestMutRef_V'@1| (|v#$Mutation_26057| $t12@0)) (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'$1_TestMutRef_V'@1| |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'$1_TestMutRef_V'@1|)))) (and (=> (= (ControlFlow 0 39046) 39540) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon7_Then_correct) (=> (= (ControlFlow 0 39046) 39260) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon7_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (not false) (= $t1@1 (|v#$Mutation_20968| |inline$$1_Vector_push_back'u64'$1$m'@1|))) (=> (and (and (= $t4@0 ($1_TestMutRef_V $t1@1 |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1|)) (= $t4@0 $t4@0)) (and (= $t12@0 ($Mutation_26057 ($Local 4) (Vec_6978 (MapConstVec_4347 DefaultVecElem_4347) 0) $t4@0)) (= (ControlFlow 0 39582) 39046))) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon0_correct))))
(let ((anon15_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_20968 (|l#$Mutation_20968| $t9@0) (|p#$Mutation_20968| $t9@0) (let ((l@@3 (|l#Vec_6978| (|v#$Mutation_20968| $t9@0))))
(Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| (|v#$Mutation_20968| $t9@0)) l@@3 2) (+ l@@3 1))))) (and (=> (= (ControlFlow 0 38596) 39797) anon15_Then_correct) (=> (= (ControlFlow 0 38596) 39582) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_20968| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t9@0 ($Mutation_20968 ($Local 1) (Vec_6978 (MapConstVec_4347 DefaultVecElem_4347) 0) $t1@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 38602) 38596))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon14_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_20968 (|l#$Mutation_20968| $t7@0) (|p#$Mutation_20968| $t7@0) (let ((l@@4 (|l#Vec_6978| (|v#$Mutation_20968| $t7@0))))
(Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| (|v#$Mutation_20968| $t7@0)) l@@4 1) (+ l@@4 1))))) (and (=> (= (ControlFlow 0 38509) 39811) anon14_Then_correct) (=> (= (ControlFlow 0 38509) 38602) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1| |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1|) (= $t7@0 ($Mutation_20968 ($Local 1) (Vec_6978 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 38515) 38509))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_empty'$1_TestMutRef_T'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1| (Vec_16776 (MapConstVec_14033 DefaultVecElem_14033) 0)) (and (=> (= (ControlFlow 0 38420) 39825) anon13_Then_correct) (=> (= (ControlFlow 0 38420) 38515) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 38426) 38420)) |inline$$1_Vector_empty'$1_TestMutRef_T'$0$anon0_correct|))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_6978 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 38378) 39839) anon12_Then_correct) (=> (= (ControlFlow 0 38378) 38426) anon12_Else_correct)))))
(let ((anon0$1_correct  (=> (and (= _$t0 _$t0) (= (ControlFlow 0 38384) 38378)) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (|l#Vec_6978| (|p#$Mutation_4742| $t2)) 0) (= (|l#Vec_6978| (|p#$Mutation_20968| $t7)) 0)) (=> (and (and (= (|l#Vec_6978| (|p#$Mutation_20968| $t9)) 0) (= (|l#Vec_6978| (|p#$Mutation_26057| $t12)) 0)) (and (= (|l#Vec_6978| (|p#$Mutation_4742| $t13)) 0) (= (ControlFlow 0 38340) 38384))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 50148) 38340) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))
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
(declare-datatypes ((T@Vec_6978 0)) (((Vec_6978 (|v#Vec_6978| |T@[Int]Int|) (|l#Vec_6978| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_R 0)) ((($1_TestMutRef_R (|$value#$1_TestMutRef_R| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_T 0)) ((($1_TestMutRef_T (|$value#$1_TestMutRef_T| Int) ) ) ))
(declare-sort |T@[Int]$1_TestMutRef_T| 0)
(declare-datatypes ((T@Vec_16776 0)) (((Vec_16776 (|v#Vec_16776| |T@[Int]$1_TestMutRef_T|) (|l#Vec_16776| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_V 0)) ((($1_TestMutRef_V (|$is#$1_TestMutRef_V| T@Vec_6978) (|$ts#$1_TestMutRef_V| T@Vec_16776) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_N 0)) ((($1_TestMutRef_N (|$value#$1_TestMutRef_N| Int) (|$t#$1_TestMutRef_N| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_30903 0)) ((($Mutation_30903 (|l#$Mutation_30903| T@$Location) (|p#$Mutation_30903| T@Vec_6978) (|v#$Mutation_30903| T@$1_TestMutRef_R) ) ) ))
(declare-datatypes ((T@$Mutation_26057 0)) ((($Mutation_26057 (|l#$Mutation_26057| T@$Location) (|p#$Mutation_26057| T@Vec_6978) (|v#$Mutation_26057| T@$1_TestMutRef_V) ) ) ))
(declare-datatypes ((T@$Mutation_25002 0)) ((($Mutation_25002 (|l#$Mutation_25002| T@$Location) (|p#$Mutation_25002| T@Vec_6978) (|v#$Mutation_25002| T@$1_TestMutRef_N) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6978) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20968 0)) ((($Mutation_20968 (|l#$Mutation_20968| T@$Location) (|p#$Mutation_20968| T@Vec_6978) (|v#$Mutation_20968| T@Vec_6978) ) ) ))
(declare-datatypes ((T@$Mutation_19343 0)) ((($Mutation_19343 (|l#$Mutation_19343| T@$Location) (|p#$Mutation_19343| T@Vec_6978) (|v#$Mutation_19343| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Mutation_18356 0)) ((($Mutation_18356 (|l#$Mutation_18356| T@$Location) (|p#$Mutation_18356| T@Vec_6978) (|v#$Mutation_18356| T@Vec_16776) ) ) ))
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
(declare-fun |$IsEqual'vec'$1_TestMutRef_T''| (T@Vec_16776 T@Vec_16776) Bool)
(declare-fun InRangeVec_14013 (T@Vec_16776 Int) Bool)
(declare-fun |Select__T@[Int]$1_TestMutRef_T_| (|T@[Int]$1_TestMutRef_T| Int) T@$1_TestMutRef_T)
(declare-fun |$IsValid'vec'$1_TestMutRef_T''| (T@Vec_16776) Bool)
(declare-fun |$IsValid'$1_TestMutRef_T'| (T@$1_TestMutRef_T) Bool)
(declare-fun |$IndexOfVec'$1_TestMutRef_T'| (T@Vec_16776 T@$1_TestMutRef_T) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6978 T@Vec_6978) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6978 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6978) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6978 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6978 T@Vec_6978) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6978) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6978 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6978) T@Vec_6978)
(declare-fun $1_Hash_sha3 (T@Vec_6978) T@Vec_6978)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6978) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6978 T@Vec_6978 T@Vec_6978) Bool)
(declare-fun |$IsValid'$1_TestMutRef_N'| (T@$1_TestMutRef_N) Bool)
(declare-fun |$IsValid'$1_TestMutRef_R'| (T@$1_TestMutRef_R) Bool)
(declare-fun |$IsValid'$1_TestMutRef_V'| (T@$1_TestMutRef_V) Bool)
(declare-fun IndexOfVec_6978 (T@Vec_6978 Int) Int)
(declare-fun IndexOfVec_16776 (T@Vec_16776 T@$1_TestMutRef_T) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]$1_TestMutRef_T| |T@[Int]$1_TestMutRef_T| Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#3| (Int Int |T@[Int]$1_TestMutRef_T| Int Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]$1_TestMutRef_T| |T@[Int]$1_TestMutRef_T| Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |mutrefdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_16776) (v2 T@Vec_16776) ) (! (= (|$IsEqual'vec'$1_TestMutRef_T''| v1 v2)  (and (= (|l#Vec_16776| v1) (|l#Vec_16776| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14013 v1 i@@0) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v1) i@@0) (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v2) i@@0)))
 :qid |mutrefdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |mutrefdefaultz3bpl.613:41|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$1_TestMutRef_T''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_16776) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_16776| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14013 v@@4 i@@1) (|$IsValid'$1_TestMutRef_T'| (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@4) i@@1)))
 :qid |mutrefdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |mutrefdefaultz3bpl.619:41|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_16776) (e T@$1_TestMutRef_T) ) (! (let ((i@@2 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14013 v@@5 i@@3)) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) i@@3) e))
 :qid |mutrefdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14013 v@@5 i@@2)) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) j) e)))
 :qid |mutrefdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |mutrefdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6978) (v2@@0 T@Vec_6978) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6978| v1@@0) (|l#Vec_6978| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6978| v2@@0) i@@4)))
 :qid |mutrefdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |mutrefdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6978) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6978| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6978| v@@6) i@@5)))
 :qid |mutrefdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |mutrefdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6978) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) i@@7) e@@0))
 :qid |mutrefdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) j@@0) e@@0)))
 :qid |mutrefdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |mutrefdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6978) (v2@@1 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6978| v1@@1) (|l#Vec_6978| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6978| v2@@1) i@@8)))
 :qid |mutrefdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |mutrefdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6978) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6978| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6978| v@@8) i@@9)))
 :qid |mutrefdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |mutrefdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6978) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) i@@11) e@@1))
 :qid |mutrefdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) j@@1) e@@1)))
 :qid |mutrefdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |mutrefdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6978) (v2@@2 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |mutrefdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6978) (v2@@3 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |mutrefdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6978) (k2 T@Vec_6978) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6978) (s2 T@Vec_6978) (k1@@0 T@Vec_6978) (k2@@0 T@Vec_6978) (m1 T@Vec_6978) (m2 T@Vec_6978) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefdefaultz3bpl.1297:36|
 :skolemid |42|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefdefaultz3bpl.1311:36|
 :skolemid |43|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefdefaultz3bpl.1324:36|
 :skolemid |44|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefdefaultz3bpl.1340:36|
 :skolemid |45|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 T@Vec_16776) (i@@12 Int) ) (! (= (InRangeVec_14013 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_16776| v@@10))))
 :qid |mutrefdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14013 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6978) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6978| v@@11))))
 :qid |mutrefdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6978) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6978 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) i@@15) e@@2))
 :qid |mutrefdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) j@@2) e@@2)))
 :qid |mutrefdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |mutrefdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6978 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_16776) (e@@3 T@$1_TestMutRef_T) ) (! (let ((i@@16 (IndexOfVec_16776 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_14013 v@@13 i@@17) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) i@@17) e@@3))
 :qid |mutrefdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_14013 v@@13 i@@16) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) j@@3) e@@3)))
 :qid |mutrefdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |mutrefdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_16776 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |mutrefdefaultz3bpl.275:54|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]$1_TestMutRef_T|) (|l#4| |T@[Int]$1_TestMutRef_T|) (|l#5| Int) (|l#6| T@$1_TestMutRef_T) (i@@19 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]$1_TestMutRef_T_| |l#3| i@@19) (|Select__T@[Int]$1_TestMutRef_T_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |mutrefdefaultz3bpl.73:19|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]$1_TestMutRef_T|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$1_TestMutRef_T) (i@@20 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]$1_TestMutRef_T_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |mutrefdefaultz3bpl.82:30|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$1_TestMutRef_T|) (|l#4@@1| |T@[Int]$1_TestMutRef_T|) (|l#5@@1| Int) (|l#6@@0| T@$1_TestMutRef_T) (j@@4 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]$1_TestMutRef_T_| |l#3@@1| j@@4) (|Select__T@[Int]$1_TestMutRef_T_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |mutrefdefaultz3bpl.63:20|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |mutrefdefaultz3bpl.73:19|
 :skolemid |59|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |mutrefdefaultz3bpl.82:30|
 :skolemid |60|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |mutrefdefaultz3bpl.63:20|
 :skolemid |61|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t18@4 () T@$Mutation_26057)
(declare-fun $t4@1 () T@$1_TestMutRef_V)
(declare-fun _$t0 () Bool)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun |Store__T@[Int]$1_TestMutRef_T_| (|T@[Int]$1_TestMutRef_T| Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(assert (forall ( ( ?x0 |T@[Int]$1_TestMutRef_T|) ( ?x1 Int) ( ?x2 T@$1_TestMutRef_T)) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|Store__T@[Int]$1_TestMutRef_T_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_TestMutRef_T|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_TestMutRef_T)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_TestMutRef_T_| (|Store__T@[Int]$1_TestMutRef_T_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_TestMutRef_T_| ?x0 ?y1))) :weight 0)))
(declare-fun MapConstVec_14033 (T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun DefaultVecElem_14033 () T@$1_TestMutRef_T)
(declare-fun $t22@0 () Bool)
(declare-fun $t18@2 () T@$Mutation_26057)
(declare-fun $t18@3 () T@$Mutation_26057)
(declare-fun $t19@0 () T@$Mutation_4742)
(declare-fun $t21@0 () Bool)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1 () T@$Mutation_26057)
(declare-fun $t18@1 () T@$Mutation_26057)
(declare-fun $abort_flag@3 () Bool)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1 () T@$Mutation_4742)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@0 () T@$Mutation_4742)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@0 () T@$Mutation_26057)
(declare-fun $abort_code@4 () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t6@1 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@3| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1 () T@$Mutation_4742)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@2| () T@$1_TestMutRef_V)
(declare-fun $t18@0 () T@$Mutation_26057)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@2| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@2| () T@$Mutation_4742)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@0| () T@$Mutation_4742)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$v@1| () T@Vec_6978)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@1| () T@$Mutation_4742)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1 () T@$Mutation_20968)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@1 () T@$Mutation_4742)
(declare-fun |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2| () T@$Mutation_19343)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@1| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@0| () T@$Mutation_19343)
(declare-fun |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1| () T@Vec_16776)
(declare-fun |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@1| () T@$Mutation_19343)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1 () T@$Mutation_18356)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@0 () T@$Mutation_4742)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@0 () T@$Mutation_20968)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t5@0 () T@$Mutation_4742)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@0 () T@$Mutation_18356)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t9@0 () T@$Mutation_19343)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@0 () T@$Mutation_4742)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@1| () T@$1_TestMutRef_V)
(declare-fun |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1| () T@$Mutation_18356)
(declare-fun $t3@1 () T@Vec_16776)
(declare-fun $t4@0 () T@$1_TestMutRef_V)
(declare-fun $t1@1 () T@Vec_6978)
(declare-fun $t13@0 () T@$Mutation_18356)
(declare-fun $t15@0 () T@$1_TestMutRef_T)
(declare-fun |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1| () T@$Mutation_18356)
(declare-fun $t3@0 () T@Vec_16776)
(declare-fun $t10@0 () T@$Mutation_18356)
(declare-fun $t12@0 () T@$1_TestMutRef_T)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_20968)
(declare-fun |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1| () T@Vec_16776)
(declare-fun $t8@0 () T@$Mutation_20968)
(declare-fun $t1@0 () T@Vec_6978)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_20968)
(declare-fun $t6@0 () T@$Mutation_20968)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_6978)
(declare-fun $t2 () T@$Mutation_4742)
(declare-fun $t6 () T@$Mutation_20968)
(declare-fun $t8 () T@$Mutation_20968)
(declare-fun $t10 () T@$Mutation_18356)
(declare-fun $t13 () T@$Mutation_18356)
(declare-fun $t18 () T@$Mutation_26057)
(declare-fun $t19 () T@$Mutation_4742)
(push 1)
(set-info :boogie-vc-id $1_TestMutRef_call_return_ref_different_path_vec2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 51388) (let ((L4_correct  (and (=> (= (ControlFlow 0 41911) (- 0 52976)) (let (($range_0 (|$ts#$1_TestMutRef_V| (|v#$Mutation_26057| $t18@4))))
(forall (($i_1 Int) ) (!  (=> (InRangeVec_14013 $range_0 $i_1) (let (($elem (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| $range_0) $i_1)))
(> (|$value#$1_TestMutRef_T| $elem) 0)))
 :qid |mutrefdefaultz3bpl.2077:73|
 :skolemid |49|
)))) (=> (let (($range_0 (|$ts#$1_TestMutRef_V| (|v#$Mutation_26057| $t18@4))))
(forall (($i_1@@0 Int) ) (!  (=> (InRangeVec_14013 $range_0 $i_1@@0) (let (($elem (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| $range_0) $i_1@@0)))
(> (|$value#$1_TestMutRef_T| $elem) 0)))
 :qid |mutrefdefaultz3bpl.2077:73|
 :skolemid |49|
))) (=> (and (= $t4@1 (|v#$Mutation_26057| $t18@4)) (= $t4@1 $t4@1)) (and (=> (= (ControlFlow 0 41911) (- 0 53038)) (=> _$t0 (and (|$IsEqual'vec'u64''| (|$is#$1_TestMutRef_V| $t4@1) (|$is#$1_TestMutRef_V| ($1_TestMutRef_V (let ((m2@@0 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 5) 1))))
(let ((l2 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 5) 1))))
(let ((m1@@0 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(let ((l1 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(Vec_6978 (|lambda#5| 0 (+ l1 l2) l1 m1@@0 m2@@0 l1 DefaultVecElem_4347) (+ l1 l2)))))) (let ((m2@@1 (|v#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 4)) 1))))
(let ((l2@@0 (|l#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 4)) 1))))
(let ((m1@@1 (|v#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 3)) 1))))
(let ((l1@@0 (|l#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 3)) 1))))
(Vec_16776 (|lambda#2| 0 (+ l1@@0 l2@@0) l1@@0 m1@@1 m2@@1 l1@@0 DefaultVecElem_14033) (+ l1@@0 l2@@0))))))))) (|$IsEqual'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| $t4@1) (|$ts#$1_TestMutRef_V| ($1_TestMutRef_V (let ((m2@@0 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 5) 1))))
(let ((l2 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 5) 1))))
(let ((m1@@0 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(let ((l1 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(Vec_6978 (|lambda#5| 0 (+ l1 l2) l1 m1@@0 m2@@0 l1 DefaultVecElem_4347) (+ l1 l2)))))) (let ((m2@@1 (|v#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 4)) 1))))
(let ((l2@@0 (|l#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 4)) 1))))
(let ((m1@@1 (|v#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 3)) 1))))
(let ((l1@@0 (|l#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 3)) 1))))
(Vec_16776 (|lambda#2| 0 (+ l1@@0 l2@@0) l1@@0 m1@@1 m2@@1 l1@@0 DefaultVecElem_14033) (+ l1@@0 l2@@0)))))))))))) (=> (=> _$t0 (and (|$IsEqual'vec'u64''| (|$is#$1_TestMutRef_V| $t4@1) (|$is#$1_TestMutRef_V| ($1_TestMutRef_V (let ((m2@@0 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 5) 1))))
(let ((l2 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 5) 1))))
(let ((m1@@0 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(let ((l1 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(Vec_6978 (|lambda#5| 0 (+ l1 l2) l1 m1@@0 m2@@0 l1 DefaultVecElem_4347) (+ l1 l2)))))) (let ((m2@@1 (|v#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 4)) 1))))
(let ((l2@@0 (|l#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 4)) 1))))
(let ((m1@@1 (|v#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 3)) 1))))
(let ((l1@@0 (|l#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 3)) 1))))
(Vec_16776 (|lambda#2| 0 (+ l1@@0 l2@@0) l1@@0 m1@@1 m2@@1 l1@@0 DefaultVecElem_14033) (+ l1@@0 l2@@0))))))))) (|$IsEqual'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| $t4@1) (|$ts#$1_TestMutRef_V| ($1_TestMutRef_V (let ((m2@@0 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 5) 1))))
(let ((l2 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 5) 1))))
(let ((m1@@0 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(let ((l1 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(Vec_6978 (|lambda#5| 0 (+ l1 l2) l1 m1@@0 m2@@0 l1 DefaultVecElem_4347) (+ l1 l2)))))) (let ((m2@@1 (|v#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 4)) 1))))
(let ((l2@@0 (|l#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 4)) 1))))
(let ((m1@@1 (|v#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 3)) 1))))
(let ((l1@@0 (|l#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 3)) 1))))
(Vec_16776 (|lambda#2| 0 (+ l1@@0 l2@@0) l1@@0 m1@@1 m2@@1 l1@@0 DefaultVecElem_14033) (+ l1@@0 l2@@0))))))))))) (=> (= (ControlFlow 0 41911) (- 0 53073)) (=> (not _$t0) (and (|$IsEqual'vec'u64''| (|$is#$1_TestMutRef_V| $t4@1) (|$is#$1_TestMutRef_V| ($1_TestMutRef_V (let ((m2@@2 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 2) 1))))
(let ((l2@@1 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 2) 1))))
(let ((m1@@2 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(let ((l1@@1 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(Vec_6978 (|lambda#5| 0 (+ l1@@1 l2@@1) l1@@1 m1@@2 m2@@2 l1@@1 DefaultVecElem_4347) (+ l1@@1 l2@@1)))))) (let ((m2@@3 (|v#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 4)) 1))))
(let ((l2@@2 (|l#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 4)) 1))))
(let ((m1@@3 (|v#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 5)) 1))))
(let ((l1@@2 (|l#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 5)) 1))))
(Vec_16776 (|lambda#2| 0 (+ l1@@2 l2@@2) l1@@2 m1@@3 m2@@3 l1@@2 DefaultVecElem_14033) (+ l1@@2 l2@@2))))))))) (|$IsEqual'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| $t4@1) (|$ts#$1_TestMutRef_V| ($1_TestMutRef_V (let ((m2@@2 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 2) 1))))
(let ((l2@@1 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 2) 1))))
(let ((m1@@2 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(let ((l1@@1 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(Vec_6978 (|lambda#5| 0 (+ l1@@1 l2@@1) l1@@1 m1@@2 m2@@2 l1@@1 DefaultVecElem_4347) (+ l1@@1 l2@@1)))))) (let ((m2@@3 (|v#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 4)) 1))))
(let ((l2@@2 (|l#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 4)) 1))))
(let ((m1@@3 (|v#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 5)) 1))))
(let ((l1@@2 (|l#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 5)) 1))))
(Vec_16776 (|lambda#2| 0 (+ l1@@2 l2@@2) l1@@2 m1@@3 m2@@3 l1@@2 DefaultVecElem_14033) (+ l1@@2 l2@@2)))))))))))))))))))
(let ((anon29_Else_correct  (=> (not $t22@0) (=> (and (= $t18@4 $t18@2) (= (ControlFlow 0 41778) 41911)) L4_correct))))
(let ((anon29_Then_correct  (=> (and (and $t22@0 (= $t18@3 ($Mutation_26057 (|l#$Mutation_26057| $t18@2) (|p#$Mutation_26057| $t18@2) (let (($$sel0 (|$ts#$1_TestMutRef_V| (|v#$Mutation_26057| $t18@2))))
($1_TestMutRef_V (|$is#$1_TestMutRef_V| (|v#$Mutation_26057| $t18@2)) (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| $$sel0) (|Select__T@[Int]Int_| (|v#Vec_6978| (|p#$Mutation_4742| $t19@0)) (+ (|l#Vec_6978| (|p#$Mutation_26057| $t18@2)) 1)) ($1_TestMutRef_T (|v#$Mutation_4742| $t19@0))) (|l#Vec_16776| $$sel0))))))) (and (= $t18@4 $t18@3) (= (ControlFlow 0 41983) 41911))) L4_correct)))
(let ((L2_correct  (=> (= $t22@0  (and (= (|l#$Mutation_26057| $t18@2) (|l#$Mutation_4742| $t19@0)) (let ((pp (|p#$Mutation_26057| $t18@2)))
(let ((cp (|p#$Mutation_4742| $t19@0)))
(let ((pl (|l#Vec_6978| pp)))
(let ((cl (|l#Vec_6978| cp)))
(let ((el (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1 (- 0 1)) 2 0) 3))))
 (and (and (= cl (+ pl el)) (forall ((i@@23 Int) ) (!  (=> (and (>= i@@23 0) (< i@@23 pl)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| pp) i@@23) (|Select__T@[Int]Int_| (|v#Vec_6978| cp) i@@23)))
 :qid |mutrefdefaultz3bpl.316:14|
 :skolemid |13|
))) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 el)) (or (= (|Select__T@[Int]Int_| (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1 (- 0 1)) 2 0) 3)) i@@24) (- 0 1)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1 (- 0 1)) 2 0) 3)) i@@24) (|Select__T@[Int]Int_| (|v#Vec_6978| cp) (+ pl i@@24)))))
 :qid |mutrefdefaultz3bpl.317:14|
 :skolemid |14|
)))))))))) (and (=> (= (ControlFlow 0 41772) 41983) anon29_Then_correct) (=> (= (ControlFlow 0 41772) 41778) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (not $t21@0) (=> (and (= $t18@2 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1) (= (ControlFlow 0 41754) 41772)) L2_correct))))
(let ((anon28_Then_correct  (=> (and (and $t21@0 (= $t18@1 ($Mutation_26057 (|l#$Mutation_26057| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1) (|p#$Mutation_26057| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1) (let (($$sel0@@0 (|$is#$1_TestMutRef_V| (|v#$Mutation_26057| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1))))
($1_TestMutRef_V (Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| $$sel0@@0) (|Select__T@[Int]Int_| (|v#Vec_6978| (|p#$Mutation_4742| $t19@0)) (+ (|l#Vec_6978| (|p#$Mutation_26057| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1)) 1)) (|v#$Mutation_4742| $t19@0)) (|l#Vec_6978| $$sel0@@0)) (|$ts#$1_TestMutRef_V| (|v#$Mutation_26057| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1))))))) (and (= $t18@2 $t18@1) (= (ControlFlow 0 42029) 41772))) L2_correct)))
(let ((anon27_Else_correct  (=> (and (not $abort_flag@3) (= |$temp_0'u64'@0| (|v#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1))) (=> (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (|$IsValid'u64'| 5)) (and (= $t19@0 ($Mutation_4742 (|l#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1) (|p#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1) 5)) (= $t21@0  (and (= (|l#$Mutation_26057| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1) (|l#$Mutation_4742| $t19@0)) (let ((pp@@0 (|p#$Mutation_26057| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1)))
(let ((cp@@0 (|p#$Mutation_4742| $t19@0)))
(let ((pl@@0 (|l#Vec_6978| pp@@0)))
(let ((cl@@0 (|l#Vec_6978| cp@@0)))
(let ((el@@0 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 0) 1 (- 0 1)) 2))))
 (and (and (= cl@@0 (+ pl@@0 el@@0)) (forall ((i@@25 Int) ) (!  (=> (and (>= i@@25 0) (< i@@25 pl@@0)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| pp@@0) i@@25) (|Select__T@[Int]Int_| (|v#Vec_6978| cp@@0) i@@25)))
 :qid |mutrefdefaultz3bpl.316:14|
 :skolemid |13|
))) (forall ((i@@26 Int) ) (!  (=> (and (>= i@@26 0) (< i@@26 el@@0)) (or (= (|Select__T@[Int]Int_| (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 0) 1 (- 0 1)) 2)) i@@26) (- 0 1)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 0) 1 (- 0 1)) 2)) i@@26) (|Select__T@[Int]Int_| (|v#Vec_6978| cp@@0) (+ pl@@0 i@@26)))))
 :qid |mutrefdefaultz3bpl.317:14|
 :skolemid |14|
)))))))))))) (and (=> (= (ControlFlow 0 41748) 42029) anon28_Then_correct) (=> (= (ControlFlow 0 41748) 41754) anon28_Else_correct))))))
(let ((anon27_Then_correct true))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$L15_correct  (=> (and (and (= $abort_flag@3 true) (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@0)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@0) (= $abort_code@4 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t6@1))) (and (=> (= (ControlFlow 0 41448) 42043) anon27_Then_correct) (=> (= (ControlFlow 0 41448) 41748) anon27_Else_correct)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t6@1 $abort_code@2) (= (ControlFlow 0 41694) 41448))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$L15_correct)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t6@1 $abort_code@1) (= (ControlFlow 0 41442) 41448))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$L15_correct)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$L3_correct  (=> (and (and (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@3| (|v#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@3| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@3|)) (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@2| (|v#$Mutation_26057| $t18@0)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@2| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@2|))) (and (and (= $abort_flag@3 $abort_flag@2) (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1 $t18@0) (= $abort_code@4 $abort_code@3)))) (and (=> (= (ControlFlow 0 41428) 42043) anon27_Then_correct) (=> (= (ControlFlow 0 41428) 41748) anon27_Else_correct)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Else_correct  (=> (not $abort_flag@1) (=> (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@2| (|v#$Mutation_4742| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@2| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@2|)) (=> (and (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1 |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) (= $abort_code@3 $abort_code@2)) (and (= $abort_flag@2 $abort_flag@1) (= (ControlFlow 0 41680) 41428))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$L3_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@0|)) (and (=> (= (ControlFlow 0 41652) 41694) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Then_correct) (=> (= (ControlFlow 0 41652) 41680) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_4118 |inline$$1_Vector_borrow_mut'u64'$0$v@1| 1)) (= (ControlFlow 0 41650) 41652)) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|  (=> (InRangeVec_4118 |inline$$1_Vector_borrow_mut'u64'$0$v@1| 1) (=> (and (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@1| ($Mutation_4742 (|l#$Mutation_20968| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1) (let ((l (|l#Vec_6978| (|p#$Mutation_20968| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1))))
(Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| (|p#$Mutation_20968| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1)) l 1) (+ l 1))) (|Select__T@[Int]Int_| (|v#Vec_6978| |inline$$1_Vector_borrow_mut'u64'$0$v@1|) 1))) (= $abort_flag@1 false)) (and (= $abort_code@2 $abort_code@0) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@1|))) (and (=> (= (ControlFlow 0 41600) 41694) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Then_correct) (=> (= (ControlFlow 0 41600) 41680) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$0$v@1| (|v#$Mutation_20968| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1)) (and (=> (= (ControlFlow 0 41570) 41650) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 41570) 41600) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon7_Then_correct  (=> (and (and _$t0 (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1 ($Mutation_20968 (|l#$Mutation_26057| $t18@0) (let ((l@@0 (|l#Vec_6978| (|p#$Mutation_26057| $t18@0))))
(Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| (|p#$Mutation_26057| $t18@0)) l@@0 0) (+ l@@0 1))) (|$is#$1_TestMutRef_V| (|v#$Mutation_26057| $t18@0))))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 41660) 41570))) |inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Else_correct  (=> (and (and (and (not $abort_flag@0) (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@1 ($Mutation_4742 (|l#$Mutation_19343| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2|) (let ((l@@1 (|l#Vec_6978| (|p#$Mutation_19343| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2|))))
(Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| (|p#$Mutation_19343| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2|)) l@@1 0) (+ l@@1 1))) (|$value#$1_TestMutRef_T| (|v#$Mutation_19343| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2|))))) (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@1| (|v#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@1)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@1| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@1|))) (and (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@1) (= $abort_code@3 $abort_code@1)) (and (= $abort_flag@2 $abort_flag@0) (= (ControlFlow 0 41400) 41428)))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$L3_correct)))
(let ((|inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@0|)) (and (=> (= (ControlFlow 0 41360) 41442) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Then_correct) (=> (= (ControlFlow 0 41360) 41400) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_14013 |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1| 0)) (= (ControlFlow 0 41358) 41360)) |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Else_correct|  (=> (InRangeVec_14013 |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1| 0) (=> (and (and (= |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@1| ($Mutation_19343 (|l#$Mutation_18356| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1) (let ((l@@2 (|l#Vec_6978| (|p#$Mutation_18356| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1))))
(Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| (|p#$Mutation_18356| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1)) l@@2 0) (+ l@@2 1))) (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1|) 0))) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@1|))) (and (=> (= (ControlFlow 0 41308) 41442) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Then_correct) (=> (= (ControlFlow 0 41308) 41400) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1| (|v#$Mutation_18356| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1)) (and (=> (= (ControlFlow 0 41278) 41358) |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 41278) 41308) |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Else_correct|)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon7_Else_correct  (=> (and (and (not _$t0) (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1 ($Mutation_18356 (|l#$Mutation_26057| $t18@0) (let ((l@@3 (|l#Vec_6978| (|p#$Mutation_26057| $t18@0))))
(Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| (|p#$Mutation_26057| $t18@0)) l@@3 1) (+ l@@3 1))) (|$ts#$1_TestMutRef_V| (|v#$Mutation_26057| $t18@0))))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 41368) 41278))) |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon0_correct|)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon0_correct  (=> (= (|l#Vec_6978| (|p#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@0)) 0) (=> (and (and (and (= (|l#Vec_6978| (|p#$Mutation_20968| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@0)) 0) (= (|l#Vec_6978| (|p#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t5@0)) 0)) (and (= (|l#Vec_6978| (|p#$Mutation_18356| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@0)) 0) (= (|l#Vec_6978| (|p#$Mutation_19343| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t9@0)) 0))) (and (and (= (|l#Vec_6978| (|p#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@0)) 0) (= _$t0 _$t0)) (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@1| (|v#$Mutation_26057| $t18@0)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@1| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@1|)))) (and (=> (= (ControlFlow 0 41154) 41660) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon7_Then_correct) (=> (= (ControlFlow 0 41154) 41368) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon7_Else_correct))))))
(let ((anon26_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 41702) (- 0 52116)) (let (($range_0@@0 (|v#$Mutation_18356| |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1|)))
(forall (($i_1@@1 Int) ) (!  (=> (InRangeVec_14013 $range_0@@0 $i_1@@1) (let (($elem@@0 (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| $range_0@@0) $i_1@@1)))
(> (|$value#$1_TestMutRef_T| $elem@@0) 0)))
 :qid |mutrefdefaultz3bpl.1998:52|
 :skolemid |48|
)))) (=> (let (($range_0@@0 (|v#$Mutation_18356| |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1|)))
(forall (($i_1@@2 Int) ) (!  (=> (InRangeVec_14013 $range_0@@0 $i_1@@2) (let (($elem@@0 (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| $range_0@@0) $i_1@@2)))
(> (|$value#$1_TestMutRef_T| $elem@@0) 0)))
 :qid |mutrefdefaultz3bpl.1998:52|
 :skolemid |48|
))) (=> (= $t3@1 (|v#$Mutation_18356| |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1|)) (=> (and (and (= $t4@0 ($1_TestMutRef_V $t1@1 $t3@1)) (= $t4@0 $t4@0)) (and (= $t18@0 ($Mutation_26057 ($Local 4) (Vec_6978 (MapConstVec_4347 DefaultVecElem_4347) 0) $t4@0)) (= (ControlFlow 0 41702) 41154))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon0_correct)))))))
(let ((anon26_Then_correct true))
(let ((|inline$$1_Vector_push_back'$1_TestMutRef_T'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1| ($Mutation_18356 (|l#$Mutation_18356| $t13@0) (|p#$Mutation_18356| $t13@0) (let ((l@@4 (|l#Vec_16776| (|v#$Mutation_18356| $t13@0))))
(Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| (|v#$Mutation_18356| $t13@0)) l@@4 $t15@0) (+ l@@4 1))))) (and (=> (= (ControlFlow 0 40638) 42063) anon26_Then_correct) (=> (= (ControlFlow 0 40638) 41702) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 40644) (- 0 51985)) (let (($range_0@@1 (|v#$Mutation_18356| |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1|)))
(forall (($i_1@@3 Int) ) (!  (=> (InRangeVec_14013 $range_0@@1 $i_1@@3) (let (($elem@@1 (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| $range_0@@1) $i_1@@3)))
(> (|$value#$1_TestMutRef_T| $elem@@1) 0)))
 :qid |mutrefdefaultz3bpl.1960:52|
 :skolemid |47|
)))) (=> (let (($range_0@@1 (|v#$Mutation_18356| |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1|)))
(forall (($i_1@@4 Int) ) (!  (=> (InRangeVec_14013 $range_0@@1 $i_1@@4) (let (($elem@@1 (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| $range_0@@1) $i_1@@4)))
(> (|$value#$1_TestMutRef_T| $elem@@1) 0)))
 :qid |mutrefdefaultz3bpl.1960:52|
 :skolemid |47|
))) (=> (and (and (= $t3@0 (|v#$Mutation_18356| |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1|)) (= $t13@0 ($Mutation_18356 ($Local 3) (Vec_6978 (MapConstVec_4347 DefaultVecElem_4347) 0) $t3@0))) (and (|$IsValid'u64'| 4) (= $t15@0 ($1_TestMutRef_T 4)))) (and (=> (= (ControlFlow 0 40644) (- 0 52065)) (> (|$value#$1_TestMutRef_T| $t15@0) 0)) (=> (> (|$value#$1_TestMutRef_T| $t15@0) 0) (=> (= (ControlFlow 0 40644) 40638) |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$anon0_correct|)))))))))
(let ((anon25_Then_correct true))
(let ((|inline$$1_Vector_push_back'$1_TestMutRef_T'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1| ($Mutation_18356 (|l#$Mutation_18356| $t10@0) (|p#$Mutation_18356| $t10@0) (let ((l@@5 (|l#Vec_16776| (|v#$Mutation_18356| $t10@0))))
(Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| (|v#$Mutation_18356| $t10@0)) l@@5 $t12@0) (+ l@@5 1))))) (and (=> (= (ControlFlow 0 40498) 42077) anon25_Then_correct) (=> (= (ControlFlow 0 40498) 40644) anon25_Else_correct)))))
(let ((anon24_Else_correct  (=> (not false) (=> (and (and (= $t1@1 (|v#$Mutation_20968| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t10@0 ($Mutation_18356 ($Local 3) (Vec_6978 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1|))) (and (|$IsValid'u64'| 3) (= $t12@0 ($1_TestMutRef_T 3)))) (and (=> (= (ControlFlow 0 40504) (- 0 51934)) (> (|$value#$1_TestMutRef_T| $t12@0) 0)) (=> (> (|$value#$1_TestMutRef_T| $t12@0) 0) (=> (= (ControlFlow 0 40504) 40498) |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$anon0_correct|)))))))
(let ((anon24_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_20968 (|l#$Mutation_20968| $t8@0) (|p#$Mutation_20968| $t8@0) (let ((l@@6 (|l#Vec_6978| (|v#$Mutation_20968| $t8@0))))
(Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| (|v#$Mutation_20968| $t8@0)) l@@6 2) (+ l@@6 1))))) (and (=> (= (ControlFlow 0 40395) 42091) anon24_Then_correct) (=> (= (ControlFlow 0 40395) 40504) anon24_Else_correct)))))
(let ((anon23_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_20968| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t8@0 ($Mutation_20968 ($Local 1) (Vec_6978 (MapConstVec_4347 DefaultVecElem_4347) 0) $t1@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 40401) 40395))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon23_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_20968 (|l#$Mutation_20968| $t6@0) (|p#$Mutation_20968| $t6@0) (let ((l@@7 (|l#Vec_6978| (|v#$Mutation_20968| $t6@0))))
(Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| (|v#$Mutation_20968| $t6@0)) l@@7 1) (+ l@@7 1))))) (and (=> (= (ControlFlow 0 40308) 42105) anon23_Then_correct) (=> (= (ControlFlow 0 40308) 40401) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1| |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1|) (= $t6@0 ($Mutation_20968 ($Local 1) (Vec_6978 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 40314) 40308))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_empty'$1_TestMutRef_T'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1| (Vec_16776 (MapConstVec_14033 DefaultVecElem_14033) 0)) (and (=> (= (ControlFlow 0 40219) 42119) anon22_Then_correct) (=> (= (ControlFlow 0 40219) 40314) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 40225) 40219)) |inline$$1_Vector_empty'$1_TestMutRef_T'$0$anon0_correct|))))
(let ((anon21_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_6978 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 40177) 42133) anon21_Then_correct) (=> (= (ControlFlow 0 40177) 40225) anon21_Else_correct)))))
(let ((anon0$1_correct  (=> (and (= _$t0 _$t0) (= (ControlFlow 0 40183) 40177)) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (and (and (= (|l#Vec_6978| (|p#$Mutation_4742| $t2)) 0) (= (|l#Vec_6978| (|p#$Mutation_20968| $t6)) 0)) (and (= (|l#Vec_6978| (|p#$Mutation_20968| $t8)) 0) (= (|l#Vec_6978| (|p#$Mutation_18356| $t10)) 0))) (and (and (= (|l#Vec_6978| (|p#$Mutation_18356| $t13)) 0) (= (|l#Vec_6978| (|p#$Mutation_26057| $t18)) 0)) (and (= (|l#Vec_6978| (|p#$Mutation_4742| $t19)) 0) (= (ControlFlow 0 40139) 40183)))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 51388) 40139) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))
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
(declare-datatypes ((T@Vec_6978 0)) (((Vec_6978 (|v#Vec_6978| |T@[Int]Int|) (|l#Vec_6978| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_R 0)) ((($1_TestMutRef_R (|$value#$1_TestMutRef_R| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_T 0)) ((($1_TestMutRef_T (|$value#$1_TestMutRef_T| Int) ) ) ))
(declare-sort |T@[Int]$1_TestMutRef_T| 0)
(declare-datatypes ((T@Vec_16776 0)) (((Vec_16776 (|v#Vec_16776| |T@[Int]$1_TestMutRef_T|) (|l#Vec_16776| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_V 0)) ((($1_TestMutRef_V (|$is#$1_TestMutRef_V| T@Vec_6978) (|$ts#$1_TestMutRef_V| T@Vec_16776) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_N 0)) ((($1_TestMutRef_N (|$value#$1_TestMutRef_N| Int) (|$t#$1_TestMutRef_N| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_30903 0)) ((($Mutation_30903 (|l#$Mutation_30903| T@$Location) (|p#$Mutation_30903| T@Vec_6978) (|v#$Mutation_30903| T@$1_TestMutRef_R) ) ) ))
(declare-datatypes ((T@$Mutation_26057 0)) ((($Mutation_26057 (|l#$Mutation_26057| T@$Location) (|p#$Mutation_26057| T@Vec_6978) (|v#$Mutation_26057| T@$1_TestMutRef_V) ) ) ))
(declare-datatypes ((T@$Mutation_25002 0)) ((($Mutation_25002 (|l#$Mutation_25002| T@$Location) (|p#$Mutation_25002| T@Vec_6978) (|v#$Mutation_25002| T@$1_TestMutRef_N) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6978) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20968 0)) ((($Mutation_20968 (|l#$Mutation_20968| T@$Location) (|p#$Mutation_20968| T@Vec_6978) (|v#$Mutation_20968| T@Vec_6978) ) ) ))
(declare-datatypes ((T@$Mutation_19343 0)) ((($Mutation_19343 (|l#$Mutation_19343| T@$Location) (|p#$Mutation_19343| T@Vec_6978) (|v#$Mutation_19343| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Mutation_18356 0)) ((($Mutation_18356 (|l#$Mutation_18356| T@$Location) (|p#$Mutation_18356| T@Vec_6978) (|v#$Mutation_18356| T@Vec_16776) ) ) ))
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
(declare-fun |$IsEqual'vec'$1_TestMutRef_T''| (T@Vec_16776 T@Vec_16776) Bool)
(declare-fun InRangeVec_14013 (T@Vec_16776 Int) Bool)
(declare-fun |Select__T@[Int]$1_TestMutRef_T_| (|T@[Int]$1_TestMutRef_T| Int) T@$1_TestMutRef_T)
(declare-fun |$IsValid'vec'$1_TestMutRef_T''| (T@Vec_16776) Bool)
(declare-fun |$IsValid'$1_TestMutRef_T'| (T@$1_TestMutRef_T) Bool)
(declare-fun |$IndexOfVec'$1_TestMutRef_T'| (T@Vec_16776 T@$1_TestMutRef_T) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6978 T@Vec_6978) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6978 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6978) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6978 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6978 T@Vec_6978) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6978) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6978 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6978) T@Vec_6978)
(declare-fun $1_Hash_sha3 (T@Vec_6978) T@Vec_6978)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6978) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6978 T@Vec_6978 T@Vec_6978) Bool)
(declare-fun |$IsValid'$1_TestMutRef_N'| (T@$1_TestMutRef_N) Bool)
(declare-fun |$IsValid'$1_TestMutRef_R'| (T@$1_TestMutRef_R) Bool)
(declare-fun |$IsValid'$1_TestMutRef_V'| (T@$1_TestMutRef_V) Bool)
(declare-fun IndexOfVec_6978 (T@Vec_6978 Int) Int)
(declare-fun IndexOfVec_16776 (T@Vec_16776 T@$1_TestMutRef_T) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]$1_TestMutRef_T| |T@[Int]$1_TestMutRef_T| Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#3| (Int Int |T@[Int]$1_TestMutRef_T| Int Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]$1_TestMutRef_T| |T@[Int]$1_TestMutRef_T| Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |mutrefdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_16776) (v2 T@Vec_16776) ) (! (= (|$IsEqual'vec'$1_TestMutRef_T''| v1 v2)  (and (= (|l#Vec_16776| v1) (|l#Vec_16776| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14013 v1 i@@0) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v1) i@@0) (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v2) i@@0)))
 :qid |mutrefdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |mutrefdefaultz3bpl.613:41|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$1_TestMutRef_T''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_16776) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_16776| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14013 v@@4 i@@1) (|$IsValid'$1_TestMutRef_T'| (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@4) i@@1)))
 :qid |mutrefdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |mutrefdefaultz3bpl.619:41|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_16776) (e T@$1_TestMutRef_T) ) (! (let ((i@@2 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14013 v@@5 i@@3)) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) i@@3) e))
 :qid |mutrefdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14013 v@@5 i@@2)) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) j) e)))
 :qid |mutrefdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |mutrefdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6978) (v2@@0 T@Vec_6978) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6978| v1@@0) (|l#Vec_6978| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6978| v2@@0) i@@4)))
 :qid |mutrefdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |mutrefdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6978) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6978| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6978| v@@6) i@@5)))
 :qid |mutrefdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |mutrefdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6978) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) i@@7) e@@0))
 :qid |mutrefdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) j@@0) e@@0)))
 :qid |mutrefdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |mutrefdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6978) (v2@@1 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6978| v1@@1) (|l#Vec_6978| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6978| v2@@1) i@@8)))
 :qid |mutrefdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |mutrefdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6978) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6978| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6978| v@@8) i@@9)))
 :qid |mutrefdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |mutrefdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6978) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) i@@11) e@@1))
 :qid |mutrefdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) j@@1) e@@1)))
 :qid |mutrefdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |mutrefdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6978) (v2@@2 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |mutrefdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6978) (v2@@3 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |mutrefdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6978) (k2 T@Vec_6978) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6978) (s2 T@Vec_6978) (k1@@0 T@Vec_6978) (k2@@0 T@Vec_6978) (m1 T@Vec_6978) (m2 T@Vec_6978) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefdefaultz3bpl.1297:36|
 :skolemid |42|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefdefaultz3bpl.1311:36|
 :skolemid |43|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefdefaultz3bpl.1324:36|
 :skolemid |44|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefdefaultz3bpl.1340:36|
 :skolemid |45|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 T@Vec_16776) (i@@12 Int) ) (! (= (InRangeVec_14013 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_16776| v@@10))))
 :qid |mutrefdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14013 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6978) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6978| v@@11))))
 :qid |mutrefdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6978) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6978 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) i@@15) e@@2))
 :qid |mutrefdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) j@@2) e@@2)))
 :qid |mutrefdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |mutrefdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6978 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_16776) (e@@3 T@$1_TestMutRef_T) ) (! (let ((i@@16 (IndexOfVec_16776 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_14013 v@@13 i@@17) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) i@@17) e@@3))
 :qid |mutrefdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_14013 v@@13 i@@16) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) j@@3) e@@3)))
 :qid |mutrefdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |mutrefdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_16776 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |mutrefdefaultz3bpl.275:54|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]$1_TestMutRef_T|) (|l#4| |T@[Int]$1_TestMutRef_T|) (|l#5| Int) (|l#6| T@$1_TestMutRef_T) (i@@19 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]$1_TestMutRef_T_| |l#3| i@@19) (|Select__T@[Int]$1_TestMutRef_T_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |mutrefdefaultz3bpl.73:19|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]$1_TestMutRef_T|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$1_TestMutRef_T) (i@@20 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]$1_TestMutRef_T_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |mutrefdefaultz3bpl.82:30|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$1_TestMutRef_T|) (|l#4@@1| |T@[Int]$1_TestMutRef_T|) (|l#5@@1| Int) (|l#6@@0| T@$1_TestMutRef_T) (j@@4 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]$1_TestMutRef_T_| |l#3@@1| j@@4) (|Select__T@[Int]$1_TestMutRef_T_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |mutrefdefaultz3bpl.63:20|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |mutrefdefaultz3bpl.73:19|
 :skolemid |59|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |mutrefdefaultz3bpl.82:30|
 :skolemid |60|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |mutrefdefaultz3bpl.63:20|
 :skolemid |61|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t18@4 () T@$Mutation_26057)
(declare-fun $t4@1 () T@$1_TestMutRef_V)
(declare-fun _$t0 () Bool)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun |Store__T@[Int]$1_TestMutRef_T_| (|T@[Int]$1_TestMutRef_T| Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(assert (forall ( ( ?x0 |T@[Int]$1_TestMutRef_T|) ( ?x1 Int) ( ?x2 T@$1_TestMutRef_T)) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|Store__T@[Int]$1_TestMutRef_T_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$1_TestMutRef_T|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$1_TestMutRef_T)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$1_TestMutRef_T_| (|Store__T@[Int]$1_TestMutRef_T_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$1_TestMutRef_T_| ?x0 ?y1))) :weight 0)))
(declare-fun MapConstVec_14033 (T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun DefaultVecElem_14033 () T@$1_TestMutRef_T)
(declare-fun $t22@0 () Bool)
(declare-fun $t18@2 () T@$Mutation_26057)
(declare-fun $t18@3 () T@$Mutation_26057)
(declare-fun $t19@0 () T@$Mutation_4742)
(declare-fun $t21@0 () Bool)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1 () T@$Mutation_26057)
(declare-fun $t18@1 () T@$Mutation_26057)
(declare-fun $abort_flag@3 () Bool)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1 () T@$Mutation_4742)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@0 () T@$Mutation_4742)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@0 () T@$Mutation_26057)
(declare-fun $abort_code@4 () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t6@1 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@3| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1 () T@$Mutation_4742)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@2| () T@$1_TestMutRef_V)
(declare-fun $t18@0 () T@$Mutation_26057)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@2| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@2| () T@$Mutation_4742)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@0| () T@$Mutation_4742)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$v@1| () T@Vec_6978)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@1| () T@$Mutation_4742)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1 () T@$Mutation_20968)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@1 () T@$Mutation_4742)
(declare-fun |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2| () T@$Mutation_19343)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@1| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@0| () T@$Mutation_19343)
(declare-fun |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1| () T@Vec_16776)
(declare-fun |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@1| () T@$Mutation_19343)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1 () T@$Mutation_18356)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@0 () T@$Mutation_4742)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@0 () T@$Mutation_20968)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t5@0 () T@$Mutation_4742)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@0 () T@$Mutation_18356)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t9@0 () T@$Mutation_19343)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@0 () T@$Mutation_4742)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@1| () T@$1_TestMutRef_V)
(declare-fun |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1| () T@$Mutation_18356)
(declare-fun $t3@1 () T@Vec_16776)
(declare-fun $t4@0 () T@$1_TestMutRef_V)
(declare-fun $t1@1 () T@Vec_6978)
(declare-fun $t13@0 () T@$Mutation_18356)
(declare-fun $t15@0 () T@$1_TestMutRef_T)
(declare-fun |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1| () T@$Mutation_18356)
(declare-fun $t3@0 () T@Vec_16776)
(declare-fun $t10@0 () T@$Mutation_18356)
(declare-fun $t12@0 () T@$1_TestMutRef_T)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_20968)
(declare-fun |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1| () T@Vec_16776)
(declare-fun $t8@0 () T@$Mutation_20968)
(declare-fun $t1@0 () T@Vec_6978)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_20968)
(declare-fun $t6@0 () T@$Mutation_20968)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_6978)
(declare-fun $t2 () T@$Mutation_4742)
(declare-fun $t6 () T@$Mutation_20968)
(declare-fun $t8 () T@$Mutation_20968)
(declare-fun $t10 () T@$Mutation_18356)
(declare-fun $t13 () T@$Mutation_18356)
(declare-fun $t18 () T@$Mutation_26057)
(declare-fun $t19 () T@$Mutation_4742)
(push 1)
(set-info :boogie-vc-id $1_TestMutRef_call_return_ref_different_path_vec2_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 53130) (let ((L4_correct  (and (=> (= (ControlFlow 0 44290) (- 0 54718)) (let (($range_0 (|$ts#$1_TestMutRef_V| (|v#$Mutation_26057| $t18@4))))
(forall (($i_1 Int) ) (!  (=> (InRangeVec_14013 $range_0 $i_1) (let (($elem (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| $range_0) $i_1)))
(> (|$value#$1_TestMutRef_T| $elem) 0)))
 :qid |mutrefdefaultz3bpl.2397:73|
 :skolemid |52|
)))) (=> (let (($range_0 (|$ts#$1_TestMutRef_V| (|v#$Mutation_26057| $t18@4))))
(forall (($i_1@@0 Int) ) (!  (=> (InRangeVec_14013 $range_0 $i_1@@0) (let (($elem (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| $range_0) $i_1@@0)))
(> (|$value#$1_TestMutRef_T| $elem) 0)))
 :qid |mutrefdefaultz3bpl.2397:73|
 :skolemid |52|
))) (=> (and (= $t4@1 (|v#$Mutation_26057| $t18@4)) (= $t4@1 $t4@1)) (and (=> (= (ControlFlow 0 44290) (- 0 54780)) (=> _$t0 (and (|$IsEqual'vec'u64''| (|$is#$1_TestMutRef_V| $t4@1) (|$is#$1_TestMutRef_V| ($1_TestMutRef_V (let ((m2@@0 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 0) 1))))
(let ((l2 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 0) 1))))
(let ((m1@@0 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(let ((l1 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(Vec_6978 (|lambda#5| 0 (+ l1 l2) l1 m1@@0 m2@@0 l1 DefaultVecElem_4347) (+ l1 l2)))))) (let ((m2@@1 (|v#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 4)) 1))))
(let ((l2@@0 (|l#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 4)) 1))))
(let ((m1@@1 (|v#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 3)) 1))))
(let ((l1@@0 (|l#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 3)) 1))))
(Vec_16776 (|lambda#2| 0 (+ l1@@0 l2@@0) l1@@0 m1@@1 m2@@1 l1@@0 DefaultVecElem_14033) (+ l1@@0 l2@@0))))))))) (|$IsEqual'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| $t4@1) (|$ts#$1_TestMutRef_V| ($1_TestMutRef_V (let ((m2@@0 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 0) 1))))
(let ((l2 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 0) 1))))
(let ((m1@@0 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(let ((l1 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(Vec_6978 (|lambda#5| 0 (+ l1 l2) l1 m1@@0 m2@@0 l1 DefaultVecElem_4347) (+ l1 l2)))))) (let ((m2@@1 (|v#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 4)) 1))))
(let ((l2@@0 (|l#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 4)) 1))))
(let ((m1@@1 (|v#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 3)) 1))))
(let ((l1@@0 (|l#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 3)) 1))))
(Vec_16776 (|lambda#2| 0 (+ l1@@0 l2@@0) l1@@0 m1@@1 m2@@1 l1@@0 DefaultVecElem_14033) (+ l1@@0 l2@@0)))))))))))) (=> (=> _$t0 (and (|$IsEqual'vec'u64''| (|$is#$1_TestMutRef_V| $t4@1) (|$is#$1_TestMutRef_V| ($1_TestMutRef_V (let ((m2@@0 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 0) 1))))
(let ((l2 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 0) 1))))
(let ((m1@@0 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(let ((l1 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(Vec_6978 (|lambda#5| 0 (+ l1 l2) l1 m1@@0 m2@@0 l1 DefaultVecElem_4347) (+ l1 l2)))))) (let ((m2@@1 (|v#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 4)) 1))))
(let ((l2@@0 (|l#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 4)) 1))))
(let ((m1@@1 (|v#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 3)) 1))))
(let ((l1@@0 (|l#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 3)) 1))))
(Vec_16776 (|lambda#2| 0 (+ l1@@0 l2@@0) l1@@0 m1@@1 m2@@1 l1@@0 DefaultVecElem_14033) (+ l1@@0 l2@@0))))))))) (|$IsEqual'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| $t4@1) (|$ts#$1_TestMutRef_V| ($1_TestMutRef_V (let ((m2@@0 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 0) 1))))
(let ((l2 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 0) 1))))
(let ((m1@@0 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(let ((l1 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(Vec_6978 (|lambda#5| 0 (+ l1 l2) l1 m1@@0 m2@@0 l1 DefaultVecElem_4347) (+ l1 l2)))))) (let ((m2@@1 (|v#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 4)) 1))))
(let ((l2@@0 (|l#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 4)) 1))))
(let ((m1@@1 (|v#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 3)) 1))))
(let ((l1@@0 (|l#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 3)) 1))))
(Vec_16776 (|lambda#2| 0 (+ l1@@0 l2@@0) l1@@0 m1@@1 m2@@1 l1@@0 DefaultVecElem_14033) (+ l1@@0 l2@@0))))))))))) (=> (= (ControlFlow 0 44290) (- 0 54815)) (=> (not _$t0) (and (|$IsEqual'vec'u64''| (|$is#$1_TestMutRef_V| $t4@1) (|$is#$1_TestMutRef_V| ($1_TestMutRef_V (let ((m2@@2 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 2) 1))))
(let ((l2@@1 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 2) 1))))
(let ((m1@@2 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(let ((l1@@1 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(Vec_6978 (|lambda#5| 0 (+ l1@@1 l2@@1) l1@@1 m1@@2 m2@@2 l1@@1 DefaultVecElem_4347) (+ l1@@1 l2@@1)))))) (let ((m2@@3 (|v#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 4)) 1))))
(let ((l2@@2 (|l#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 4)) 1))))
(let ((m1@@3 (|v#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 0)) 1))))
(let ((l1@@2 (|l#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 0)) 1))))
(Vec_16776 (|lambda#2| 0 (+ l1@@2 l2@@2) l1@@2 m1@@3 m2@@3 l1@@2 DefaultVecElem_14033) (+ l1@@2 l2@@2))))))))) (|$IsEqual'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| $t4@1) (|$ts#$1_TestMutRef_V| ($1_TestMutRef_V (let ((m2@@2 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 2) 1))))
(let ((l2@@1 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 2) 1))))
(let ((m1@@2 (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(let ((l1@@1 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1))))
(Vec_6978 (|lambda#5| 0 (+ l1@@1 l2@@1) l1@@1 m1@@2 m2@@2 l1@@1 DefaultVecElem_4347) (+ l1@@1 l2@@1)))))) (let ((m2@@3 (|v#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 4)) 1))))
(let ((l2@@2 (|l#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 4)) 1))))
(let ((m1@@3 (|v#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 0)) 1))))
(let ((l1@@2 (|l#Vec_16776| (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (MapConstVec_14033 DefaultVecElem_14033) 0 ($1_TestMutRef_T 0)) 1))))
(Vec_16776 (|lambda#2| 0 (+ l1@@2 l2@@2) l1@@2 m1@@3 m2@@3 l1@@2 DefaultVecElem_14033) (+ l1@@2 l2@@2)))))))))))))))))))
(let ((anon29_Else_correct  (=> (not $t22@0) (=> (and (= $t18@4 $t18@2) (= (ControlFlow 0 44157) 44290)) L4_correct))))
(let ((anon29_Then_correct  (=> (and (and $t22@0 (= $t18@3 ($Mutation_26057 (|l#$Mutation_26057| $t18@2) (|p#$Mutation_26057| $t18@2) (let (($$sel0 (|$ts#$1_TestMutRef_V| (|v#$Mutation_26057| $t18@2))))
($1_TestMutRef_V (|$is#$1_TestMutRef_V| (|v#$Mutation_26057| $t18@2)) (Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| $$sel0) (|Select__T@[Int]Int_| (|v#Vec_6978| (|p#$Mutation_4742| $t19@0)) (+ (|l#Vec_6978| (|p#$Mutation_26057| $t18@2)) 1)) ($1_TestMutRef_T (|v#$Mutation_4742| $t19@0))) (|l#Vec_16776| $$sel0))))))) (and (= $t18@4 $t18@3) (= (ControlFlow 0 44362) 44290))) L4_correct)))
(let ((L2_correct  (=> (= $t22@0  (and (= (|l#$Mutation_26057| $t18@2) (|l#$Mutation_4742| $t19@0)) (let ((pp (|p#$Mutation_26057| $t18@2)))
(let ((cp (|p#$Mutation_4742| $t19@0)))
(let ((pl (|l#Vec_6978| pp)))
(let ((cl (|l#Vec_6978| cp)))
(let ((el (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1 (- 0 1)) 2 0) 3))))
 (and (and (= cl (+ pl el)) (forall ((i@@23 Int) ) (!  (=> (and (>= i@@23 0) (< i@@23 pl)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| pp) i@@23) (|Select__T@[Int]Int_| (|v#Vec_6978| cp) i@@23)))
 :qid |mutrefdefaultz3bpl.316:14|
 :skolemid |13|
))) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 el)) (or (= (|Select__T@[Int]Int_| (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1 (- 0 1)) 2 0) 3)) i@@24) (- 0 1)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 1) 1 (- 0 1)) 2 0) 3)) i@@24) (|Select__T@[Int]Int_| (|v#Vec_6978| cp) (+ pl i@@24)))))
 :qid |mutrefdefaultz3bpl.317:14|
 :skolemid |14|
)))))))))) (and (=> (= (ControlFlow 0 44151) 44362) anon29_Then_correct) (=> (= (ControlFlow 0 44151) 44157) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (not $t21@0) (=> (and (= $t18@2 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1) (= (ControlFlow 0 44133) 44151)) L2_correct))))
(let ((anon28_Then_correct  (=> (and (and $t21@0 (= $t18@1 ($Mutation_26057 (|l#$Mutation_26057| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1) (|p#$Mutation_26057| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1) (let (($$sel0@@0 (|$is#$1_TestMutRef_V| (|v#$Mutation_26057| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1))))
($1_TestMutRef_V (Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| $$sel0@@0) (|Select__T@[Int]Int_| (|v#Vec_6978| (|p#$Mutation_4742| $t19@0)) (+ (|l#Vec_6978| (|p#$Mutation_26057| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1)) 1)) (|v#$Mutation_4742| $t19@0)) (|l#Vec_6978| $$sel0@@0)) (|$ts#$1_TestMutRef_V| (|v#$Mutation_26057| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1))))))) (and (= $t18@2 $t18@1) (= (ControlFlow 0 44408) 44151))) L2_correct)))
(let ((anon27_Else_correct  (=> (and (not $abort_flag@3) (= |$temp_0'u64'@0| (|v#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1))) (=> (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (|$IsValid'u64'| 0)) (and (= $t19@0 ($Mutation_4742 (|l#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1) (|p#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1) 0)) (= $t21@0  (and (= (|l#$Mutation_26057| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1) (|l#$Mutation_4742| $t19@0)) (let ((pp@@0 (|p#$Mutation_26057| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1)))
(let ((cp@@0 (|p#$Mutation_4742| $t19@0)))
(let ((pl@@0 (|l#Vec_6978| pp@@0)))
(let ((cl@@0 (|l#Vec_6978| cp@@0)))
(let ((el@@0 (|l#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 0) 1 (- 0 1)) 2))))
 (and (and (= cl@@0 (+ pl@@0 el@@0)) (forall ((i@@25 Int) ) (!  (=> (and (>= i@@25 0) (< i@@25 pl@@0)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| pp@@0) i@@25) (|Select__T@[Int]Int_| (|v#Vec_6978| cp@@0) i@@25)))
 :qid |mutrefdefaultz3bpl.316:14|
 :skolemid |13|
))) (forall ((i@@26 Int) ) (!  (=> (and (>= i@@26 0) (< i@@26 el@@0)) (or (= (|Select__T@[Int]Int_| (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 0) 1 (- 0 1)) 2)) i@@26) (- 0 1)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| (Vec_6978 (|Store__T@[Int]Int_| (|Store__T@[Int]Int_| (MapConstVec_4347 DefaultVecElem_4347) 0 0) 1 (- 0 1)) 2)) i@@26) (|Select__T@[Int]Int_| (|v#Vec_6978| cp@@0) (+ pl@@0 i@@26)))))
 :qid |mutrefdefaultz3bpl.317:14|
 :skolemid |14|
)))))))))))) (and (=> (= (ControlFlow 0 44127) 44408) anon28_Then_correct) (=> (= (ControlFlow 0 44127) 44133) anon28_Else_correct))))))
(let ((anon27_Then_correct true))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$L15_correct  (=> (and (and (= $abort_flag@3 true) (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@0)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@0) (= $abort_code@4 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t6@1))) (and (=> (= (ControlFlow 0 43827) 44422) anon27_Then_correct) (=> (= (ControlFlow 0 43827) 44127) anon27_Else_correct)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t6@1 $abort_code@2) (= (ControlFlow 0 44073) 43827))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$L15_correct)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t6@1 $abort_code@1) (= (ControlFlow 0 43821) 43827))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$L15_correct)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$L3_correct  (=> (and (and (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@3| (|v#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@3| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@3|)) (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@2| (|v#$Mutation_26057| $t18@0)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@2| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@2|))) (and (and (= $abort_flag@3 $abort_flag@2) (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1 $t18@0) (= $abort_code@4 $abort_code@3)))) (and (=> (= (ControlFlow 0 43807) 44422) anon27_Then_correct) (=> (= (ControlFlow 0 43807) 44127) anon27_Else_correct)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Else_correct  (=> (not $abort_flag@1) (=> (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@2| (|v#$Mutation_4742| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@2| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@2|)) (=> (and (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1 |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) (= $abort_code@3 $abort_code@2)) (and (= $abort_flag@2 $abort_flag@1) (= (ControlFlow 0 44059) 43807))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$L3_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@0|)) (and (=> (= (ControlFlow 0 44031) 44073) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Then_correct) (=> (= (ControlFlow 0 44031) 44059) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_4118 |inline$$1_Vector_borrow_mut'u64'$0$v@1| 1)) (= (ControlFlow 0 44029) 44031)) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|  (=> (InRangeVec_4118 |inline$$1_Vector_borrow_mut'u64'$0$v@1| 1) (=> (and (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@1| ($Mutation_4742 (|l#$Mutation_20968| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1) (let ((l (|l#Vec_6978| (|p#$Mutation_20968| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1))))
(Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| (|p#$Mutation_20968| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1)) l 1) (+ l 1))) (|Select__T@[Int]Int_| (|v#Vec_6978| |inline$$1_Vector_borrow_mut'u64'$0$v@1|) 1))) (= $abort_flag@1 false)) (and (= $abort_code@2 $abort_code@0) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@1|))) (and (=> (= (ControlFlow 0 43979) 44073) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Then_correct) (=> (= (ControlFlow 0 43979) 44059) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$0$v@1| (|v#$Mutation_20968| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1)) (and (=> (= (ControlFlow 0 43949) 44029) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 43949) 43979) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon7_Then_correct  (=> (and (and _$t0 (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1 ($Mutation_20968 (|l#$Mutation_26057| $t18@0) (let ((l@@0 (|l#Vec_6978| (|p#$Mutation_26057| $t18@0))))
(Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| (|p#$Mutation_26057| $t18@0)) l@@0 0) (+ l@@0 1))) (|$is#$1_TestMutRef_V| (|v#$Mutation_26057| $t18@0))))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 44039) 43949))) |inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Else_correct  (=> (and (and (and (not $abort_flag@0) (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@1 ($Mutation_4742 (|l#$Mutation_19343| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2|) (let ((l@@1 (|l#Vec_6978| (|p#$Mutation_19343| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2|))))
(Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| (|p#$Mutation_19343| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2|)) l@@1 0) (+ l@@1 1))) (|$value#$1_TestMutRef_T| (|v#$Mutation_19343| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2|))))) (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@1| (|v#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@1)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@1| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@1|))) (and (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@1) (= $abort_code@3 $abort_code@1)) (and (= $abort_flag@2 $abort_flag@0) (= (ControlFlow 0 43779) 43807)))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$L3_correct)))
(let ((|inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@0|)) (and (=> (= (ControlFlow 0 43739) 43821) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Then_correct) (=> (= (ControlFlow 0 43739) 43779) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_14013 |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1| 0)) (= (ControlFlow 0 43737) 43739)) |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Else_correct|  (=> (InRangeVec_14013 |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1| 0) (=> (and (and (= |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@1| ($Mutation_19343 (|l#$Mutation_18356| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1) (let ((l@@2 (|l#Vec_6978| (|p#$Mutation_18356| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1))))
(Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| (|p#$Mutation_18356| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1)) l@@2 0) (+ l@@2 1))) (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1|) 0))) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@1|))) (and (=> (= (ControlFlow 0 43687) 43821) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Then_correct) (=> (= (ControlFlow 0 43687) 43779) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1| (|v#$Mutation_18356| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1)) (and (=> (= (ControlFlow 0 43657) 43737) |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 43657) 43687) |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Else_correct|)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon7_Else_correct  (=> (and (and (not _$t0) (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1 ($Mutation_18356 (|l#$Mutation_26057| $t18@0) (let ((l@@3 (|l#Vec_6978| (|p#$Mutation_26057| $t18@0))))
(Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| (|p#$Mutation_26057| $t18@0)) l@@3 1) (+ l@@3 1))) (|$ts#$1_TestMutRef_V| (|v#$Mutation_26057| $t18@0))))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 43747) 43657))) |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon0_correct|)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon0_correct  (=> (= (|l#Vec_6978| (|p#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@0)) 0) (=> (and (and (and (= (|l#Vec_6978| (|p#$Mutation_20968| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@0)) 0) (= (|l#Vec_6978| (|p#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t5@0)) 0)) (and (= (|l#Vec_6978| (|p#$Mutation_18356| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@0)) 0) (= (|l#Vec_6978| (|p#$Mutation_19343| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t9@0)) 0))) (and (and (= (|l#Vec_6978| (|p#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@0)) 0) (= _$t0 _$t0)) (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@1| (|v#$Mutation_26057| $t18@0)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@1| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@1|)))) (and (=> (= (ControlFlow 0 43533) 44039) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon7_Then_correct) (=> (= (ControlFlow 0 43533) 43747) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon7_Else_correct))))))
(let ((anon26_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 44081) (- 0 53858)) (let (($range_0@@0 (|v#$Mutation_18356| |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1|)))
(forall (($i_1@@1 Int) ) (!  (=> (InRangeVec_14013 $range_0@@0 $i_1@@1) (let (($elem@@0 (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| $range_0@@0) $i_1@@1)))
(> (|$value#$1_TestMutRef_T| $elem@@0) 0)))
 :qid |mutrefdefaultz3bpl.2318:52|
 :skolemid |51|
)))) (=> (let (($range_0@@0 (|v#$Mutation_18356| |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1|)))
(forall (($i_1@@2 Int) ) (!  (=> (InRangeVec_14013 $range_0@@0 $i_1@@2) (let (($elem@@0 (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| $range_0@@0) $i_1@@2)))
(> (|$value#$1_TestMutRef_T| $elem@@0) 0)))
 :qid |mutrefdefaultz3bpl.2318:52|
 :skolemid |51|
))) (=> (= $t3@1 (|v#$Mutation_18356| |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1|)) (=> (and (and (= $t4@0 ($1_TestMutRef_V $t1@1 $t3@1)) (= $t4@0 $t4@0)) (and (= $t18@0 ($Mutation_26057 ($Local 4) (Vec_6978 (MapConstVec_4347 DefaultVecElem_4347) 0) $t4@0)) (= (ControlFlow 0 44081) 43533))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon0_correct)))))))
(let ((anon26_Then_correct true))
(let ((|inline$$1_Vector_push_back'$1_TestMutRef_T'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1| ($Mutation_18356 (|l#$Mutation_18356| $t13@0) (|p#$Mutation_18356| $t13@0) (let ((l@@4 (|l#Vec_16776| (|v#$Mutation_18356| $t13@0))))
(Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| (|v#$Mutation_18356| $t13@0)) l@@4 $t15@0) (+ l@@4 1))))) (and (=> (= (ControlFlow 0 43017) 44442) anon26_Then_correct) (=> (= (ControlFlow 0 43017) 44081) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 43023) (- 0 53727)) (let (($range_0@@1 (|v#$Mutation_18356| |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1|)))
(forall (($i_1@@3 Int) ) (!  (=> (InRangeVec_14013 $range_0@@1 $i_1@@3) (let (($elem@@1 (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| $range_0@@1) $i_1@@3)))
(> (|$value#$1_TestMutRef_T| $elem@@1) 0)))
 :qid |mutrefdefaultz3bpl.2280:52|
 :skolemid |50|
)))) (=> (let (($range_0@@1 (|v#$Mutation_18356| |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1|)))
(forall (($i_1@@4 Int) ) (!  (=> (InRangeVec_14013 $range_0@@1 $i_1@@4) (let (($elem@@1 (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| $range_0@@1) $i_1@@4)))
(> (|$value#$1_TestMutRef_T| $elem@@1) 0)))
 :qid |mutrefdefaultz3bpl.2280:52|
 :skolemid |50|
))) (=> (and (and (= $t3@0 (|v#$Mutation_18356| |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1|)) (= $t13@0 ($Mutation_18356 ($Local 3) (Vec_6978 (MapConstVec_4347 DefaultVecElem_4347) 0) $t3@0))) (and (|$IsValid'u64'| 4) (= $t15@0 ($1_TestMutRef_T 4)))) (and (=> (= (ControlFlow 0 43023) (- 0 53807)) (> (|$value#$1_TestMutRef_T| $t15@0) 0)) (=> (> (|$value#$1_TestMutRef_T| $t15@0) 0) (=> (= (ControlFlow 0 43023) 43017) |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$anon0_correct|)))))))))
(let ((anon25_Then_correct true))
(let ((|inline$$1_Vector_push_back'$1_TestMutRef_T'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1| ($Mutation_18356 (|l#$Mutation_18356| $t10@0) (|p#$Mutation_18356| $t10@0) (let ((l@@5 (|l#Vec_16776| (|v#$Mutation_18356| $t10@0))))
(Vec_16776 (|Store__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| (|v#$Mutation_18356| $t10@0)) l@@5 $t12@0) (+ l@@5 1))))) (and (=> (= (ControlFlow 0 42877) 44456) anon25_Then_correct) (=> (= (ControlFlow 0 42877) 43023) anon25_Else_correct)))))
(let ((anon24_Else_correct  (=> (not false) (=> (and (and (= $t1@1 (|v#$Mutation_20968| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t10@0 ($Mutation_18356 ($Local 3) (Vec_6978 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1|))) (and (|$IsValid'u64'| 3) (= $t12@0 ($1_TestMutRef_T 3)))) (and (=> (= (ControlFlow 0 42883) (- 0 53676)) (> (|$value#$1_TestMutRef_T| $t12@0) 0)) (=> (> (|$value#$1_TestMutRef_T| $t12@0) 0) (=> (= (ControlFlow 0 42883) 42877) |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$anon0_correct|)))))))
(let ((anon24_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_20968 (|l#$Mutation_20968| $t8@0) (|p#$Mutation_20968| $t8@0) (let ((l@@6 (|l#Vec_6978| (|v#$Mutation_20968| $t8@0))))
(Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| (|v#$Mutation_20968| $t8@0)) l@@6 2) (+ l@@6 1))))) (and (=> (= (ControlFlow 0 42774) 44470) anon24_Then_correct) (=> (= (ControlFlow 0 42774) 42883) anon24_Else_correct)))))
(let ((anon23_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_20968| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t8@0 ($Mutation_20968 ($Local 1) (Vec_6978 (MapConstVec_4347 DefaultVecElem_4347) 0) $t1@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 42780) 42774))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon23_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_20968 (|l#$Mutation_20968| $t6@0) (|p#$Mutation_20968| $t6@0) (let ((l@@7 (|l#Vec_6978| (|v#$Mutation_20968| $t6@0))))
(Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| (|v#$Mutation_20968| $t6@0)) l@@7 1) (+ l@@7 1))))) (and (=> (= (ControlFlow 0 42687) 44484) anon23_Then_correct) (=> (= (ControlFlow 0 42687) 42780) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1| |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1|) (= $t6@0 ($Mutation_20968 ($Local 1) (Vec_6978 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 42693) 42687))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_empty'$1_TestMutRef_T'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1| (Vec_16776 (MapConstVec_14033 DefaultVecElem_14033) 0)) (and (=> (= (ControlFlow 0 42598) 44498) anon22_Then_correct) (=> (= (ControlFlow 0 42598) 42693) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 42604) 42598)) |inline$$1_Vector_empty'$1_TestMutRef_T'$0$anon0_correct|))))
(let ((anon21_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_6978 (MapConstVec_4347 DefaultVecElem_4347) 0)) (and (=> (= (ControlFlow 0 42556) 44512) anon21_Then_correct) (=> (= (ControlFlow 0 42556) 42604) anon21_Else_correct)))))
(let ((anon0$1_correct  (=> (and (= _$t0 _$t0) (= (ControlFlow 0 42562) 42556)) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (and (and (= (|l#Vec_6978| (|p#$Mutation_4742| $t2)) 0) (= (|l#Vec_6978| (|p#$Mutation_20968| $t6)) 0)) (and (= (|l#Vec_6978| (|p#$Mutation_20968| $t8)) 0) (= (|l#Vec_6978| (|p#$Mutation_18356| $t10)) 0))) (and (and (= (|l#Vec_6978| (|p#$Mutation_18356| $t13)) 0) (= (|l#Vec_6978| (|p#$Mutation_26057| $t18)) 0)) (and (= (|l#Vec_6978| (|p#$Mutation_4742| $t19)) 0) (= (ControlFlow 0 42518) 42562)))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 53130) 42518) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 53130)))
(get-value ((ControlFlow 0 42518)))
(get-value ((ControlFlow 0 42562)))
(get-value ((ControlFlow 0 42556)))
(get-value ((ControlFlow 0 42604)))
(get-value ((ControlFlow 0 42598)))
(get-value ((ControlFlow 0 42693)))
(get-value ((ControlFlow 0 42687)))
(get-value ((ControlFlow 0 42780)))
(get-value ((ControlFlow 0 42774)))
(get-value ((ControlFlow 0 42883)))
(get-value ((ControlFlow 0 42877)))
(get-value ((ControlFlow 0 43023)))
(get-value ((ControlFlow 0 43017)))
(get-value ((ControlFlow 0 44081)))
(get-value ((ControlFlow 0 43533)))
(get-value ((ControlFlow 0 43747)))
(get-value ((ControlFlow 0 43657)))
(get-value ((ControlFlow 0 43687)))
(get-value ((ControlFlow 0 43779)))
(get-value ((ControlFlow 0 43807)))
(get-value ((ControlFlow 0 44127)))
(get-value ((ControlFlow 0 44133)))
(get-value ((ControlFlow 0 44151)))
(get-value ((ControlFlow 0 44362)))
(get-value ((ControlFlow 0 44290)))
(assert (not (= (ControlFlow 0 44290) (- 54718))))
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
(declare-datatypes ((T@Vec_6978 0)) (((Vec_6978 (|v#Vec_6978| |T@[Int]Int|) (|l#Vec_6978| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_R 0)) ((($1_TestMutRef_R (|$value#$1_TestMutRef_R| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_T 0)) ((($1_TestMutRef_T (|$value#$1_TestMutRef_T| Int) ) ) ))
(declare-sort |T@[Int]$1_TestMutRef_T| 0)
(declare-datatypes ((T@Vec_16776 0)) (((Vec_16776 (|v#Vec_16776| |T@[Int]$1_TestMutRef_T|) (|l#Vec_16776| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_V 0)) ((($1_TestMutRef_V (|$is#$1_TestMutRef_V| T@Vec_6978) (|$ts#$1_TestMutRef_V| T@Vec_16776) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_N 0)) ((($1_TestMutRef_N (|$value#$1_TestMutRef_N| Int) (|$t#$1_TestMutRef_N| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_30903 0)) ((($Mutation_30903 (|l#$Mutation_30903| T@$Location) (|p#$Mutation_30903| T@Vec_6978) (|v#$Mutation_30903| T@$1_TestMutRef_R) ) ) ))
(declare-datatypes ((T@$Mutation_26057 0)) ((($Mutation_26057 (|l#$Mutation_26057| T@$Location) (|p#$Mutation_26057| T@Vec_6978) (|v#$Mutation_26057| T@$1_TestMutRef_V) ) ) ))
(declare-datatypes ((T@$Mutation_25002 0)) ((($Mutation_25002 (|l#$Mutation_25002| T@$Location) (|p#$Mutation_25002| T@Vec_6978) (|v#$Mutation_25002| T@$1_TestMutRef_N) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6978) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20968 0)) ((($Mutation_20968 (|l#$Mutation_20968| T@$Location) (|p#$Mutation_20968| T@Vec_6978) (|v#$Mutation_20968| T@Vec_6978) ) ) ))
(declare-datatypes ((T@$Mutation_19343 0)) ((($Mutation_19343 (|l#$Mutation_19343| T@$Location) (|p#$Mutation_19343| T@Vec_6978) (|v#$Mutation_19343| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Mutation_18356 0)) ((($Mutation_18356 (|l#$Mutation_18356| T@$Location) (|p#$Mutation_18356| T@Vec_6978) (|v#$Mutation_18356| T@Vec_16776) ) ) ))
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
(declare-fun |$IsEqual'vec'$1_TestMutRef_T''| (T@Vec_16776 T@Vec_16776) Bool)
(declare-fun InRangeVec_14013 (T@Vec_16776 Int) Bool)
(declare-fun |Select__T@[Int]$1_TestMutRef_T_| (|T@[Int]$1_TestMutRef_T| Int) T@$1_TestMutRef_T)
(declare-fun |$IsValid'vec'$1_TestMutRef_T''| (T@Vec_16776) Bool)
(declare-fun |$IsValid'$1_TestMutRef_T'| (T@$1_TestMutRef_T) Bool)
(declare-fun |$IndexOfVec'$1_TestMutRef_T'| (T@Vec_16776 T@$1_TestMutRef_T) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6978 T@Vec_6978) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6978 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6978) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6978 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6978 T@Vec_6978) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6978) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6978 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6978) T@Vec_6978)
(declare-fun $1_Hash_sha3 (T@Vec_6978) T@Vec_6978)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6978) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6978 T@Vec_6978 T@Vec_6978) Bool)
(declare-fun |$IsValid'$1_TestMutRef_N'| (T@$1_TestMutRef_N) Bool)
(declare-fun |$IsValid'$1_TestMutRef_R'| (T@$1_TestMutRef_R) Bool)
(declare-fun |$IsValid'$1_TestMutRef_V'| (T@$1_TestMutRef_V) Bool)
(declare-fun IndexOfVec_6978 (T@Vec_6978 Int) Int)
(declare-fun IndexOfVec_16776 (T@Vec_16776 T@$1_TestMutRef_T) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]$1_TestMutRef_T| |T@[Int]$1_TestMutRef_T| Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#3| (Int Int |T@[Int]$1_TestMutRef_T| Int Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]$1_TestMutRef_T| |T@[Int]$1_TestMutRef_T| Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |mutrefdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_16776) (v2 T@Vec_16776) ) (! (= (|$IsEqual'vec'$1_TestMutRef_T''| v1 v2)  (and (= (|l#Vec_16776| v1) (|l#Vec_16776| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14013 v1 i@@0) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v1) i@@0) (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v2) i@@0)))
 :qid |mutrefdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |mutrefdefaultz3bpl.613:41|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$1_TestMutRef_T''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_16776) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_16776| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14013 v@@4 i@@1) (|$IsValid'$1_TestMutRef_T'| (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@4) i@@1)))
 :qid |mutrefdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |mutrefdefaultz3bpl.619:41|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_16776) (e T@$1_TestMutRef_T) ) (! (let ((i@@2 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14013 v@@5 i@@3)) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) i@@3) e))
 :qid |mutrefdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14013 v@@5 i@@2)) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) j) e)))
 :qid |mutrefdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |mutrefdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6978) (v2@@0 T@Vec_6978) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6978| v1@@0) (|l#Vec_6978| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6978| v2@@0) i@@4)))
 :qid |mutrefdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |mutrefdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6978) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6978| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6978| v@@6) i@@5)))
 :qid |mutrefdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |mutrefdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6978) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) i@@7) e@@0))
 :qid |mutrefdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) j@@0) e@@0)))
 :qid |mutrefdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |mutrefdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6978) (v2@@1 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6978| v1@@1) (|l#Vec_6978| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6978| v2@@1) i@@8)))
 :qid |mutrefdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |mutrefdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6978) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6978| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6978| v@@8) i@@9)))
 :qid |mutrefdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |mutrefdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6978) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) i@@11) e@@1))
 :qid |mutrefdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) j@@1) e@@1)))
 :qid |mutrefdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |mutrefdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6978) (v2@@2 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |mutrefdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6978) (v2@@3 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |mutrefdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6978) (k2 T@Vec_6978) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6978) (s2 T@Vec_6978) (k1@@0 T@Vec_6978) (k2@@0 T@Vec_6978) (m1 T@Vec_6978) (m2 T@Vec_6978) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefdefaultz3bpl.1297:36|
 :skolemid |42|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefdefaultz3bpl.1311:36|
 :skolemid |43|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefdefaultz3bpl.1324:36|
 :skolemid |44|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefdefaultz3bpl.1340:36|
 :skolemid |45|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 T@Vec_16776) (i@@12 Int) ) (! (= (InRangeVec_14013 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_16776| v@@10))))
 :qid |mutrefdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14013 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6978) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6978| v@@11))))
 :qid |mutrefdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6978) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6978 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) i@@15) e@@2))
 :qid |mutrefdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) j@@2) e@@2)))
 :qid |mutrefdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |mutrefdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6978 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_16776) (e@@3 T@$1_TestMutRef_T) ) (! (let ((i@@16 (IndexOfVec_16776 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_14013 v@@13 i@@17) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) i@@17) e@@3))
 :qid |mutrefdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_14013 v@@13 i@@16) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) j@@3) e@@3)))
 :qid |mutrefdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |mutrefdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_16776 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |mutrefdefaultz3bpl.275:54|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]$1_TestMutRef_T|) (|l#4| |T@[Int]$1_TestMutRef_T|) (|l#5| Int) (|l#6| T@$1_TestMutRef_T) (i@@19 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]$1_TestMutRef_T_| |l#3| i@@19) (|Select__T@[Int]$1_TestMutRef_T_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |mutrefdefaultz3bpl.73:19|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]$1_TestMutRef_T|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$1_TestMutRef_T) (i@@20 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]$1_TestMutRef_T_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |mutrefdefaultz3bpl.82:30|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$1_TestMutRef_T|) (|l#4@@1| |T@[Int]$1_TestMutRef_T|) (|l#5@@1| Int) (|l#6@@0| T@$1_TestMutRef_T) (j@@4 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]$1_TestMutRef_T_| |l#3@@1| j@@4) (|Select__T@[Int]$1_TestMutRef_T_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |mutrefdefaultz3bpl.63:20|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |mutrefdefaultz3bpl.73:19|
 :skolemid |59|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |mutrefdefaultz3bpl.82:30|
 :skolemid |60|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |mutrefdefaultz3bpl.63:20|
 :skolemid |61|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t6@2 () T@$Mutation_19343)
(declare-fun $t2@1 () T@$1_TestMutRef_T)
(declare-fun $t3@1 () T@$1_TestMutRef_R)
(declare-fun $t7@2 () T@$Mutation_30903)
(declare-fun _$t0 () Bool)
(declare-fun $t12@0 () Bool)
(declare-fun $t7@0 () T@$Mutation_30903)
(declare-fun $t7@1 () T@$Mutation_30903)
(declare-fun $t8@0 () T@$Mutation_4742)
(declare-fun $t11@0 () Bool)
(declare-fun $t6@0 () T@$Mutation_19343)
(declare-fun $t6@1 () T@$Mutation_19343)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_root$0$$t3@1 () T@$Mutation_4742)
(declare-fun |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@3| () Int)
(declare-fun |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_T'@2| () T@$1_TestMutRef_T)
(declare-fun |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_R'@2| () T@$1_TestMutRef_R)
(declare-fun inline$$1_TestMutRef_return_ref_different_root$0$$t5@1 () T@$Mutation_4742)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@2| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_root$0$$t4@1 () T@$Mutation_4742)
(declare-fun |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@1| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_root$0$$t3@0 () T@$Mutation_4742)
(declare-fun inline$$1_TestMutRef_return_ref_different_root$0$$t4@0 () T@$Mutation_4742)
(declare-fun inline$$1_TestMutRef_return_ref_different_root$0$$t5@0 () T@$Mutation_4742)
(declare-fun |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_T'@1| () T@$1_TestMutRef_T)
(declare-fun |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_R'@1| () T@$1_TestMutRef_R)
(declare-fun $t2@0 () T@$1_TestMutRef_T)
(declare-fun $t3@0 () T@$1_TestMutRef_R)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun $t1 () T@$Mutation_4742)
(declare-fun $t6 () T@$Mutation_19343)
(declare-fun $t7 () T@$Mutation_30903)
(declare-fun $t8 () T@$Mutation_4742)
(push 1)
(set-info :boogie-vc-id $1_TestMutRef_call_return_ref_different_root$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 54873) (let ((L4_correct  (and (=> (= (ControlFlow 0 45547) (- 0 55492)) (> (|$value#$1_TestMutRef_T| (|v#$Mutation_19343| $t6@2)) 0)) (=> (> (|$value#$1_TestMutRef_T| (|v#$Mutation_19343| $t6@2)) 0) (=> (and (and (= $t2@1 (|v#$Mutation_19343| $t6@2)) (= $t3@1 (|v#$Mutation_30903| $t7@2))) (and (= $t2@1 $t2@1) (= $t3@1 $t3@1))) (and (=> (= (ControlFlow 0 45547) (- 0 55545)) (=> _$t0 (and (= $t2@1 ($1_TestMutRef_T 5)) (= $t3@1 ($1_TestMutRef_R 10))))) (=> (=> _$t0 (and (= $t2@1 ($1_TestMutRef_T 5)) (= $t3@1 ($1_TestMutRef_R 10)))) (=> (= (ControlFlow 0 45547) (- 0 55567)) (=> (not _$t0) (and (= $t2@1 ($1_TestMutRef_T 1)) (= $t3@1 ($1_TestMutRef_R 5))))))))))))
(let ((anon11_Else_correct  (=> (not $t12@0) (=> (and (= $t7@2 $t7@0) (= (ControlFlow 0 45449) 45547)) L4_correct))))
(let ((anon11_Then_correct  (=> (and (and $t12@0 (= $t7@1 ($Mutation_30903 (|l#$Mutation_30903| $t7@0) (|p#$Mutation_30903| $t7@0) ($1_TestMutRef_R (|v#$Mutation_4742| $t8@0))))) (and (= $t7@2 $t7@1) (= (ControlFlow 0 45565) 45547))) L4_correct)))
(let ((L2_correct  (=> (= $t12@0  (and (= (|l#$Mutation_30903| $t7@0) (|l#$Mutation_4742| $t8@0)) (let ((pp (|p#$Mutation_30903| $t7@0)))
(let ((cp (|p#$Mutation_4742| $t8@0)))
(let ((pl (|l#Vec_6978| pp)))
(let ((cl (|l#Vec_6978| cp)))
 (and (and (= cl (+ pl 1)) (forall ((i@@23 Int) ) (!  (=> (and (>= i@@23 0) (< i@@23 pl)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| pp) i@@23) (|Select__T@[Int]Int_| (|v#Vec_6978| cp) i@@23)))
 :qid |mutrefdefaultz3bpl.302:14|
 :skolemid |12|
))) (or (= 0 (- 0 1)) (= 0 (|Select__T@[Int]Int_| (|v#Vec_6978| cp) pl)))))))))) (and (=> (= (ControlFlow 0 45443) 45565) anon11_Then_correct) (=> (= (ControlFlow 0 45443) 45449) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (not $t11@0) (=> (and (= $t6@2 $t6@0) (= (ControlFlow 0 45433) 45443)) L2_correct))))
(let ((anon10_Then_correct  (=> (and (and $t11@0 (= $t6@1 ($Mutation_19343 (|l#$Mutation_19343| $t6@0) (|p#$Mutation_19343| $t6@0) ($1_TestMutRef_T (|v#$Mutation_4742| $t8@0))))) (and (= $t6@2 $t6@1) (= (ControlFlow 0 45583) 45443))) L2_correct)))
(let ((anon9_Else_correct  (=> (and (not false) (= |$temp_0'u64'@0| (|v#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_root$0$$t3@1))) (=> (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (|$IsValid'u64'| 5)) (and (= $t8@0 ($Mutation_4742 (|l#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_root$0$$t3@1) (|p#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_root$0$$t3@1) 5)) (= $t11@0  (and (= (|l#$Mutation_19343| $t6@0) (|l#$Mutation_4742| $t8@0)) (let ((pp@@0 (|p#$Mutation_19343| $t6@0)))
(let ((cp@@0 (|p#$Mutation_4742| $t8@0)))
(let ((pl@@0 (|l#Vec_6978| pp@@0)))
(let ((cl@@0 (|l#Vec_6978| cp@@0)))
 (and (and (= cl@@0 (+ pl@@0 1)) (forall ((i@@24 Int) ) (!  (=> (and (>= i@@24 0) (< i@@24 pl@@0)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| pp@@0) i@@24) (|Select__T@[Int]Int_| (|v#Vec_6978| cp@@0) i@@24)))
 :qid |mutrefdefaultz3bpl.302:14|
 :skolemid |12|
))) (or (= 0 (- 0 1)) (= 0 (|Select__T@[Int]Int_| (|v#Vec_6978| cp@@0) pl@@0)))))))))))) (and (=> (= (ControlFlow 0 45427) 45583) anon10_Then_correct) (=> (= (ControlFlow 0 45427) 45433) anon10_Else_correct))))))
(let ((anon9_Then_correct true))
(let ((inline$$1_TestMutRef_return_ref_different_root$0$L3_correct  (=> (and (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@3| (|v#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_root$0$$t3@1)) (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@3| |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@3|)) (=> (and (and (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_T'@2| (|v#$Mutation_19343| $t6@0)) (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_T'@2| |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_T'@2|)) (and (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_R'@2| (|v#$Mutation_30903| $t7@0)) (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_R'@2| |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_R'@2|))) (and (=> (= (ControlFlow 0 45349) 45601) anon9_Then_correct) (=> (= (ControlFlow 0 45349) 45427) anon9_Else_correct))))))
(let ((inline$$1_TestMutRef_return_ref_different_root$0$anon3_Else_correct  (=> (and (not _$t0) (= inline$$1_TestMutRef_return_ref_different_root$0$$t5@1 ($Mutation_4742 (|l#$Mutation_30903| $t7@0) (let ((l (|l#Vec_6978| (|p#$Mutation_30903| $t7@0))))
(Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| (|p#$Mutation_30903| $t7@0)) l 0) (+ l 1))) (|$value#$1_TestMutRef_R| (|v#$Mutation_30903| $t7@0))))) (=> (and (and (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@2| (|v#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_root$0$$t5@1)) (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@2| |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@2|)) (and (= inline$$1_TestMutRef_return_ref_different_root$0$$t3@1 inline$$1_TestMutRef_return_ref_different_root$0$$t5@1) (= (ControlFlow 0 45309) 45349))) inline$$1_TestMutRef_return_ref_different_root$0$L3_correct))))
(let ((inline$$1_TestMutRef_return_ref_different_root$0$anon3_Then_correct  (=> (and _$t0 (= inline$$1_TestMutRef_return_ref_different_root$0$$t4@1 ($Mutation_4742 (|l#$Mutation_19343| $t6@0) (let ((l@@0 (|l#Vec_6978| (|p#$Mutation_19343| $t6@0))))
(Vec_6978 (|Store__T@[Int]Int_| (|v#Vec_6978| (|p#$Mutation_19343| $t6@0)) l@@0 0) (+ l@@0 1))) (|$value#$1_TestMutRef_T| (|v#$Mutation_19343| $t6@0))))) (=> (and (and (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@1| (|v#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_root$0$$t4@1)) (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@1| |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@1|)) (and (= inline$$1_TestMutRef_return_ref_different_root$0$$t3@1 inline$$1_TestMutRef_return_ref_different_root$0$$t4@1) (= (ControlFlow 0 45377) 45349))) inline$$1_TestMutRef_return_ref_different_root$0$L3_correct))))
(let ((inline$$1_TestMutRef_return_ref_different_root$0$anon0_correct  (=> (and (and (and (= (|l#Vec_6978| (|p#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_root$0$$t3@0)) 0) (= (|l#Vec_6978| (|p#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_root$0$$t4@0)) 0)) (and (= (|l#Vec_6978| (|p#$Mutation_4742| inline$$1_TestMutRef_return_ref_different_root$0$$t5@0)) 0) (= _$t0 _$t0))) (and (and (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_T'@1| (|v#$Mutation_19343| $t6@0)) (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_T'@1| |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_T'@1|)) (and (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_R'@1| (|v#$Mutation_30903| $t7@0)) (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_R'@1| |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_R'@1|)))) (and (=> (= (ControlFlow 0 45279) 45377) inline$$1_TestMutRef_return_ref_different_root$0$anon3_Then_correct) (=> (= (ControlFlow 0 45279) 45309) inline$$1_TestMutRef_return_ref_different_root$0$anon3_Else_correct)))))
(let ((anon0$1_correct  (=> (= _$t0 _$t0) (=> (and (|$IsValid'u64'| 1) (= $t2@0 ($1_TestMutRef_T 1))) (and (=> (= (ControlFlow 0 45387) (- 0 55046)) (> (|$value#$1_TestMutRef_T| $t2@0) 0)) (=> (> (|$value#$1_TestMutRef_T| $t2@0) 0) (=> (= $t2@0 $t2@0) (=> (and (|$IsValid'u64'| 10) (= $t3@0 ($1_TestMutRef_R 10))) (=> (and (and (= $t3@0 $t3@0) (= $t6@0 ($Mutation_19343 ($Local 2) (Vec_6978 (MapConstVec_4347 DefaultVecElem_4347) 0) $t2@0))) (and (= $t7@0 ($Mutation_30903 ($Local 3) (Vec_6978 (MapConstVec_4347 DefaultVecElem_4347) 0) $t3@0)) (= (ControlFlow 0 45387) 45279))) inline$$1_TestMutRef_return_ref_different_root$0$anon0_correct)))))))))
(let ((anon0_correct  (=> (= (|l#Vec_6978| (|p#$Mutation_4742| $t1)) 0) (=> (and (and (= (|l#Vec_6978| (|p#$Mutation_19343| $t6)) 0) (= (|l#Vec_6978| (|p#$Mutation_30903| $t7)) 0)) (and (= (|l#Vec_6978| (|p#$Mutation_4742| $t8)) 0) (= (ControlFlow 0 44879) 45387))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 54873) 44879) anon0_correct)))
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
(declare-datatypes ((T@Vec_6978 0)) (((Vec_6978 (|v#Vec_6978| |T@[Int]Int|) (|l#Vec_6978| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_R 0)) ((($1_TestMutRef_R (|$value#$1_TestMutRef_R| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_T 0)) ((($1_TestMutRef_T (|$value#$1_TestMutRef_T| Int) ) ) ))
(declare-sort |T@[Int]$1_TestMutRef_T| 0)
(declare-datatypes ((T@Vec_16776 0)) (((Vec_16776 (|v#Vec_16776| |T@[Int]$1_TestMutRef_T|) (|l#Vec_16776| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_V 0)) ((($1_TestMutRef_V (|$is#$1_TestMutRef_V| T@Vec_6978) (|$ts#$1_TestMutRef_V| T@Vec_16776) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_N 0)) ((($1_TestMutRef_N (|$value#$1_TestMutRef_N| Int) (|$t#$1_TestMutRef_N| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_30903 0)) ((($Mutation_30903 (|l#$Mutation_30903| T@$Location) (|p#$Mutation_30903| T@Vec_6978) (|v#$Mutation_30903| T@$1_TestMutRef_R) ) ) ))
(declare-datatypes ((T@$Mutation_26057 0)) ((($Mutation_26057 (|l#$Mutation_26057| T@$Location) (|p#$Mutation_26057| T@Vec_6978) (|v#$Mutation_26057| T@$1_TestMutRef_V) ) ) ))
(declare-datatypes ((T@$Mutation_25002 0)) ((($Mutation_25002 (|l#$Mutation_25002| T@$Location) (|p#$Mutation_25002| T@Vec_6978) (|v#$Mutation_25002| T@$1_TestMutRef_N) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6978) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20968 0)) ((($Mutation_20968 (|l#$Mutation_20968| T@$Location) (|p#$Mutation_20968| T@Vec_6978) (|v#$Mutation_20968| T@Vec_6978) ) ) ))
(declare-datatypes ((T@$Mutation_19343 0)) ((($Mutation_19343 (|l#$Mutation_19343| T@$Location) (|p#$Mutation_19343| T@Vec_6978) (|v#$Mutation_19343| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Mutation_18356 0)) ((($Mutation_18356 (|l#$Mutation_18356| T@$Location) (|p#$Mutation_18356| T@Vec_6978) (|v#$Mutation_18356| T@Vec_16776) ) ) ))
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
(declare-fun |$IsEqual'vec'$1_TestMutRef_T''| (T@Vec_16776 T@Vec_16776) Bool)
(declare-fun InRangeVec_14013 (T@Vec_16776 Int) Bool)
(declare-fun |Select__T@[Int]$1_TestMutRef_T_| (|T@[Int]$1_TestMutRef_T| Int) T@$1_TestMutRef_T)
(declare-fun |$IsValid'vec'$1_TestMutRef_T''| (T@Vec_16776) Bool)
(declare-fun |$IsValid'$1_TestMutRef_T'| (T@$1_TestMutRef_T) Bool)
(declare-fun |$IndexOfVec'$1_TestMutRef_T'| (T@Vec_16776 T@$1_TestMutRef_T) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6978 T@Vec_6978) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6978 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6978) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6978 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6978 T@Vec_6978) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6978) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6978 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6978) T@Vec_6978)
(declare-fun $1_Hash_sha3 (T@Vec_6978) T@Vec_6978)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6978) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6978 T@Vec_6978 T@Vec_6978) Bool)
(declare-fun |$IsValid'$1_TestMutRef_N'| (T@$1_TestMutRef_N) Bool)
(declare-fun |$IsValid'$1_TestMutRef_R'| (T@$1_TestMutRef_R) Bool)
(declare-fun |$IsValid'$1_TestMutRef_V'| (T@$1_TestMutRef_V) Bool)
(declare-fun IndexOfVec_6978 (T@Vec_6978 Int) Int)
(declare-fun IndexOfVec_16776 (T@Vec_16776 T@$1_TestMutRef_T) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]$1_TestMutRef_T| |T@[Int]$1_TestMutRef_T| Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#3| (Int Int |T@[Int]$1_TestMutRef_T| Int Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]$1_TestMutRef_T| |T@[Int]$1_TestMutRef_T| Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |mutrefdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_16776) (v2 T@Vec_16776) ) (! (= (|$IsEqual'vec'$1_TestMutRef_T''| v1 v2)  (and (= (|l#Vec_16776| v1) (|l#Vec_16776| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14013 v1 i@@0) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v1) i@@0) (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v2) i@@0)))
 :qid |mutrefdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |mutrefdefaultz3bpl.613:41|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$1_TestMutRef_T''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_16776) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_16776| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14013 v@@4 i@@1) (|$IsValid'$1_TestMutRef_T'| (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@4) i@@1)))
 :qid |mutrefdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |mutrefdefaultz3bpl.619:41|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_16776) (e T@$1_TestMutRef_T) ) (! (let ((i@@2 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14013 v@@5 i@@3)) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) i@@3) e))
 :qid |mutrefdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14013 v@@5 i@@2)) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) j) e)))
 :qid |mutrefdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |mutrefdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6978) (v2@@0 T@Vec_6978) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6978| v1@@0) (|l#Vec_6978| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6978| v2@@0) i@@4)))
 :qid |mutrefdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |mutrefdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6978) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6978| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6978| v@@6) i@@5)))
 :qid |mutrefdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |mutrefdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6978) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) i@@7) e@@0))
 :qid |mutrefdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) j@@0) e@@0)))
 :qid |mutrefdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |mutrefdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6978) (v2@@1 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6978| v1@@1) (|l#Vec_6978| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6978| v2@@1) i@@8)))
 :qid |mutrefdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |mutrefdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6978) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6978| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6978| v@@8) i@@9)))
 :qid |mutrefdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |mutrefdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6978) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) i@@11) e@@1))
 :qid |mutrefdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) j@@1) e@@1)))
 :qid |mutrefdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |mutrefdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6978) (v2@@2 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |mutrefdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6978) (v2@@3 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |mutrefdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6978) (k2 T@Vec_6978) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6978) (s2 T@Vec_6978) (k1@@0 T@Vec_6978) (k2@@0 T@Vec_6978) (m1 T@Vec_6978) (m2 T@Vec_6978) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefdefaultz3bpl.1297:36|
 :skolemid |42|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefdefaultz3bpl.1311:36|
 :skolemid |43|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefdefaultz3bpl.1324:36|
 :skolemid |44|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefdefaultz3bpl.1340:36|
 :skolemid |45|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 T@Vec_16776) (i@@12 Int) ) (! (= (InRangeVec_14013 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_16776| v@@10))))
 :qid |mutrefdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14013 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6978) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6978| v@@11))))
 :qid |mutrefdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6978) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6978 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) i@@15) e@@2))
 :qid |mutrefdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) j@@2) e@@2)))
 :qid |mutrefdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |mutrefdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6978 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_16776) (e@@3 T@$1_TestMutRef_T) ) (! (let ((i@@16 (IndexOfVec_16776 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_14013 v@@13 i@@17) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) i@@17) e@@3))
 :qid |mutrefdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_14013 v@@13 i@@16) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) j@@3) e@@3)))
 :qid |mutrefdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |mutrefdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_16776 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |mutrefdefaultz3bpl.275:54|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]$1_TestMutRef_T|) (|l#4| |T@[Int]$1_TestMutRef_T|) (|l#5| Int) (|l#6| T@$1_TestMutRef_T) (i@@19 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]$1_TestMutRef_T_| |l#3| i@@19) (|Select__T@[Int]$1_TestMutRef_T_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |mutrefdefaultz3bpl.73:19|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]$1_TestMutRef_T|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$1_TestMutRef_T) (i@@20 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]$1_TestMutRef_T_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |mutrefdefaultz3bpl.82:30|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$1_TestMutRef_T|) (|l#4@@1| |T@[Int]$1_TestMutRef_T|) (|l#5@@1| Int) (|l#6@@0| T@$1_TestMutRef_T) (j@@4 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]$1_TestMutRef_T_| |l#3@@1| j@@4) (|Select__T@[Int]$1_TestMutRef_T_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |mutrefdefaultz3bpl.63:20|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |mutrefdefaultz3bpl.73:19|
 :skolemid |59|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |mutrefdefaultz3bpl.82:30|
 :skolemid |60|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |mutrefdefaultz3bpl.63:20|
 :skolemid |61|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $1_TestMutRef_identity$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 55599) true)
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
(declare-datatypes ((T@Vec_6978 0)) (((Vec_6978 (|v#Vec_6978| |T@[Int]Int|) (|l#Vec_6978| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_R 0)) ((($1_TestMutRef_R (|$value#$1_TestMutRef_R| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_T 0)) ((($1_TestMutRef_T (|$value#$1_TestMutRef_T| Int) ) ) ))
(declare-sort |T@[Int]$1_TestMutRef_T| 0)
(declare-datatypes ((T@Vec_16776 0)) (((Vec_16776 (|v#Vec_16776| |T@[Int]$1_TestMutRef_T|) (|l#Vec_16776| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_V 0)) ((($1_TestMutRef_V (|$is#$1_TestMutRef_V| T@Vec_6978) (|$ts#$1_TestMutRef_V| T@Vec_16776) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_N 0)) ((($1_TestMutRef_N (|$value#$1_TestMutRef_N| Int) (|$t#$1_TestMutRef_N| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_30903 0)) ((($Mutation_30903 (|l#$Mutation_30903| T@$Location) (|p#$Mutation_30903| T@Vec_6978) (|v#$Mutation_30903| T@$1_TestMutRef_R) ) ) ))
(declare-datatypes ((T@$Mutation_26057 0)) ((($Mutation_26057 (|l#$Mutation_26057| T@$Location) (|p#$Mutation_26057| T@Vec_6978) (|v#$Mutation_26057| T@$1_TestMutRef_V) ) ) ))
(declare-datatypes ((T@$Mutation_25002 0)) ((($Mutation_25002 (|l#$Mutation_25002| T@$Location) (|p#$Mutation_25002| T@Vec_6978) (|v#$Mutation_25002| T@$1_TestMutRef_N) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6978) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20968 0)) ((($Mutation_20968 (|l#$Mutation_20968| T@$Location) (|p#$Mutation_20968| T@Vec_6978) (|v#$Mutation_20968| T@Vec_6978) ) ) ))
(declare-datatypes ((T@$Mutation_19343 0)) ((($Mutation_19343 (|l#$Mutation_19343| T@$Location) (|p#$Mutation_19343| T@Vec_6978) (|v#$Mutation_19343| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Mutation_18356 0)) ((($Mutation_18356 (|l#$Mutation_18356| T@$Location) (|p#$Mutation_18356| T@Vec_6978) (|v#$Mutation_18356| T@Vec_16776) ) ) ))
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
(declare-fun |$IsEqual'vec'$1_TestMutRef_T''| (T@Vec_16776 T@Vec_16776) Bool)
(declare-fun InRangeVec_14013 (T@Vec_16776 Int) Bool)
(declare-fun |Select__T@[Int]$1_TestMutRef_T_| (|T@[Int]$1_TestMutRef_T| Int) T@$1_TestMutRef_T)
(declare-fun |$IsValid'vec'$1_TestMutRef_T''| (T@Vec_16776) Bool)
(declare-fun |$IsValid'$1_TestMutRef_T'| (T@$1_TestMutRef_T) Bool)
(declare-fun |$IndexOfVec'$1_TestMutRef_T'| (T@Vec_16776 T@$1_TestMutRef_T) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6978 T@Vec_6978) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6978 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6978) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6978 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6978 T@Vec_6978) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6978) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6978 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6978) T@Vec_6978)
(declare-fun $1_Hash_sha3 (T@Vec_6978) T@Vec_6978)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6978) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6978 T@Vec_6978 T@Vec_6978) Bool)
(declare-fun |$IsValid'$1_TestMutRef_N'| (T@$1_TestMutRef_N) Bool)
(declare-fun |$IsValid'$1_TestMutRef_R'| (T@$1_TestMutRef_R) Bool)
(declare-fun |$IsValid'$1_TestMutRef_V'| (T@$1_TestMutRef_V) Bool)
(declare-fun IndexOfVec_6978 (T@Vec_6978 Int) Int)
(declare-fun IndexOfVec_16776 (T@Vec_16776 T@$1_TestMutRef_T) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]$1_TestMutRef_T| |T@[Int]$1_TestMutRef_T| Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#3| (Int Int |T@[Int]$1_TestMutRef_T| Int Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]$1_TestMutRef_T| |T@[Int]$1_TestMutRef_T| Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |mutrefdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_16776) (v2 T@Vec_16776) ) (! (= (|$IsEqual'vec'$1_TestMutRef_T''| v1 v2)  (and (= (|l#Vec_16776| v1) (|l#Vec_16776| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14013 v1 i@@0) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v1) i@@0) (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v2) i@@0)))
 :qid |mutrefdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |mutrefdefaultz3bpl.613:41|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$1_TestMutRef_T''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_16776) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_16776| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14013 v@@4 i@@1) (|$IsValid'$1_TestMutRef_T'| (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@4) i@@1)))
 :qid |mutrefdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |mutrefdefaultz3bpl.619:41|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_16776) (e T@$1_TestMutRef_T) ) (! (let ((i@@2 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14013 v@@5 i@@3)) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) i@@3) e))
 :qid |mutrefdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14013 v@@5 i@@2)) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) j) e)))
 :qid |mutrefdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |mutrefdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6978) (v2@@0 T@Vec_6978) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6978| v1@@0) (|l#Vec_6978| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6978| v2@@0) i@@4)))
 :qid |mutrefdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |mutrefdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6978) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6978| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6978| v@@6) i@@5)))
 :qid |mutrefdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |mutrefdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6978) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) i@@7) e@@0))
 :qid |mutrefdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) j@@0) e@@0)))
 :qid |mutrefdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |mutrefdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6978) (v2@@1 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6978| v1@@1) (|l#Vec_6978| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6978| v2@@1) i@@8)))
 :qid |mutrefdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |mutrefdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6978) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6978| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6978| v@@8) i@@9)))
 :qid |mutrefdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |mutrefdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6978) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) i@@11) e@@1))
 :qid |mutrefdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) j@@1) e@@1)))
 :qid |mutrefdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |mutrefdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6978) (v2@@2 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |mutrefdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6978) (v2@@3 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |mutrefdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6978) (k2 T@Vec_6978) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6978) (s2 T@Vec_6978) (k1@@0 T@Vec_6978) (k2@@0 T@Vec_6978) (m1 T@Vec_6978) (m2 T@Vec_6978) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefdefaultz3bpl.1297:36|
 :skolemid |42|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefdefaultz3bpl.1311:36|
 :skolemid |43|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefdefaultz3bpl.1324:36|
 :skolemid |44|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefdefaultz3bpl.1340:36|
 :skolemid |45|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 T@Vec_16776) (i@@12 Int) ) (! (= (InRangeVec_14013 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_16776| v@@10))))
 :qid |mutrefdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14013 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6978) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6978| v@@11))))
 :qid |mutrefdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6978) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6978 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) i@@15) e@@2))
 :qid |mutrefdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) j@@2) e@@2)))
 :qid |mutrefdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |mutrefdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6978 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_16776) (e@@3 T@$1_TestMutRef_T) ) (! (let ((i@@16 (IndexOfVec_16776 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_14013 v@@13 i@@17) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) i@@17) e@@3))
 :qid |mutrefdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_14013 v@@13 i@@16) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) j@@3) e@@3)))
 :qid |mutrefdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |mutrefdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_16776 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |mutrefdefaultz3bpl.275:54|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]$1_TestMutRef_T|) (|l#4| |T@[Int]$1_TestMutRef_T|) (|l#5| Int) (|l#6| T@$1_TestMutRef_T) (i@@19 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]$1_TestMutRef_T_| |l#3| i@@19) (|Select__T@[Int]$1_TestMutRef_T_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |mutrefdefaultz3bpl.73:19|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]$1_TestMutRef_T|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$1_TestMutRef_T) (i@@20 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]$1_TestMutRef_T_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |mutrefdefaultz3bpl.82:30|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$1_TestMutRef_T|) (|l#4@@1| |T@[Int]$1_TestMutRef_T|) (|l#5@@1| Int) (|l#6@@0| T@$1_TestMutRef_T) (j@@4 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]$1_TestMutRef_T_| |l#3@@1| j@@4) (|Select__T@[Int]$1_TestMutRef_T_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |mutrefdefaultz3bpl.63:20|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |mutrefdefaultz3bpl.73:19|
 :skolemid |59|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |mutrefdefaultz3bpl.82:30|
 :skolemid |60|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |mutrefdefaultz3bpl.63:20|
 :skolemid |61|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $1_TestMutRef_return_ref_different_path$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 55703) true)
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
(declare-datatypes ((T@Vec_6978 0)) (((Vec_6978 (|v#Vec_6978| |T@[Int]Int|) (|l#Vec_6978| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_R 0)) ((($1_TestMutRef_R (|$value#$1_TestMutRef_R| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_T 0)) ((($1_TestMutRef_T (|$value#$1_TestMutRef_T| Int) ) ) ))
(declare-sort |T@[Int]$1_TestMutRef_T| 0)
(declare-datatypes ((T@Vec_16776 0)) (((Vec_16776 (|v#Vec_16776| |T@[Int]$1_TestMutRef_T|) (|l#Vec_16776| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_V 0)) ((($1_TestMutRef_V (|$is#$1_TestMutRef_V| T@Vec_6978) (|$ts#$1_TestMutRef_V| T@Vec_16776) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_N 0)) ((($1_TestMutRef_N (|$value#$1_TestMutRef_N| Int) (|$t#$1_TestMutRef_N| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_30903 0)) ((($Mutation_30903 (|l#$Mutation_30903| T@$Location) (|p#$Mutation_30903| T@Vec_6978) (|v#$Mutation_30903| T@$1_TestMutRef_R) ) ) ))
(declare-datatypes ((T@$Mutation_26057 0)) ((($Mutation_26057 (|l#$Mutation_26057| T@$Location) (|p#$Mutation_26057| T@Vec_6978) (|v#$Mutation_26057| T@$1_TestMutRef_V) ) ) ))
(declare-datatypes ((T@$Mutation_25002 0)) ((($Mutation_25002 (|l#$Mutation_25002| T@$Location) (|p#$Mutation_25002| T@Vec_6978) (|v#$Mutation_25002| T@$1_TestMutRef_N) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6978) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20968 0)) ((($Mutation_20968 (|l#$Mutation_20968| T@$Location) (|p#$Mutation_20968| T@Vec_6978) (|v#$Mutation_20968| T@Vec_6978) ) ) ))
(declare-datatypes ((T@$Mutation_19343 0)) ((($Mutation_19343 (|l#$Mutation_19343| T@$Location) (|p#$Mutation_19343| T@Vec_6978) (|v#$Mutation_19343| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Mutation_18356 0)) ((($Mutation_18356 (|l#$Mutation_18356| T@$Location) (|p#$Mutation_18356| T@Vec_6978) (|v#$Mutation_18356| T@Vec_16776) ) ) ))
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
(declare-fun |$IsEqual'vec'$1_TestMutRef_T''| (T@Vec_16776 T@Vec_16776) Bool)
(declare-fun InRangeVec_14013 (T@Vec_16776 Int) Bool)
(declare-fun |Select__T@[Int]$1_TestMutRef_T_| (|T@[Int]$1_TestMutRef_T| Int) T@$1_TestMutRef_T)
(declare-fun |$IsValid'vec'$1_TestMutRef_T''| (T@Vec_16776) Bool)
(declare-fun |$IsValid'$1_TestMutRef_T'| (T@$1_TestMutRef_T) Bool)
(declare-fun |$IndexOfVec'$1_TestMutRef_T'| (T@Vec_16776 T@$1_TestMutRef_T) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6978 T@Vec_6978) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6978 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6978) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6978 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6978 T@Vec_6978) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6978) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6978 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6978) T@Vec_6978)
(declare-fun $1_Hash_sha3 (T@Vec_6978) T@Vec_6978)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6978) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6978 T@Vec_6978 T@Vec_6978) Bool)
(declare-fun |$IsValid'$1_TestMutRef_N'| (T@$1_TestMutRef_N) Bool)
(declare-fun |$IsValid'$1_TestMutRef_R'| (T@$1_TestMutRef_R) Bool)
(declare-fun |$IsValid'$1_TestMutRef_V'| (T@$1_TestMutRef_V) Bool)
(declare-fun IndexOfVec_6978 (T@Vec_6978 Int) Int)
(declare-fun IndexOfVec_16776 (T@Vec_16776 T@$1_TestMutRef_T) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]$1_TestMutRef_T| |T@[Int]$1_TestMutRef_T| Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#3| (Int Int |T@[Int]$1_TestMutRef_T| Int Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]$1_TestMutRef_T| |T@[Int]$1_TestMutRef_T| Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |mutrefdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_16776) (v2 T@Vec_16776) ) (! (= (|$IsEqual'vec'$1_TestMutRef_T''| v1 v2)  (and (= (|l#Vec_16776| v1) (|l#Vec_16776| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14013 v1 i@@0) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v1) i@@0) (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v2) i@@0)))
 :qid |mutrefdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |mutrefdefaultz3bpl.613:41|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$1_TestMutRef_T''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_16776) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_16776| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14013 v@@4 i@@1) (|$IsValid'$1_TestMutRef_T'| (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@4) i@@1)))
 :qid |mutrefdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |mutrefdefaultz3bpl.619:41|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_16776) (e T@$1_TestMutRef_T) ) (! (let ((i@@2 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14013 v@@5 i@@3)) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) i@@3) e))
 :qid |mutrefdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14013 v@@5 i@@2)) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) j) e)))
 :qid |mutrefdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |mutrefdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6978) (v2@@0 T@Vec_6978) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6978| v1@@0) (|l#Vec_6978| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6978| v2@@0) i@@4)))
 :qid |mutrefdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |mutrefdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6978) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6978| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6978| v@@6) i@@5)))
 :qid |mutrefdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |mutrefdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6978) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) i@@7) e@@0))
 :qid |mutrefdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) j@@0) e@@0)))
 :qid |mutrefdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |mutrefdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6978) (v2@@1 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6978| v1@@1) (|l#Vec_6978| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6978| v2@@1) i@@8)))
 :qid |mutrefdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |mutrefdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6978) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6978| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6978| v@@8) i@@9)))
 :qid |mutrefdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |mutrefdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6978) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) i@@11) e@@1))
 :qid |mutrefdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) j@@1) e@@1)))
 :qid |mutrefdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |mutrefdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6978) (v2@@2 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |mutrefdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6978) (v2@@3 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |mutrefdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6978) (k2 T@Vec_6978) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6978) (s2 T@Vec_6978) (k1@@0 T@Vec_6978) (k2@@0 T@Vec_6978) (m1 T@Vec_6978) (m2 T@Vec_6978) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefdefaultz3bpl.1297:36|
 :skolemid |42|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefdefaultz3bpl.1311:36|
 :skolemid |43|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefdefaultz3bpl.1324:36|
 :skolemid |44|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefdefaultz3bpl.1340:36|
 :skolemid |45|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 T@Vec_16776) (i@@12 Int) ) (! (= (InRangeVec_14013 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_16776| v@@10))))
 :qid |mutrefdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14013 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6978) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6978| v@@11))))
 :qid |mutrefdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6978) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6978 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) i@@15) e@@2))
 :qid |mutrefdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) j@@2) e@@2)))
 :qid |mutrefdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |mutrefdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6978 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_16776) (e@@3 T@$1_TestMutRef_T) ) (! (let ((i@@16 (IndexOfVec_16776 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_14013 v@@13 i@@17) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) i@@17) e@@3))
 :qid |mutrefdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_14013 v@@13 i@@16) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) j@@3) e@@3)))
 :qid |mutrefdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |mutrefdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_16776 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |mutrefdefaultz3bpl.275:54|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]$1_TestMutRef_T|) (|l#4| |T@[Int]$1_TestMutRef_T|) (|l#5| Int) (|l#6| T@$1_TestMutRef_T) (i@@19 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]$1_TestMutRef_T_| |l#3| i@@19) (|Select__T@[Int]$1_TestMutRef_T_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |mutrefdefaultz3bpl.73:19|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]$1_TestMutRef_T|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$1_TestMutRef_T) (i@@20 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]$1_TestMutRef_T_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |mutrefdefaultz3bpl.82:30|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$1_TestMutRef_T|) (|l#4@@1| |T@[Int]$1_TestMutRef_T|) (|l#5@@1| Int) (|l#6@@0| T@$1_TestMutRef_T) (j@@4 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]$1_TestMutRef_T_| |l#3@@1| j@@4) (|Select__T@[Int]$1_TestMutRef_T_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |mutrefdefaultz3bpl.63:20|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |mutrefdefaultz3bpl.73:19|
 :skolemid |59|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |mutrefdefaultz3bpl.82:30|
 :skolemid |60|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |mutrefdefaultz3bpl.63:20|
 :skolemid |61|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $1_TestMutRef_return_ref_different_path_vec$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 55974) true)
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
(declare-datatypes ((T@Vec_6978 0)) (((Vec_6978 (|v#Vec_6978| |T@[Int]Int|) (|l#Vec_6978| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_R 0)) ((($1_TestMutRef_R (|$value#$1_TestMutRef_R| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_T 0)) ((($1_TestMutRef_T (|$value#$1_TestMutRef_T| Int) ) ) ))
(declare-sort |T@[Int]$1_TestMutRef_T| 0)
(declare-datatypes ((T@Vec_16776 0)) (((Vec_16776 (|v#Vec_16776| |T@[Int]$1_TestMutRef_T|) (|l#Vec_16776| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_V 0)) ((($1_TestMutRef_V (|$is#$1_TestMutRef_V| T@Vec_6978) (|$ts#$1_TestMutRef_V| T@Vec_16776) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_N 0)) ((($1_TestMutRef_N (|$value#$1_TestMutRef_N| Int) (|$t#$1_TestMutRef_N| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_30903 0)) ((($Mutation_30903 (|l#$Mutation_30903| T@$Location) (|p#$Mutation_30903| T@Vec_6978) (|v#$Mutation_30903| T@$1_TestMutRef_R) ) ) ))
(declare-datatypes ((T@$Mutation_26057 0)) ((($Mutation_26057 (|l#$Mutation_26057| T@$Location) (|p#$Mutation_26057| T@Vec_6978) (|v#$Mutation_26057| T@$1_TestMutRef_V) ) ) ))
(declare-datatypes ((T@$Mutation_25002 0)) ((($Mutation_25002 (|l#$Mutation_25002| T@$Location) (|p#$Mutation_25002| T@Vec_6978) (|v#$Mutation_25002| T@$1_TestMutRef_N) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6978) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20968 0)) ((($Mutation_20968 (|l#$Mutation_20968| T@$Location) (|p#$Mutation_20968| T@Vec_6978) (|v#$Mutation_20968| T@Vec_6978) ) ) ))
(declare-datatypes ((T@$Mutation_19343 0)) ((($Mutation_19343 (|l#$Mutation_19343| T@$Location) (|p#$Mutation_19343| T@Vec_6978) (|v#$Mutation_19343| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Mutation_18356 0)) ((($Mutation_18356 (|l#$Mutation_18356| T@$Location) (|p#$Mutation_18356| T@Vec_6978) (|v#$Mutation_18356| T@Vec_16776) ) ) ))
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
(declare-fun |$IsEqual'vec'$1_TestMutRef_T''| (T@Vec_16776 T@Vec_16776) Bool)
(declare-fun InRangeVec_14013 (T@Vec_16776 Int) Bool)
(declare-fun |Select__T@[Int]$1_TestMutRef_T_| (|T@[Int]$1_TestMutRef_T| Int) T@$1_TestMutRef_T)
(declare-fun |$IsValid'vec'$1_TestMutRef_T''| (T@Vec_16776) Bool)
(declare-fun |$IsValid'$1_TestMutRef_T'| (T@$1_TestMutRef_T) Bool)
(declare-fun |$IndexOfVec'$1_TestMutRef_T'| (T@Vec_16776 T@$1_TestMutRef_T) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6978 T@Vec_6978) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6978 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6978) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6978 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6978 T@Vec_6978) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6978) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6978 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6978) T@Vec_6978)
(declare-fun $1_Hash_sha3 (T@Vec_6978) T@Vec_6978)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6978) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6978 T@Vec_6978 T@Vec_6978) Bool)
(declare-fun |$IsValid'$1_TestMutRef_N'| (T@$1_TestMutRef_N) Bool)
(declare-fun |$IsValid'$1_TestMutRef_R'| (T@$1_TestMutRef_R) Bool)
(declare-fun |$IsValid'$1_TestMutRef_V'| (T@$1_TestMutRef_V) Bool)
(declare-fun IndexOfVec_6978 (T@Vec_6978 Int) Int)
(declare-fun IndexOfVec_16776 (T@Vec_16776 T@$1_TestMutRef_T) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]$1_TestMutRef_T| |T@[Int]$1_TestMutRef_T| Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#3| (Int Int |T@[Int]$1_TestMutRef_T| Int Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]$1_TestMutRef_T| |T@[Int]$1_TestMutRef_T| Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |mutrefdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_16776) (v2 T@Vec_16776) ) (! (= (|$IsEqual'vec'$1_TestMutRef_T''| v1 v2)  (and (= (|l#Vec_16776| v1) (|l#Vec_16776| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14013 v1 i@@0) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v1) i@@0) (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v2) i@@0)))
 :qid |mutrefdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |mutrefdefaultz3bpl.613:41|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$1_TestMutRef_T''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_16776) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_16776| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14013 v@@4 i@@1) (|$IsValid'$1_TestMutRef_T'| (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@4) i@@1)))
 :qid |mutrefdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |mutrefdefaultz3bpl.619:41|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_16776) (e T@$1_TestMutRef_T) ) (! (let ((i@@2 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14013 v@@5 i@@3)) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) i@@3) e))
 :qid |mutrefdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14013 v@@5 i@@2)) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) j) e)))
 :qid |mutrefdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |mutrefdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6978) (v2@@0 T@Vec_6978) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6978| v1@@0) (|l#Vec_6978| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6978| v2@@0) i@@4)))
 :qid |mutrefdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |mutrefdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6978) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6978| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6978| v@@6) i@@5)))
 :qid |mutrefdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |mutrefdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6978) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) i@@7) e@@0))
 :qid |mutrefdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) j@@0) e@@0)))
 :qid |mutrefdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |mutrefdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6978) (v2@@1 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6978| v1@@1) (|l#Vec_6978| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6978| v2@@1) i@@8)))
 :qid |mutrefdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |mutrefdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6978) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6978| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6978| v@@8) i@@9)))
 :qid |mutrefdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |mutrefdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6978) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) i@@11) e@@1))
 :qid |mutrefdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) j@@1) e@@1)))
 :qid |mutrefdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |mutrefdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6978) (v2@@2 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |mutrefdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6978) (v2@@3 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |mutrefdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6978) (k2 T@Vec_6978) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6978) (s2 T@Vec_6978) (k1@@0 T@Vec_6978) (k2@@0 T@Vec_6978) (m1 T@Vec_6978) (m2 T@Vec_6978) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefdefaultz3bpl.1297:36|
 :skolemid |42|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefdefaultz3bpl.1311:36|
 :skolemid |43|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefdefaultz3bpl.1324:36|
 :skolemid |44|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefdefaultz3bpl.1340:36|
 :skolemid |45|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 T@Vec_16776) (i@@12 Int) ) (! (= (InRangeVec_14013 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_16776| v@@10))))
 :qid |mutrefdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14013 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6978) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6978| v@@11))))
 :qid |mutrefdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6978) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6978 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) i@@15) e@@2))
 :qid |mutrefdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) j@@2) e@@2)))
 :qid |mutrefdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |mutrefdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6978 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_16776) (e@@3 T@$1_TestMutRef_T) ) (! (let ((i@@16 (IndexOfVec_16776 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_14013 v@@13 i@@17) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) i@@17) e@@3))
 :qid |mutrefdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_14013 v@@13 i@@16) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) j@@3) e@@3)))
 :qid |mutrefdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |mutrefdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_16776 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |mutrefdefaultz3bpl.275:54|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]$1_TestMutRef_T|) (|l#4| |T@[Int]$1_TestMutRef_T|) (|l#5| Int) (|l#6| T@$1_TestMutRef_T) (i@@19 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]$1_TestMutRef_T_| |l#3| i@@19) (|Select__T@[Int]$1_TestMutRef_T_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |mutrefdefaultz3bpl.73:19|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]$1_TestMutRef_T|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$1_TestMutRef_T) (i@@20 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]$1_TestMutRef_T_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |mutrefdefaultz3bpl.82:30|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$1_TestMutRef_T|) (|l#4@@1| |T@[Int]$1_TestMutRef_T|) (|l#5@@1| Int) (|l#6@@0| T@$1_TestMutRef_T) (j@@4 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]$1_TestMutRef_T_| |l#3@@1| j@@4) (|Select__T@[Int]$1_TestMutRef_T_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |mutrefdefaultz3bpl.63:20|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |mutrefdefaultz3bpl.73:19|
 :skolemid |59|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |mutrefdefaultz3bpl.82:30|
 :skolemid |60|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |mutrefdefaultz3bpl.63:20|
 :skolemid |61|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $1_TestMutRef_return_ref_different_path_vec2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 56568) true)
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
(declare-datatypes ((T@Vec_6978 0)) (((Vec_6978 (|v#Vec_6978| |T@[Int]Int|) (|l#Vec_6978| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_R 0)) ((($1_TestMutRef_R (|$value#$1_TestMutRef_R| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_T 0)) ((($1_TestMutRef_T (|$value#$1_TestMutRef_T| Int) ) ) ))
(declare-sort |T@[Int]$1_TestMutRef_T| 0)
(declare-datatypes ((T@Vec_16776 0)) (((Vec_16776 (|v#Vec_16776| |T@[Int]$1_TestMutRef_T|) (|l#Vec_16776| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_V 0)) ((($1_TestMutRef_V (|$is#$1_TestMutRef_V| T@Vec_6978) (|$ts#$1_TestMutRef_V| T@Vec_16776) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_N 0)) ((($1_TestMutRef_N (|$value#$1_TestMutRef_N| Int) (|$t#$1_TestMutRef_N| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_30903 0)) ((($Mutation_30903 (|l#$Mutation_30903| T@$Location) (|p#$Mutation_30903| T@Vec_6978) (|v#$Mutation_30903| T@$1_TestMutRef_R) ) ) ))
(declare-datatypes ((T@$Mutation_26057 0)) ((($Mutation_26057 (|l#$Mutation_26057| T@$Location) (|p#$Mutation_26057| T@Vec_6978) (|v#$Mutation_26057| T@$1_TestMutRef_V) ) ) ))
(declare-datatypes ((T@$Mutation_25002 0)) ((($Mutation_25002 (|l#$Mutation_25002| T@$Location) (|p#$Mutation_25002| T@Vec_6978) (|v#$Mutation_25002| T@$1_TestMutRef_N) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_6978) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_20968 0)) ((($Mutation_20968 (|l#$Mutation_20968| T@$Location) (|p#$Mutation_20968| T@Vec_6978) (|v#$Mutation_20968| T@Vec_6978) ) ) ))
(declare-datatypes ((T@$Mutation_19343 0)) ((($Mutation_19343 (|l#$Mutation_19343| T@$Location) (|p#$Mutation_19343| T@Vec_6978) (|v#$Mutation_19343| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Mutation_18356 0)) ((($Mutation_18356 (|l#$Mutation_18356| T@$Location) (|p#$Mutation_18356| T@Vec_6978) (|v#$Mutation_18356| T@Vec_16776) ) ) ))
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
(declare-fun |$IsEqual'vec'$1_TestMutRef_T''| (T@Vec_16776 T@Vec_16776) Bool)
(declare-fun InRangeVec_14013 (T@Vec_16776 Int) Bool)
(declare-fun |Select__T@[Int]$1_TestMutRef_T_| (|T@[Int]$1_TestMutRef_T| Int) T@$1_TestMutRef_T)
(declare-fun |$IsValid'vec'$1_TestMutRef_T''| (T@Vec_16776) Bool)
(declare-fun |$IsValid'$1_TestMutRef_T'| (T@$1_TestMutRef_T) Bool)
(declare-fun |$IndexOfVec'$1_TestMutRef_T'| (T@Vec_16776 T@$1_TestMutRef_T) Int)
(declare-fun |$IsEqual'vec'u64''| (T@Vec_6978 T@Vec_6978) Bool)
(declare-fun InRangeVec_4118 (T@Vec_6978 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u64''| (T@Vec_6978) Bool)
(declare-fun |$IndexOfVec'u64'| (T@Vec_6978 Int) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_6978 T@Vec_6978) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_6978) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_6978 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_6978) T@Vec_6978)
(declare-fun $1_Hash_sha3 (T@Vec_6978) T@Vec_6978)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_6978) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_6978 T@Vec_6978 T@Vec_6978) Bool)
(declare-fun |$IsValid'$1_TestMutRef_N'| (T@$1_TestMutRef_N) Bool)
(declare-fun |$IsValid'$1_TestMutRef_R'| (T@$1_TestMutRef_R) Bool)
(declare-fun |$IsValid'$1_TestMutRef_V'| (T@$1_TestMutRef_V) Bool)
(declare-fun IndexOfVec_6978 (T@Vec_6978 Int) Int)
(declare-fun IndexOfVec_16776 (T@Vec_16776 T@$1_TestMutRef_T) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]$1_TestMutRef_T| |T@[Int]$1_TestMutRef_T| Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#3| (Int Int |T@[Int]$1_TestMutRef_T| Int Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]$1_TestMutRef_T| |T@[Int]$1_TestMutRef_T| Int T@$1_TestMutRef_T) |T@[Int]$1_TestMutRef_T|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |mutrefdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_16776) (v2 T@Vec_16776) ) (! (= (|$IsEqual'vec'$1_TestMutRef_T''| v1 v2)  (and (= (|l#Vec_16776| v1) (|l#Vec_16776| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14013 v1 i@@0) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v1) i@@0) (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v2) i@@0)))
 :qid |mutrefdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |mutrefdefaultz3bpl.613:41|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'$1_TestMutRef_T''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_16776) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_16776| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14013 v@@4 i@@1) (|$IsValid'$1_TestMutRef_T'| (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@4) i@@1)))
 :qid |mutrefdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |mutrefdefaultz3bpl.619:41|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_16776) (e T@$1_TestMutRef_T) ) (! (let ((i@@2 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14013 v@@5 i@@3)) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) i@@3) e))
 :qid |mutrefdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14013 v@@5 i@@2)) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@5) j) e)))
 :qid |mutrefdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |mutrefdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_6978) (v2@@0 T@Vec_6978) ) (! (= (|$IsEqual'vec'u64''| v1@@0 v2@@0)  (and (= (|l#Vec_6978| v1@@0) (|l#Vec_6978| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_6978| v2@@0) i@@4)))
 :qid |mutrefdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |mutrefdefaultz3bpl.794:29|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u64''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_6978) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_6978| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_6978| v@@6) i@@5)))
 :qid |mutrefdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |mutrefdefaultz3bpl.800:29|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_6978) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) i@@7) e@@0))
 :qid |mutrefdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@7) j@@0) e@@0)))
 :qid |mutrefdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |mutrefdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_6978) (v2@@1 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1)  (and (= (|l#Vec_6978| v1@@1) (|l#Vec_6978| v2@@1)) (forall ((i@@8 Int) ) (!  (=> (InRangeVec_4118 v1@@1 i@@8) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v1@@1) i@@8) (|Select__T@[Int]Int_| (|v#Vec_6978| v2@@1) i@@8)))
 :qid |mutrefdefaultz3bpl.977:13|
 :skolemid |31|
))))
 :qid |mutrefdefaultz3bpl.975:28|
 :skolemid |32|
 :pattern ( (|$IsEqual'vec'u8''| v1@@1 v2@@1))
)))
(assert (forall ((v@@8 T@Vec_6978) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (|l#Vec_6978| v@@8)) (forall ((i@@9 Int) ) (!  (=> (InRangeVec_4118 v@@8 i@@9) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_6978| v@@8) i@@9)))
 :qid |mutrefdefaultz3bpl.983:13|
 :skolemid |33|
))))
 :qid |mutrefdefaultz3bpl.981:28|
 :skolemid |34|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 T@Vec_6978) (e@@1 Int) ) (! (let ((i@@10 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'u64'| i@@11) (InRangeVec_4118 v@@9 i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) i@@11) e@@1))
 :qid |mutrefdefaultz3bpl.988:13|
 :skolemid |35|
))) (= i@@10 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@10) (InRangeVec_4118 v@@9 i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@9) j@@1) e@@1)))
 :qid |mutrefdefaultz3bpl.996:17|
 :skolemid |36|
)))))
 :qid |mutrefdefaultz3bpl.992:15|
 :skolemid |37|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1@@2 T@Vec_6978) (v2@@2 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2)))
 :qid |mutrefdefaultz3bpl.1169:15|
 :skolemid |38|
 :pattern ( ($1_Hash_sha2 v1@@2) ($1_Hash_sha2 v2@@2))
)))
(assert (forall ((v1@@3 T@Vec_6978) (v2@@3 T@Vec_6978) ) (! (= (|$IsEqual'vec'u8''| v1@@3 v2@@3) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3)))
 :qid |mutrefdefaultz3bpl.1185:15|
 :skolemid |39|
 :pattern ( ($1_Hash_sha3 v1@@3) ($1_Hash_sha3 v2@@3))
)))
(assert (forall ((k1 T@Vec_6978) (k2 T@Vec_6978) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefdefaultz3bpl.1232:15|
 :skolemid |40|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_6978) (s2 T@Vec_6978) (k1@@0 T@Vec_6978) (k2@@0 T@Vec_6978) (m1 T@Vec_6978) (m2 T@Vec_6978) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefdefaultz3bpl.1235:15|
 :skolemid |41|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefdefaultz3bpl.1297:36|
 :skolemid |42|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefdefaultz3bpl.1311:36|
 :skolemid |43|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefdefaultz3bpl.1324:36|
 :skolemid |44|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefdefaultz3bpl.1340:36|
 :skolemid |45|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 T@Vec_16776) (i@@12 Int) ) (! (= (InRangeVec_14013 v@@10 i@@12)  (and (>= i@@12 0) (< i@@12 (|l#Vec_16776| v@@10))))
 :qid |mutrefdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14013 v@@10 i@@12))
)))
(assert (forall ((v@@11 T@Vec_6978) (i@@13 Int) ) (! (= (InRangeVec_4118 v@@11 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_6978| v@@11))))
 :qid |mutrefdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@11 i@@13))
)))
(assert (forall ((v@@12 T@Vec_6978) (e@@2 Int) ) (! (let ((i@@14 (IndexOfVec_6978 v@@12 e@@2)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_4118 v@@12 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) i@@15) e@@2))
 :qid |mutrefdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_4118 v@@12 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) i@@14) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_6978| v@@12) j@@2) e@@2)))
 :qid |mutrefdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |mutrefdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_6978 v@@12 e@@2))
)))
(assert (forall ((v@@13 T@Vec_16776) (e@@3 T@$1_TestMutRef_T) ) (! (let ((i@@16 (IndexOfVec_16776 v@@13 e@@3)))
(ite  (not (exists ((i@@17 Int) ) (!  (and (InRangeVec_14013 v@@13 i@@17) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) i@@17) e@@3))
 :qid |mutrefdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@16 (- 0 1))  (and (and (InRangeVec_14013 v@@13 i@@16) (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) i@@16) e@@3)) (forall ((j@@3 Int) ) (!  (=> (and (>= j@@3 0) (< j@@3 i@@16)) (not (= (|Select__T@[Int]$1_TestMutRef_T_| (|v#Vec_16776| v@@13) j@@3) e@@3)))
 :qid |mutrefdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |mutrefdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_16776 v@@13 e@@3))
)))
(assert (forall ((|l#0| Bool) (i@@18 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18) |l#0|)
 :qid |mutrefdefaultz3bpl.275:54|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@18))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]$1_TestMutRef_T|) (|l#4| |T@[Int]$1_TestMutRef_T|) (|l#5| Int) (|l#6| T@$1_TestMutRef_T) (i@@19 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19) (ite  (and (>= i@@19 |l#0@@0|) (< i@@19 |l#1|)) (ite (< i@@19 |l#2|) (|Select__T@[Int]$1_TestMutRef_T_| |l#3| i@@19) (|Select__T@[Int]$1_TestMutRef_T_| |l#4| (- i@@19 |l#5|))) |l#6|))
 :qid |mutrefdefaultz3bpl.73:19|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@19))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]$1_TestMutRef_T|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@$1_TestMutRef_T) (i@@20 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20) (ite  (and (<= |l#0@@1| i@@20) (< i@@20 |l#1@@0|)) (|Select__T@[Int]$1_TestMutRef_T_| |l#2@@0| (- (- |l#3@@0| i@@20) |l#4@@0|)) |l#5@@0|))
 :qid |mutrefdefaultz3bpl.82:30|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@20))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]$1_TestMutRef_T|) (|l#4@@1| |T@[Int]$1_TestMutRef_T|) (|l#5@@1| Int) (|l#6@@0| T@$1_TestMutRef_T) (j@@4 Int) ) (! (= (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4) (ite  (and (>= j@@4 |l#0@@2|) (< j@@4 |l#1@@1|)) (ite (< j@@4 |l#2@@1|) (|Select__T@[Int]$1_TestMutRef_T_| |l#3@@1| j@@4) (|Select__T@[Int]$1_TestMutRef_T_| |l#4@@1| (+ j@@4 |l#5@@1|))) |l#6@@0|))
 :qid |mutrefdefaultz3bpl.63:20|
 :skolemid |58|
 :pattern ( (|Select__T@[Int]$1_TestMutRef_T_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@4))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@21 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21) (ite  (and (>= i@@21 |l#0@@3|) (< i@@21 |l#1@@2|)) (ite (< i@@21 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@21) (|Select__T@[Int]Int_| |l#4@@2| (- i@@21 |l#5@@2|))) |l#6@@1|))
 :qid |mutrefdefaultz3bpl.73:19|
 :skolemid |59|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@21))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@22 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22) (ite  (and (<= |l#0@@4| i@@22) (< i@@22 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@22) |l#4@@3|)) |l#5@@3|))
 :qid |mutrefdefaultz3bpl.82:30|
 :skolemid |60|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@22))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@5 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5) (ite  (and (>= j@@5 |l#0@@5|) (< j@@5 |l#1@@4|)) (ite (< j@@5 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@5) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@5 |l#5@@4|))) |l#6@@2|))
 :qid |mutrefdefaultz3bpl.63:20|
 :skolemid |61|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@5))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $1_TestMutRef_return_ref_different_root$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 57184) true)
))
(check-sat)
(pop 1)
; Valid
