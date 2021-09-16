(set-option :print-success false)
(set-option :pre-skolem-quant true)
(set-option :dt-share-sel false)
(set-option :ee-mode central)
(set-info :smt-lib-version 2.6)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_5856 0)) (((Vec_5856 (|v#Vec_5856| |T@[Int]Int|) (|l#Vec_5856| Int) ) ) ))
(declare-sort |T@[Int]Vec_5856| 0)
(declare-datatypes ((T@Vec_8991 0)) (((Vec_8991 (|v#Vec_8991| |T@[Int]Vec_5856|) (|l#Vec_8991| Int) ) ) ))
(declare-datatypes ((T@$1_Authenticator_MultiEd25519PublicKey 0)) ((($1_Authenticator_MultiEd25519PublicKey (|$public_keys#$1_Authenticator_MultiEd25519PublicKey| T@Vec_8991) (|$threshold#$1_Authenticator_MultiEd25519PublicKey| Int) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4801 0)) ((($Mutation_4801 (|l#$Mutation_4801| T@$Location) (|p#$Mutation_4801| T@Vec_5856) (|v#$Mutation_4801| Int) ) ) ))
(declare-datatypes ((T@$Mutation_11706 0)) ((($Mutation_11706 (|l#$Mutation_11706| T@$Location) (|p#$Mutation_11706| T@Vec_5856) (|v#$Mutation_11706| T@Vec_5856) ) ) ))
(declare-datatypes ((T@$Mutation_10618 0)) ((($Mutation_10618 (|l#$Mutation_10618| T@$Location) (|p#$Mutation_10618| T@Vec_5856) (|v#$Mutation_10618| T@Vec_8991) ) ) ))
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
(declare-fun |$IsEqual'vec'vec'u8'''| (T@Vec_8991 T@Vec_8991) Bool)
(declare-fun InRangeVec_10037 (T@Vec_8991 Int) Bool)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_5856 T@Vec_5856) Bool)
(declare-fun |Select__T@[Int]Vec_5856_| (|T@[Int]Vec_5856| Int) T@Vec_5856)
(declare-fun |$IsValid'vec'vec'u8'''| (T@Vec_8991) Bool)
(declare-fun |$IsValid'vec'u8''| (T@Vec_5856) Bool)
(declare-fun |$IndexOfVec'vec'u8''| (T@Vec_8991 T@Vec_5856) Int)
(declare-fun InRangeVec_4177 (T@Vec_5856 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IndexOfVec'u8'| (T@Vec_5856 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_5856) T@Vec_5856)
(declare-fun $1_Hash_sha3 (T@Vec_5856) T@Vec_5856)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_5856) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_5856 T@Vec_5856 T@Vec_5856) Bool)
(declare-fun |$1_BCS_serialize'u8'| (Int) T@Vec_5856)
(declare-fun |$IsValid'$1_Authenticator_MultiEd25519PublicKey'| (T@$1_Authenticator_MultiEd25519PublicKey) Bool)
(declare-fun IndexOfVec_5856 (T@Vec_5856 Int) Int)
(declare-fun IndexOfVec_8991 (T@Vec_8991 T@Vec_5856) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Vec_5856| |T@[Int]Vec_5856| Int T@Vec_5856) |T@[Int]Vec_5856|)
(declare-fun |lambda#3| (Int Int |T@[Int]Vec_5856| Int Int T@Vec_5856) |T@[Int]Vec_5856|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Vec_5856| |T@[Int]Vec_5856| Int T@Vec_5856) |T@[Int]Vec_5856|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |Authenticatorbpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |Authenticatorbpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |Authenticatorbpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |Authenticatorbpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |Authenticatorbpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |Authenticatorbpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |Authenticatorbpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |Authenticatorbpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_8991) (v2 T@Vec_8991) ) (! (= (|$IsEqual'vec'vec'u8'''| v1 v2)  (and (= (|l#Vec_8991| v1) (|l#Vec_8991| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_10037 v1 i@@0) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_5856_| (|v#Vec_8991| v1) i@@0) (|Select__T@[Int]Vec_5856_| (|v#Vec_8991| v2) i@@0)))
 :qid |Authenticatorbpl.615:13|
 :skolemid |17|
))))
 :qid |Authenticatorbpl.613:33|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'vec'u8'''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_8991) ) (! (= (|$IsValid'vec'vec'u8'''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_8991| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_10037 v@@4 i@@1) (|$IsValid'vec'u8''| (|Select__T@[Int]Vec_5856_| (|v#Vec_8991| v@@4) i@@1)))
 :qid |Authenticatorbpl.621:13|
 :skolemid |19|
))))
 :qid |Authenticatorbpl.619:33|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_8991) (e T@Vec_5856) ) (! (let ((i@@2 (|$IndexOfVec'vec'u8''| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_10037 v@@5 i@@3)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_5856_| (|v#Vec_8991| v@@5) i@@3) e))
 :qid |Authenticatorbpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_10037 v@@5 i@@2)) (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_5856_| (|v#Vec_8991| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (|$IsEqual'vec'u8''| (|Select__T@[Int]Vec_5856_| (|v#Vec_8991| v@@5) j) e)))
 :qid |Authenticatorbpl.634:17|
 :skolemid |22|
)))))
 :qid |Authenticatorbpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_5856) (v2@@0 T@Vec_5856) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_5856| v1@@0) (|l#Vec_5856| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4177 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_5856| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_5856| v2@@0) i@@4)))
 :qid |Authenticatorbpl.796:13|
 :skolemid |24|
))))
 :qid |Authenticatorbpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_5856) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_5856| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4177 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_5856| v@@6) i@@5)))
 :qid |Authenticatorbpl.802:13|
 :skolemid |26|
))))
 :qid |Authenticatorbpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_5856) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4177 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_5856| v@@7) i@@7) e@@0))
 :qid |Authenticatorbpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4177 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_5856| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_5856| v@@7) j@@0) e@@0)))
 :qid |Authenticatorbpl.815:17|
 :skolemid |29|
)))))
 :qid |Authenticatorbpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_5856) (v2@@1 T@Vec_5856) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |Authenticatorbpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_5856) (v2@@2 T@Vec_5856) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |Authenticatorbpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_5856) (k2 T@Vec_5856) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |Authenticatorbpl.1075:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_5856) (s2 T@Vec_5856) (k1@@0 T@Vec_5856) (k2@@0 T@Vec_5856) (m1 T@Vec_5856) (m2 T@Vec_5856) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |Authenticatorbpl.1078:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@3 Int) (v2@@3 Int) ) (! (= (= v1@@3 v2@@3) (|$IsEqual'vec'u8''| (|$1_BCS_serialize'u8'| v1@@3) (|$1_BCS_serialize'u8'| v2@@3)))
 :qid |Authenticatorbpl.1105:15|
 :skolemid |35|
 :pattern ( (|$1_BCS_serialize'u8'| v1@@3) (|$1_BCS_serialize'u8'| v2@@3))
)))
(assert (forall ((v@@8 Int) ) (! (let ((r@@0 (|$1_BCS_serialize'u8'| v@@8)))
 (and (|$IsValid'vec'u8''| r@@0) (> (|l#Vec_5856| r@@0) 0)))
 :qid |Authenticatorbpl.1110:15|
 :skolemid |36|
 :pattern ( (|$1_BCS_serialize'u8'| v@@8))
)))
(assert (forall ((s T@$1_Authenticator_MultiEd25519PublicKey) ) (! (= (|$IsValid'$1_Authenticator_MultiEd25519PublicKey'| s)  (and (|$IsValid'vec'vec'u8'''| (|$public_keys#$1_Authenticator_MultiEd25519PublicKey| s)) (|$IsValid'u8'| (|$threshold#$1_Authenticator_MultiEd25519PublicKey| s))))
 :qid |Authenticatorbpl.1152:59|
 :skolemid |37|
 :pattern ( (|$IsValid'$1_Authenticator_MultiEd25519PublicKey'| s))
)))
(assert (forall ((v@@9 T@Vec_8991) (i@@8 Int) ) (! (= (InRangeVec_10037 v@@9 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_8991| v@@9))))
 :qid |Authenticatorbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_10037 v@@9 i@@8))
)))
(assert (forall ((v@@10 T@Vec_5856) (i@@9 Int) ) (! (= (InRangeVec_4177 v@@10 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_5856| v@@10))))
 :qid |Authenticatorbpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4177 v@@10 i@@9))
)))
(assert (forall ((v@@11 T@Vec_5856) (e@@1 Int) ) (! (let ((i@@10 (IndexOfVec_5856 v@@11 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_4177 v@@11 i@@11) (= (|Select__T@[Int]Int_| (|v#Vec_5856| v@@11) i@@11) e@@1))
 :qid |Authenticatorbpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_4177 v@@11 i@@10) (= (|Select__T@[Int]Int_| (|v#Vec_5856| v@@11) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]Int_| (|v#Vec_5856| v@@11) j@@1) e@@1)))
 :qid |Authenticatorbpl.117:17|
 :skolemid |1|
)))))
 :qid |Authenticatorbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_5856 v@@11 e@@1))
)))
(assert (forall ((v@@12 T@Vec_8991) (e@@2 T@Vec_5856) ) (! (let ((i@@12 (IndexOfVec_8991 v@@12 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_10037 v@@12 i@@13) (= (|Select__T@[Int]Vec_5856_| (|v#Vec_8991| v@@12) i@@13) e@@2))
 :qid |Authenticatorbpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_10037 v@@12 i@@12) (= (|Select__T@[Int]Vec_5856_| (|v#Vec_8991| v@@12) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Vec_5856_| (|v#Vec_8991| v@@12) j@@2) e@@2)))
 :qid |Authenticatorbpl.117:17|
 :skolemid |1|
)))))
 :qid |Authenticatorbpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_8991 v@@12 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |Authenticatorbpl.275:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Vec_5856|) (|l#4| |T@[Int]Vec_5856|) (|l#5| Int) (|l#6| T@Vec_5856) (i@@15 Int) ) (! (= (|Select__T@[Int]Vec_5856_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]Vec_5856_| |l#3| i@@15) (|Select__T@[Int]Vec_5856_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |Authenticatorbpl.73:19|
 :skolemid |39|
 :pattern ( (|Select__T@[Int]Vec_5856_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Vec_5856|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| T@Vec_5856) (i@@16 Int) ) (! (= (|Select__T@[Int]Vec_5856_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]Vec_5856_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |Authenticatorbpl.82:30|
 :skolemid |40|
 :pattern ( (|Select__T@[Int]Vec_5856_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Vec_5856|) (|l#4@@1| |T@[Int]Vec_5856|) (|l#5@@1| Int) (|l#6@@0| T@Vec_5856) (j@@3 Int) ) (! (= (|Select__T@[Int]Vec_5856_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]Vec_5856_| |l#3@@1| j@@3) (|Select__T@[Int]Vec_5856_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |Authenticatorbpl.63:20|
 :skolemid |41|
 :pattern ( (|Select__T@[Int]Vec_5856_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |Authenticatorbpl.73:19|
 :skolemid |42|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |Authenticatorbpl.82:30|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |Authenticatorbpl.63:20|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
; Valid
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t9@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $t1@3 () T@Vec_5856)
(declare-fun |inline$$1_Vector_append'u8'$1$m'@1| () T@$Mutation_11706)
(declare-fun $t14@1 () T@$Mutation_11706)
(declare-fun |inline$$1_Vector_borrow'vec'u8''$0$dst@2| () T@Vec_5856)
(declare-fun DefaultVecElem_4406 () Int)
(declare-fun MapConstVec_4406 (Int) |T@[Int]Int|)
(declare-fun $t1@0 () T@Vec_5856)
(declare-fun |inline$$1_Vector_borrow'vec'u8''$0$dst@0| () T@Vec_5856)
(declare-fun $t6@0 () T@Vec_8991)
(declare-fun |inline$$1_Vector_borrow'vec'u8''$0$dst@1| () T@Vec_5856)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun call1formal@res@0 () T@Vec_5856)
(declare-fun $t1@2 () T@Vec_5856)
(declare-fun |inline$$1_Vector_push_back'u8'$0$m'@1| () T@$Mutation_11706)
(declare-fun $t18@0 () T@$Mutation_11706)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t1@1 () T@Vec_5856)
(declare-fun |inline$$1_Vector_append'u8'$0$m'@1| () T@$Mutation_11706)
(declare-fun $t15@0 () T@$Mutation_11706)
(declare-fun call1formal@res@0@@0 () T@Vec_5856)
(declare-fun $t16@0 () Int)
(declare-fun _$t0 () T@$1_Authenticator_MultiEd25519PublicKey)
(declare-fun |inline$$1_Vector_length'vec'u8''$0$l@1| () Int)
(declare-fun |inline$$1_Vector_empty'u8'$0$v@1| () T@Vec_5856)
(declare-fun $t11@0 () T@Vec_5856)
(declare-fun $t12@0 () Int)
(declare-fun $t13@0 () Int)
(declare-fun $t14@0 () T@$Mutation_11706)
(declare-fun $t14 () T@$Mutation_11706)
(declare-fun $t15 () T@$Mutation_11706)
(declare-fun $t18 () T@$Mutation_11706)
(push 1)
(set-info :boogie-vc-id $1_Authenticator_multi_ed25519_authentication_key$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 22179) (let ((L6_correct  (=> (= (ControlFlow 0 19537) (- 0 23078)) false)))
(let ((anon31_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 20012) 19537)) L6_correct))))
(let ((anon30_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 20026) 19537)) L6_correct))))
(let ((anon29_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 20040) 19537)) L6_correct))))
(let ((anon31_Else_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 19976) 20012) anon31_Then_correct) (=> (= (ControlFlow 0 19976) 19998) anon31_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t9@0 1) $MAX_U64) (= (ControlFlow 0 19974) 19976)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t9@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t9@0 1)) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 19922) 20012) anon31_Then_correct) (=> (= (ControlFlow 0 19922) 19998) anon31_Else_correct))))))
(let ((anon30_Else_correct  (=> (not $abort_flag@0) (=> (and (= $t1@3 (|v#$Mutation_11706| |inline$$1_Vector_append'u8'$1$m'@1|)) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 19982) 19974) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 19982) 19922) inline$$AddU64$0$anon3_Else_correct))))))
(let ((|inline$$1_Vector_append'u8'$1$anon0_correct|  (=> (= |inline$$1_Vector_append'u8'$1$m'@1| ($Mutation_11706 (|l#$Mutation_11706| $t14@1) (|p#$Mutation_11706| $t14@1) (let ((m2@@0 (|v#Vec_5856| |inline$$1_Vector_borrow'vec'u8''$0$dst@2|)))
(let ((l2 (|l#Vec_5856| |inline$$1_Vector_borrow'vec'u8''$0$dst@2|)))
(let ((m1@@0 (|v#Vec_5856| (|v#$Mutation_11706| $t14@1))))
(let ((l1 (|l#Vec_5856| (|v#$Mutation_11706| $t14@1))))
(Vec_5856 (|lambda#5| 0 (+ l1 l2) l1 m1@@0 m2@@0 l1 DefaultVecElem_4406) (+ l1 l2)))))))) (and (=> (= (ControlFlow 0 19803) 20026) anon30_Then_correct) (=> (= (ControlFlow 0 19803) 19982) anon30_Else_correct)))))
(let ((anon29_Else_correct  (=> (and (and (not $abort_flag@0) (= |inline$$1_Vector_borrow'vec'u8''$0$dst@2| |inline$$1_Vector_borrow'vec'u8''$0$dst@2|)) (and (= $t14@1 ($Mutation_11706 ($Local 1) (Vec_5856 (MapConstVec_4406 DefaultVecElem_4406) 0) $t1@0)) (= (ControlFlow 0 19809) 19803))) |inline$$1_Vector_append'u8'$1$anon0_correct|)))
(let ((|inline$$1_Vector_borrow'vec'u8''$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'vec'u8''$0$dst@2| |inline$$1_Vector_borrow'vec'u8''$0$dst@0|)) (and (=> (= (ControlFlow 0 19718) 20040) anon29_Then_correct) (=> (= (ControlFlow 0 19718) 19809) anon29_Else_correct))))))
(let ((|inline$$1_Vector_borrow'vec'u8''$0$anon3_Then_correct|  (=> (and (not (InRangeVec_10037 $t6@0 $t9@0)) (= (ControlFlow 0 19716) 19718)) |inline$$1_Vector_borrow'vec'u8''$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'vec'u8''$0$anon3_Else_correct|  (=> (InRangeVec_10037 $t6@0 $t9@0) (=> (and (and (= |inline$$1_Vector_borrow'vec'u8''$0$dst@1| (|Select__T@[Int]Vec_5856_| (|v#Vec_8991| $t6@0) $t9@0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow'vec'u8''$0$dst@2| |inline$$1_Vector_borrow'vec'u8''$0$dst@1|))) (and (=> (= (ControlFlow 0 19666) 20040) anon29_Then_correct) (=> (= (ControlFlow 0 19666) 19809) anon29_Else_correct))))))
(let ((anon28_Then_correct  (=> inline$$Lt$0$dst@1 (and (=> (= (ControlFlow 0 19724) 19716) |inline$$1_Vector_borrow'vec'u8''$0$anon3_Then_correct|) (=> (= (ControlFlow 0 19724) 19666) |inline$$1_Vector_borrow'vec'u8''$0$anon3_Else_correct|)))))
(let ((anon35_Else_correct  (=> (not false) (=> (and (= call1formal@res@0 call1formal@res@0) (= (ControlFlow 0 19513) (- 0 22816))) (not false)))))
(let ((anon35_Then_correct true))
(let ((anon34_Else_correct  (=> (not false) (=> (and (and (= $t1@2 (|v#$Mutation_11706| |inline$$1_Vector_push_back'u8'$0$m'@1|)) (= call1formal@res@0 ($1_Hash_sha3 $t1@2))) (and (|$IsValid'vec'u8''| call1formal@res@0) (= (|l#Vec_5856| call1formal@res@0) 32))) (and (=> (= (ControlFlow 0 19493) 19527) anon35_Then_correct) (=> (= (ControlFlow 0 19493) 19513) anon35_Else_correct))))))
(let ((anon34_Then_correct true))
(let ((|inline$$1_Vector_push_back'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u8'$0$m'@1| ($Mutation_11706 (|l#$Mutation_11706| $t18@0) (|p#$Mutation_11706| $t18@0) (let ((l (|l#Vec_5856| (|v#$Mutation_11706| $t18@0))))
(Vec_5856 (|Store__T@[Int]Int_| (|v#Vec_5856| (|v#$Mutation_11706| $t18@0)) l 1) (+ l 1))))) (and (=> (= (ControlFlow 0 19471) 19551) anon34_Then_correct) (=> (= (ControlFlow 0 19471) 19493) anon34_Else_correct)))))
(let ((anon33_Else_correct  (=> (not false) (=> (and (and (= $t1@1 (|v#$Mutation_11706| |inline$$1_Vector_append'u8'$0$m'@1|)) (= $t18@0 ($Mutation_11706 ($Local 1) (Vec_5856 (MapConstVec_4406 DefaultVecElem_4406) 0) $t1@1))) (and (|$IsValid'u8'| 1) (= (ControlFlow 0 19477) 19471))) |inline$$1_Vector_push_back'u8'$0$anon0_correct|))))
(let ((anon33_Then_correct true))
(let ((|inline$$1_Vector_append'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_append'u8'$0$m'@1| ($Mutation_11706 (|l#$Mutation_11706| $t15@0) (|p#$Mutation_11706| $t15@0) (let ((m2@@1 (|v#Vec_5856| call1formal@res@0@@0)))
(let ((l2@@0 (|l#Vec_5856| call1formal@res@0@@0)))
(let ((m1@@1 (|v#Vec_5856| (|v#$Mutation_11706| $t15@0))))
(let ((l1@@0 (|l#Vec_5856| (|v#$Mutation_11706| $t15@0))))
(Vec_5856 (|lambda#5| 0 (+ l1@@0 l2@@0) l1@@0 m1@@1 m2@@1 l1@@0 DefaultVecElem_4406) (+ l1@@0 l2@@0)))))))) (and (=> (= (ControlFlow 0 19384) 19565) anon33_Then_correct) (=> (= (ControlFlow 0 19384) 19477) anon33_Else_correct)))))
(let ((anon32_Else_correct  (=> (and (not false) (= (ControlFlow 0 19390) 19384)) |inline$$1_Vector_append'u8'$0$anon0_correct|)))
(let ((anon32_Then_correct true))
(let ((anon28_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t15@0 ($Mutation_11706 ($Local 1) (Vec_5856 (MapConstVec_4406 DefaultVecElem_4406) 0) $t1@0))) (and (= $t16@0 (|$threshold#$1_Authenticator_MultiEd25519PublicKey| _$t0)) (= call1formal@res@0@@0 (|$1_BCS_serialize'u8'| $t16@0)))) (and (=> (= (ControlFlow 0 19327) 19579) anon32_Then_correct) (=> (= (ControlFlow 0 19327) 19390) anon32_Else_correct)))))
(let ((inline$$Lt$0$anon0_correct  (=> (= inline$$Lt$0$dst@1 (< $t9@0 |inline$$1_Vector_length'vec'u8''$0$l@1|)) (and (=> (= (ControlFlow 0 19299) 19724) anon28_Then_correct) (=> (= (ControlFlow 0 19299) 19327) anon28_Else_correct)))))
(let ((anon27_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_empty'u8'$0$v@1| |inline$$1_Vector_empty'u8'$0$v@1|)) (and (|$IsValid'u64'| 0) (= 0 0))) (=> (and (and (and (|$IsValid'vec'u8''| $t1@0) (|$IsValid'u64'| $t9@0)) (and (|$IsValid'vec'u8''| $t11@0) (|$IsValid'u64'| $t12@0))) (and (and (|$IsValid'u64'| $t13@0) (|$IsValid'vec'u8''| (|v#$Mutation_11706| $t14@0))) (and (not false) (= (ControlFlow 0 19305) 19299)))) inline$$Lt$0$anon0_correct))))
(let ((anon27_Then_correct true))
(let ((|inline$$1_Vector_empty'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u8'$0$v@1| (Vec_5856 (MapConstVec_4406 DefaultVecElem_4406) 0)) (and (=> (= (ControlFlow 0 19189) 20054) anon27_Then_correct) (=> (= (ControlFlow 0 19189) 19305) anon27_Else_correct)))))
(let ((anon26_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_length'vec'u8''$0$l@1| |inline$$1_Vector_length'vec'u8''$0$l@1|) (= (ControlFlow 0 19195) 19189)) |inline$$1_Vector_empty'u8'$0$anon0_correct|))))
(let ((anon26_Then_correct true))
(let ((|inline$$1_Vector_length'vec'u8''$0$anon0_correct|  (=> (= |inline$$1_Vector_length'vec'u8''$0$l@1| (|l#Vec_8991| $t6@0)) (and (=> (= (ControlFlow 0 19147) 20068) anon26_Then_correct) (=> (= (ControlFlow 0 19147) 19195) anon26_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'$1_Authenticator_MultiEd25519PublicKey'| _$t0) (=> (and (and (= _$t0 _$t0) (= $t6@0 (|$public_keys#$1_Authenticator_MultiEd25519PublicKey| _$t0))) (and (= $t6@0 $t6@0) (= (ControlFlow 0 19153) 19147))) |inline$$1_Vector_length'vec'u8''$0$anon0_correct|))))
(let ((anon0_correct  (=> (and (and (= (|l#Vec_5856| (|p#$Mutation_11706| $t14)) 0) (= (|l#Vec_5856| (|p#$Mutation_11706| $t15)) 0)) (and (= (|l#Vec_5856| (|p#$Mutation_11706| $t18)) 0) (= (ControlFlow 0 19089) 19153))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 22179) 19089) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
