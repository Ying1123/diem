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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_18150 0)) (((Vec_18150 (|v#Vec_18150| |T@[Int]#0|) (|l#Vec_18150| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_21435 0)) ((($Mutation_21435 (|l#$Mutation_21435| T@$Location) (|p#$Mutation_21435| T@Vec_1349) (|v#$Mutation_21435| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_19810 0)) ((($Mutation_19810 (|l#$Mutation_19810| T@$Location) (|p#$Mutation_19810| T@Vec_1349) (|v#$Mutation_19810| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18795 0)) ((($Mutation_18795 (|l#$Mutation_18795| T@$Location) (|p#$Mutation_18795| T@Vec_1349) (|v#$Mutation_18795| T@Vec_18150) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_18150 T@Vec_18150) Bool)
(declare-fun InRangeVec_14752 (T@Vec_18150 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_18150) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_18150 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun IndexOfVec_18150 (T@Vec_18150 |T@#0|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |verifyvectordefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectordefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectordefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectordefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectordefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectordefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_18150) (v2 T@Vec_18150) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_18150| v1) (|l#Vec_18150| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14752 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_18150| v2) i@@0)))
 :qid |verifyvectordefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |verifyvectordefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_18150) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_18150| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14752 v@@4 i@@1) true)
 :qid |verifyvectordefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |verifyvectordefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_18150) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14752 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@3) e))
 :qid |verifyvectordefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14752 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) j) e)))
 :qid |verifyvectordefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |verifyvectordefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |verifyvectordefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |verifyvectordefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |verifyvectordefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |verifyvectordefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |verifyvectordefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |verifyvectordefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |verifyvectordefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |verifyvectordefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |verifyvectordefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectordefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectordefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_18150) (i@@8 Int) ) (! (= (InRangeVec_14752 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_18150| v@@8))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14752 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (i@@9 Int) ) (! (= (InRangeVec_4118 v@@9 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_1349| v@@9))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@9 i@@9))
)))
(assert (forall ((v@@10 T@Vec_18150) (e@@1 |T@#0|) ) (! (let ((i@@10 (IndexOfVec_18150 v@@10 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_14752 v@@10 i@@11) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@11) e@@1))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_14752 v@@10 i@@10) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) j@@1) e@@1)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_18150 v@@10 e@@1))
)))
(assert (forall ((v@@11 T@Vec_1349) (e@@2 Int) ) (! (let ((i@@12 (IndexOfVec_1349 v@@11 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_4118 v@@11 i@@13) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@13) e@@2))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_4118 v@@11 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) j@@2) e@@2)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@11 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |verifyvectordefaultz3bpl.275:54|
 :skolemid |74|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@15 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@15) (|Select__T@[Int]#0_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |75|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@16 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |76|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@3 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@3) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |77|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |78|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |79|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]#0|) (|l#3@@5| Int) (|l#4@@5| |T@#0|) (k Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]#0_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |verifyvectordefaultz3bpl.90:14|
 :skolemid |81|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun |inline$$1_Vector_push_back'#0'$0$m'@1| () T@$Mutation_18795)
(declare-fun $t13@0 () T@Vec_18150)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$m'@2| () T@$Mutation_18795)
(declare-fun _$t1 () T@Vec_18150)
(declare-fun $t14@0 () T@Vec_18150)
(declare-fun $t15@0 () T@Vec_18150)
(declare-fun $t16@0 () T@Vec_18150)
(declare-fun $t0@0 () T@$Mutation_18795)
(declare-fun |Store__T@[Int]#0_| (|T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (forall ( ( ?x0 |T@[Int]#0|) ( ?x1 Int) ( ?x2 |T@#0|)) (! (= (|Select__T@[Int]#0_| (|Store__T@[Int]#0_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]#0|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@#0|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]#0_| (|Store__T@[Int]#0_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]#0_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Vector_pop_back'#0'$0$e@2| () |T@#0|)
(declare-fun $abort_code@2 () Int)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$e@0| () |T@#0|)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$m'@0| () T@$Mutation_18795)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$len@1| () Int)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$e@1| () |T@#0|)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$v@1| () T@Vec_18150)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$m'@1| () T@$Mutation_18795)
(declare-fun $t17@1 () T@$Mutation_18795)
(declare-fun DefaultVecElem_14772 () |T@#0|)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'vec'#0''@4| () T@Vec_18150)
(declare-fun $t3@0 () T@Vec_18150)
(declare-fun $abort_code@1 () Int)
(declare-fun $t1@0 () T@Vec_18150)
(declare-fun |inline$$1_Vector_is_empty'#0'$0$b@1| () Bool)
(declare-fun $t19@1 () T@Vec_18150)
(declare-fun _$t0 () T@$Mutation_18795)
(declare-fun $t9@0 () T@Vec_18150)
(declare-fun |inline$$1_Vector_reverse'#0'$0$m'@1| () T@$Mutation_18795)
(declare-fun $t10@0 () T@Vec_18150)
(declare-fun $t11@0 () T@Vec_18150)
(declare-fun $t12@0 () T@Vec_18150)
(declare-fun $t19@0 () T@Vec_18150)
(declare-fun |$temp_0'vec'#0''@2| () T@Vec_18150)
(declare-fun |$temp_0'vec'#0''@3| () T@Vec_18150)
(declare-fun $t5@0 () T@Vec_18150)
(declare-fun $t6@0 () T@Vec_18150)
(declare-fun $t7@0 () T@Vec_18150)
(declare-fun $t8@0 () T@Vec_18150)
(declare-fun $t17@0 () T@$Mutation_18795)
(declare-fun |$temp_0'vec'#0''@0| () T@Vec_18150)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun |$temp_0'vec'#0''@1| () T@Vec_18150)
(declare-fun $t2 () T@$Mutation_18795)
(declare-fun $t17 () T@$Mutation_18795)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_append$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 55167) (let ((anon21_Else_correct  (=> (not $abort_flag@1) (and (=> (= (ControlFlow 0 41131) (- 0 56404)) (>= (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_push_back'#0'$0$m'@1|)) (|l#Vec_18150| $t13@0))) (=> (>= (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_push_back'#0'$0$m'@1|)) (|l#Vec_18150| $t13@0)) (and (=> (= (ControlFlow 0 41131) (- 0 56417)) (<= (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|)) (|l#Vec_18150| _$t1))) (=> (<= (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|)) (|l#Vec_18150| _$t1)) (and (=> (= (ControlFlow 0 41131) (- 0 56430)) (= (+ (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_push_back'#0'$0$m'@1|)) (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|))) (+ (|l#Vec_18150| $t14@0) (|l#Vec_18150| _$t1)))) (=> (= (+ (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_push_back'#0'$0$m'@1|)) (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|))) (+ (|l#Vec_18150| $t14@0) (|l#Vec_18150| _$t1))) (and (=> (= (ControlFlow 0 41131) (- 0 56455)) (let (($range_0 ($Range 0 (|l#Vec_18150| $t15@0))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((k@@0 $i_1))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_push_back'#0'$0$m'@1|)) k@@0) (|Select__T@[Int]#0_| (|v#Vec_18150| $t15@0) k@@0))))
 :qid |verifyvectordefaultz3bpl.1419:57|
 :skolemid |41|
)))) (=> (let (($range_0 ($Range 0 (|l#Vec_18150| $t15@0))))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0 $i_1@@0) (let ((k@@0 $i_1@@0))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_push_back'#0'$0$m'@1|)) k@@0) (|Select__T@[Int]#0_| (|v#Vec_18150| $t15@0) k@@0))))
 :qid |verifyvectordefaultz3bpl.1419:57|
 :skolemid |41|
))) (and (=> (= (ControlFlow 0 41131) (- 0 56496)) (let (($range_0@@0 ($Range 0 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|)))))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@1) (let ((k@@1 $i_1@@1))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|)) k@@1) (|Select__T@[Int]#0_| (|v#Vec_18150| _$t1) (- (- (|l#Vec_18150| _$t1) 1) k@@1)))))
 :qid |verifyvectordefaultz3bpl.1425:71|
 :skolemid |42|
)))) (=> (let (($range_0@@0 ($Range 0 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|)))))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@2) (let ((k@@1 $i_1@@2))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|)) k@@1) (|Select__T@[Int]#0_| (|v#Vec_18150| _$t1) (- (- (|l#Vec_18150| _$t1) 1) k@@1)))))
 :qid |verifyvectordefaultz3bpl.1425:71|
 :skolemid |42|
))) (=> (= (ControlFlow 0 41131) (- 0 56548)) (let (($range_0@@1 ($Range (|l#Vec_18150| $t16@0) (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_push_back'#0'$0$m'@1|)))))
(forall (($i_1@@3 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@3) (let ((k@@2 $i_1@@3))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_push_back'#0'$0$m'@1|)) k@@2) (|Select__T@[Int]#0_| (|v#Vec_18150| _$t1) (- k@@2 (|l#Vec_18150| $t16@0))))))
 :qid |verifyvectordefaultz3bpl.1431:81|
 :skolemid |43|
)))))))))))))))))
(let ((anon21_Then_correct true))
(let ((|inline$$1_Vector_push_back'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'#0'$0$m'@1| ($Mutation_18795 (|l#$Mutation_18795| $t0@0) (|p#$Mutation_18795| $t0@0) (let ((l (|l#Vec_18150| (|v#$Mutation_18795| $t0@0))))
(Vec_18150 (|Store__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| $t0@0)) l |inline$$1_Vector_pop_back'#0'$0$e@2|) (+ l 1))))) (and (=> (= (ControlFlow 0 40908) 41145) anon21_Then_correct) (=> (= (ControlFlow 0 40908) 41131) anon21_Else_correct)))))
(let ((anon20_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 40914) 40908)) |inline$$1_Vector_push_back'#0'$0$anon0_correct|)))
(let ((anon20_Then_correct true))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_flag@1 true) (= $abort_code@2 $EXEC_FAILURE_CODE)) (and (= |inline$$1_Vector_pop_back'#0'$0$e@2| |inline$$1_Vector_pop_back'#0'$0$e@0|) (= |inline$$1_Vector_pop_back'#0'$0$m'@2| |inline$$1_Vector_pop_back'#0'$0$m'@0|))) (and (=> (= (ControlFlow 0 40841) 41159) anon20_Then_correct) (=> (= (ControlFlow 0 40841) 40914) anon20_Else_correct)))))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon3_Then_correct|  (=> (and (= |inline$$1_Vector_pop_back'#0'$0$len@1| 0) (= (ControlFlow 0 40839) 40841)) |inline$$1_Vector_pop_back'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon3_Else_correct|  (=> (not (= |inline$$1_Vector_pop_back'#0'$0$len@1| 0)) (=> (and (= |inline$$1_Vector_pop_back'#0'$0$e@1| (|Select__T@[Int]#0_| (|v#Vec_18150| |inline$$1_Vector_pop_back'#0'$0$v@1|) (- |inline$$1_Vector_pop_back'#0'$0$len@1| 1))) (= |inline$$1_Vector_pop_back'#0'$0$m'@1| ($Mutation_18795 (|l#$Mutation_18795| $t17@1) (|p#$Mutation_18795| $t17@1) (let ((l@@0 (- (|l#Vec_18150| |inline$$1_Vector_pop_back'#0'$0$v@1|) 1)))
(Vec_18150 (|Store__T@[Int]#0_| (|v#Vec_18150| |inline$$1_Vector_pop_back'#0'$0$v@1|) l@@0 DefaultVecElem_14772) l@@0))))) (=> (and (and (= $abort_flag@1 false) (= $abort_code@2 $abort_code@0)) (and (= |inline$$1_Vector_pop_back'#0'$0$e@2| |inline$$1_Vector_pop_back'#0'$0$e@1|) (= |inline$$1_Vector_pop_back'#0'$0$m'@2| |inline$$1_Vector_pop_back'#0'$0$m'@1|))) (and (=> (= (ControlFlow 0 40791) 41159) anon20_Then_correct) (=> (= (ControlFlow 0 40791) 40914) anon20_Else_correct)))))))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon0_correct|  (=> (and (= |inline$$1_Vector_pop_back'#0'$0$v@1| (|v#$Mutation_18795| $t17@1)) (= |inline$$1_Vector_pop_back'#0'$0$len@1| (|l#Vec_18150| |inline$$1_Vector_pop_back'#0'$0$v@1|))) (and (=> (= (ControlFlow 0 40765) 40839) |inline$$1_Vector_pop_back'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 40765) 40791) |inline$$1_Vector_pop_back'#0'$0$anon3_Else_correct|)))))
(let ((anon19_Then_correct  (=> (and inline$$Not$0$dst@1 (= (ControlFlow 0 40849) 40765)) |inline$$1_Vector_pop_back'#0'$0$anon0_correct|)))
(let ((anon22_Else_correct  (=> (not $abort_flag@0) (=> (and (= |$temp_0'vec'#0''@4| (|v#$Mutation_18795| $t0@0)) (= |$temp_0'vec'#0''@4| |$temp_0'vec'#0''@4|)) (and (=> (= (ControlFlow 0 40638) (- 0 56165)) (= (|l#Vec_18150| (|v#$Mutation_18795| $t0@0)) (+ (|l#Vec_18150| $t3@0) (|l#Vec_18150| _$t1)))) (=> (= (|l#Vec_18150| (|v#$Mutation_18795| $t0@0)) (+ (|l#Vec_18150| $t3@0) (|l#Vec_18150| _$t1))) (and (=> (= (ControlFlow 0 40638) (- 0 56183)) (|$IsEqual'vec'#0''| (let ((m (|v#Vec_18150| (|v#$Mutation_18795| $t0@0))))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 (|l#Vec_18150| $t3@0))) (|lb#$Range| ($Range 0 (|l#Vec_18150| $t3@0)))) m (|lb#$Range| ($Range 0 (|l#Vec_18150| $t3@0))) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 (|l#Vec_18150| $t3@0))) (|lb#$Range| ($Range 0 (|l#Vec_18150| $t3@0)))) 0) 0 (- (|ub#$Range| ($Range 0 (|l#Vec_18150| $t3@0))) (|lb#$Range| ($Range 0 (|l#Vec_18150| $t3@0))))))) $t3@0)) (=> (|$IsEqual'vec'#0''| (let ((m (|v#Vec_18150| (|v#$Mutation_18795| $t0@0))))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 (|l#Vec_18150| $t3@0))) (|lb#$Range| ($Range 0 (|l#Vec_18150| $t3@0)))) m (|lb#$Range| ($Range 0 (|l#Vec_18150| $t3@0))) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 (|l#Vec_18150| $t3@0))) (|lb#$Range| ($Range 0 (|l#Vec_18150| $t3@0)))) 0) 0 (- (|ub#$Range| ($Range 0 (|l#Vec_18150| $t3@0))) (|lb#$Range| ($Range 0 (|l#Vec_18150| $t3@0))))))) $t3@0) (=> (= (ControlFlow 0 40638) (- 0 56201)) (|$IsEqual'vec'#0''| (let ((m@@0 (|v#Vec_18150| (|v#$Mutation_18795| $t0@0))))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range (|l#Vec_18150| $t3@0) (|l#Vec_18150| (|v#$Mutation_18795| $t0@0)))) (|lb#$Range| ($Range (|l#Vec_18150| $t3@0) (|l#Vec_18150| (|v#$Mutation_18795| $t0@0))))) m@@0 (|lb#$Range| ($Range (|l#Vec_18150| $t3@0) (|l#Vec_18150| (|v#$Mutation_18795| $t0@0)))) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range (|l#Vec_18150| $t3@0) (|l#Vec_18150| (|v#$Mutation_18795| $t0@0)))) (|lb#$Range| ($Range (|l#Vec_18150| $t3@0) (|l#Vec_18150| (|v#$Mutation_18795| $t0@0))))) 0) 0 (- (|ub#$Range| ($Range (|l#Vec_18150| $t3@0) (|l#Vec_18150| (|v#$Mutation_18795| $t0@0)))) (|lb#$Range| ($Range (|l#Vec_18150| $t3@0) (|l#Vec_18150| (|v#$Mutation_18795| $t0@0)))))))) _$t1))))))))))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_destroy_empty'#0'$0$anon2_Then$1_correct|  (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 40550) 40652) anon22_Then_correct) (=> (= (ControlFlow 0 40550) 40638) anon22_Else_correct)))))
(let ((|inline$$1_Vector_destroy_empty'#0'$0$anon2_Then_correct|  (=> (and (not (= (|l#Vec_18150| $t1@0) 0)) (= (ControlFlow 0 40548) 40550)) |inline$$1_Vector_destroy_empty'#0'$0$anon2_Then$1_correct|)))
(let ((|inline$$1_Vector_destroy_empty'#0'$0$anon2_Else_correct|  (=> (= (|l#Vec_18150| $t1@0) 0) (=> (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (=> (= (ControlFlow 0 40500) 40652) anon22_Then_correct) (=> (= (ControlFlow 0 40500) 40638) anon22_Else_correct))))))
(let ((anon19_Else_correct  (=> (and (not inline$$Not$0$dst@1) (= $t1@0 (|v#$Mutation_18795| $t17@1))) (and (=> (= (ControlFlow 0 40554) 40548) |inline$$1_Vector_destroy_empty'#0'$0$anon2_Then_correct|) (=> (= (ControlFlow 0 40554) 40500) |inline$$1_Vector_destroy_empty'#0'$0$anon2_Else_correct|)))))
(let ((anon18_Else$1_correct  (and (=> (= (ControlFlow 0 40434) 40849) anon19_Then_correct) (=> (= (ControlFlow 0 40434) 40554) anon19_Else_correct))))
(let ((inline$$Not$0$anon0_correct  (=> (and (= inline$$Not$0$dst@1  (not |inline$$1_Vector_is_empty'#0'$0$b@1|)) (= (ControlFlow 0 40424) 40434)) anon18_Else$1_correct)))
(let ((anon18_Else_correct  (=> (and (not false) (= (ControlFlow 0 40430) 40424)) inline$$Not$0$anon0_correct)))
(let ((anon18_Then_correct true))
(let ((|inline$$1_Vector_is_empty'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_is_empty'#0'$0$b@1| (= (|l#Vec_18150| $t19@1) 0)) (and (=> (= (ControlFlow 0 40380) 41173) anon18_Then_correct) (=> (= (ControlFlow 0 40380) 40430) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 40386) (- 0 55570)) (>= (|l#Vec_18150| (|v#$Mutation_18795| _$t0)) (|l#Vec_18150| $t9@0))) (=> (>= (|l#Vec_18150| (|v#$Mutation_18795| _$t0)) (|l#Vec_18150| $t9@0)) (and (=> (= (ControlFlow 0 40386) (- 0 55583)) (<= (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_reverse'#0'$0$m'@1|)) (|l#Vec_18150| _$t1))) (=> (<= (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_reverse'#0'$0$m'@1|)) (|l#Vec_18150| _$t1)) (and (=> (= (ControlFlow 0 40386) (- 0 55596)) (= (+ (|l#Vec_18150| (|v#$Mutation_18795| _$t0)) (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_reverse'#0'$0$m'@1|))) (+ (|l#Vec_18150| $t10@0) (|l#Vec_18150| _$t1)))) (=> (= (+ (|l#Vec_18150| (|v#$Mutation_18795| _$t0)) (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_reverse'#0'$0$m'@1|))) (+ (|l#Vec_18150| $t10@0) (|l#Vec_18150| _$t1))) (and (=> (= (ControlFlow 0 40386) (- 0 55621)) (let (($range_0@@2 ($Range 0 (|l#Vec_18150| $t11@0))))
(forall (($i_1@@4 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@4) (let ((k@@3 $i_1@@4))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| _$t0)) k@@3) (|Select__T@[Int]#0_| (|v#Vec_18150| $t11@0) k@@3))))
 :qid |verifyvectordefaultz3bpl.1245:57|
 :skolemid |35|
)))) (=> (let (($range_0@@2 ($Range 0 (|l#Vec_18150| $t11@0))))
(forall (($i_1@@5 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@5) (let ((k@@3 $i_1@@5))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| _$t0)) k@@3) (|Select__T@[Int]#0_| (|v#Vec_18150| $t11@0) k@@3))))
 :qid |verifyvectordefaultz3bpl.1245:57|
 :skolemid |35|
))) (and (=> (= (ControlFlow 0 40386) (- 0 55662)) (let (($range_0@@3 ($Range 0 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_reverse'#0'$0$m'@1|)))))
(forall (($i_1@@6 Int) ) (!  (=> ($InRange $range_0@@3 $i_1@@6) (let ((k@@4 $i_1@@6))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_reverse'#0'$0$m'@1|)) k@@4) (|Select__T@[Int]#0_| (|v#Vec_18150| _$t1) (- (- (|l#Vec_18150| _$t1) 1) k@@4)))))
 :qid |verifyvectordefaultz3bpl.1251:71|
 :skolemid |36|
)))) (=> (let (($range_0@@3 ($Range 0 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_reverse'#0'$0$m'@1|)))))
(forall (($i_1@@7 Int) ) (!  (=> ($InRange $range_0@@3 $i_1@@7) (let ((k@@4 $i_1@@7))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_reverse'#0'$0$m'@1|)) k@@4) (|Select__T@[Int]#0_| (|v#Vec_18150| _$t1) (- (- (|l#Vec_18150| _$t1) 1) k@@4)))))
 :qid |verifyvectordefaultz3bpl.1251:71|
 :skolemid |36|
))) (and (=> (= (ControlFlow 0 40386) (- 0 55714)) (let (($range_0@@4 ($Range (|l#Vec_18150| $t12@0) (|l#Vec_18150| (|v#$Mutation_18795| _$t0)))))
(forall (($i_1@@8 Int) ) (!  (=> ($InRange $range_0@@4 $i_1@@8) (let ((k@@5 $i_1@@8))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| _$t0)) k@@5) (|Select__T@[Int]#0_| (|v#Vec_18150| _$t1) (- k@@5 (|l#Vec_18150| $t12@0))))))
 :qid |verifyvectordefaultz3bpl.1257:81|
 :skolemid |37|
)))) (=> (let (($range_0@@4 ($Range (|l#Vec_18150| $t12@0) (|l#Vec_18150| (|v#$Mutation_18795| _$t0)))))
(forall (($i_1@@9 Int) ) (!  (=> ($InRange $range_0@@4 $i_1@@9) (let ((k@@5 $i_1@@9))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| _$t0)) k@@5) (|Select__T@[Int]#0_| (|v#Vec_18150| _$t1) (- k@@5 (|l#Vec_18150| $t12@0))))))
 :qid |verifyvectordefaultz3bpl.1257:81|
 :skolemid |37|
))) (=> (and (|$IsValid'vec'#0''| $t19@0) (= $t0@0 ($Mutation_18795 (|l#$Mutation_18795| _$t0) (|p#$Mutation_18795| _$t0) |$temp_0'vec'#0''@2|))) (=> (and (and (|$IsValid'vec'#0''| (|v#$Mutation_18795| $t0@0)) (= $t17@1 ($Mutation_18795 (|l#$Mutation_18795| |inline$$1_Vector_reverse'#0'$0$m'@1|) (|p#$Mutation_18795| |inline$$1_Vector_reverse'#0'$0$m'@1|) |$temp_0'vec'#0''@3|))) (and (|$IsValid'vec'#0''| (|v#$Mutation_18795| $t17@1)) (not false))) (=> (and (and (and (>= (|l#Vec_18150| (|v#$Mutation_18795| $t0@0)) (|l#Vec_18150| $t5@0)) (<= (|l#Vec_18150| (|v#$Mutation_18795| $t17@1)) (|l#Vec_18150| _$t1))) (and (= (+ (|l#Vec_18150| (|v#$Mutation_18795| $t0@0)) (|l#Vec_18150| (|v#$Mutation_18795| $t17@1))) (+ (|l#Vec_18150| $t6@0) (|l#Vec_18150| _$t1))) (let (($range_0@@5 ($Range 0 (|l#Vec_18150| $t7@0))))
(forall (($i_1@@10 Int) ) (!  (=> ($InRange $range_0@@5 $i_1@@10) (let ((k@@6 $i_1@@10))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| $t0@0)) k@@6) (|Select__T@[Int]#0_| (|v#Vec_18150| $t7@0) k@@6))))
 :qid |verifyvectordefaultz3bpl.1303:61|
 :skolemid |38|
))))) (and (and (let (($range_0@@6 ($Range 0 (|l#Vec_18150| (|v#$Mutation_18795| $t17@1)))))
(forall (($i_1@@11 Int) ) (!  (=> ($InRange $range_0@@6 $i_1@@11) (let ((k@@7 $i_1@@11))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| $t17@1)) k@@7) (|Select__T@[Int]#0_| (|v#Vec_18150| _$t1) (- (- (|l#Vec_18150| _$t1) 1) k@@7)))))
 :qid |verifyvectordefaultz3bpl.1308:76|
 :skolemid |39|
))) (let (($range_0@@7 ($Range (|l#Vec_18150| $t8@0) (|l#Vec_18150| (|v#$Mutation_18795| $t0@0)))))
(forall (($i_1@@12 Int) ) (!  (=> ($InRange $range_0@@7 $i_1@@12) (let ((k@@8 $i_1@@12))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| $t0@0)) k@@8) (|Select__T@[Int]#0_| (|v#Vec_18150| _$t1) (- k@@8 (|l#Vec_18150| $t8@0))))))
 :qid |verifyvectordefaultz3bpl.1313:85|
 :skolemid |40|
)))) (and (= $t19@1 (|v#$Mutation_18795| $t17@1)) (= (ControlFlow 0 40386) 40380)))) |inline$$1_Vector_is_empty'#0'$0$anon0_correct|))))))))))))))))))
(let ((anon17_Then_correct true))
(let ((|inline$$1_Vector_reverse'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_reverse'#0'$0$m'@1| ($Mutation_18795 (|l#$Mutation_18795| $t17@0) (|p#$Mutation_18795| $t17@0) (let ((l@@1 (|l#Vec_18150| (|v#$Mutation_18795| $t17@0))))
(Vec_18150 (|lambda#3| 0 l@@1 (|v#Vec_18150| (|v#$Mutation_18795| $t17@0)) l@@1 1 DefaultVecElem_14772) l@@1)))) (and (=> (= (ControlFlow 0 39870) 41187) anon17_Then_correct) (=> (= (ControlFlow 0 39870) 40386) anon17_Else_correct)))))
(let ((anon0$1_correct  (=> (= (|l#$Mutation_18795| _$t0) ($Param 0)) (=> (and (|$IsValid'vec'#0''| (|v#$Mutation_18795| _$t0)) (|$IsValid'vec'#0''| _$t1)) (=> (and (and (= $t3@0 (|v#$Mutation_18795| _$t0)) (= $t5@0 (|v#$Mutation_18795| _$t0))) (and (= $t6@0 (|v#$Mutation_18795| _$t0)) (= $t7@0 (|v#$Mutation_18795| _$t0)))) (=> (and (and (and (and (= $t8@0 (|v#$Mutation_18795| _$t0)) (= $t9@0 (|v#$Mutation_18795| _$t0))) (and (= $t10@0 (|v#$Mutation_18795| _$t0)) (= $t11@0 (|v#$Mutation_18795| _$t0)))) (and (and (= $t12@0 (|v#$Mutation_18795| _$t0)) (= $t13@0 (|v#$Mutation_18795| _$t0))) (and (= $t14@0 (|v#$Mutation_18795| _$t0)) (= $t15@0 (|v#$Mutation_18795| _$t0))))) (and (and (and (= $t16@0 (|v#$Mutation_18795| _$t0)) (= |$temp_0'vec'#0''@0| (|v#$Mutation_18795| _$t0))) (and (= |$temp_0'vec'#0''@0| |$temp_0'vec'#0''@0|) (= _$t1 _$t1))) (and (and (= $t17@0 ($Mutation_18795 ($Local 1) (Vec_1349 (MapConstVec_4347 DefaultVecElem_4347) 0) _$t1)) (= |$temp_0'vec'#0''@1| (|v#$Mutation_18795| $t17@0))) (and (= |$temp_0'vec'#0''@1| |$temp_0'vec'#0''@1|) (= (ControlFlow 0 39876) 39870))))) |inline$$1_Vector_reverse'#0'$0$anon0_correct|))))))
(let ((anon0_correct  (=> (= (|l#Vec_1349| (|p#$Mutation_18795| $t2)) 0) (=> (and (= (|l#Vec_1349| (|p#$Mutation_18795| $t17)) 0) (= (ControlFlow 0 39711) 39876)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 55167) 39711) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_18150 0)) (((Vec_18150 (|v#Vec_18150| |T@[Int]#0|) (|l#Vec_18150| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_21435 0)) ((($Mutation_21435 (|l#$Mutation_21435| T@$Location) (|p#$Mutation_21435| T@Vec_1349) (|v#$Mutation_21435| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_19810 0)) ((($Mutation_19810 (|l#$Mutation_19810| T@$Location) (|p#$Mutation_19810| T@Vec_1349) (|v#$Mutation_19810| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18795 0)) ((($Mutation_18795 (|l#$Mutation_18795| T@$Location) (|p#$Mutation_18795| T@Vec_1349) (|v#$Mutation_18795| T@Vec_18150) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_18150 T@Vec_18150) Bool)
(declare-fun InRangeVec_14752 (T@Vec_18150 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_18150) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_18150 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun IndexOfVec_18150 (T@Vec_18150 |T@#0|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |verifyvectordefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectordefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectordefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectordefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectordefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectordefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_18150) (v2 T@Vec_18150) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_18150| v1) (|l#Vec_18150| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14752 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_18150| v2) i@@0)))
 :qid |verifyvectordefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |verifyvectordefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_18150) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_18150| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14752 v@@4 i@@1) true)
 :qid |verifyvectordefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |verifyvectordefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_18150) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14752 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@3) e))
 :qid |verifyvectordefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14752 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) j) e)))
 :qid |verifyvectordefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |verifyvectordefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |verifyvectordefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |verifyvectordefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |verifyvectordefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |verifyvectordefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |verifyvectordefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |verifyvectordefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |verifyvectordefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |verifyvectordefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |verifyvectordefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectordefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectordefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_18150) (i@@8 Int) ) (! (= (InRangeVec_14752 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_18150| v@@8))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14752 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (i@@9 Int) ) (! (= (InRangeVec_4118 v@@9 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_1349| v@@9))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@9 i@@9))
)))
(assert (forall ((v@@10 T@Vec_18150) (e@@1 |T@#0|) ) (! (let ((i@@10 (IndexOfVec_18150 v@@10 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_14752 v@@10 i@@11) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@11) e@@1))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_14752 v@@10 i@@10) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) j@@1) e@@1)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_18150 v@@10 e@@1))
)))
(assert (forall ((v@@11 T@Vec_1349) (e@@2 Int) ) (! (let ((i@@12 (IndexOfVec_1349 v@@11 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_4118 v@@11 i@@13) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@13) e@@2))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_4118 v@@11 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) j@@2) e@@2)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@11 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |verifyvectordefaultz3bpl.275:54|
 :skolemid |74|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@15 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@15) (|Select__T@[Int]#0_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |75|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@16 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |76|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@3 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@3) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |77|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |78|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |79|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]#0|) (|l#3@@5| Int) (|l#4@@5| |T@#0|) (k Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]#0_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |verifyvectordefaultz3bpl.90:14|
 :skolemid |81|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun _$t0 () T@Vec_18150)
(declare-fun _$t1 () |T@#0|)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t4@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $t9@1 () Bool)
(declare-fun $t13@0 () Bool)
(declare-fun |inline$$1_Vector_borrow'#0'$0$dst@2| () |T@#0|)
(declare-fun |inline$$1_Vector_borrow'#0'$0$dst@0| () |T@#0|)
(declare-fun |inline$$1_Vector_borrow'#0'$0$dst@1| () |T@#0|)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun |inline$$1_Vector_length'#0'$0$l@1| () Int)
(declare-fun $t10@0 () Int)
(declare-fun $t11@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_contains$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 56626) (let ((L9_correct  (=> (= (ControlFlow 0 42236) (- 0 57298)) false)))
(let ((anon21_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 42226) 42236)) L9_correct))))
(let ((anon19_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 42268) 42236)) L9_correct))))
(let ((anon21_Else_correct  (=> (not $abort_flag@1) (=> (and (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@2) (= (ControlFlow 0 42212) (- 0 57261))) (not (let (($range_0 ($Range 0 inline$$AddU64$0$dst@2)))
(exists (($i_1 Int) ) (!  (and ($InRange $range_0 $i_1) (let ((j@@5 $i_1))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| _$t0) j@@5) _$t1)))
 :qid |verifyvectordefaultz3bpl.1692:50|
 :skolemid |47|
))))))))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 42153) 42226) anon21_Then_correct) (=> (= (ControlFlow 0 42153) 42212) anon21_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t4@0 1) $MAX_U64) (= (ControlFlow 0 42151) 42153)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t4@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t4@0 1)) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 42099) 42226) anon21_Then_correct) (=> (= (ControlFlow 0 42099) 42212) anon21_Else_correct))))))
(let ((anon20_Else_correct  (=> (and (not $t9@1) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 42159) 42151) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 42159) 42099) inline$$AddU64$0$anon3_Else_correct)))))
(let ((L8_correct  (and (=> (= (ControlFlow 0 41835) (- 0 57115)) (not false)) (=> (not false) (=> (= (ControlFlow 0 41835) (- 0 57122)) (= $t13@0 (let (($range_0@@0 _$t0))
(exists (($i_1@@0 Int) ) (!  (and (InRangeVec_14752 $range_0@@0 $i_1@@0) (let ((x (|Select__T@[Int]#0_| (|v#Vec_18150| $range_0@@0) $i_1@@0)))
(= x _$t1)))
 :qid |verifyvectordefaultz3bpl.1711:58|
 :skolemid |48|
)))))))))
(let ((anon20_Then_correct  (=> (and (and $t9@1 (= true true)) (and (= $t13@0 true) (= (ControlFlow 0 42254) 41835))) L8_correct)))
(let ((anon19_Else_correct  (=> (and (not $abort_flag@0) (= $t9@1 (= |inline$$1_Vector_borrow'#0'$0$dst@2| _$t1))) (and (=> (= (ControlFlow 0 41994) 42254) anon20_Then_correct) (=> (= (ControlFlow 0 41994) 42159) anon20_Else_correct)))))
(let ((|inline$$1_Vector_borrow'#0'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'#0'$0$dst@2| |inline$$1_Vector_borrow'#0'$0$dst@0|)) (and (=> (= (ControlFlow 0 41974) 42268) anon19_Then_correct) (=> (= (ControlFlow 0 41974) 41994) anon19_Else_correct))))))
(let ((|inline$$1_Vector_borrow'#0'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_14752 _$t0 $t4@0)) (= (ControlFlow 0 41972) 41974)) |inline$$1_Vector_borrow'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'#0'$0$anon3_Else_correct|  (=> (InRangeVec_14752 _$t0 $t4@0) (=> (and (and (= |inline$$1_Vector_borrow'#0'$0$dst@1| (|Select__T@[Int]#0_| (|v#Vec_18150| _$t0) $t4@0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow'#0'$0$dst@2| |inline$$1_Vector_borrow'#0'$0$dst@1|))) (and (=> (= (ControlFlow 0 41922) 42268) anon19_Then_correct) (=> (= (ControlFlow 0 41922) 41994) anon19_Else_correct))))))
(let ((anon18_Then_correct  (=> inline$$Lt$0$dst@1 (and (=> (= (ControlFlow 0 41980) 41972) |inline$$1_Vector_borrow'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 41980) 41922) |inline$$1_Vector_borrow'#0'$0$anon3_Else_correct|)))))
(let ((anon18_Else_correct  (=> (not inline$$Lt$0$dst@1) (and (=> (= (ControlFlow 0 41790) (- 0 56950)) (not (let (($range_0@@1 _$t0))
(exists (($i_1@@1 Int) ) (!  (and (InRangeVec_14752 $range_0@@1 $i_1@@1) (let ((x@@0 (|Select__T@[Int]#0_| (|v#Vec_18150| $range_0@@1) $i_1@@1)))
(= x@@0 _$t1)))
 :qid |verifyvectordefaultz3bpl.1667:38|
 :skolemid |46|
))))) (=> (not (let (($range_0@@1 _$t0))
(exists (($i_1@@2 Int) ) (!  (and (InRangeVec_14752 $range_0@@1 $i_1@@2) (let ((x@@0 (|Select__T@[Int]#0_| (|v#Vec_18150| $range_0@@1) $i_1@@2)))
(= x@@0 _$t1)))
 :qid |verifyvectordefaultz3bpl.1667:38|
 :skolemid |46|
)))) (=> (= false false) (=> (and (= $t13@0 false) (= (ControlFlow 0 41790) 41835)) L8_correct)))))))
(let ((anon17_Else$1_correct  (and (=> (= (ControlFlow 0 41735) 41980) anon18_Then_correct) (=> (= (ControlFlow 0 41735) 41790) anon18_Else_correct))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t4@0 |inline$$1_Vector_length'#0'$0$l@1|)) (= (ControlFlow 0 41725) 41735)) anon17_Else$1_correct)))
(let ((anon17_Else_correct  (=> (and (not false) (= |inline$$1_Vector_length'#0'$0$l@1| |inline$$1_Vector_length'#0'$0$l@1|)) (and (=> (= (ControlFlow 0 41731) (- 0 56815)) (not (let (($range_0@@2 ($Range 0 0)))
(exists (($i_1@@3 Int) ) (!  (and ($InRange $range_0@@2 $i_1@@3) (let ((j@@6 $i_1@@3))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| _$t0) j@@6) _$t1)))
 :qid |verifyvectordefaultz3bpl.1544:49|
 :skolemid |44|
))))) (=> (not (let (($range_0@@2 ($Range 0 0)))
(exists (($i_1@@4 Int) ) (!  (and ($InRange $range_0@@2 $i_1@@4) (let ((j@@6 $i_1@@4))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| _$t0) j@@6) _$t1)))
 :qid |verifyvectordefaultz3bpl.1544:49|
 :skolemid |44|
)))) (=> (and (|$IsValid'u64'| $t4@0) (|$IsValid'u64'| $t10@0)) (=> (and (and (|$IsValid'u64'| $t11@0) (not false)) (and (not (let (($range_0@@3 ($Range 0 $t4@0)))
(exists (($i_1@@5 Int) ) (!  (and ($InRange $range_0@@3 $i_1@@5) (let ((j@@7 $i_1@@5))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| _$t0) j@@7) _$t1)))
 :qid |verifyvectordefaultz3bpl.1575:54|
 :skolemid |45|
)))) (= (ControlFlow 0 41731) 41725))) inline$$Lt$0$anon0_correct)))))))
(let ((anon17_Then_correct true))
(let ((|inline$$1_Vector_length'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'#0'$0$l@1| (|l#Vec_18150| _$t0)) (and (=> (= (ControlFlow 0 41561) 42282) anon17_Then_correct) (=> (= (ControlFlow 0 41561) 41731) anon17_Else_correct)))))
(let ((anon0$1_correct  (=> (and (|$IsValid'vec'#0''| _$t0) (= _$t0 _$t0)) (=> (and (and (= _$t1 _$t1) (|$IsValid'u64'| 0)) (and (= 0 0) (= (ControlFlow 0 41567) 41561))) |inline$$1_Vector_length'#0'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (ControlFlow 0 56626) 41567) anon0$1_correct)))
anon0_correct))))))))))))))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_18150 0)) (((Vec_18150 (|v#Vec_18150| |T@[Int]#0|) (|l#Vec_18150| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_21435 0)) ((($Mutation_21435 (|l#$Mutation_21435| T@$Location) (|p#$Mutation_21435| T@Vec_1349) (|v#$Mutation_21435| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_19810 0)) ((($Mutation_19810 (|l#$Mutation_19810| T@$Location) (|p#$Mutation_19810| T@Vec_1349) (|v#$Mutation_19810| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18795 0)) ((($Mutation_18795 (|l#$Mutation_18795| T@$Location) (|p#$Mutation_18795| T@Vec_1349) (|v#$Mutation_18795| T@Vec_18150) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_18150 T@Vec_18150) Bool)
(declare-fun InRangeVec_14752 (T@Vec_18150 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_18150) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_18150 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun IndexOfVec_18150 (T@Vec_18150 |T@#0|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |verifyvectordefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectordefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectordefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectordefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectordefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectordefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_18150) (v2 T@Vec_18150) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_18150| v1) (|l#Vec_18150| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14752 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_18150| v2) i@@0)))
 :qid |verifyvectordefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |verifyvectordefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_18150) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_18150| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14752 v@@4 i@@1) true)
 :qid |verifyvectordefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |verifyvectordefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_18150) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14752 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@3) e))
 :qid |verifyvectordefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14752 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) j) e)))
 :qid |verifyvectordefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |verifyvectordefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |verifyvectordefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |verifyvectordefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |verifyvectordefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |verifyvectordefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |verifyvectordefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |verifyvectordefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |verifyvectordefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |verifyvectordefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |verifyvectordefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectordefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectordefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_18150) (i@@8 Int) ) (! (= (InRangeVec_14752 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_18150| v@@8))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14752 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (i@@9 Int) ) (! (= (InRangeVec_4118 v@@9 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_1349| v@@9))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@9 i@@9))
)))
(assert (forall ((v@@10 T@Vec_18150) (e@@1 |T@#0|) ) (! (let ((i@@10 (IndexOfVec_18150 v@@10 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_14752 v@@10 i@@11) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@11) e@@1))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_14752 v@@10 i@@10) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) j@@1) e@@1)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_18150 v@@10 e@@1))
)))
(assert (forall ((v@@11 T@Vec_1349) (e@@2 Int) ) (! (let ((i@@12 (IndexOfVec_1349 v@@11 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_4118 v@@11 i@@13) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@13) e@@2))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_4118 v@@11 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) j@@2) e@@2)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@11 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |verifyvectordefaultz3bpl.275:54|
 :skolemid |74|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@15 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@15) (|Select__T@[Int]#0_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |75|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@16 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |76|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@3 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@3) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |77|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |78|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |79|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]#0|) (|l#3@@5| Int) (|l#4@@5| |T@#0|) (k Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]#0_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |verifyvectordefaultz3bpl.90:14|
 :skolemid |81|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun _$t0 () T@Vec_18150)
(declare-fun _$t1 () |T@#0|)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t4@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $t9@1 () Bool)
(declare-fun $t13@0 () Bool)
(declare-fun $t14@0 () Int)
(declare-fun |inline$$1_Vector_borrow'#0'$0$dst@2| () |T@#0|)
(declare-fun |inline$$1_Vector_borrow'#0'$0$dst@0| () |T@#0|)
(declare-fun |inline$$1_Vector_borrow'#0'$0$dst@1| () |T@#0|)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun |inline$$1_Vector_length'#0'$0$l@1| () Int)
(declare-fun $t10@0 () Int)
(declare-fun $t11@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_index_of$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 57321) (let ((L9_correct  (=> (= (ControlFlow 0 43199) (- 0 58061)) false)))
(let ((anon20_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 43189) 43199)) L9_correct))))
(let ((anon18_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 43239) 43199)) L9_correct))))
(let ((anon20_Else_correct  (=> (not $abort_flag@1) (=> (and (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@2) (= (ControlFlow 0 43175) (- 0 58024))) (not (let (($range_0 ($Range 0 inline$$AddU64$0$dst@2)))
(exists (($i_1 Int) ) (!  (and ($InRange $range_0 $i_1) (let ((j@@5 $i_1))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| _$t0) j@@5) _$t1)))
 :qid |verifyvectordefaultz3bpl.1968:50|
 :skolemid |51|
))))))))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 43116) 43189) anon20_Then_correct) (=> (= (ControlFlow 0 43116) 43175) anon20_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t4@0 1) $MAX_U64) (= (ControlFlow 0 43114) 43116)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t4@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t4@0 1)) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 43062) 43189) anon20_Then_correct) (=> (= (ControlFlow 0 43062) 43175) anon20_Else_correct))))))
(let ((anon19_Else_correct  (=> (and (not $t9@1) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 43122) 43114) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 43122) 43062) inline$$AddU64$0$anon3_Else_correct)))))
(let ((L8_correct  (and (=> (= (ControlFlow 0 42798) (- 0 57812)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 42798) (- 0 57819)) (= $t13@0 (let (($range_0@@0 _$t0))
(exists (($i_1@@0 Int) ) (!  (and (InRangeVec_14752 $range_0@@0 $i_1@@0) (let ((x (|Select__T@[Int]#0_| (|v#Vec_18150| $range_0@@0) $i_1@@0)))
(= x _$t1)))
 :qid |verifyvectordefaultz3bpl.1987:58|
 :skolemid |52|
))))) (=> (= $t13@0 (let (($range_0@@0 _$t0))
(exists (($i_1@@1 Int) ) (!  (and (InRangeVec_14752 $range_0@@0 $i_1@@1) (let ((x (|Select__T@[Int]#0_| (|v#Vec_18150| $range_0@@0) $i_1@@1)))
(= x _$t1)))
 :qid |verifyvectordefaultz3bpl.1987:58|
 :skolemid |52|
)))) (and (=> (= (ControlFlow 0 42798) (- 0 57852)) (=> $t13@0 (= (|Select__T@[Int]#0_| (|v#Vec_18150| _$t0) $t14@0) _$t1))) (=> (=> $t13@0 (= (|Select__T@[Int]#0_| (|v#Vec_18150| _$t0) $t14@0) _$t1)) (and (=> (= (ControlFlow 0 42798) (- 0 57865)) (=> $t13@0 (let (($range_0@@1 ($Range 0 $t14@0)))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@2) (let ((i@@19 $i_1@@2))
 (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| _$t0) i@@19) _$t1))))
 :qid |verifyvectordefaultz3bpl.1998:59|
 :skolemid |53|
))))) (=> (=> $t13@0 (let (($range_0@@1 ($Range 0 $t14@0)))
(forall (($i_1@@3 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@3) (let ((i@@19 $i_1@@3))
 (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| _$t0) i@@19) _$t1))))
 :qid |verifyvectordefaultz3bpl.1998:59|
 :skolemid |53|
)))) (=> (= (ControlFlow 0 42798) (- 0 57903)) (=> (not $t13@0) (= $t14@0 0)))))))))))))
(let ((anon19_Then_correct  (=> (and $t9@1 (= true true)) (=> (and (and (= $t4@0 $t4@0) (= $t13@0 true)) (and (= $t14@0 $t4@0) (= (ControlFlow 0 43225) 42798))) L8_correct))))
(let ((anon18_Else_correct  (=> (and (not $abort_flag@0) (= $t9@1 (= |inline$$1_Vector_borrow'#0'$0$dst@2| _$t1))) (and (=> (= (ControlFlow 0 42957) 43225) anon19_Then_correct) (=> (= (ControlFlow 0 42957) 43122) anon19_Else_correct)))))
(let ((|inline$$1_Vector_borrow'#0'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'#0'$0$dst@2| |inline$$1_Vector_borrow'#0'$0$dst@0|)) (and (=> (= (ControlFlow 0 42937) 43239) anon18_Then_correct) (=> (= (ControlFlow 0 42937) 42957) anon18_Else_correct))))))
(let ((|inline$$1_Vector_borrow'#0'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_14752 _$t0 $t4@0)) (= (ControlFlow 0 42935) 42937)) |inline$$1_Vector_borrow'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'#0'$0$anon3_Else_correct|  (=> (InRangeVec_14752 _$t0 $t4@0) (=> (and (and (= |inline$$1_Vector_borrow'#0'$0$dst@1| (|Select__T@[Int]#0_| (|v#Vec_18150| _$t0) $t4@0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow'#0'$0$dst@2| |inline$$1_Vector_borrow'#0'$0$dst@1|))) (and (=> (= (ControlFlow 0 42885) 43239) anon18_Then_correct) (=> (= (ControlFlow 0 42885) 42957) anon18_Else_correct))))))
(let ((anon17_Then_correct  (=> inline$$Lt$0$dst@1 (and (=> (= (ControlFlow 0 42943) 42935) |inline$$1_Vector_borrow'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 42943) 42885) |inline$$1_Vector_borrow'#0'$0$anon3_Else_correct|)))))
(let ((anon17_Else_correct  (=> (not inline$$Lt$0$dst@1) (=> (and (|$IsValid'u64'| 0) (= false false)) (=> (and (and (= 0 0) (= $t13@0 false)) (and (= $t14@0 0) (= (ControlFlow 0 42680) 42798))) L8_correct)))))
(let ((anon16_Else$1_correct  (and (=> (= (ControlFlow 0 42646) 42943) anon17_Then_correct) (=> (= (ControlFlow 0 42646) 42680) anon17_Else_correct))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t4@0 |inline$$1_Vector_length'#0'$0$l@1|)) (= (ControlFlow 0 42636) 42646)) anon16_Else$1_correct)))
(let ((anon16_Else_correct  (=> (and (not false) (= |inline$$1_Vector_length'#0'$0$l@1| |inline$$1_Vector_length'#0'$0$l@1|)) (and (=> (= (ControlFlow 0 42642) (- 0 57518)) (not (let (($range_0@@2 ($Range 0 0)))
(exists (($i_1@@4 Int) ) (!  (and ($InRange $range_0@@2 $i_1@@4) (let ((j@@6 $i_1@@4))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| _$t0) j@@6) _$t1)))
 :qid |verifyvectordefaultz3bpl.1808:49|
 :skolemid |49|
))))) (=> (not (let (($range_0@@2 ($Range 0 0)))
(exists (($i_1@@5 Int) ) (!  (and ($InRange $range_0@@2 $i_1@@5) (let ((j@@6 $i_1@@5))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| _$t0) j@@6) _$t1)))
 :qid |verifyvectordefaultz3bpl.1808:49|
 :skolemid |49|
)))) (=> (and (|$IsValid'u64'| $t4@0) (|$IsValid'u64'| $t10@0)) (=> (and (and (|$IsValid'u64'| $t11@0) (not false)) (and (not (let (($range_0@@3 ($Range 0 $t4@0)))
(exists (($i_1@@6 Int) ) (!  (and ($InRange $range_0@@3 $i_1@@6) (let ((j@@7 $i_1@@6))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| _$t0) j@@7) _$t1)))
 :qid |verifyvectordefaultz3bpl.1839:54|
 :skolemid |50|
)))) (= (ControlFlow 0 42642) 42636))) inline$$Lt$0$anon0_correct)))))))
(let ((anon16_Then_correct true))
(let ((|inline$$1_Vector_length'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'#0'$0$l@1| (|l#Vec_18150| _$t0)) (and (=> (= (ControlFlow 0 42472) 43253) anon16_Then_correct) (=> (= (ControlFlow 0 42472) 42642) anon16_Else_correct)))))
(let ((anon0$1_correct  (=> (and (|$IsValid'vec'#0''| _$t0) (= _$t0 _$t0)) (=> (and (and (= _$t1 _$t1) (|$IsValid'u64'| 0)) (and (= 0 0) (= (ControlFlow 0 42478) 42472))) |inline$$1_Vector_length'#0'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (ControlFlow 0 57321) 42478) anon0$1_correct)))
anon0_correct))))))))))))))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_18150 0)) (((Vec_18150 (|v#Vec_18150| |T@[Int]#0|) (|l#Vec_18150| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_21435 0)) ((($Mutation_21435 (|l#$Mutation_21435| T@$Location) (|p#$Mutation_21435| T@Vec_1349) (|v#$Mutation_21435| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_19810 0)) ((($Mutation_19810 (|l#$Mutation_19810| T@$Location) (|p#$Mutation_19810| T@Vec_1349) (|v#$Mutation_19810| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18795 0)) ((($Mutation_18795 (|l#$Mutation_18795| T@$Location) (|p#$Mutation_18795| T@Vec_1349) (|v#$Mutation_18795| T@Vec_18150) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_18150 T@Vec_18150) Bool)
(declare-fun InRangeVec_14752 (T@Vec_18150 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_18150) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_18150 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun IndexOfVec_18150 (T@Vec_18150 |T@#0|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |verifyvectordefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectordefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectordefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectordefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectordefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectordefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_18150) (v2 T@Vec_18150) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_18150| v1) (|l#Vec_18150| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14752 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_18150| v2) i@@0)))
 :qid |verifyvectordefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |verifyvectordefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_18150) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_18150| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14752 v@@4 i@@1) true)
 :qid |verifyvectordefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |verifyvectordefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_18150) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14752 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@3) e))
 :qid |verifyvectordefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14752 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) j) e)))
 :qid |verifyvectordefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |verifyvectordefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |verifyvectordefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |verifyvectordefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |verifyvectordefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |verifyvectordefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |verifyvectordefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |verifyvectordefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |verifyvectordefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |verifyvectordefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |verifyvectordefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectordefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectordefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_18150) (i@@8 Int) ) (! (= (InRangeVec_14752 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_18150| v@@8))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14752 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (i@@9 Int) ) (! (= (InRangeVec_4118 v@@9 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_1349| v@@9))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@9 i@@9))
)))
(assert (forall ((v@@10 T@Vec_18150) (e@@1 |T@#0|) ) (! (let ((i@@10 (IndexOfVec_18150 v@@10 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_14752 v@@10 i@@11) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@11) e@@1))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_14752 v@@10 i@@10) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) j@@1) e@@1)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_18150 v@@10 e@@1))
)))
(assert (forall ((v@@11 T@Vec_1349) (e@@2 Int) ) (! (let ((i@@12 (IndexOfVec_1349 v@@11 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_4118 v@@11 i@@13) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@13) e@@2))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_4118 v@@11 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) j@@2) e@@2)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@11 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |verifyvectordefaultz3bpl.275:54|
 :skolemid |74|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@15 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@15) (|Select__T@[Int]#0_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |75|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@16 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |76|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@3 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@3) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |77|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |78|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |79|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]#0|) (|l#3@@5| Int) (|l#4@@5| |T@#0|) (k Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]#0_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |verifyvectordefaultz3bpl.90:14|
 :skolemid |81|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t4@0 () Bool)
(declare-fun |inline$$1_Vector_length'#0'$0$l@1| () Int)
(declare-fun _$t0 () T@Vec_18150)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_is_empty$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 58081) (let ((anon4_Else_correct  (=> (not false) (=> (and (and (|$IsValid'u64'| 0) (= $t4@0 (= |inline$$1_Vector_length'#0'$0$l@1| 0))) (and (= $t4@0 $t4@0) (= (ControlFlow 0 43466) (- 0 58202)))) (= $t4@0 (= (|l#Vec_18150| _$t0) 0))))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_length'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'#0'$0$l@1| (|l#Vec_18150| _$t0)) (and (=> (= (ControlFlow 0 43416) 43484) anon4_Then_correct) (=> (= (ControlFlow 0 43416) 43466) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'#0''| _$t0) (=> (and (= _$t0 _$t0) (= (ControlFlow 0 43422) 43416)) |inline$$1_Vector_length'#0'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (ControlFlow 0 58081) 43422) anon0$1_correct)))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_18150 0)) (((Vec_18150 (|v#Vec_18150| |T@[Int]#0|) (|l#Vec_18150| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_21435 0)) ((($Mutation_21435 (|l#$Mutation_21435| T@$Location) (|p#$Mutation_21435| T@Vec_1349) (|v#$Mutation_21435| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_19810 0)) ((($Mutation_19810 (|l#$Mutation_19810| T@$Location) (|p#$Mutation_19810| T@Vec_1349) (|v#$Mutation_19810| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18795 0)) ((($Mutation_18795 (|l#$Mutation_18795| T@$Location) (|p#$Mutation_18795| T@Vec_1349) (|v#$Mutation_18795| T@Vec_18150) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_18150 T@Vec_18150) Bool)
(declare-fun InRangeVec_14752 (T@Vec_18150 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_18150) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_18150 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun IndexOfVec_18150 (T@Vec_18150 |T@#0|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |verifyvectordefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectordefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectordefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectordefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectordefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectordefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_18150) (v2 T@Vec_18150) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_18150| v1) (|l#Vec_18150| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14752 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_18150| v2) i@@0)))
 :qid |verifyvectordefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |verifyvectordefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_18150) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_18150| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14752 v@@4 i@@1) true)
 :qid |verifyvectordefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |verifyvectordefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_18150) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14752 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@3) e))
 :qid |verifyvectordefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14752 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) j) e)))
 :qid |verifyvectordefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |verifyvectordefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |verifyvectordefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |verifyvectordefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |verifyvectordefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |verifyvectordefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |verifyvectordefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |verifyvectordefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |verifyvectordefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |verifyvectordefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |verifyvectordefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectordefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectordefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_18150) (i@@8 Int) ) (! (= (InRangeVec_14752 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_18150| v@@8))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14752 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (i@@9 Int) ) (! (= (InRangeVec_4118 v@@9 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_1349| v@@9))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@9 i@@9))
)))
(assert (forall ((v@@10 T@Vec_18150) (e@@1 |T@#0|) ) (! (let ((i@@10 (IndexOfVec_18150 v@@10 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_14752 v@@10 i@@11) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@11) e@@1))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_14752 v@@10 i@@10) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) j@@1) e@@1)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_18150 v@@10 e@@1))
)))
(assert (forall ((v@@11 T@Vec_1349) (e@@2 Int) ) (! (let ((i@@12 (IndexOfVec_1349 v@@11 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_4118 v@@11 i@@13) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@13) e@@2))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_4118 v@@11 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) j@@2) e@@2)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@11 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |verifyvectordefaultz3bpl.275:54|
 :skolemid |74|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@15 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@15) (|Select__T@[Int]#0_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |75|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@16 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |76|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@3 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@3) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |77|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |78|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |79|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]#0|) (|l#3@@5| Int) (|l#4@@5| |T@#0|) (k Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]#0_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |verifyvectordefaultz3bpl.90:14|
 :skolemid |81|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$temp_0'vec'#0''@1| () T@Vec_18150)
(declare-fun |inline$$1_Vector_append'#0'$0$m'@1| () T@$Mutation_18795)
(declare-fun $t2@0 () T@Vec_18150)
(declare-fun _$t1 () T@Vec_18150)
(declare-fun DefaultVecElem_14772 () |T@#0|)
(declare-fun _$t0 () T@$Mutation_18795)
(declare-fun |$temp_0'vec'#0''@0| () T@Vec_18150)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_append$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 58225) (let ((anon4_Else_correct  (=> (not false) (=> (and (= |$temp_0'vec'#0''@1| (|v#$Mutation_18795| |inline$$1_Vector_append'#0'$0$m'@1|)) (= |$temp_0'vec'#0''@1| |$temp_0'vec'#0''@1|)) (and (=> (= (ControlFlow 0 43742) (- 0 58390)) (= (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_append'#0'$0$m'@1|)) (+ (|l#Vec_18150| $t2@0) (|l#Vec_18150| _$t1)))) (=> (= (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_append'#0'$0$m'@1|)) (+ (|l#Vec_18150| $t2@0) (|l#Vec_18150| _$t1))) (and (=> (= (ControlFlow 0 43742) (- 0 58408)) (|$IsEqual'vec'#0''| (let ((m (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_append'#0'$0$m'@1|))))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 (|l#Vec_18150| $t2@0))) (|lb#$Range| ($Range 0 (|l#Vec_18150| $t2@0)))) m (|lb#$Range| ($Range 0 (|l#Vec_18150| $t2@0))) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 (|l#Vec_18150| $t2@0))) (|lb#$Range| ($Range 0 (|l#Vec_18150| $t2@0)))) 0) 0 (- (|ub#$Range| ($Range 0 (|l#Vec_18150| $t2@0))) (|lb#$Range| ($Range 0 (|l#Vec_18150| $t2@0))))))) $t2@0)) (=> (|$IsEqual'vec'#0''| (let ((m (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_append'#0'$0$m'@1|))))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 (|l#Vec_18150| $t2@0))) (|lb#$Range| ($Range 0 (|l#Vec_18150| $t2@0)))) m (|lb#$Range| ($Range 0 (|l#Vec_18150| $t2@0))) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 (|l#Vec_18150| $t2@0))) (|lb#$Range| ($Range 0 (|l#Vec_18150| $t2@0)))) 0) 0 (- (|ub#$Range| ($Range 0 (|l#Vec_18150| $t2@0))) (|lb#$Range| ($Range 0 (|l#Vec_18150| $t2@0))))))) $t2@0) (=> (= (ControlFlow 0 43742) (- 0 58426)) (|$IsEqual'vec'#0''| (let ((m@@0 (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_append'#0'$0$m'@1|))))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range (|l#Vec_18150| $t2@0) (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_append'#0'$0$m'@1|)))) (|lb#$Range| ($Range (|l#Vec_18150| $t2@0) (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_append'#0'$0$m'@1|))))) m@@0 (|lb#$Range| ($Range (|l#Vec_18150| $t2@0) (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_append'#0'$0$m'@1|)))) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range (|l#Vec_18150| $t2@0) (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_append'#0'$0$m'@1|)))) (|lb#$Range| ($Range (|l#Vec_18150| $t2@0) (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_append'#0'$0$m'@1|))))) 0) 0 (- (|ub#$Range| ($Range (|l#Vec_18150| $t2@0) (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_append'#0'$0$m'@1|)))) (|lb#$Range| ($Range (|l#Vec_18150| $t2@0) (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_append'#0'$0$m'@1|)))))))) _$t1))))))))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_append'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_append'#0'$0$m'@1| ($Mutation_18795 (|l#$Mutation_18795| _$t0) (|p#$Mutation_18795| _$t0) (let ((m2@@0 (|v#Vec_18150| _$t1)))
(let ((l2 (|l#Vec_18150| _$t1)))
(let ((m1@@0 (|v#Vec_18150| (|v#$Mutation_18795| _$t0))))
(let ((l1 (|l#Vec_18150| (|v#$Mutation_18795| _$t0))))
(Vec_18150 (|lambda#2| 0 (+ l1 l2) l1 m1@@0 m2@@0 l1 DefaultVecElem_14772) (+ l1 l2)))))))) (and (=> (= (ControlFlow 0 43650) 43760) anon4_Then_correct) (=> (= (ControlFlow 0 43650) 43742) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (and (and (and (= (|l#$Mutation_18795| _$t0) ($Param 0)) (|$IsValid'vec'#0''| (|v#$Mutation_18795| _$t0))) (and (|$IsValid'vec'#0''| _$t1) (= $t2@0 (|v#$Mutation_18795| _$t0)))) (and (and (= |$temp_0'vec'#0''@0| (|v#$Mutation_18795| _$t0)) (= |$temp_0'vec'#0''@0| |$temp_0'vec'#0''@0|)) (and (= _$t1 _$t1) (= (ControlFlow 0 43656) 43650)))) |inline$$1_Vector_append'#0'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (ControlFlow 0 58225) 43656) anon0$1_correct)))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_18150 0)) (((Vec_18150 (|v#Vec_18150| |T@[Int]#0|) (|l#Vec_18150| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_21435 0)) ((($Mutation_21435 (|l#$Mutation_21435| T@$Location) (|p#$Mutation_21435| T@Vec_1349) (|v#$Mutation_21435| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_19810 0)) ((($Mutation_19810 (|l#$Mutation_19810| T@$Location) (|p#$Mutation_19810| T@Vec_1349) (|v#$Mutation_19810| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18795 0)) ((($Mutation_18795 (|l#$Mutation_18795| T@$Location) (|p#$Mutation_18795| T@Vec_1349) (|v#$Mutation_18795| T@Vec_18150) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_18150 T@Vec_18150) Bool)
(declare-fun InRangeVec_14752 (T@Vec_18150 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_18150) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_18150 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun IndexOfVec_18150 (T@Vec_18150 |T@#0|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |verifyvectordefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectordefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectordefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectordefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectordefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectordefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_18150) (v2 T@Vec_18150) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_18150| v1) (|l#Vec_18150| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14752 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_18150| v2) i@@0)))
 :qid |verifyvectordefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |verifyvectordefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_18150) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_18150| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14752 v@@4 i@@1) true)
 :qid |verifyvectordefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |verifyvectordefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_18150) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14752 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@3) e))
 :qid |verifyvectordefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14752 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) j) e)))
 :qid |verifyvectordefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |verifyvectordefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |verifyvectordefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |verifyvectordefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |verifyvectordefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |verifyvectordefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |verifyvectordefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |verifyvectordefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |verifyvectordefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |verifyvectordefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |verifyvectordefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectordefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectordefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_18150) (i@@8 Int) ) (! (= (InRangeVec_14752 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_18150| v@@8))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14752 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (i@@9 Int) ) (! (= (InRangeVec_4118 v@@9 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_1349| v@@9))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@9 i@@9))
)))
(assert (forall ((v@@10 T@Vec_18150) (e@@1 |T@#0|) ) (! (let ((i@@10 (IndexOfVec_18150 v@@10 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_14752 v@@10 i@@11) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@11) e@@1))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_14752 v@@10 i@@10) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) j@@1) e@@1)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_18150 v@@10 e@@1))
)))
(assert (forall ((v@@11 T@Vec_1349) (e@@2 Int) ) (! (let ((i@@12 (IndexOfVec_1349 v@@11 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_4118 v@@11 i@@13) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@13) e@@2))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_4118 v@@11 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) j@@2) e@@2)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@11 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |verifyvectordefaultz3bpl.275:54|
 :skolemid |74|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@15 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@15) (|Select__T@[Int]#0_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |75|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@16 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |76|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@3 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@3) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |77|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |78|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |79|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]#0|) (|l#3@@5| Int) (|l#4@@5| |T@#0|) (k Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]#0_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |verifyvectordefaultz3bpl.90:14|
 :skolemid |81|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |inline$$1_Vector_borrow'#0'$0$dst@2| () |T@#0|)
(declare-fun _$t1 () Int)
(declare-fun _$t0 () T@Vec_18150)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Vector_borrow'#0'$0$dst@0| () |T@#0|)
(declare-fun |inline$$1_Vector_borrow'#0'$0$dst@1| () |T@#0|)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_borrow$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 58457) (let ((anon4_Else_correct  (=> (and (not $abort_flag@0) (= |inline$$1_Vector_borrow'#0'$0$dst@2| |inline$$1_Vector_borrow'#0'$0$dst@2|)) (and (=> (= (ControlFlow 0 44082) (- 0 58648)) (not (>= _$t1 (|l#Vec_18150| _$t0)))) (=> (not (>= _$t1 (|l#Vec_18150| _$t0))) (=> (= (ControlFlow 0 44082) (- 0 58659)) (= |inline$$1_Vector_borrow'#0'$0$dst@2| (|Select__T@[Int]#0_| (|v#Vec_18150| _$t0) _$t1))))))))
(let ((anon4_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 44110) (- 0 58623))) (>= _$t1 (|l#Vec_18150| _$t0))))))
(let ((|inline$$1_Vector_borrow'#0'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'#0'$0$dst@2| |inline$$1_Vector_borrow'#0'$0$dst@0|)) (and (=> (= (ControlFlow 0 44034) 44110) anon4_Then_correct) (=> (= (ControlFlow 0 44034) 44082) anon4_Else_correct))))))
(let ((|inline$$1_Vector_borrow'#0'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_14752 _$t0 _$t1)) (= (ControlFlow 0 44032) 44034)) |inline$$1_Vector_borrow'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'#0'$0$anon3_Else_correct|  (=> (InRangeVec_14752 _$t0 _$t1) (=> (and (and (= |inline$$1_Vector_borrow'#0'$0$dst@1| (|Select__T@[Int]#0_| (|v#Vec_18150| _$t0) _$t1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow'#0'$0$dst@2| |inline$$1_Vector_borrow'#0'$0$dst@1|))) (and (=> (= (ControlFlow 0 43982) 44110) anon4_Then_correct) (=> (= (ControlFlow 0 43982) 44082) anon4_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'vec'#0''| _$t0) (|$IsValid'u64'| _$t1)) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (=> (= (ControlFlow 0 44040) 44032) |inline$$1_Vector_borrow'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 44040) 43982) |inline$$1_Vector_borrow'#0'$0$anon3_Else_correct|)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 58457) 44040) anon0$1_correct)))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_18150 0)) (((Vec_18150 (|v#Vec_18150| |T@[Int]#0|) (|l#Vec_18150| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_21435 0)) ((($Mutation_21435 (|l#$Mutation_21435| T@$Location) (|p#$Mutation_21435| T@Vec_1349) (|v#$Mutation_21435| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_19810 0)) ((($Mutation_19810 (|l#$Mutation_19810| T@$Location) (|p#$Mutation_19810| T@Vec_1349) (|v#$Mutation_19810| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18795 0)) ((($Mutation_18795 (|l#$Mutation_18795| T@$Location) (|p#$Mutation_18795| T@Vec_1349) (|v#$Mutation_18795| T@Vec_18150) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_18150 T@Vec_18150) Bool)
(declare-fun InRangeVec_14752 (T@Vec_18150 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_18150) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_18150 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun IndexOfVec_18150 (T@Vec_18150 |T@#0|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |verifyvectordefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectordefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectordefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectordefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectordefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectordefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_18150) (v2 T@Vec_18150) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_18150| v1) (|l#Vec_18150| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14752 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_18150| v2) i@@0)))
 :qid |verifyvectordefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |verifyvectordefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_18150) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_18150| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14752 v@@4 i@@1) true)
 :qid |verifyvectordefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |verifyvectordefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_18150) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14752 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@3) e))
 :qid |verifyvectordefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14752 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) j) e)))
 :qid |verifyvectordefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |verifyvectordefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |verifyvectordefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |verifyvectordefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |verifyvectordefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |verifyvectordefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |verifyvectordefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |verifyvectordefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |verifyvectordefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |verifyvectordefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |verifyvectordefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectordefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectordefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_18150) (i@@8 Int) ) (! (= (InRangeVec_14752 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_18150| v@@8))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14752 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (i@@9 Int) ) (! (= (InRangeVec_4118 v@@9 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_1349| v@@9))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@9 i@@9))
)))
(assert (forall ((v@@10 T@Vec_18150) (e@@1 |T@#0|) ) (! (let ((i@@10 (IndexOfVec_18150 v@@10 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_14752 v@@10 i@@11) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@11) e@@1))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_14752 v@@10 i@@10) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) j@@1) e@@1)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_18150 v@@10 e@@1))
)))
(assert (forall ((v@@11 T@Vec_1349) (e@@2 Int) ) (! (let ((i@@12 (IndexOfVec_1349 v@@11 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_4118 v@@11 i@@13) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@13) e@@2))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_4118 v@@11 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) j@@2) e@@2)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@11 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |verifyvectordefaultz3bpl.275:54|
 :skolemid |74|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@15 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@15) (|Select__T@[Int]#0_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |75|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@16 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |76|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@3 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@3) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |77|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |78|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |79|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]#0|) (|l#3@@5| Int) (|l#4@@5| |T@#0|) (k Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]#0_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |verifyvectordefaultz3bpl.90:14|
 :skolemid |81|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'#0'@0| () |T@#0|)
(declare-fun |inline$$1_Vector_borrow_mut'#0'$0$dst@2| () T@$Mutation_19810)
(declare-fun |$temp_0'vec'#0''@1| () T@Vec_18150)
(declare-fun |inline$$1_Vector_borrow_mut'#0'$0$m'@1| () T@$Mutation_18795)
(declare-fun _$t1 () Int)
(declare-fun $t2@0 () T@Vec_18150)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Vector_borrow_mut'#0'$0$dst@0| () T@$Mutation_19810)
(declare-fun |inline$$1_Vector_borrow_mut'#0'$0$m'@0| () T@$Mutation_18795)
(declare-fun |inline$$1_Vector_borrow_mut'#0'$0$v@1| () T@Vec_18150)
(declare-fun |inline$$1_Vector_borrow_mut'#0'$0$dst@1| () T@$Mutation_19810)
(declare-fun _$t0 () T@$Mutation_18795)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@0 () Int)
(declare-fun |$temp_0'vec'#0''@0| () T@Vec_18150)
(declare-fun $t3 () T@$Mutation_19810)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_borrow_mut$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 58679) (let ((anon4_Else_correct  (=> (not $abort_flag@0) (=> (and (and (= |$temp_0'#0'@0| (|v#$Mutation_19810| |inline$$1_Vector_borrow_mut'#0'$0$dst@2|)) (= |$temp_0'#0'@0| |$temp_0'#0'@0|)) (and (= |$temp_0'vec'#0''@1| (|v#$Mutation_18795| |inline$$1_Vector_borrow_mut'#0'$0$m'@1|)) (= |$temp_0'vec'#0''@1| |$temp_0'vec'#0''@1|))) (and (=> (= (ControlFlow 0 44502) (- 0 58983)) (not (>= _$t1 (|l#Vec_18150| $t2@0)))) (=> (not (>= _$t1 (|l#Vec_18150| $t2@0))) (=> (= (ControlFlow 0 44502) (- 0 58994)) (= (|v#$Mutation_19810| |inline$$1_Vector_borrow_mut'#0'$0$dst@2|) (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_borrow_mut'#0'$0$m'@1|)) _$t1)))))))))
(let ((anon4_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 44530) (- 0 58935))) (>= _$t1 (|l#Vec_18150| $t2@0))))))
(let ((|inline$$1_Vector_borrow_mut'#0'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (= |inline$$1_Vector_borrow_mut'#0'$0$dst@2| |inline$$1_Vector_borrow_mut'#0'$0$dst@0|) (= |inline$$1_Vector_borrow_mut'#0'$0$m'@1| |inline$$1_Vector_borrow_mut'#0'$0$m'@0|))) (and (=> (= (ControlFlow 0 44432) 44530) anon4_Then_correct) (=> (= (ControlFlow 0 44432) 44502) anon4_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'#0'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_14752 |inline$$1_Vector_borrow_mut'#0'$0$v@1| _$t1)) (= (ControlFlow 0 44430) 44432)) |inline$$1_Vector_borrow_mut'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'#0'$0$anon3_Else_correct|  (=> (and (InRangeVec_14752 |inline$$1_Vector_borrow_mut'#0'$0$v@1| _$t1) (= |inline$$1_Vector_borrow_mut'#0'$0$dst@1| ($Mutation_19810 (|l#$Mutation_18795| _$t0) (let ((l (|l#Vec_1349| (|p#$Mutation_18795| _$t0))))
(Vec_1349 (|Store__T@[Int]Int_| (|v#Vec_1349| (|p#$Mutation_18795| _$t0)) l _$t1) (+ l 1))) (|Select__T@[Int]#0_| (|v#Vec_18150| |inline$$1_Vector_borrow_mut'#0'$0$v@1|) _$t1)))) (=> (and (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (= |inline$$1_Vector_borrow_mut'#0'$0$dst@2| |inline$$1_Vector_borrow_mut'#0'$0$dst@1|) (= |inline$$1_Vector_borrow_mut'#0'$0$m'@1| _$t0))) (and (=> (= (ControlFlow 0 44380) 44530) anon4_Then_correct) (=> (= (ControlFlow 0 44380) 44502) anon4_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'#0'$0$v@1| (|v#$Mutation_18795| _$t0)) (and (=> (= (ControlFlow 0 44350) 44430) |inline$$1_Vector_borrow_mut'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 44350) 44380) |inline$$1_Vector_borrow_mut'#0'$0$anon3_Else_correct|)))))
(let ((anon0$1_correct  (=> (and (and (and (= (|l#$Mutation_18795| _$t0) ($Param 0)) (|$IsValid'vec'#0''| (|v#$Mutation_18795| _$t0))) (and (|$IsValid'u64'| _$t1) (= $t2@0 (|v#$Mutation_18795| _$t0)))) (and (and (= |$temp_0'vec'#0''@0| (|v#$Mutation_18795| _$t0)) (= |$temp_0'vec'#0''@0| |$temp_0'vec'#0''@0|)) (and (= _$t1 _$t1) (= (ControlFlow 0 44440) 44350)))) |inline$$1_Vector_borrow_mut'#0'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (|l#Vec_1349| (|p#$Mutation_19810| $t3)) 0) (= (ControlFlow 0 44202) 44440)) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 58679) 44202) anon0_correct)))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_18150 0)) (((Vec_18150 (|v#Vec_18150| |T@[Int]#0|) (|l#Vec_18150| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_21435 0)) ((($Mutation_21435 (|l#$Mutation_21435| T@$Location) (|p#$Mutation_21435| T@Vec_1349) (|v#$Mutation_21435| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_19810 0)) ((($Mutation_19810 (|l#$Mutation_19810| T@$Location) (|p#$Mutation_19810| T@Vec_1349) (|v#$Mutation_19810| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18795 0)) ((($Mutation_18795 (|l#$Mutation_18795| T@$Location) (|p#$Mutation_18795| T@Vec_1349) (|v#$Mutation_18795| T@Vec_18150) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_18150 T@Vec_18150) Bool)
(declare-fun InRangeVec_14752 (T@Vec_18150 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_18150) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_18150 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun IndexOfVec_18150 (T@Vec_18150 |T@#0|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |verifyvectordefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectordefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectordefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectordefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectordefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectordefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_18150) (v2 T@Vec_18150) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_18150| v1) (|l#Vec_18150| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14752 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_18150| v2) i@@0)))
 :qid |verifyvectordefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |verifyvectordefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_18150) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_18150| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14752 v@@4 i@@1) true)
 :qid |verifyvectordefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |verifyvectordefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_18150) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14752 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@3) e))
 :qid |verifyvectordefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14752 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) j) e)))
 :qid |verifyvectordefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |verifyvectordefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |verifyvectordefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |verifyvectordefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |verifyvectordefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |verifyvectordefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |verifyvectordefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |verifyvectordefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |verifyvectordefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |verifyvectordefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |verifyvectordefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectordefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectordefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_18150) (i@@8 Int) ) (! (= (InRangeVec_14752 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_18150| v@@8))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14752 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (i@@9 Int) ) (! (= (InRangeVec_4118 v@@9 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_1349| v@@9))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@9 i@@9))
)))
(assert (forall ((v@@10 T@Vec_18150) (e@@1 |T@#0|) ) (! (let ((i@@10 (IndexOfVec_18150 v@@10 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_14752 v@@10 i@@11) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@11) e@@1))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_14752 v@@10 i@@10) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) j@@1) e@@1)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_18150 v@@10 e@@1))
)))
(assert (forall ((v@@11 T@Vec_1349) (e@@2 Int) ) (! (let ((i@@12 (IndexOfVec_1349 v@@11 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_4118 v@@11 i@@13) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@13) e@@2))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_4118 v@@11 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) j@@2) e@@2)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@11 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |verifyvectordefaultz3bpl.275:54|
 :skolemid |74|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@15 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@15) (|Select__T@[Int]#0_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |75|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@16 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |76|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@3 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@3) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |77|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |78|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |79|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]#0|) (|l#3@@5| Int) (|l#4@@5| |T@#0|) (k Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]#0_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |verifyvectordefaultz3bpl.90:14|
 :skolemid |81|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_contains'#0'$0$res@1| () Bool)
(declare-fun _$t0 () T@Vec_18150)
(declare-fun _$t1 () |T@#0|)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_contains$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 59019) (let ((anon4_Else_correct  (=> (and (not false) (= |inline$$1_Vector_contains'#0'$0$res@1| |inline$$1_Vector_contains'#0'$0$res@1|)) (and (=> (= (ControlFlow 0 44780) (- 0 59143)) (not false)) (=> (not false) (=> (= (ControlFlow 0 44780) (- 0 59150)) (= |inline$$1_Vector_contains'#0'$0$res@1| (let (($range_0 _$t0))
(exists (($i_1 Int) ) (!  (and (InRangeVec_14752 $range_0 $i_1) (let ((x (|Select__T@[Int]#0_| (|v#Vec_18150| $range_0) $i_1)))
(= x _$t1)))
 :qid |verifyvectordefaultz3bpl.2406:57|
 :skolemid |54|
))))))))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_contains'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_contains'#0'$0$res@1| (exists ((i@@19 Int) ) (!  (and (and (|$IsValid'u64'| i@@19) (InRangeVec_14752 _$t0 i@@19)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| _$t0) i@@19) _$t1))
 :qid |verifyvectordefaultz3bpl.626:13|
 :skolemid |21|
))) (and (=> (= (ControlFlow 0 44715) 44802) anon4_Then_correct) (=> (= (ControlFlow 0 44715) 44780) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'vec'#0''| _$t0) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= (ControlFlow 0 44721) 44715))) |inline$$1_Vector_contains'#0'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (ControlFlow 0 59019) 44721) anon0$1_correct)))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_18150 0)) (((Vec_18150 (|v#Vec_18150| |T@[Int]#0|) (|l#Vec_18150| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_21435 0)) ((($Mutation_21435 (|l#$Mutation_21435| T@$Location) (|p#$Mutation_21435| T@Vec_1349) (|v#$Mutation_21435| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_19810 0)) ((($Mutation_19810 (|l#$Mutation_19810| T@$Location) (|p#$Mutation_19810| T@Vec_1349) (|v#$Mutation_19810| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18795 0)) ((($Mutation_18795 (|l#$Mutation_18795| T@$Location) (|p#$Mutation_18795| T@Vec_1349) (|v#$Mutation_18795| T@Vec_18150) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_18150 T@Vec_18150) Bool)
(declare-fun InRangeVec_14752 (T@Vec_18150 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_18150) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_18150 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun IndexOfVec_18150 (T@Vec_18150 |T@#0|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |verifyvectordefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectordefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectordefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectordefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectordefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectordefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_18150) (v2 T@Vec_18150) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_18150| v1) (|l#Vec_18150| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14752 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_18150| v2) i@@0)))
 :qid |verifyvectordefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |verifyvectordefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_18150) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_18150| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14752 v@@4 i@@1) true)
 :qid |verifyvectordefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |verifyvectordefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_18150) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14752 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@3) e))
 :qid |verifyvectordefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14752 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) j) e)))
 :qid |verifyvectordefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |verifyvectordefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |verifyvectordefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |verifyvectordefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |verifyvectordefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |verifyvectordefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |verifyvectordefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |verifyvectordefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |verifyvectordefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |verifyvectordefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |verifyvectordefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectordefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectordefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_18150) (i@@8 Int) ) (! (= (InRangeVec_14752 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_18150| v@@8))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14752 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (i@@9 Int) ) (! (= (InRangeVec_4118 v@@9 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_1349| v@@9))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@9 i@@9))
)))
(assert (forall ((v@@10 T@Vec_18150) (e@@1 |T@#0|) ) (! (let ((i@@10 (IndexOfVec_18150 v@@10 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_14752 v@@10 i@@11) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@11) e@@1))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_14752 v@@10 i@@10) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) j@@1) e@@1)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_18150 v@@10 e@@1))
)))
(assert (forall ((v@@11 T@Vec_1349) (e@@2 Int) ) (! (let ((i@@12 (IndexOfVec_1349 v@@11 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_4118 v@@11 i@@13) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@13) e@@2))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_4118 v@@11 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) j@@2) e@@2)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@11 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |verifyvectordefaultz3bpl.275:54|
 :skolemid |74|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@15 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@15) (|Select__T@[Int]#0_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |75|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@16 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |76|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@3 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@3) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |77|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |78|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |79|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]#0|) (|l#3@@5| Int) (|l#4@@5| |T@#0|) (k Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]#0_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |verifyvectordefaultz3bpl.90:14|
 :skolemid |81|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun _$t0 () T@Vec_18150)
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_destroy_empty$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 59191) (let ((anon4_Else_correct  (=> (and (not $abort_flag@0) (= (ControlFlow 0 45033) (- 0 59326))) (not (> (|l#Vec_18150| _$t0) 0)))))
(let ((anon4_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 45061) (- 0 59305))) (> (|l#Vec_18150| _$t0) 0)))))
(let ((|inline$$1_Vector_destroy_empty'#0'$0$anon2_Then$1_correct|  (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 45007) 45061) anon4_Then_correct) (=> (= (ControlFlow 0 45007) 45033) anon4_Else_correct)))))
(let ((|inline$$1_Vector_destroy_empty'#0'$0$anon2_Then_correct|  (=> (and (not (= (|l#Vec_18150| _$t0) 0)) (= (ControlFlow 0 45005) 45007)) |inline$$1_Vector_destroy_empty'#0'$0$anon2_Then$1_correct|)))
(let ((|inline$$1_Vector_destroy_empty'#0'$0$anon2_Else_correct|  (=> (= (|l#Vec_18150| _$t0) 0) (=> (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (=> (= (ControlFlow 0 44957) 45061) anon4_Then_correct) (=> (= (ControlFlow 0 44957) 45033) anon4_Else_correct))))))
(let ((anon0$1_correct  (=> (and (|$IsValid'vec'#0''| _$t0) (= _$t0 _$t0)) (and (=> (= (ControlFlow 0 45011) 45005) |inline$$1_Vector_destroy_empty'#0'$0$anon2_Then_correct|) (=> (= (ControlFlow 0 45011) 44957) |inline$$1_Vector_destroy_empty'#0'$0$anon2_Else_correct|)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 59191) 45011) anon0$1_correct)))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_18150 0)) (((Vec_18150 (|v#Vec_18150| |T@[Int]#0|) (|l#Vec_18150| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_21435 0)) ((($Mutation_21435 (|l#$Mutation_21435| T@$Location) (|p#$Mutation_21435| T@Vec_1349) (|v#$Mutation_21435| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_19810 0)) ((($Mutation_19810 (|l#$Mutation_19810| T@$Location) (|p#$Mutation_19810| T@Vec_1349) (|v#$Mutation_19810| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18795 0)) ((($Mutation_18795 (|l#$Mutation_18795| T@$Location) (|p#$Mutation_18795| T@Vec_1349) (|v#$Mutation_18795| T@Vec_18150) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_18150 T@Vec_18150) Bool)
(declare-fun InRangeVec_14752 (T@Vec_18150 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_18150) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_18150 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun IndexOfVec_18150 (T@Vec_18150 |T@#0|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |verifyvectordefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectordefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectordefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectordefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectordefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectordefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_18150) (v2 T@Vec_18150) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_18150| v1) (|l#Vec_18150| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14752 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_18150| v2) i@@0)))
 :qid |verifyvectordefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |verifyvectordefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_18150) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_18150| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14752 v@@4 i@@1) true)
 :qid |verifyvectordefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |verifyvectordefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_18150) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14752 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@3) e))
 :qid |verifyvectordefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14752 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) j) e)))
 :qid |verifyvectordefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |verifyvectordefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |verifyvectordefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |verifyvectordefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |verifyvectordefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |verifyvectordefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |verifyvectordefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |verifyvectordefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |verifyvectordefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |verifyvectordefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |verifyvectordefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectordefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectordefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_18150) (i@@8 Int) ) (! (= (InRangeVec_14752 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_18150| v@@8))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14752 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (i@@9 Int) ) (! (= (InRangeVec_4118 v@@9 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_1349| v@@9))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@9 i@@9))
)))
(assert (forall ((v@@10 T@Vec_18150) (e@@1 |T@#0|) ) (! (let ((i@@10 (IndexOfVec_18150 v@@10 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_14752 v@@10 i@@11) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@11) e@@1))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_14752 v@@10 i@@10) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) j@@1) e@@1)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_18150 v@@10 e@@1))
)))
(assert (forall ((v@@11 T@Vec_1349) (e@@2 Int) ) (! (let ((i@@12 (IndexOfVec_1349 v@@11 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_4118 v@@11 i@@13) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@13) e@@2))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_4118 v@@11 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) j@@2) e@@2)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@11 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |verifyvectordefaultz3bpl.275:54|
 :skolemid |74|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@15 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@15) (|Select__T@[Int]#0_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |75|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@16 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |76|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@3 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@3) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |77|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |78|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |79|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]#0|) (|l#3@@5| Int) (|l#4@@5| |T@#0|) (k Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]#0_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |verifyvectordefaultz3bpl.90:14|
 :skolemid |81|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_empty'#0'$0$v@1| () T@Vec_18150)
(declare-fun MapConstVec_14772 (|T@#0|) |T@[Int]#0|)
(declare-fun DefaultVecElem_14772 () |T@#0|)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_empty$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 59343) (let ((anon4_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'#0'$0$v@1| |inline$$1_Vector_empty'#0'$0$v@1|) (= (ControlFlow 0 45186) (- 0 59420))) (= (|l#Vec_18150| |inline$$1_Vector_empty'#0'$0$v@1|) 0)))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_empty'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'#0'$0$v@1| (Vec_18150 (MapConstVec_14772 DefaultVecElem_14772) 0)) (and (=> (= (ControlFlow 0 45152) 45204) anon4_Then_correct) (=> (= (ControlFlow 0 45152) 45186) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 45158) 45152) |inline$$1_Vector_empty'#0'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (ControlFlow 0 59343) 45158) anon0$1_correct)))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_18150 0)) (((Vec_18150 (|v#Vec_18150| |T@[Int]#0|) (|l#Vec_18150| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_21435 0)) ((($Mutation_21435 (|l#$Mutation_21435| T@$Location) (|p#$Mutation_21435| T@Vec_1349) (|v#$Mutation_21435| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_19810 0)) ((($Mutation_19810 (|l#$Mutation_19810| T@$Location) (|p#$Mutation_19810| T@Vec_1349) (|v#$Mutation_19810| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18795 0)) ((($Mutation_18795 (|l#$Mutation_18795| T@$Location) (|p#$Mutation_18795| T@Vec_1349) (|v#$Mutation_18795| T@Vec_18150) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_18150 T@Vec_18150) Bool)
(declare-fun InRangeVec_14752 (T@Vec_18150 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_18150) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_18150 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun IndexOfVec_18150 (T@Vec_18150 |T@#0|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |verifyvectordefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectordefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectordefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectordefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectordefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectordefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_18150) (v2 T@Vec_18150) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_18150| v1) (|l#Vec_18150| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14752 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_18150| v2) i@@0)))
 :qid |verifyvectordefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |verifyvectordefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_18150) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_18150| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14752 v@@4 i@@1) true)
 :qid |verifyvectordefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |verifyvectordefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_18150) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14752 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@3) e))
 :qid |verifyvectordefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14752 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) j) e)))
 :qid |verifyvectordefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |verifyvectordefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |verifyvectordefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |verifyvectordefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |verifyvectordefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |verifyvectordefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |verifyvectordefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |verifyvectordefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |verifyvectordefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |verifyvectordefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |verifyvectordefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectordefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectordefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_18150) (i@@8 Int) ) (! (= (InRangeVec_14752 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_18150| v@@8))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14752 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (i@@9 Int) ) (! (= (InRangeVec_4118 v@@9 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_1349| v@@9))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@9 i@@9))
)))
(assert (forall ((v@@10 T@Vec_18150) (e@@1 |T@#0|) ) (! (let ((i@@10 (IndexOfVec_18150 v@@10 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_14752 v@@10 i@@11) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@11) e@@1))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_14752 v@@10 i@@10) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) j@@1) e@@1)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_18150 v@@10 e@@1))
)))
(assert (forall ((v@@11 T@Vec_1349) (e@@2 Int) ) (! (let ((i@@12 (IndexOfVec_1349 v@@11 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_4118 v@@11 i@@13) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@13) e@@2))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_4118 v@@11 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) j@@2) e@@2)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@11 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |verifyvectordefaultz3bpl.275:54|
 :skolemid |74|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@15 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@15) (|Select__T@[Int]#0_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |75|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@16 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |76|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@3 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@3) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |77|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |78|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |79|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]#0|) (|l#3@@5| Int) (|l#4@@5| |T@#0|) (k Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]#0_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |verifyvectordefaultz3bpl.90:14|
 :skolemid |81|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_index_of'#0'$0$res1@1| () Bool)
(declare-fun |inline$$1_Vector_index_of'#0'$0$res2@2| () Int)
(declare-fun _$t0 () T@Vec_18150)
(declare-fun _$t1 () |T@#0|)
(declare-fun |inline$$1_Vector_index_of'#0'$0$res2@1| () Int)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_index_of$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 59441) (let ((anon4_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_index_of'#0'$0$res1@1| |inline$$1_Vector_index_of'#0'$0$res1@1|) (= |inline$$1_Vector_index_of'#0'$0$res2@2| |inline$$1_Vector_index_of'#0'$0$res2@2|)) (and (=> (= (ControlFlow 0 45546) (- 0 59622)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 45546) (- 0 59629)) (= |inline$$1_Vector_index_of'#0'$0$res1@1| (let (($range_0 _$t0))
(exists (($i_1 Int) ) (!  (and (InRangeVec_14752 $range_0 $i_1) (let ((x (|Select__T@[Int]#0_| (|v#Vec_18150| $range_0) $i_1)))
(= x _$t1)))
 :qid |verifyvectordefaultz3bpl.2598:57|
 :skolemid |55|
))))) (=> (= |inline$$1_Vector_index_of'#0'$0$res1@1| (let (($range_0 _$t0))
(exists (($i_1@@0 Int) ) (!  (and (InRangeVec_14752 $range_0 $i_1@@0) (let ((x (|Select__T@[Int]#0_| (|v#Vec_18150| $range_0) $i_1@@0)))
(= x _$t1)))
 :qid |verifyvectordefaultz3bpl.2598:57|
 :skolemid |55|
)))) (and (=> (= (ControlFlow 0 45546) (- 0 59662)) (=> |inline$$1_Vector_index_of'#0'$0$res1@1| (= (|Select__T@[Int]#0_| (|v#Vec_18150| _$t0) |inline$$1_Vector_index_of'#0'$0$res2@2|) _$t1))) (=> (=> |inline$$1_Vector_index_of'#0'$0$res1@1| (= (|Select__T@[Int]#0_| (|v#Vec_18150| _$t0) |inline$$1_Vector_index_of'#0'$0$res2@2|) _$t1)) (and (=> (= (ControlFlow 0 45546) (- 0 59675)) (=> |inline$$1_Vector_index_of'#0'$0$res1@1| (let (($range_0@@0 ($Range 0 |inline$$1_Vector_index_of'#0'$0$res2@2|)))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@1) (let ((i@@19 $i_1@@1))
 (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| _$t0) i@@19) _$t1))))
 :qid |verifyvectordefaultz3bpl.2609:57|
 :skolemid |56|
))))) (=> (=> |inline$$1_Vector_index_of'#0'$0$res1@1| (let (($range_0@@0 ($Range 0 |inline$$1_Vector_index_of'#0'$0$res2@2|)))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@2) (let ((i@@19 $i_1@@2))
 (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| _$t0) i@@19) _$t1))))
 :qid |verifyvectordefaultz3bpl.2609:57|
 :skolemid |56|
)))) (=> (= (ControlFlow 0 45546) (- 0 59713)) (=> (not |inline$$1_Vector_index_of'#0'$0$res1@1|) (= |inline$$1_Vector_index_of'#0'$0$res2@2| 0)))))))))))))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_index_of'#0'$0$anon3_Else_correct|  (=> (> 0 |inline$$1_Vector_index_of'#0'$0$res2@1|) (=> (and (= |inline$$1_Vector_index_of'#0'$0$res1@1| false) (= |inline$$1_Vector_index_of'#0'$0$res2@2| 0)) (and (=> (= (ControlFlow 0 45390) 45568) anon4_Then_correct) (=> (= (ControlFlow 0 45390) 45546) anon4_Else_correct))))))
(let ((|inline$$1_Vector_index_of'#0'$0$anon3_Then_correct|  (=> (>= |inline$$1_Vector_index_of'#0'$0$res2@1| 0) (=> (and (= |inline$$1_Vector_index_of'#0'$0$res1@1| true) (= |inline$$1_Vector_index_of'#0'$0$res2@2| |inline$$1_Vector_index_of'#0'$0$res2@1|)) (and (=> (= (ControlFlow 0 45400) 45568) anon4_Then_correct) (=> (= (ControlFlow 0 45400) 45546) anon4_Else_correct))))))
(let ((|inline$$1_Vector_index_of'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_index_of'#0'$0$res2@1| (|$IndexOfVec'#0'| _$t0 _$t1)) (and (=> (= (ControlFlow 0 45378) 45400) |inline$$1_Vector_index_of'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 45378) 45390) |inline$$1_Vector_index_of'#0'$0$anon3_Else_correct|)))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'vec'#0''| _$t0) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= (ControlFlow 0 45408) 45378))) |inline$$1_Vector_index_of'#0'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (ControlFlow 0 59441) 45408) anon0$1_correct)))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_18150 0)) (((Vec_18150 (|v#Vec_18150| |T@[Int]#0|) (|l#Vec_18150| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_21435 0)) ((($Mutation_21435 (|l#$Mutation_21435| T@$Location) (|p#$Mutation_21435| T@Vec_1349) (|v#$Mutation_21435| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_19810 0)) ((($Mutation_19810 (|l#$Mutation_19810| T@$Location) (|p#$Mutation_19810| T@Vec_1349) (|v#$Mutation_19810| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18795 0)) ((($Mutation_18795 (|l#$Mutation_18795| T@$Location) (|p#$Mutation_18795| T@Vec_1349) (|v#$Mutation_18795| T@Vec_18150) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_18150 T@Vec_18150) Bool)
(declare-fun InRangeVec_14752 (T@Vec_18150 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_18150) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_18150 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun IndexOfVec_18150 (T@Vec_18150 |T@#0|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |verifyvectordefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectordefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectordefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectordefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectordefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectordefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_18150) (v2 T@Vec_18150) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_18150| v1) (|l#Vec_18150| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14752 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_18150| v2) i@@0)))
 :qid |verifyvectordefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |verifyvectordefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_18150) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_18150| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14752 v@@4 i@@1) true)
 :qid |verifyvectordefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |verifyvectordefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_18150) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14752 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@3) e))
 :qid |verifyvectordefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14752 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) j) e)))
 :qid |verifyvectordefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |verifyvectordefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |verifyvectordefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |verifyvectordefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |verifyvectordefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |verifyvectordefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |verifyvectordefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |verifyvectordefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |verifyvectordefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |verifyvectordefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |verifyvectordefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectordefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectordefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_18150) (i@@8 Int) ) (! (= (InRangeVec_14752 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_18150| v@@8))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14752 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (i@@9 Int) ) (! (= (InRangeVec_4118 v@@9 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_1349| v@@9))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@9 i@@9))
)))
(assert (forall ((v@@10 T@Vec_18150) (e@@1 |T@#0|) ) (! (let ((i@@10 (IndexOfVec_18150 v@@10 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_14752 v@@10 i@@11) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@11) e@@1))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_14752 v@@10 i@@10) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) j@@1) e@@1)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_18150 v@@10 e@@1))
)))
(assert (forall ((v@@11 T@Vec_1349) (e@@2 Int) ) (! (let ((i@@12 (IndexOfVec_1349 v@@11 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_4118 v@@11 i@@13) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@13) e@@2))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_4118 v@@11 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) j@@2) e@@2)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@11 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |verifyvectordefaultz3bpl.275:54|
 :skolemid |74|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@15 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@15) (|Select__T@[Int]#0_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |75|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@16 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |76|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@3 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@3) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |77|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |78|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |79|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]#0|) (|l#3@@5| Int) (|l#4@@5| |T@#0|) (k Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]#0_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |verifyvectordefaultz3bpl.90:14|
 :skolemid |81|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_is_empty'#0'$0$b@1| () Bool)
(declare-fun _$t0 () T@Vec_18150)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_is_empty$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 59737) (let ((anon4_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_is_empty'#0'$0$b@1| |inline$$1_Vector_is_empty'#0'$0$b@1|) (= (ControlFlow 0 45745) (- 0 59838))) (= |inline$$1_Vector_is_empty'#0'$0$b@1| (= (|l#Vec_18150| _$t0) 0))))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_is_empty'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_is_empty'#0'$0$b@1| (= (|l#Vec_18150| _$t0) 0)) (and (=> (= (ControlFlow 0 45707) 45763) anon4_Then_correct) (=> (= (ControlFlow 0 45707) 45745) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'#0''| _$t0) (=> (and (= _$t0 _$t0) (= (ControlFlow 0 45713) 45707)) |inline$$1_Vector_is_empty'#0'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (ControlFlow 0 59737) 45713) anon0$1_correct)))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_18150 0)) (((Vec_18150 (|v#Vec_18150| |T@[Int]#0|) (|l#Vec_18150| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_21435 0)) ((($Mutation_21435 (|l#$Mutation_21435| T@$Location) (|p#$Mutation_21435| T@Vec_1349) (|v#$Mutation_21435| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_19810 0)) ((($Mutation_19810 (|l#$Mutation_19810| T@$Location) (|p#$Mutation_19810| T@Vec_1349) (|v#$Mutation_19810| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18795 0)) ((($Mutation_18795 (|l#$Mutation_18795| T@$Location) (|p#$Mutation_18795| T@Vec_1349) (|v#$Mutation_18795| T@Vec_18150) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_18150 T@Vec_18150) Bool)
(declare-fun InRangeVec_14752 (T@Vec_18150 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_18150) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_18150 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun IndexOfVec_18150 (T@Vec_18150 |T@#0|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |verifyvectordefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectordefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectordefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectordefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectordefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectordefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_18150) (v2 T@Vec_18150) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_18150| v1) (|l#Vec_18150| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14752 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_18150| v2) i@@0)))
 :qid |verifyvectordefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |verifyvectordefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_18150) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_18150| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14752 v@@4 i@@1) true)
 :qid |verifyvectordefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |verifyvectordefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_18150) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14752 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@3) e))
 :qid |verifyvectordefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14752 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) j) e)))
 :qid |verifyvectordefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |verifyvectordefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |verifyvectordefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |verifyvectordefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |verifyvectordefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |verifyvectordefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |verifyvectordefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |verifyvectordefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |verifyvectordefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |verifyvectordefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |verifyvectordefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectordefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectordefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_18150) (i@@8 Int) ) (! (= (InRangeVec_14752 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_18150| v@@8))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14752 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (i@@9 Int) ) (! (= (InRangeVec_4118 v@@9 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_1349| v@@9))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@9 i@@9))
)))
(assert (forall ((v@@10 T@Vec_18150) (e@@1 |T@#0|) ) (! (let ((i@@10 (IndexOfVec_18150 v@@10 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_14752 v@@10 i@@11) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@11) e@@1))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_14752 v@@10 i@@10) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) j@@1) e@@1)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_18150 v@@10 e@@1))
)))
(assert (forall ((v@@11 T@Vec_1349) (e@@2 Int) ) (! (let ((i@@12 (IndexOfVec_1349 v@@11 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_4118 v@@11 i@@13) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@13) e@@2))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_4118 v@@11 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) j@@2) e@@2)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@11 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |verifyvectordefaultz3bpl.275:54|
 :skolemid |74|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@15 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@15) (|Select__T@[Int]#0_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |75|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@16 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |76|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@3 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@3) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |77|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |78|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |79|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]#0|) (|l#3@@5| Int) (|l#4@@5| |T@#0|) (k Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]#0_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |verifyvectordefaultz3bpl.90:14|
 :skolemid |81|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |inline$$1_Vector_length'#0'$0$l@1| () Int)
(declare-fun _$t0 () T@Vec_18150)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_length$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 59860) (let ((anon4_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_length'#0'$0$l@1| |inline$$1_Vector_length'#0'$0$l@1|) (= (ControlFlow 0 45912) (- 0 59961))) (= |inline$$1_Vector_length'#0'$0$l@1| (|l#Vec_18150| _$t0))))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_length'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'#0'$0$l@1| (|l#Vec_18150| _$t0)) (and (=> (= (ControlFlow 0 45878) 45930) anon4_Then_correct) (=> (= (ControlFlow 0 45878) 45912) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (|$IsValid'vec'#0''| _$t0) (=> (and (= _$t0 _$t0) (= (ControlFlow 0 45884) 45878)) |inline$$1_Vector_length'#0'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (ControlFlow 0 59860) 45884) anon0$1_correct)))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_18150 0)) (((Vec_18150 (|v#Vec_18150| |T@[Int]#0|) (|l#Vec_18150| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_21435 0)) ((($Mutation_21435 (|l#$Mutation_21435| T@$Location) (|p#$Mutation_21435| T@Vec_1349) (|v#$Mutation_21435| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_19810 0)) ((($Mutation_19810 (|l#$Mutation_19810| T@$Location) (|p#$Mutation_19810| T@Vec_1349) (|v#$Mutation_19810| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18795 0)) ((($Mutation_18795 (|l#$Mutation_18795| T@$Location) (|p#$Mutation_18795| T@Vec_1349) (|v#$Mutation_18795| T@Vec_18150) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_18150 T@Vec_18150) Bool)
(declare-fun InRangeVec_14752 (T@Vec_18150 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_18150) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_18150 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun IndexOfVec_18150 (T@Vec_18150 |T@#0|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |verifyvectordefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectordefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectordefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectordefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectordefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectordefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_18150) (v2 T@Vec_18150) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_18150| v1) (|l#Vec_18150| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14752 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_18150| v2) i@@0)))
 :qid |verifyvectordefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |verifyvectordefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_18150) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_18150| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14752 v@@4 i@@1) true)
 :qid |verifyvectordefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |verifyvectordefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_18150) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14752 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@3) e))
 :qid |verifyvectordefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14752 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) j) e)))
 :qid |verifyvectordefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |verifyvectordefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |verifyvectordefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |verifyvectordefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |verifyvectordefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |verifyvectordefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |verifyvectordefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |verifyvectordefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |verifyvectordefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |verifyvectordefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |verifyvectordefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectordefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectordefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_18150) (i@@8 Int) ) (! (= (InRangeVec_14752 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_18150| v@@8))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14752 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (i@@9 Int) ) (! (= (InRangeVec_4118 v@@9 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_1349| v@@9))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@9 i@@9))
)))
(assert (forall ((v@@10 T@Vec_18150) (e@@1 |T@#0|) ) (! (let ((i@@10 (IndexOfVec_18150 v@@10 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_14752 v@@10 i@@11) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@11) e@@1))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_14752 v@@10 i@@10) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) j@@1) e@@1)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_18150 v@@10 e@@1))
)))
(assert (forall ((v@@11 T@Vec_1349) (e@@2 Int) ) (! (let ((i@@12 (IndexOfVec_1349 v@@11 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_4118 v@@11 i@@13) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@13) e@@2))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_4118 v@@11 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) j@@2) e@@2)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@11 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |verifyvectordefaultz3bpl.275:54|
 :skolemid |74|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@15 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@15) (|Select__T@[Int]#0_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |75|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@16 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |76|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@3 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@3) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |77|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |78|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |79|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]#0|) (|l#3@@5| Int) (|l#4@@5| |T@#0|) (k Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]#0_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |verifyvectordefaultz3bpl.90:14|
 :skolemid |81|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$e@2| () |T@#0|)
(declare-fun |$temp_0'vec'#0''@1| () T@Vec_18150)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$m'@2| () T@$Mutation_18795)
(declare-fun $t1@0 () T@Vec_18150)
(declare-fun DefaultVecElem_14772 () |T@#0|)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$e@0| () |T@#0|)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$m'@0| () T@$Mutation_18795)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$len@1| () Int)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$e@1| () |T@#0|)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$v@1| () T@Vec_18150)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$m'@1| () T@$Mutation_18795)
(declare-fun _$t0 () T@$Mutation_18795)
(declare-fun |Store__T@[Int]#0_| (|T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (forall ( ( ?x0 |T@[Int]#0|) ( ?x1 Int) ( ?x2 |T@#0|)) (! (= (|Select__T@[Int]#0_| (|Store__T@[Int]#0_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]#0|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@#0|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]#0_| (|Store__T@[Int]#0_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]#0_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@0 () Int)
(declare-fun |$temp_0'vec'#0''@0| () T@Vec_18150)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_pop_back$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 59980) (let ((anon4_Else_correct  (=> (and (and (not $abort_flag@0) (= |inline$$1_Vector_pop_back'#0'$0$e@2| |inline$$1_Vector_pop_back'#0'$0$e@2|)) (and (= |$temp_0'vec'#0''@1| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|)) (= |$temp_0'vec'#0''@1| |$temp_0'vec'#0''@1|))) (and (=> (= (ControlFlow 0 46324) (- 0 60268)) (not (= (|l#Vec_18150| $t1@0) 0))) (=> (not (= (|l#Vec_18150| $t1@0) 0)) (and (=> (= (ControlFlow 0 46324) (- 0 60280)) (= (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|)) (- (|l#Vec_18150| $t1@0) 1))) (=> (= (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|)) (- (|l#Vec_18150| $t1@0) 1)) (and (=> (= (ControlFlow 0 46324) (- 0 60297)) (= |inline$$1_Vector_pop_back'#0'$0$e@2| (|Select__T@[Int]#0_| (|v#Vec_18150| $t1@0) (- (|l#Vec_18150| $t1@0) 1)))) (=> (= |inline$$1_Vector_pop_back'#0'$0$e@2| (|Select__T@[Int]#0_| (|v#Vec_18150| $t1@0) (- (|l#Vec_18150| $t1@0) 1))) (=> (= (ControlFlow 0 46324) (- 0 60313)) (|$IsEqual'vec'#0''| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|) (let ((m (|v#Vec_18150| $t1@0)))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 (- (|l#Vec_18150| $t1@0) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_18150| $t1@0) 1)))) m (|lb#$Range| ($Range 0 (- (|l#Vec_18150| $t1@0) 1))) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 (- (|l#Vec_18150| $t1@0) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_18150| $t1@0) 1)))) 0) 0 (- (|ub#$Range| ($Range 0 (- (|l#Vec_18150| $t1@0) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_18150| $t1@0) 1))))))))))))))))))
(let ((anon4_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 46352) (- 0 60228))) (= (|l#Vec_18150| $t1@0) 0)))))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (= |inline$$1_Vector_pop_back'#0'$0$e@2| |inline$$1_Vector_pop_back'#0'$0$e@0|) (= |inline$$1_Vector_pop_back'#0'$0$m'@2| |inline$$1_Vector_pop_back'#0'$0$m'@0|))) (and (=> (= (ControlFlow 0 46214) 46352) anon4_Then_correct) (=> (= (ControlFlow 0 46214) 46324) anon4_Else_correct)))))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon3_Then_correct|  (=> (and (= |inline$$1_Vector_pop_back'#0'$0$len@1| 0) (= (ControlFlow 0 46212) 46214)) |inline$$1_Vector_pop_back'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon3_Else_correct|  (=> (not (= |inline$$1_Vector_pop_back'#0'$0$len@1| 0)) (=> (and (= |inline$$1_Vector_pop_back'#0'$0$e@1| (|Select__T@[Int]#0_| (|v#Vec_18150| |inline$$1_Vector_pop_back'#0'$0$v@1|) (- |inline$$1_Vector_pop_back'#0'$0$len@1| 1))) (= |inline$$1_Vector_pop_back'#0'$0$m'@1| ($Mutation_18795 (|l#$Mutation_18795| _$t0) (|p#$Mutation_18795| _$t0) (let ((l (- (|l#Vec_18150| |inline$$1_Vector_pop_back'#0'$0$v@1|) 1)))
(Vec_18150 (|Store__T@[Int]#0_| (|v#Vec_18150| |inline$$1_Vector_pop_back'#0'$0$v@1|) l DefaultVecElem_14772) l))))) (=> (and (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (= |inline$$1_Vector_pop_back'#0'$0$e@2| |inline$$1_Vector_pop_back'#0'$0$e@1|) (= |inline$$1_Vector_pop_back'#0'$0$m'@2| |inline$$1_Vector_pop_back'#0'$0$m'@1|))) (and (=> (= (ControlFlow 0 46164) 46352) anon4_Then_correct) (=> (= (ControlFlow 0 46164) 46324) anon4_Else_correct)))))))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon0_correct|  (=> (and (= |inline$$1_Vector_pop_back'#0'$0$v@1| (|v#$Mutation_18795| _$t0)) (= |inline$$1_Vector_pop_back'#0'$0$len@1| (|l#Vec_18150| |inline$$1_Vector_pop_back'#0'$0$v@1|))) (and (=> (= (ControlFlow 0 46138) 46212) |inline$$1_Vector_pop_back'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 46138) 46164) |inline$$1_Vector_pop_back'#0'$0$anon3_Else_correct|)))))
(let ((anon0$1_correct  (=> (and (= (|l#$Mutation_18795| _$t0) ($Param 0)) (|$IsValid'vec'#0''| (|v#$Mutation_18795| _$t0))) (=> (and (and (= $t1@0 (|v#$Mutation_18795| _$t0)) (= |$temp_0'vec'#0''@0| (|v#$Mutation_18795| _$t0))) (and (= |$temp_0'vec'#0''@0| |$temp_0'vec'#0''@0|) (= (ControlFlow 0 46222) 46138))) |inline$$1_Vector_pop_back'#0'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (ControlFlow 0 59980) 46222) anon0$1_correct)))
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
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_18150 0)) (((Vec_18150 (|v#Vec_18150| |T@[Int]#0|) (|l#Vec_18150| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_21435 0)) ((($Mutation_21435 (|l#$Mutation_21435| T@$Location) (|p#$Mutation_21435| T@Vec_1349) (|v#$Mutation_21435| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_19810 0)) ((($Mutation_19810 (|l#$Mutation_19810| T@$Location) (|p#$Mutation_19810| T@Vec_1349) (|v#$Mutation_19810| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18795 0)) ((($Mutation_18795 (|l#$Mutation_18795| T@$Location) (|p#$Mutation_18795| T@Vec_1349) (|v#$Mutation_18795| T@Vec_18150) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_18150 T@Vec_18150) Bool)
(declare-fun InRangeVec_14752 (T@Vec_18150 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_18150) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_18150 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun IndexOfVec_18150 (T@Vec_18150 |T@#0|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |verifyvectordefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectordefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectordefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectordefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectordefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectordefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_18150) (v2 T@Vec_18150) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_18150| v1) (|l#Vec_18150| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14752 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_18150| v2) i@@0)))
 :qid |verifyvectordefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |verifyvectordefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_18150) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_18150| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14752 v@@4 i@@1) true)
 :qid |verifyvectordefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |verifyvectordefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_18150) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14752 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@3) e))
 :qid |verifyvectordefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14752 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) j) e)))
 :qid |verifyvectordefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |verifyvectordefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |verifyvectordefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |verifyvectordefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |verifyvectordefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |verifyvectordefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |verifyvectordefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |verifyvectordefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |verifyvectordefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |verifyvectordefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |verifyvectordefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectordefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectordefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_18150) (i@@8 Int) ) (! (= (InRangeVec_14752 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_18150| v@@8))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14752 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (i@@9 Int) ) (! (= (InRangeVec_4118 v@@9 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_1349| v@@9))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@9 i@@9))
)))
(assert (forall ((v@@10 T@Vec_18150) (e@@1 |T@#0|) ) (! (let ((i@@10 (IndexOfVec_18150 v@@10 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_14752 v@@10 i@@11) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@11) e@@1))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_14752 v@@10 i@@10) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) j@@1) e@@1)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_18150 v@@10 e@@1))
)))
(assert (forall ((v@@11 T@Vec_1349) (e@@2 Int) ) (! (let ((i@@12 (IndexOfVec_1349 v@@11 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_4118 v@@11 i@@13) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@13) e@@2))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_4118 v@@11 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) j@@2) e@@2)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@11 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |verifyvectordefaultz3bpl.275:54|
 :skolemid |74|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@15 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@15) (|Select__T@[Int]#0_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |75|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@16 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |76|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@3 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@3) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |77|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |78|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |79|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]#0|) (|l#3@@5| Int) (|l#4@@5| |T@#0|) (k Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]#0_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |verifyvectordefaultz3bpl.90:14|
 :skolemid |81|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$temp_0'vec'#0''@1| () T@Vec_18150)
(declare-fun |inline$$1_Vector_push_back'#0'$0$m'@1| () T@$Mutation_18795)
(declare-fun $t2@0 () T@Vec_18150)
(declare-fun _$t1 () |T@#0|)
(declare-fun DefaultVecElem_14772 () |T@#0|)
(declare-fun _$t0 () T@$Mutation_18795)
(declare-fun |Store__T@[Int]#0_| (|T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (forall ( ( ?x0 |T@[Int]#0|) ( ?x1 Int) ( ?x2 |T@#0|)) (! (= (|Select__T@[Int]#0_| (|Store__T@[Int]#0_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]#0|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@#0|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]#0_| (|Store__T@[Int]#0_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]#0_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'vec'#0''@0| () T@Vec_18150)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_push_back$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 60346) (let ((anon4_Else_correct  (=> (not false) (=> (and (= |$temp_0'vec'#0''@1| (|v#$Mutation_18795| |inline$$1_Vector_push_back'#0'$0$m'@1|)) (= |$temp_0'vec'#0''@1| |$temp_0'vec'#0''@1|)) (and (=> (= (ControlFlow 0 46660) (- 0 60511)) (= (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_push_back'#0'$0$m'@1|)) (+ (|l#Vec_18150| $t2@0) 1))) (=> (= (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_push_back'#0'$0$m'@1|)) (+ (|l#Vec_18150| $t2@0) 1)) (and (=> (= (ControlFlow 0 46660) (- 0 60528)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_push_back'#0'$0$m'@1|)) (- (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_push_back'#0'$0$m'@1|)) 1)) _$t1)) (=> (= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_push_back'#0'$0$m'@1|)) (- (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_push_back'#0'$0$m'@1|)) 1)) _$t1) (=> (= (ControlFlow 0 46660) (- 0 60548)) (|$IsEqual'vec'#0''| $t2@0 (let ((m (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_push_back'#0'$0$m'@1|))))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 (- (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_push_back'#0'$0$m'@1|)) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_push_back'#0'$0$m'@1|)) 1)))) m (|lb#$Range| ($Range 0 (- (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_push_back'#0'$0$m'@1|)) 1))) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 (- (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_push_back'#0'$0$m'@1|)) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_push_back'#0'$0$m'@1|)) 1)))) 0) 0 (- (|ub#$Range| ($Range 0 (- (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_push_back'#0'$0$m'@1|)) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_push_back'#0'$0$m'@1|)) 1)))))))))))))))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_push_back'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'#0'$0$m'@1| ($Mutation_18795 (|l#$Mutation_18795| _$t0) (|p#$Mutation_18795| _$t0) (let ((l (|l#Vec_18150| (|v#$Mutation_18795| _$t0))))
(Vec_18150 (|Store__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| _$t0)) l _$t1) (+ l 1))))) (and (=> (= (ControlFlow 0 46566) 46678) anon4_Then_correct) (=> (= (ControlFlow 0 46566) 46660) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (= (|l#$Mutation_18795| _$t0) ($Param 0)) (=> (and (|$IsValid'vec'#0''| (|v#$Mutation_18795| _$t0)) (= $t2@0 (|v#$Mutation_18795| _$t0))) (=> (and (and (= |$temp_0'vec'#0''@0| (|v#$Mutation_18795| _$t0)) (= |$temp_0'vec'#0''@0| |$temp_0'vec'#0''@0|)) (and (= _$t1 _$t1) (= (ControlFlow 0 46572) 46566))) |inline$$1_Vector_push_back'#0'$0$anon0_correct|)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 60346) 46572) anon0$1_correct)))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_18150 0)) (((Vec_18150 (|v#Vec_18150| |T@[Int]#0|) (|l#Vec_18150| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_21435 0)) ((($Mutation_21435 (|l#$Mutation_21435| T@$Location) (|p#$Mutation_21435| T@Vec_1349) (|v#$Mutation_21435| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_19810 0)) ((($Mutation_19810 (|l#$Mutation_19810| T@$Location) (|p#$Mutation_19810| T@Vec_1349) (|v#$Mutation_19810| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18795 0)) ((($Mutation_18795 (|l#$Mutation_18795| T@$Location) (|p#$Mutation_18795| T@Vec_1349) (|v#$Mutation_18795| T@Vec_18150) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_18150 T@Vec_18150) Bool)
(declare-fun InRangeVec_14752 (T@Vec_18150 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_18150) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_18150 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun IndexOfVec_18150 (T@Vec_18150 |T@#0|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |verifyvectordefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectordefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectordefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectordefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectordefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectordefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_18150) (v2 T@Vec_18150) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_18150| v1) (|l#Vec_18150| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14752 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_18150| v2) i@@0)))
 :qid |verifyvectordefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |verifyvectordefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_18150) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_18150| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14752 v@@4 i@@1) true)
 :qid |verifyvectordefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |verifyvectordefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_18150) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14752 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@3) e))
 :qid |verifyvectordefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14752 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) j) e)))
 :qid |verifyvectordefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |verifyvectordefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |verifyvectordefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |verifyvectordefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |verifyvectordefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |verifyvectordefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |verifyvectordefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |verifyvectordefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |verifyvectordefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |verifyvectordefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |verifyvectordefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectordefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectordefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_18150) (i@@8 Int) ) (! (= (InRangeVec_14752 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_18150| v@@8))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14752 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (i@@9 Int) ) (! (= (InRangeVec_4118 v@@9 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_1349| v@@9))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@9 i@@9))
)))
(assert (forall ((v@@10 T@Vec_18150) (e@@1 |T@#0|) ) (! (let ((i@@10 (IndexOfVec_18150 v@@10 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_14752 v@@10 i@@11) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@11) e@@1))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_14752 v@@10 i@@10) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) j@@1) e@@1)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_18150 v@@10 e@@1))
)))
(assert (forall ((v@@11 T@Vec_1349) (e@@2 Int) ) (! (let ((i@@12 (IndexOfVec_1349 v@@11 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_4118 v@@11 i@@13) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@13) e@@2))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_4118 v@@11 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) j@@2) e@@2)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@11 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |verifyvectordefaultz3bpl.275:54|
 :skolemid |74|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@15 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@15) (|Select__T@[Int]#0_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |75|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@16 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |76|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@3 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@3) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |77|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |78|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |79|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]#0|) (|l#3@@5| Int) (|l#4@@5| |T@#0|) (k Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]#0_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |verifyvectordefaultz3bpl.90:14|
 :skolemid |81|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |inline$$1_Vector_remove'#0'$0$e@2| () |T@#0|)
(declare-fun |$temp_0'vec'#0''@1| () T@Vec_18150)
(declare-fun |inline$$1_Vector_remove'#0'$0$m'@2| () T@$Mutation_18795)
(declare-fun _$t1 () Int)
(declare-fun $t2@0 () T@Vec_18150)
(declare-fun DefaultVecElem_14772 () |T@#0|)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Vector_remove'#0'$0$e@0| () |T@#0|)
(declare-fun |inline$$1_Vector_remove'#0'$0$m'@0| () T@$Mutation_18795)
(declare-fun |inline$$1_Vector_remove'#0'$0$v@1| () T@Vec_18150)
(declare-fun |inline$$1_Vector_remove'#0'$0$e@1| () |T@#0|)
(declare-fun |inline$$1_Vector_remove'#0'$0$m'@1| () T@$Mutation_18795)
(declare-fun _$t0 () T@$Mutation_18795)
(declare-fun $abort_code@0 () Int)
(declare-fun |$temp_0'vec'#0''@0| () T@Vec_18150)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_remove$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 60583) (let ((anon4_Else_correct  (=> (and (and (not $abort_flag@0) (= |inline$$1_Vector_remove'#0'$0$e@2| |inline$$1_Vector_remove'#0'$0$e@2|)) (and (= |$temp_0'vec'#0''@1| (|v#$Mutation_18795| |inline$$1_Vector_remove'#0'$0$m'@2|)) (= |$temp_0'vec'#0''@1| |$temp_0'vec'#0''@1|))) (and (=> (= (ControlFlow 0 47148) (- 0 60870)) (not (>= _$t1 (|l#Vec_18150| $t2@0)))) (=> (not (>= _$t1 (|l#Vec_18150| $t2@0))) (and (=> (= (ControlFlow 0 47148) (- 0 60881)) (= (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_remove'#0'$0$m'@2|)) (- (|l#Vec_18150| $t2@0) 1))) (=> (= (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_remove'#0'$0$m'@2|)) (- (|l#Vec_18150| $t2@0) 1)) (and (=> (= (ControlFlow 0 47148) (- 0 60898)) (|$IsEqual'vec'#0''| (let ((m (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_remove'#0'$0$m'@2|))))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1))) m (|lb#$Range| ($Range 0 _$t1)) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1))) 0) 0 (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1)))))) (let ((m@@0 (|v#Vec_18150| $t2@0)))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1))) m@@0 (|lb#$Range| ($Range 0 _$t1)) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1))) 0) 0 (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1)))))))) (=> (|$IsEqual'vec'#0''| (let ((m (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_remove'#0'$0$m'@2|))))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1))) m (|lb#$Range| ($Range 0 _$t1)) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1))) 0) 0 (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1)))))) (let ((m@@0 (|v#Vec_18150| $t2@0)))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1))) m@@0 (|lb#$Range| ($Range 0 _$t1)) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1))) 0) 0 (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1))))))) (and (=> (= (ControlFlow 0 47148) (- 0 60921)) (|$IsEqual'vec'#0''| (let ((m@@1 (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_remove'#0'$0$m'@2|))))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range _$t1 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_remove'#0'$0$m'@2|)))) (|lb#$Range| ($Range _$t1 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_remove'#0'$0$m'@2|))))) m@@1 (|lb#$Range| ($Range _$t1 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_remove'#0'$0$m'@2|)))) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range _$t1 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_remove'#0'$0$m'@2|)))) (|lb#$Range| ($Range _$t1 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_remove'#0'$0$m'@2|))))) 0) 0 (- (|ub#$Range| ($Range _$t1 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_remove'#0'$0$m'@2|)))) (|lb#$Range| ($Range _$t1 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_remove'#0'$0$m'@2|)))))))) (let ((m@@2 (|v#Vec_18150| $t2@0)))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range (+ _$t1 1) (|l#Vec_18150| $t2@0))) (|lb#$Range| ($Range (+ _$t1 1) (|l#Vec_18150| $t2@0)))) m@@2 (|lb#$Range| ($Range (+ _$t1 1) (|l#Vec_18150| $t2@0))) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range (+ _$t1 1) (|l#Vec_18150| $t2@0))) (|lb#$Range| ($Range (+ _$t1 1) (|l#Vec_18150| $t2@0)))) 0) 0 (- (|ub#$Range| ($Range (+ _$t1 1) (|l#Vec_18150| $t2@0))) (|lb#$Range| ($Range (+ _$t1 1) (|l#Vec_18150| $t2@0))))))))) (=> (|$IsEqual'vec'#0''| (let ((m@@1 (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_remove'#0'$0$m'@2|))))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range _$t1 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_remove'#0'$0$m'@2|)))) (|lb#$Range| ($Range _$t1 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_remove'#0'$0$m'@2|))))) m@@1 (|lb#$Range| ($Range _$t1 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_remove'#0'$0$m'@2|)))) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range _$t1 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_remove'#0'$0$m'@2|)))) (|lb#$Range| ($Range _$t1 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_remove'#0'$0$m'@2|))))) 0) 0 (- (|ub#$Range| ($Range _$t1 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_remove'#0'$0$m'@2|)))) (|lb#$Range| ($Range _$t1 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_remove'#0'$0$m'@2|)))))))) (let ((m@@2 (|v#Vec_18150| $t2@0)))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range (+ _$t1 1) (|l#Vec_18150| $t2@0))) (|lb#$Range| ($Range (+ _$t1 1) (|l#Vec_18150| $t2@0)))) m@@2 (|lb#$Range| ($Range (+ _$t1 1) (|l#Vec_18150| $t2@0))) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range (+ _$t1 1) (|l#Vec_18150| $t2@0))) (|lb#$Range| ($Range (+ _$t1 1) (|l#Vec_18150| $t2@0)))) 0) 0 (- (|ub#$Range| ($Range (+ _$t1 1) (|l#Vec_18150| $t2@0))) (|lb#$Range| ($Range (+ _$t1 1) (|l#Vec_18150| $t2@0)))))))) (=> (= (ControlFlow 0 47148) (- 0 60952)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| $t2@0) _$t1) |inline$$1_Vector_remove'#0'$0$e@2|)))))))))))))
(let ((anon4_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 47176) (- 0 60831))) (>= _$t1 (|l#Vec_18150| $t2@0))))))
(let ((|inline$$1_Vector_remove'#0'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (= |inline$$1_Vector_remove'#0'$0$e@2| |inline$$1_Vector_remove'#0'$0$e@0|) (= |inline$$1_Vector_remove'#0'$0$m'@2| |inline$$1_Vector_remove'#0'$0$m'@0|))) (and (=> (= (ControlFlow 0 47006) 47176) anon4_Then_correct) (=> (= (ControlFlow 0 47006) 47148) anon4_Else_correct)))))
(let ((|inline$$1_Vector_remove'#0'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_14752 |inline$$1_Vector_remove'#0'$0$v@1| _$t1)) (= (ControlFlow 0 47004) 47006)) |inline$$1_Vector_remove'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_remove'#0'$0$anon3_Else_correct|  (=> (InRangeVec_14752 |inline$$1_Vector_remove'#0'$0$v@1| _$t1) (=> (and (= |inline$$1_Vector_remove'#0'$0$e@1| (|Select__T@[Int]#0_| (|v#Vec_18150| |inline$$1_Vector_remove'#0'$0$v@1|) _$t1)) (= |inline$$1_Vector_remove'#0'$0$m'@1| ($Mutation_18795 (|l#$Mutation_18795| _$t0) (|p#$Mutation_18795| _$t0) (let ((l (- (|l#Vec_18150| |inline$$1_Vector_remove'#0'$0$v@1|) 1)))
(Vec_18150 (|lambda#4| 0 l _$t1 (|v#Vec_18150| |inline$$1_Vector_remove'#0'$0$v@1|) (|v#Vec_18150| |inline$$1_Vector_remove'#0'$0$v@1|) 1 DefaultVecElem_14772) l))))) (=> (and (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (= |inline$$1_Vector_remove'#0'$0$e@2| |inline$$1_Vector_remove'#0'$0$e@1|) (= |inline$$1_Vector_remove'#0'$0$m'@2| |inline$$1_Vector_remove'#0'$0$m'@1|))) (and (=> (= (ControlFlow 0 46954) 47176) anon4_Then_correct) (=> (= (ControlFlow 0 46954) 47148) anon4_Else_correct)))))))
(let ((|inline$$1_Vector_remove'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_remove'#0'$0$v@1| (|v#$Mutation_18795| _$t0)) (and (=> (= (ControlFlow 0 46930) 47004) |inline$$1_Vector_remove'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 46930) 46954) |inline$$1_Vector_remove'#0'$0$anon3_Else_correct|)))))
(let ((anon0$1_correct  (=> (and (and (and (= (|l#$Mutation_18795| _$t0) ($Param 0)) (|$IsValid'vec'#0''| (|v#$Mutation_18795| _$t0))) (and (|$IsValid'u64'| _$t1) (= $t2@0 (|v#$Mutation_18795| _$t0)))) (and (and (= |$temp_0'vec'#0''@0| (|v#$Mutation_18795| _$t0)) (= |$temp_0'vec'#0''@0| |$temp_0'vec'#0''@0|)) (and (= _$t1 _$t1) (= (ControlFlow 0 47014) 46930)))) |inline$$1_Vector_remove'#0'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (ControlFlow 0 60583) 47014) anon0$1_correct)))
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
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_18150 0)) (((Vec_18150 (|v#Vec_18150| |T@[Int]#0|) (|l#Vec_18150| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_21435 0)) ((($Mutation_21435 (|l#$Mutation_21435| T@$Location) (|p#$Mutation_21435| T@Vec_1349) (|v#$Mutation_21435| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_19810 0)) ((($Mutation_19810 (|l#$Mutation_19810| T@$Location) (|p#$Mutation_19810| T@Vec_1349) (|v#$Mutation_19810| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18795 0)) ((($Mutation_18795 (|l#$Mutation_18795| T@$Location) (|p#$Mutation_18795| T@Vec_1349) (|v#$Mutation_18795| T@Vec_18150) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_18150 T@Vec_18150) Bool)
(declare-fun InRangeVec_14752 (T@Vec_18150 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_18150) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_18150 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun IndexOfVec_18150 (T@Vec_18150 |T@#0|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |verifyvectordefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectordefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectordefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectordefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectordefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectordefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_18150) (v2 T@Vec_18150) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_18150| v1) (|l#Vec_18150| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14752 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_18150| v2) i@@0)))
 :qid |verifyvectordefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |verifyvectordefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_18150) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_18150| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14752 v@@4 i@@1) true)
 :qid |verifyvectordefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |verifyvectordefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_18150) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14752 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@3) e))
 :qid |verifyvectordefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14752 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) j) e)))
 :qid |verifyvectordefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |verifyvectordefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |verifyvectordefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |verifyvectordefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |verifyvectordefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |verifyvectordefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |verifyvectordefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |verifyvectordefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |verifyvectordefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |verifyvectordefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |verifyvectordefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectordefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectordefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_18150) (i@@8 Int) ) (! (= (InRangeVec_14752 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_18150| v@@8))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14752 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (i@@9 Int) ) (! (= (InRangeVec_4118 v@@9 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_1349| v@@9))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@9 i@@9))
)))
(assert (forall ((v@@10 T@Vec_18150) (e@@1 |T@#0|) ) (! (let ((i@@10 (IndexOfVec_18150 v@@10 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_14752 v@@10 i@@11) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@11) e@@1))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_14752 v@@10 i@@10) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) j@@1) e@@1)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_18150 v@@10 e@@1))
)))
(assert (forall ((v@@11 T@Vec_1349) (e@@2 Int) ) (! (let ((i@@12 (IndexOfVec_1349 v@@11 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_4118 v@@11 i@@13) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@13) e@@2))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_4118 v@@11 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) j@@2) e@@2)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@11 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |verifyvectordefaultz3bpl.275:54|
 :skolemid |74|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@15 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@15) (|Select__T@[Int]#0_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |75|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@16 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |76|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@3 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@3) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |77|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |78|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |79|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]#0|) (|l#3@@5| Int) (|l#4@@5| |T@#0|) (k Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]#0_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |verifyvectordefaultz3bpl.90:14|
 :skolemid |81|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$temp_0'vec'#0''@1| () T@Vec_18150)
(declare-fun |inline$$1_Vector_reverse'#0'$0$m'@1| () T@$Mutation_18795)
(declare-fun $t1@0 () T@Vec_18150)
(declare-fun _$t0 () T@$Mutation_18795)
(declare-fun DefaultVecElem_14772 () |T@#0|)
(declare-fun |$temp_0'vec'#0''@0| () T@Vec_18150)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_reverse$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 60972) (let ((anon4_Else_correct  (=> (not false) (=> (and (= |$temp_0'vec'#0''@1| (|v#$Mutation_18795| |inline$$1_Vector_reverse'#0'$0$m'@1|)) (= |$temp_0'vec'#0''@1| |$temp_0'vec'#0''@1|)) (and (=> (= (ControlFlow 0 47462) (- 0 61124)) (not false)) (=> (not false) (=> (= (ControlFlow 0 47462) (- 0 61131)) (let (($range_0 ($Range 0 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_reverse'#0'$0$m'@1|)))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i@@19 $i_1))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| $t1@0) i@@19) (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_reverse'#0'$0$m'@1|)) (- (- (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_reverse'#0'$0$m'@1|)) 1) i@@19)))))
 :qid |verifyvectordefaultz3bpl.3089:70|
 :skolemid |57|
))))))))))
(let ((anon4_Then_correct true))
(let ((|inline$$1_Vector_reverse'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_reverse'#0'$0$m'@1| ($Mutation_18795 (|l#$Mutation_18795| _$t0) (|p#$Mutation_18795| _$t0) (let ((l (|l#Vec_18150| (|v#$Mutation_18795| _$t0))))
(Vec_18150 (|lambda#3| 0 l (|v#Vec_18150| (|v#$Mutation_18795| _$t0)) l 1 DefaultVecElem_14772) l)))) (and (=> (= (ControlFlow 0 47371) 47484) anon4_Then_correct) (=> (= (ControlFlow 0 47371) 47462) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (and (= (|l#$Mutation_18795| _$t0) ($Param 0)) (|$IsValid'vec'#0''| (|v#$Mutation_18795| _$t0))) (=> (and (and (= $t1@0 (|v#$Mutation_18795| _$t0)) (= |$temp_0'vec'#0''@0| (|v#$Mutation_18795| _$t0))) (and (= |$temp_0'vec'#0''@0| |$temp_0'vec'#0''@0|) (= (ControlFlow 0 47377) 47371))) |inline$$1_Vector_reverse'#0'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (ControlFlow 0 60972) 47377) anon0$1_correct)))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_18150 0)) (((Vec_18150 (|v#Vec_18150| |T@[Int]#0|) (|l#Vec_18150| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_21435 0)) ((($Mutation_21435 (|l#$Mutation_21435| T@$Location) (|p#$Mutation_21435| T@Vec_1349) (|v#$Mutation_21435| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_19810 0)) ((($Mutation_19810 (|l#$Mutation_19810| T@$Location) (|p#$Mutation_19810| T@Vec_1349) (|v#$Mutation_19810| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18795 0)) ((($Mutation_18795 (|l#$Mutation_18795| T@$Location) (|p#$Mutation_18795| T@Vec_1349) (|v#$Mutation_18795| T@Vec_18150) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_18150 T@Vec_18150) Bool)
(declare-fun InRangeVec_14752 (T@Vec_18150 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_18150) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_18150 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun IndexOfVec_18150 (T@Vec_18150 |T@#0|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |verifyvectordefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectordefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectordefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectordefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectordefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectordefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_18150) (v2 T@Vec_18150) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_18150| v1) (|l#Vec_18150| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14752 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_18150| v2) i@@0)))
 :qid |verifyvectordefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |verifyvectordefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_18150) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_18150| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14752 v@@4 i@@1) true)
 :qid |verifyvectordefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |verifyvectordefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_18150) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14752 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@3) e))
 :qid |verifyvectordefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14752 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) j) e)))
 :qid |verifyvectordefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |verifyvectordefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |verifyvectordefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |verifyvectordefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |verifyvectordefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |verifyvectordefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |verifyvectordefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |verifyvectordefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |verifyvectordefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |verifyvectordefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |verifyvectordefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectordefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectordefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_18150) (i@@8 Int) ) (! (= (InRangeVec_14752 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_18150| v@@8))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14752 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (i@@9 Int) ) (! (= (InRangeVec_4118 v@@9 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_1349| v@@9))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@9 i@@9))
)))
(assert (forall ((v@@10 T@Vec_18150) (e@@1 |T@#0|) ) (! (let ((i@@10 (IndexOfVec_18150 v@@10 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_14752 v@@10 i@@11) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@11) e@@1))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_14752 v@@10 i@@10) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) j@@1) e@@1)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_18150 v@@10 e@@1))
)))
(assert (forall ((v@@11 T@Vec_1349) (e@@2 Int) ) (! (let ((i@@12 (IndexOfVec_1349 v@@11 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_4118 v@@11 i@@13) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@13) e@@2))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_4118 v@@11 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) j@@2) e@@2)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@11 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |verifyvectordefaultz3bpl.275:54|
 :skolemid |74|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@15 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@15) (|Select__T@[Int]#0_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |75|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@16 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |76|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@3 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@3) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |77|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |78|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |79|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]#0|) (|l#3@@5| Int) (|l#4@@5| |T@#0|) (k Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]#0_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |verifyvectordefaultz3bpl.90:14|
 :skolemid |81|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'vec'#0''@1| () T@Vec_18150)
(declare-fun |inline$$1_Vector_swap'#0'$0$m'@2| () T@$Mutation_18795)
(declare-fun _$t1 () Int)
(declare-fun $t3@0 () T@Vec_18150)
(declare-fun _$t2 () Int)
(declare-fun |Store__T@[Int]#0_| (|T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (forall ( ( ?x0 |T@[Int]#0|) ( ?x1 Int) ( ?x2 |T@#0|)) (! (= (|Select__T@[Int]#0_| (|Store__T@[Int]#0_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]#0|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@#0|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]#0_| (|Store__T@[Int]#0_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]#0_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Vector_swap'#0'$0$m'@0| () T@$Mutation_18795)
(declare-fun |inline$$1_Vector_swap'#0'$0$v@1| () T@Vec_18150)
(declare-fun |inline$$1_Vector_swap'#0'$0$m'@1| () T@$Mutation_18795)
(declare-fun _$t0 () T@$Mutation_18795)
(declare-fun $abort_code@0 () Int)
(declare-fun |$temp_0'vec'#0''@0| () T@Vec_18150)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_swap$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 61196) (let ((anon4_Else_correct  (=> (not $abort_flag@0) (=> (and (= |$temp_0'vec'#0''@1| (|v#$Mutation_18795| |inline$$1_Vector_swap'#0'$0$m'@2|)) (= |$temp_0'vec'#0''@1| |$temp_0'vec'#0''@1|)) (and (=> (= (ControlFlow 0 47927) (- 0 61491)) (not (>= _$t1 (|l#Vec_18150| $t3@0)))) (=> (not (>= _$t1 (|l#Vec_18150| $t3@0))) (and (=> (= (ControlFlow 0 47927) (- 0 61502)) (not (>= _$t2 (|l#Vec_18150| $t3@0)))) (=> (not (>= _$t2 (|l#Vec_18150| $t3@0))) (=> (= (ControlFlow 0 47927) (- 0 61513)) (|$IsEqual'vec'#0''| (|v#$Mutation_18795| |inline$$1_Vector_swap'#0'$0$m'@2|) (Vec_18150 (|Store__T@[Int]#0_| (|v#Vec_18150| (Vec_18150 (|Store__T@[Int]#0_| (|v#Vec_18150| $t3@0) _$t1 (|Select__T@[Int]#0_| (|v#Vec_18150| $t3@0) _$t2)) (|l#Vec_18150| $t3@0))) _$t2 (|Select__T@[Int]#0_| (|v#Vec_18150| $t3@0) _$t1)) (|l#Vec_18150| (Vec_18150 (|Store__T@[Int]#0_| (|v#Vec_18150| $t3@0) _$t1 (|Select__T@[Int]#0_| (|v#Vec_18150| $t3@0) _$t2)) (|l#Vec_18150| $t3@0))))))))))))))
(let ((anon4_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 47965) (- 0 61449))) (or (>= _$t1 (|l#Vec_18150| $t3@0)) (>= _$t2 (|l#Vec_18150| $t3@0)))))))
(let ((|inline$$1_Vector_swap'#0'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_swap'#0'$0$m'@2| |inline$$1_Vector_swap'#0'$0$m'@0|)) (and (=> (= (ControlFlow 0 47845) 47965) anon4_Then_correct) (=> (= (ControlFlow 0 47845) 47927) anon4_Else_correct))))))
(let ((|inline$$1_Vector_swap'#0'$0$anon3_Then_correct|  (=> (and (or (not (InRangeVec_14752 |inline$$1_Vector_swap'#0'$0$v@1| _$t1)) (not (InRangeVec_14752 |inline$$1_Vector_swap'#0'$0$v@1| _$t2))) (= (ControlFlow 0 47843) 47845)) |inline$$1_Vector_swap'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'#0'$0$anon3_Else_correct|  (=> (not (or (not (InRangeVec_14752 |inline$$1_Vector_swap'#0'$0$v@1| _$t1)) (not (InRangeVec_14752 |inline$$1_Vector_swap'#0'$0$v@1| _$t2)))) (=> (and (and (= |inline$$1_Vector_swap'#0'$0$m'@1| ($Mutation_18795 (|l#$Mutation_18795| _$t0) (|p#$Mutation_18795| _$t0) (let ((m (|v#Vec_18150| |inline$$1_Vector_swap'#0'$0$v@1|)))
(Vec_18150 (|Store__T@[Int]#0_| (|Store__T@[Int]#0_| m _$t1 (|Select__T@[Int]#0_| m _$t2)) _$t2 (|Select__T@[Int]#0_| m _$t1)) (|l#Vec_18150| |inline$$1_Vector_swap'#0'$0$v@1|))))) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_swap'#0'$0$m'@2| |inline$$1_Vector_swap'#0'$0$m'@1|))) (and (=> (= (ControlFlow 0 47783) 47965) anon4_Then_correct) (=> (= (ControlFlow 0 47783) 47927) anon4_Else_correct))))))
(let ((|inline$$1_Vector_swap'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_swap'#0'$0$v@1| (|v#$Mutation_18795| _$t0)) (and (=> (= (ControlFlow 0 47749) 47843) |inline$$1_Vector_swap'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 47749) 47783) |inline$$1_Vector_swap'#0'$0$anon3_Else_correct|)))))
(let ((anon0$1_correct  (=> (and (= (|l#$Mutation_18795| _$t0) ($Param 0)) (|$IsValid'vec'#0''| (|v#$Mutation_18795| _$t0))) (=> (and (and (and (|$IsValid'u64'| _$t1) (|$IsValid'u64'| _$t2)) (and (= $t3@0 (|v#$Mutation_18795| _$t0)) (= |$temp_0'vec'#0''@0| (|v#$Mutation_18795| _$t0)))) (and (and (= |$temp_0'vec'#0''@0| |$temp_0'vec'#0''@0|) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= (ControlFlow 0 47851) 47749)))) |inline$$1_Vector_swap'#0'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (ControlFlow 0 61196) 47851) anon0$1_correct)))
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
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_18150 0)) (((Vec_18150 (|v#Vec_18150| |T@[Int]#0|) (|l#Vec_18150| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_21435 0)) ((($Mutation_21435 (|l#$Mutation_21435| T@$Location) (|p#$Mutation_21435| T@Vec_1349) (|v#$Mutation_21435| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_19810 0)) ((($Mutation_19810 (|l#$Mutation_19810| T@$Location) (|p#$Mutation_19810| T@Vec_1349) (|v#$Mutation_19810| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18795 0)) ((($Mutation_18795 (|l#$Mutation_18795| T@$Location) (|p#$Mutation_18795| T@Vec_1349) (|v#$Mutation_18795| T@Vec_18150) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_18150 T@Vec_18150) Bool)
(declare-fun InRangeVec_14752 (T@Vec_18150 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_18150) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_18150 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun IndexOfVec_18150 (T@Vec_18150 |T@#0|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |verifyvectordefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectordefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectordefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectordefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectordefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectordefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_18150) (v2 T@Vec_18150) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_18150| v1) (|l#Vec_18150| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14752 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_18150| v2) i@@0)))
 :qid |verifyvectordefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |verifyvectordefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_18150) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_18150| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14752 v@@4 i@@1) true)
 :qid |verifyvectordefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |verifyvectordefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_18150) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14752 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@3) e))
 :qid |verifyvectordefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14752 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) j) e)))
 :qid |verifyvectordefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |verifyvectordefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |verifyvectordefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |verifyvectordefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |verifyvectordefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |verifyvectordefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |verifyvectordefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |verifyvectordefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |verifyvectordefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |verifyvectordefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |verifyvectordefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectordefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectordefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_18150) (i@@8 Int) ) (! (= (InRangeVec_14752 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_18150| v@@8))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14752 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (i@@9 Int) ) (! (= (InRangeVec_4118 v@@9 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_1349| v@@9))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@9 i@@9))
)))
(assert (forall ((v@@10 T@Vec_18150) (e@@1 |T@#0|) ) (! (let ((i@@10 (IndexOfVec_18150 v@@10 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_14752 v@@10 i@@11) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@11) e@@1))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_14752 v@@10 i@@10) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) j@@1) e@@1)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_18150 v@@10 e@@1))
)))
(assert (forall ((v@@11 T@Vec_1349) (e@@2 Int) ) (! (let ((i@@12 (IndexOfVec_1349 v@@11 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_4118 v@@11 i@@13) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@13) e@@2))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_4118 v@@11 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) j@@2) e@@2)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@11 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |verifyvectordefaultz3bpl.275:54|
 :skolemid |74|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@15 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@15) (|Select__T@[Int]#0_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |75|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@16 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |76|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@3 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@3) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |77|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |78|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |79|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]#0|) (|l#3@@5| Int) (|l#4@@5| |T@#0|) (k Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]#0_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |verifyvectordefaultz3bpl.90:14|
 :skolemid |81|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |inline$$1_Vector_swap_remove'#0'$0$e@2| () |T@#0|)
(declare-fun |$temp_0'vec'#0''@1| () T@Vec_18150)
(declare-fun |inline$$1_Vector_swap_remove'#0'$0$m'@2| () T@$Mutation_18795)
(declare-fun _$t1 () Int)
(declare-fun $t2@0 () T@Vec_18150)
(declare-fun |Store__T@[Int]#0_| (|T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (forall ( ( ?x0 |T@[Int]#0|) ( ?x1 Int) ( ?x2 |T@#0|)) (! (= (|Select__T@[Int]#0_| (|Store__T@[Int]#0_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]#0|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@#0|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]#0_| (|Store__T@[Int]#0_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]#0_| ?x0 ?y1))) :weight 0)))
(declare-fun DefaultVecElem_14772 () |T@#0|)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Vector_swap_remove'#0'$0$e@0| () |T@#0|)
(declare-fun |inline$$1_Vector_swap_remove'#0'$0$m'@0| () T@$Mutation_18795)
(declare-fun |inline$$1_Vector_swap_remove'#0'$0$v@1| () T@Vec_18150)
(declare-fun |inline$$1_Vector_swap_remove'#0'$0$e@1| () |T@#0|)
(declare-fun |inline$$1_Vector_swap_remove'#0'$0$m'@1| () T@$Mutation_18795)
(declare-fun _$t0 () T@$Mutation_18795)
(declare-fun |inline$$1_Vector_swap_remove'#0'$0$len@1| () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun |$temp_0'vec'#0''@0| () T@Vec_18150)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_model_swap_remove$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 61546) (let ((anon4_Else_correct  (=> (and (and (not $abort_flag@0) (= |inline$$1_Vector_swap_remove'#0'$0$e@2| |inline$$1_Vector_swap_remove'#0'$0$e@2|)) (and (= |$temp_0'vec'#0''@1| (|v#$Mutation_18795| |inline$$1_Vector_swap_remove'#0'$0$m'@2|)) (= |$temp_0'vec'#0''@1| |$temp_0'vec'#0''@1|))) (and (=> (= (ControlFlow 0 48436) (- 0 61854)) (not (>= _$t1 (|l#Vec_18150| $t2@0)))) (=> (not (>= _$t1 (|l#Vec_18150| $t2@0))) (and (=> (= (ControlFlow 0 48436) (- 0 61865)) (= (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_swap_remove'#0'$0$m'@2|)) (- (|l#Vec_18150| $t2@0) 1))) (=> (= (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_swap_remove'#0'$0$m'@2|)) (- (|l#Vec_18150| $t2@0) 1)) (and (=> (= (ControlFlow 0 48436) (- 0 61882)) (|$IsEqual'vec'#0''| (|v#$Mutation_18795| |inline$$1_Vector_swap_remove'#0'$0$m'@2|) (let ((m (|v#Vec_18150| (Vec_18150 (|Store__T@[Int]#0_| (|v#Vec_18150| $t2@0) _$t1 (|Select__T@[Int]#0_| (|v#Vec_18150| $t2@0) (- (|l#Vec_18150| $t2@0) 1))) (|l#Vec_18150| $t2@0)))))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 (- (|l#Vec_18150| $t2@0) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_18150| $t2@0) 1)))) m (|lb#$Range| ($Range 0 (- (|l#Vec_18150| $t2@0) 1))) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 (- (|l#Vec_18150| $t2@0) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_18150| $t2@0) 1)))) 0) 0 (- (|ub#$Range| ($Range 0 (- (|l#Vec_18150| $t2@0) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_18150| $t2@0) 1))))))))) (=> (|$IsEqual'vec'#0''| (|v#$Mutation_18795| |inline$$1_Vector_swap_remove'#0'$0$m'@2|) (let ((m (|v#Vec_18150| (Vec_18150 (|Store__T@[Int]#0_| (|v#Vec_18150| $t2@0) _$t1 (|Select__T@[Int]#0_| (|v#Vec_18150| $t2@0) (- (|l#Vec_18150| $t2@0) 1))) (|l#Vec_18150| $t2@0)))))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 (- (|l#Vec_18150| $t2@0) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_18150| $t2@0) 1)))) m (|lb#$Range| ($Range 0 (- (|l#Vec_18150| $t2@0) 1))) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 (- (|l#Vec_18150| $t2@0) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_18150| $t2@0) 1)))) 0) 0 (- (|ub#$Range| ($Range 0 (- (|l#Vec_18150| $t2@0) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_18150| $t2@0) 1)))))))) (=> (= (ControlFlow 0 48436) (- 0 61917)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| $t2@0) _$t1) |inline$$1_Vector_swap_remove'#0'$0$e@2|)))))))))))
(let ((anon4_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 48464) (- 0 61815))) (>= _$t1 (|l#Vec_18150| $t2@0))))))
(let ((|inline$$1_Vector_swap_remove'#0'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (= |inline$$1_Vector_swap_remove'#0'$0$e@2| |inline$$1_Vector_swap_remove'#0'$0$e@0|) (= |inline$$1_Vector_swap_remove'#0'$0$m'@2| |inline$$1_Vector_swap_remove'#0'$0$m'@0|))) (and (=> (= (ControlFlow 0 48316) 48464) anon4_Then_correct) (=> (= (ControlFlow 0 48316) 48436) anon4_Else_correct)))))
(let ((|inline$$1_Vector_swap_remove'#0'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_14752 |inline$$1_Vector_swap_remove'#0'$0$v@1| _$t1)) (= (ControlFlow 0 48314) 48316)) |inline$$1_Vector_swap_remove'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap_remove'#0'$0$anon3_Else_correct|  (=> (InRangeVec_14752 |inline$$1_Vector_swap_remove'#0'$0$v@1| _$t1) (=> (and (= |inline$$1_Vector_swap_remove'#0'$0$e@1| (|Select__T@[Int]#0_| (|v#Vec_18150| |inline$$1_Vector_swap_remove'#0'$0$v@1|) _$t1)) (= |inline$$1_Vector_swap_remove'#0'$0$m'@1| ($Mutation_18795 (|l#$Mutation_18795| _$t0) (|p#$Mutation_18795| _$t0) (let ((l (- (|l#Vec_18150| (let ((m@@0 (|v#Vec_18150| |inline$$1_Vector_swap_remove'#0'$0$v@1|)))
(Vec_18150 (|Store__T@[Int]#0_| (|Store__T@[Int]#0_| m@@0 _$t1 (|Select__T@[Int]#0_| m@@0 (- |inline$$1_Vector_swap_remove'#0'$0$len@1| 1))) (- |inline$$1_Vector_swap_remove'#0'$0$len@1| 1) (|Select__T@[Int]#0_| m@@0 _$t1)) (|l#Vec_18150| |inline$$1_Vector_swap_remove'#0'$0$v@1|)))) 1)))
(Vec_18150 (|Store__T@[Int]#0_| (|v#Vec_18150| (let ((m@@0 (|v#Vec_18150| |inline$$1_Vector_swap_remove'#0'$0$v@1|)))
(Vec_18150 (|Store__T@[Int]#0_| (|Store__T@[Int]#0_| m@@0 _$t1 (|Select__T@[Int]#0_| m@@0 (- |inline$$1_Vector_swap_remove'#0'$0$len@1| 1))) (- |inline$$1_Vector_swap_remove'#0'$0$len@1| 1) (|Select__T@[Int]#0_| m@@0 _$t1)) (|l#Vec_18150| |inline$$1_Vector_swap_remove'#0'$0$v@1|)))) l DefaultVecElem_14772) l))))) (=> (and (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (= |inline$$1_Vector_swap_remove'#0'$0$e@2| |inline$$1_Vector_swap_remove'#0'$0$e@1|) (= |inline$$1_Vector_swap_remove'#0'$0$m'@2| |inline$$1_Vector_swap_remove'#0'$0$m'@1|))) (and (=> (= (ControlFlow 0 48264) 48464) anon4_Then_correct) (=> (= (ControlFlow 0 48264) 48436) anon4_Else_correct)))))))
(let ((|inline$$1_Vector_swap_remove'#0'$0$anon0_correct|  (=> (and (= |inline$$1_Vector_swap_remove'#0'$0$v@1| (|v#$Mutation_18795| _$t0)) (= |inline$$1_Vector_swap_remove'#0'$0$len@1| (|l#Vec_18150| |inline$$1_Vector_swap_remove'#0'$0$v@1|))) (and (=> (= (ControlFlow 0 48232) 48314) |inline$$1_Vector_swap_remove'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 48232) 48264) |inline$$1_Vector_swap_remove'#0'$0$anon3_Else_correct|)))))
(let ((anon0$1_correct  (=> (and (and (and (= (|l#$Mutation_18795| _$t0) ($Param 0)) (|$IsValid'vec'#0''| (|v#$Mutation_18795| _$t0))) (and (|$IsValid'u64'| _$t1) (= $t2@0 (|v#$Mutation_18795| _$t0)))) (and (and (= |$temp_0'vec'#0''@0| (|v#$Mutation_18795| _$t0)) (= |$temp_0'vec'#0''@0| |$temp_0'vec'#0''@0|)) (and (= _$t1 _$t1) (= (ControlFlow 0 48324) 48232)))) |inline$$1_Vector_swap_remove'#0'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (ControlFlow 0 61546) 48324) anon0$1_correct)))
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
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_1349 0)) (((Vec_1349 (|v#Vec_1349| |T@[Int]Int|) (|l#Vec_1349| Int) ) ) ))
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_18150 0)) (((Vec_18150 (|v#Vec_18150| |T@[Int]#0|) (|l#Vec_18150| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_21435 0)) ((($Mutation_21435 (|l#$Mutation_21435| T@$Location) (|p#$Mutation_21435| T@Vec_1349) (|v#$Mutation_21435| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_19810 0)) ((($Mutation_19810 (|l#$Mutation_19810| T@$Location) (|p#$Mutation_19810| T@Vec_1349) (|v#$Mutation_19810| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18795 0)) ((($Mutation_18795 (|l#$Mutation_18795| T@$Location) (|p#$Mutation_18795| T@Vec_1349) (|v#$Mutation_18795| T@Vec_18150) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_18150 T@Vec_18150) Bool)
(declare-fun InRangeVec_14752 (T@Vec_18150 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_18150) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_18150 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun IndexOfVec_18150 (T@Vec_18150 |T@#0|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |verifyvectordefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectordefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectordefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectordefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectordefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectordefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_18150) (v2 T@Vec_18150) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_18150| v1) (|l#Vec_18150| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14752 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_18150| v2) i@@0)))
 :qid |verifyvectordefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |verifyvectordefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_18150) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_18150| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14752 v@@4 i@@1) true)
 :qid |verifyvectordefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |verifyvectordefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_18150) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14752 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@3) e))
 :qid |verifyvectordefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14752 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) j) e)))
 :qid |verifyvectordefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |verifyvectordefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |verifyvectordefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |verifyvectordefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |verifyvectordefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |verifyvectordefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |verifyvectordefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |verifyvectordefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |verifyvectordefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |verifyvectordefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |verifyvectordefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectordefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectordefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_18150) (i@@8 Int) ) (! (= (InRangeVec_14752 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_18150| v@@8))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14752 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (i@@9 Int) ) (! (= (InRangeVec_4118 v@@9 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_1349| v@@9))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@9 i@@9))
)))
(assert (forall ((v@@10 T@Vec_18150) (e@@1 |T@#0|) ) (! (let ((i@@10 (IndexOfVec_18150 v@@10 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_14752 v@@10 i@@11) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@11) e@@1))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_14752 v@@10 i@@10) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) j@@1) e@@1)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_18150 v@@10 e@@1))
)))
(assert (forall ((v@@11 T@Vec_1349) (e@@2 Int) ) (! (let ((i@@12 (IndexOfVec_1349 v@@11 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_4118 v@@11 i@@13) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@13) e@@2))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_4118 v@@11 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) j@@2) e@@2)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@11 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |verifyvectordefaultz3bpl.275:54|
 :skolemid |74|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@15 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@15) (|Select__T@[Int]#0_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |75|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@16 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |76|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@3 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@3) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |77|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |78|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |79|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]#0|) (|l#3@@5| Int) (|l#4@@5| |T@#0|) (k Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]#0_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |verifyvectordefaultz3bpl.90:14|
 :skolemid |81|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun inline$$AddU64$1$dst@2 () Int)
(declare-fun $t1@0 () Int)
(declare-fun inline$$Sub$0$dst@2 () Int)
(declare-fun |inline$$1_Vector_swap'#0'$0$m'@2| () T@$Mutation_18795)
(declare-fun DefaultVecElem_14772 () |T@#0|)
(declare-fun $t13@0 () T@Vec_18150)
(declare-fun $t14@0 () T@Vec_18150)
(declare-fun $t15@0 () T@Vec_18150)
(declare-fun $t16@0 () T@Vec_18150)
(declare-fun $t1@1 () Int)
(declare-fun $t4@0 () T@Vec_18150)
(declare-fun $abort_code@5 () Int)
(declare-fun inline$$AddU64$1$dst@0 () Int)
(declare-fun inline$$AddU64$1$dst@1 () Int)
(declare-fun $abort_code@4 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun |inline$$1_Vector_swap'#0'$0$m'@0| () T@$Mutation_18795)
(declare-fun |inline$$1_Vector_swap'#0'$0$v@1| () T@Vec_18150)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun |inline$$1_Vector_swap'#0'$0$m'@1| () T@$Mutation_18795)
(declare-fun $t0@0 () T@$Mutation_18795)
(declare-fun |Store__T@[Int]#0_| (|T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (forall ( ( ?x0 |T@[Int]#0|) ( ?x1 Int) ( ?x2 |T@#0|)) (! (= (|Select__T@[Int]#0_| (|Store__T@[Int]#0_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]#0|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@#0|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]#0_| (|Store__T@[Int]#0_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]#0_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun _$t1 () Int)
(declare-fun inline$$Ge$0$dst@1 () Bool)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$e@2| () |T@#0|)
(declare-fun |$temp_0'vec'#0''@2| () T@Vec_18150)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$m'@2| () T@$Mutation_18795)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$e@0| () |T@#0|)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$m'@0| () T@$Mutation_18795)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$len@1| () Int)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$e@1| () |T@#0|)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$v@1| () T@Vec_18150)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$m'@1| () T@$Mutation_18795)
(declare-fun _$t0 () T@$Mutation_18795)
(declare-fun $t9@0 () T@Vec_18150)
(declare-fun $t10@0 () T@Vec_18150)
(declare-fun $t11@0 () T@Vec_18150)
(declare-fun $t12@0 () T@Vec_18150)
(declare-fun $t25@0 () Int)
(declare-fun $t26@0 () Int)
(declare-fun $t27@0 () Int)
(declare-fun $t28@0 () Int)
(declare-fun |$temp_0'vec'#0''@1| () T@Vec_18150)
(declare-fun $t5@0 () T@Vec_18150)
(declare-fun $t6@0 () T@Vec_18150)
(declare-fun $t7@0 () T@Vec_18150)
(declare-fun $t8@0 () T@Vec_18150)
(declare-fun inline$$Sub$0$dst@0 () Int)
(declare-fun |inline$$1_Vector_length'#0'$0$l@1| () Int)
(declare-fun inline$$Sub$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun $t17@0 () T@Vec_18150)
(declare-fun |$temp_0'vec'#0''@0| () T@Vec_18150)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_remove$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 61940) (let ((anon28_Else_correct  (=> (and (not $abort_flag@4) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@2)) (and (=> (= (ControlFlow 0 50484) (- 0 63526)) (and (<= $t1@0 inline$$AddU64$1$dst@2) (<= inline$$AddU64$1$dst@2 inline$$Sub$0$dst@2))) (=> (and (<= $t1@0 inline$$AddU64$1$dst@2) (<= inline$$AddU64$1$dst@2 inline$$Sub$0$dst@2)) (and (=> (= (ControlFlow 0 50484) (- 0 63539)) (= (+ inline$$Sub$0$dst@2 1) (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_swap'#0'$0$m'@2|)))) (=> (= (+ inline$$Sub$0$dst@2 1) (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_swap'#0'$0$m'@2|))) (and (=> (= (ControlFlow 0 50484) (- 0 63554)) (|$IsEqual'vec'#0''| (let ((m (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_swap'#0'$0$m'@2|))))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0))) m (|lb#$Range| ($Range 0 $t1@0)) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0))) 0) 0 (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0)))))) (let ((m@@0 (|v#Vec_18150| $t13@0)))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0))) m@@0 (|lb#$Range| ($Range 0 $t1@0)) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0))) 0) 0 (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0)))))))) (=> (|$IsEqual'vec'#0''| (let ((m (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_swap'#0'$0$m'@2|))))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0))) m (|lb#$Range| ($Range 0 $t1@0)) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0))) 0) 0 (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0)))))) (let ((m@@0 (|v#Vec_18150| $t13@0)))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0))) m@@0 (|lb#$Range| ($Range 0 $t1@0)) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0))) 0) 0 (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0))))))) (and (=> (= (ControlFlow 0 50484) (- 0 63577)) (let (($range_0 ($Range $t1@0 inline$$AddU64$1$dst@2)))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((k@@0 $i_1))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_swap'#0'$0$m'@2|)) k@@0) (|Select__T@[Int]#0_| (|v#Vec_18150| $t14@0) (+ k@@0 1)))))
 :qid |verifyvectordefaultz3bpl.3678:51|
 :skolemid |62|
)))) (=> (let (($range_0 ($Range $t1@0 inline$$AddU64$1$dst@2)))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0 $i_1@@0) (let ((k@@0 $i_1@@0))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_swap'#0'$0$m'@2|)) k@@0) (|Select__T@[Int]#0_| (|v#Vec_18150| $t14@0) (+ k@@0 1)))))
 :qid |verifyvectordefaultz3bpl.3678:51|
 :skolemid |62|
))) (and (=> (= (ControlFlow 0 50484) (- 0 63619)) (let (($range_0@@0 ($Range (+ inline$$AddU64$1$dst@2 1) (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_swap'#0'$0$m'@2|)))))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@1) (let ((k@@1 $i_1@@1))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_swap'#0'$0$m'@2|)) k@@1) (|Select__T@[Int]#0_| (|v#Vec_18150| $t15@0) k@@1))))
 :qid |verifyvectordefaultz3bpl.3684:79|
 :skolemid |63|
)))) (=> (let (($range_0@@0 ($Range (+ inline$$AddU64$1$dst@2 1) (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_swap'#0'$0$m'@2|)))))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@2) (let ((k@@1 $i_1@@2))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_swap'#0'$0$m'@2|)) k@@1) (|Select__T@[Int]#0_| (|v#Vec_18150| $t15@0) k@@1))))
 :qid |verifyvectordefaultz3bpl.3684:79|
 :skolemid |63|
))) (=> (= (ControlFlow 0 50484) (- 0 63665)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_swap'#0'$0$m'@2|)) inline$$AddU64$1$dst@2) (|Select__T@[Int]#0_| (|v#Vec_18150| $t16@0) $t1@0))))))))))))))))
(let ((L9_correct  (=> (= (ControlFlow 0 49744) (- 0 63503)) (>= $t1@1 (|l#Vec_18150| $t4@0)))))
(let ((anon28_Then_correct  (=> (and (and $abort_flag@4 (= $abort_code@5 $abort_code@5)) (and (= $t1@1 $t1@0) (= (ControlFlow 0 50498) 49744))) L9_correct)))
(let ((inline$$AddU64$1$anon3_Then$1_correct  (=> (= $abort_code@5 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@4 true) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@0)) (and (=> (= (ControlFlow 0 50292) 50498) anon28_Then_correct) (=> (= (ControlFlow 0 50292) 50484) anon28_Else_correct))))))
(let ((inline$$AddU64$1$anon3_Then_correct  (=> (and (> (+ $t1@0 1) $MAX_U64) (= (ControlFlow 0 50290) 50292)) inline$$AddU64$1$anon3_Then$1_correct)))
(let ((inline$$AddU64$1$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t1@0 1)) (=> (and (and (= inline$$AddU64$1$dst@1 (+ $t1@0 1)) (= $abort_code@5 $abort_code@4)) (and (= $abort_flag@4 $abort_flag@3) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@1))) (and (=> (= (ControlFlow 0 50238) 50498) anon28_Then_correct) (=> (= (ControlFlow 0 50238) 50484) anon28_Else_correct))))))
(let ((anon27_Else_correct  (=> (and (not $abort_flag@3) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 50298) 50290) inline$$AddU64$1$anon3_Then_correct) (=> (= (ControlFlow 0 50298) 50238) inline$$AddU64$1$anon3_Else_correct)))))
(let ((anon27_Then_correct  (=> (and (and $abort_flag@3 (= $abort_code@4 $abort_code@4)) (and (= $t1@1 $t1@0) (= (ControlFlow 0 50512) 49744))) L9_correct)))
(let ((|inline$$1_Vector_swap'#0'$0$anon3_Then$1_correct|  (=> (= $abort_flag@3 true) (=> (and (= $abort_code@4 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_swap'#0'$0$m'@2| |inline$$1_Vector_swap'#0'$0$m'@0|)) (and (=> (= (ControlFlow 0 50123) 50512) anon27_Then_correct) (=> (= (ControlFlow 0 50123) 50298) anon27_Else_correct))))))
(let ((|inline$$1_Vector_swap'#0'$0$anon3_Then_correct|  (=> (and (or (not (InRangeVec_14752 |inline$$1_Vector_swap'#0'$0$v@1| $t1@0)) (not (InRangeVec_14752 |inline$$1_Vector_swap'#0'$0$v@1| inline$$AddU64$0$dst@2))) (= (ControlFlow 0 50121) 50123)) |inline$$1_Vector_swap'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'#0'$0$anon3_Else_correct|  (=> (not (or (not (InRangeVec_14752 |inline$$1_Vector_swap'#0'$0$v@1| $t1@0)) (not (InRangeVec_14752 |inline$$1_Vector_swap'#0'$0$v@1| inline$$AddU64$0$dst@2)))) (=> (and (and (= |inline$$1_Vector_swap'#0'$0$m'@1| ($Mutation_18795 (|l#$Mutation_18795| $t0@0) (|p#$Mutation_18795| $t0@0) (let ((m@@1 (|v#Vec_18150| |inline$$1_Vector_swap'#0'$0$v@1|)))
(Vec_18150 (|Store__T@[Int]#0_| (|Store__T@[Int]#0_| m@@1 $t1@0 (|Select__T@[Int]#0_| m@@1 inline$$AddU64$0$dst@2)) inline$$AddU64$0$dst@2 (|Select__T@[Int]#0_| m@@1 $t1@0)) (|l#Vec_18150| |inline$$1_Vector_swap'#0'$0$v@1|))))) (= $abort_flag@3 $abort_flag@2)) (and (= $abort_code@4 $abort_code@3) (= |inline$$1_Vector_swap'#0'$0$m'@2| |inline$$1_Vector_swap'#0'$0$m'@1|))) (and (=> (= (ControlFlow 0 50061) 50512) anon27_Then_correct) (=> (= (ControlFlow 0 50061) 50298) anon27_Else_correct))))))
(let ((|inline$$1_Vector_swap'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_swap'#0'$0$v@1| (|v#$Mutation_18795| $t0@0)) (and (=> (= (ControlFlow 0 50027) 50121) |inline$$1_Vector_swap'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 50027) 50061) |inline$$1_Vector_swap'#0'$0$anon3_Else_correct|)))))
(let ((anon26_Else_correct  (=> (and (not $abort_flag@2) (= (ControlFlow 0 50129) 50027)) |inline$$1_Vector_swap'#0'$0$anon0_correct|)))
(let ((anon26_Then_correct  (=> (and (and $abort_flag@2 (= $abort_code@3 $abort_code@3)) (and (= $t1@1 $t1@0) (= (ControlFlow 0 50526) 49744))) L9_correct)))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_code@3 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@2 true) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 49901) 50526) anon26_Then_correct) (=> (= (ControlFlow 0 49901) 50129) anon26_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t1@0 1) $MAX_U64) (= (ControlFlow 0 49899) 49901)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t1@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t1@0 1)) (= $abort_code@3 $abort_code@1)) (and (= $abort_flag@2 $abort_flag@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 49847) 50526) anon26_Then_correct) (=> (= (ControlFlow 0 49847) 50129) anon26_Else_correct))))))
(let ((anon25_Then_correct  (=> (and inline$$Lt$0$dst@1 (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 49907) 49899) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 49907) 49847) inline$$AddU64$0$anon3_Else_correct)))))
(let ((anon29_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= $t1@1 $t1@0) (= (ControlFlow 0 49728) 49744))) L9_correct)))
(let ((anon24_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $t1@1 _$t1) (= (ControlFlow 0 50540) 49744))) L9_correct)))
(let ((anon23_Then_correct  (=> inline$$Ge$0$dst@1 (=> (and (and (|$IsValid'u64'| 10) (= 10 10)) (and (= $t1@1 _$t1) (= (ControlFlow 0 50560) 49744))) L9_correct))))
(let ((anon29_Else_correct  (=> (and (and (not $abort_flag@1) (= |inline$$1_Vector_pop_back'#0'$0$e@2| |inline$$1_Vector_pop_back'#0'$0$e@2|)) (and (= |$temp_0'vec'#0''@2| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|)) (= |$temp_0'vec'#0''@2| |$temp_0'vec'#0''@2|))) (and (=> (= (ControlFlow 0 49714) (- 0 63075)) (not (>= $t1@0 (|l#Vec_18150| $t4@0)))) (=> (not (>= $t1@0 (|l#Vec_18150| $t4@0))) (and (=> (= (ControlFlow 0 49714) (- 0 63086)) (= (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|)) (- (|l#Vec_18150| $t4@0) 1))) (=> (= (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|)) (- (|l#Vec_18150| $t4@0) 1)) (and (=> (= (ControlFlow 0 49714) (- 0 63103)) (|$IsEqual'vec'#0''| (let ((m@@2 (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|))))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0))) m@@2 (|lb#$Range| ($Range 0 $t1@0)) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0))) 0) 0 (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0)))))) (let ((m@@3 (|v#Vec_18150| $t4@0)))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0))) m@@3 (|lb#$Range| ($Range 0 $t1@0)) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0))) 0) 0 (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0)))))))) (=> (|$IsEqual'vec'#0''| (let ((m@@2 (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|))))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0))) m@@2 (|lb#$Range| ($Range 0 $t1@0)) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0))) 0) 0 (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0)))))) (let ((m@@3 (|v#Vec_18150| $t4@0)))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0))) m@@3 (|lb#$Range| ($Range 0 $t1@0)) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0))) 0) 0 (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0))))))) (and (=> (= (ControlFlow 0 49714) (- 0 63126)) (|$IsEqual'vec'#0''| (let ((m@@4 (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|))))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range $t1@0 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|)))) (|lb#$Range| ($Range $t1@0 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|))))) m@@4 (|lb#$Range| ($Range $t1@0 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|)))) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range $t1@0 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|)))) (|lb#$Range| ($Range $t1@0 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|))))) 0) 0 (- (|ub#$Range| ($Range $t1@0 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|)))) (|lb#$Range| ($Range $t1@0 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|)))))))) (let ((m@@5 (|v#Vec_18150| $t4@0)))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range (+ $t1@0 1) (|l#Vec_18150| $t4@0))) (|lb#$Range| ($Range (+ $t1@0 1) (|l#Vec_18150| $t4@0)))) m@@5 (|lb#$Range| ($Range (+ $t1@0 1) (|l#Vec_18150| $t4@0))) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range (+ $t1@0 1) (|l#Vec_18150| $t4@0))) (|lb#$Range| ($Range (+ $t1@0 1) (|l#Vec_18150| $t4@0)))) 0) 0 (- (|ub#$Range| ($Range (+ $t1@0 1) (|l#Vec_18150| $t4@0))) (|lb#$Range| ($Range (+ $t1@0 1) (|l#Vec_18150| $t4@0))))))))) (=> (|$IsEqual'vec'#0''| (let ((m@@4 (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|))))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range $t1@0 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|)))) (|lb#$Range| ($Range $t1@0 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|))))) m@@4 (|lb#$Range| ($Range $t1@0 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|)))) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range $t1@0 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|)))) (|lb#$Range| ($Range $t1@0 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|))))) 0) 0 (- (|ub#$Range| ($Range $t1@0 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|)))) (|lb#$Range| ($Range $t1@0 (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|)))))))) (let ((m@@5 (|v#Vec_18150| $t4@0)))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range (+ $t1@0 1) (|l#Vec_18150| $t4@0))) (|lb#$Range| ($Range (+ $t1@0 1) (|l#Vec_18150| $t4@0)))) m@@5 (|lb#$Range| ($Range (+ $t1@0 1) (|l#Vec_18150| $t4@0))) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range (+ $t1@0 1) (|l#Vec_18150| $t4@0))) (|lb#$Range| ($Range (+ $t1@0 1) (|l#Vec_18150| $t4@0)))) 0) 0 (- (|ub#$Range| ($Range (+ $t1@0 1) (|l#Vec_18150| $t4@0))) (|lb#$Range| ($Range (+ $t1@0 1) (|l#Vec_18150| $t4@0)))))))) (=> (= (ControlFlow 0 49714) (- 0 63157)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| $t4@0) $t1@0) |inline$$1_Vector_pop_back'#0'$0$e@2|)))))))))))))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= $abort_flag@1 true)) (and (= |inline$$1_Vector_pop_back'#0'$0$e@2| |inline$$1_Vector_pop_back'#0'$0$e@0|) (= |inline$$1_Vector_pop_back'#0'$0$m'@2| |inline$$1_Vector_pop_back'#0'$0$m'@0|))) (and (=> (= (ControlFlow 0 49574) 49728) anon29_Then_correct) (=> (= (ControlFlow 0 49574) 49714) anon29_Else_correct)))))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon3_Then_correct|  (=> (and (= |inline$$1_Vector_pop_back'#0'$0$len@1| 0) (= (ControlFlow 0 49572) 49574)) |inline$$1_Vector_pop_back'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon3_Else_correct|  (=> (not (= |inline$$1_Vector_pop_back'#0'$0$len@1| 0)) (=> (and (= |inline$$1_Vector_pop_back'#0'$0$e@1| (|Select__T@[Int]#0_| (|v#Vec_18150| |inline$$1_Vector_pop_back'#0'$0$v@1|) (- |inline$$1_Vector_pop_back'#0'$0$len@1| 1))) (= |inline$$1_Vector_pop_back'#0'$0$m'@1| ($Mutation_18795 (|l#$Mutation_18795| $t0@0) (|p#$Mutation_18795| $t0@0) (let ((l (- (|l#Vec_18150| |inline$$1_Vector_pop_back'#0'$0$v@1|) 1)))
(Vec_18150 (|Store__T@[Int]#0_| (|v#Vec_18150| |inline$$1_Vector_pop_back'#0'$0$v@1|) l DefaultVecElem_14772) l))))) (=> (and (and (= $abort_code@2 $abort_code@1) (= $abort_flag@1 $abort_flag@0)) (and (= |inline$$1_Vector_pop_back'#0'$0$e@2| |inline$$1_Vector_pop_back'#0'$0$e@1|) (= |inline$$1_Vector_pop_back'#0'$0$m'@2| |inline$$1_Vector_pop_back'#0'$0$m'@1|))) (and (=> (= (ControlFlow 0 49524) 49728) anon29_Then_correct) (=> (= (ControlFlow 0 49524) 49714) anon29_Else_correct)))))))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon0_correct|  (=> (and (= |inline$$1_Vector_pop_back'#0'$0$v@1| (|v#$Mutation_18795| $t0@0)) (= |inline$$1_Vector_pop_back'#0'$0$len@1| (|l#Vec_18150| |inline$$1_Vector_pop_back'#0'$0$v@1|))) (and (=> (= (ControlFlow 0 49498) 49572) |inline$$1_Vector_pop_back'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 49498) 49524) |inline$$1_Vector_pop_back'#0'$0$anon3_Else_correct|)))))
(let ((anon25_Else_correct  (=> (and (not inline$$Lt$0$dst@1) (= (ControlFlow 0 49582) 49498)) |inline$$1_Vector_pop_back'#0'$0$anon0_correct|)))
(let ((anon24_Else$1_correct  (and (=> (= (ControlFlow 0 49389) 49907) anon25_Then_correct) (=> (= (ControlFlow 0 49389) 49582) anon25_Else_correct))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t1@0 inline$$Sub$0$dst@2)) (= (ControlFlow 0 49379) 49389)) anon24_Else$1_correct)))
(let ((anon24_Else_correct  (=> (and (not $abort_flag@0) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@2)) (and (=> (= (ControlFlow 0 49385) (- 0 62520)) (and (<= _$t1 _$t1) (<= _$t1 inline$$Sub$0$dst@2))) (=> (and (<= _$t1 _$t1) (<= _$t1 inline$$Sub$0$dst@2)) (and (=> (= (ControlFlow 0 49385) (- 0 62533)) (= (+ inline$$Sub$0$dst@2 1) (|l#Vec_18150| (|v#$Mutation_18795| _$t0)))) (=> (= (+ inline$$Sub$0$dst@2 1) (|l#Vec_18150| (|v#$Mutation_18795| _$t0))) (and (=> (= (ControlFlow 0 49385) (- 0 62548)) (|$IsEqual'vec'#0''| (let ((m@@6 (|v#Vec_18150| (|v#$Mutation_18795| _$t0))))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1))) m@@6 (|lb#$Range| ($Range 0 _$t1)) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1))) 0) 0 (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1)))))) (let ((m@@7 (|v#Vec_18150| $t9@0)))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1))) m@@7 (|lb#$Range| ($Range 0 _$t1)) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1))) 0) 0 (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1)))))))) (=> (|$IsEqual'vec'#0''| (let ((m@@6 (|v#Vec_18150| (|v#$Mutation_18795| _$t0))))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1))) m@@6 (|lb#$Range| ($Range 0 _$t1)) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1))) 0) 0 (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1)))))) (let ((m@@7 (|v#Vec_18150| $t9@0)))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1))) m@@7 (|lb#$Range| ($Range 0 _$t1)) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1))) 0) 0 (- (|ub#$Range| ($Range 0 _$t1)) (|lb#$Range| ($Range 0 _$t1))))))) (and (=> (= (ControlFlow 0 49385) (- 0 62571)) (let (($range_0@@1 ($Range _$t1 _$t1)))
(forall (($i_1@@3 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@3) (let ((k@@2 $i_1@@3))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| _$t0)) k@@2) (|Select__T@[Int]#0_| (|v#Vec_18150| $t10@0) (+ k@@2 1)))))
 :qid |verifyvectordefaultz3bpl.3501:50|
 :skolemid |58|
)))) (=> (let (($range_0@@1 ($Range _$t1 _$t1)))
(forall (($i_1@@4 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@4) (let ((k@@2 $i_1@@4))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| _$t0)) k@@2) (|Select__T@[Int]#0_| (|v#Vec_18150| $t10@0) (+ k@@2 1)))))
 :qid |verifyvectordefaultz3bpl.3501:50|
 :skolemid |58|
))) (and (=> (= (ControlFlow 0 49385) (- 0 62613)) (let (($range_0@@2 ($Range (+ _$t1 1) (|l#Vec_18150| (|v#$Mutation_18795| _$t0)))))
(forall (($i_1@@5 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@5) (let ((k@@3 $i_1@@5))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| _$t0)) k@@3) (|Select__T@[Int]#0_| (|v#Vec_18150| $t11@0) k@@3))))
 :qid |verifyvectordefaultz3bpl.3507:78|
 :skolemid |59|
)))) (=> (let (($range_0@@2 ($Range (+ _$t1 1) (|l#Vec_18150| (|v#$Mutation_18795| _$t0)))))
(forall (($i_1@@6 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@6) (let ((k@@3 $i_1@@6))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| _$t0)) k@@3) (|Select__T@[Int]#0_| (|v#Vec_18150| $t11@0) k@@3))))
 :qid |verifyvectordefaultz3bpl.3507:78|
 :skolemid |59|
))) (and (=> (= (ControlFlow 0 49385) (- 0 62659)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| _$t0)) _$t1) (|Select__T@[Int]#0_| (|v#Vec_18150| $t12@0) _$t1))) (=> (= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| _$t0)) _$t1) (|Select__T@[Int]#0_| (|v#Vec_18150| $t12@0) _$t1)) (=> (and (and (and (and (|$IsValid'u64'| $t1@0) (|$IsValid'u64'| $t25@0)) (and (|$IsValid'u64'| $t26@0) (|$IsValid'u64'| $t27@0))) (and (and (|$IsValid'u64'| $t28@0) (= $t0@0 ($Mutation_18795 (|l#$Mutation_18795| _$t0) (|p#$Mutation_18795| _$t0) |$temp_0'vec'#0''@1|))) (and (|$IsValid'vec'#0''| (|v#$Mutation_18795| $t0@0)) (not $abort_flag@0)))) (and (and (and (<= $t1@0 $t1@0) (<= $t1@0 inline$$Sub$0$dst@2)) (and (= (+ inline$$Sub$0$dst@2 1) (|l#Vec_18150| (|v#$Mutation_18795| $t0@0))) (|$IsEqual'vec'#0''| (let ((m@@8 (|v#Vec_18150| (|v#$Mutation_18795| $t0@0))))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0))) m@@8 (|lb#$Range| ($Range 0 $t1@0)) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0))) 0) 0 (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0)))))) (let ((m@@9 (|v#Vec_18150| $t5@0)))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0))) m@@9 (|lb#$Range| ($Range 0 $t1@0)) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0))) 0) 0 (- (|ub#$Range| ($Range 0 $t1@0)) (|lb#$Range| ($Range 0 $t1@0))))))))) (and (and (let (($range_0@@3 ($Range $t1@0 $t1@0)))
(forall (($i_1@@7 Int) ) (!  (=> ($InRange $range_0@@3 $i_1@@7) (let ((k@@4 $i_1@@7))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| $t0@0)) k@@4) (|Select__T@[Int]#0_| (|v#Vec_18150| $t6@0) (+ k@@4 1)))))
 :qid |verifyvectordefaultz3bpl.3561:55|
 :skolemid |60|
))) (let (($range_0@@4 ($Range (+ $t1@0 1) (|l#Vec_18150| (|v#$Mutation_18795| $t0@0)))))
(forall (($i_1@@8 Int) ) (!  (=> ($InRange $range_0@@4 $i_1@@8) (let ((k@@5 $i_1@@8))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| $t0@0)) k@@5) (|Select__T@[Int]#0_| (|v#Vec_18150| $t7@0) k@@5))))
 :qid |verifyvectordefaultz3bpl.3566:83|
 :skolemid |61|
)))) (and (= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| $t0@0)) $t1@0) (|Select__T@[Int]#0_| (|v#Vec_18150| $t8@0) $t1@0)) (= (ControlFlow 0 49385) 49379))))) inline$$Lt$0$anon0_correct))))))))))))))))
(let ((inline$$Sub$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@0)) (and (=> (= (ControlFlow 0 48935) 50540) anon24_Then_correct) (=> (= (ControlFlow 0 48935) 49385) anon24_Else_correct))))))
(let ((inline$$Sub$0$anon3_Then_correct  (=> (and (< |inline$$1_Vector_length'#0'$0$l@1| 1) (= (ControlFlow 0 48933) 48935)) inline$$Sub$0$anon3_Then$1_correct)))
(let ((inline$$Sub$0$anon3_Else_correct  (=> (<= 1 |inline$$1_Vector_length'#0'$0$l@1|) (=> (and (and (= inline$$Sub$0$dst@1 (- |inline$$1_Vector_length'#0'$0$l@1| 1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@1))) (and (=> (= (ControlFlow 0 48885) 50540) anon24_Then_correct) (=> (= (ControlFlow 0 48885) 49385) anon24_Else_correct))))))
(let ((anon23_Else_correct  (=> (and (not inline$$Ge$0$dst@1) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 48941) 48933) inline$$Sub$0$anon3_Then_correct) (=> (= (ControlFlow 0 48941) 48885) inline$$Sub$0$anon3_Else_correct)))))
(let ((inline$$Ge$0$anon0_correct  (=> (= inline$$Ge$0$dst@1 (>= _$t1 |inline$$1_Vector_length'#0'$0$l@1|)) (and (=> (= (ControlFlow 0 48784) 50560) anon23_Then_correct) (=> (= (ControlFlow 0 48784) 48941) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_length'#0'$0$l@1| |inline$$1_Vector_length'#0'$0$l@1|)) (and (= _$t1 _$t1) (= (ControlFlow 0 48790) 48784))) inline$$Ge$0$anon0_correct)))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_length'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'#0'$0$l@1| (|l#Vec_18150| $t17@0)) (and (=> (= (ControlFlow 0 48714) 50574) anon22_Then_correct) (=> (= (ControlFlow 0 48714) 48790) anon22_Else_correct)))))
(let ((anon0$1_correct  (=> (= (|l#$Mutation_18795| _$t0) ($Param 0)) (=> (and (and (|$IsValid'vec'#0''| (|v#$Mutation_18795| _$t0)) (|$IsValid'u64'| _$t1)) (and (= $t4@0 (|v#$Mutation_18795| _$t0)) (= $t5@0 (|v#$Mutation_18795| _$t0)))) (=> (and (and (and (and (= $t6@0 (|v#$Mutation_18795| _$t0)) (= $t7@0 (|v#$Mutation_18795| _$t0))) (and (= $t8@0 (|v#$Mutation_18795| _$t0)) (= $t9@0 (|v#$Mutation_18795| _$t0)))) (and (and (= $t10@0 (|v#$Mutation_18795| _$t0)) (= $t11@0 (|v#$Mutation_18795| _$t0))) (and (= $t12@0 (|v#$Mutation_18795| _$t0)) (= $t13@0 (|v#$Mutation_18795| _$t0))))) (and (and (and (= $t14@0 (|v#$Mutation_18795| _$t0)) (= $t15@0 (|v#$Mutation_18795| _$t0))) (and (= $t16@0 (|v#$Mutation_18795| _$t0)) (= |$temp_0'vec'#0''@0| (|v#$Mutation_18795| _$t0)))) (and (and (= |$temp_0'vec'#0''@0| |$temp_0'vec'#0''@0|) (= _$t1 _$t1)) (and (= $t17@0 (|v#$Mutation_18795| _$t0)) (= (ControlFlow 0 48720) 48714))))) |inline$$1_Vector_length'#0'$0$anon0_correct|)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 61940) 48720) anon0$1_correct)))
anon0_correct)))))))))))))))))))))))))))))))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_18150 0)) (((Vec_18150 (|v#Vec_18150| |T@[Int]#0|) (|l#Vec_18150| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_21435 0)) ((($Mutation_21435 (|l#$Mutation_21435| T@$Location) (|p#$Mutation_21435| T@Vec_1349) (|v#$Mutation_21435| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_19810 0)) ((($Mutation_19810 (|l#$Mutation_19810| T@$Location) (|p#$Mutation_19810| T@Vec_1349) (|v#$Mutation_19810| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18795 0)) ((($Mutation_18795 (|l#$Mutation_18795| T@$Location) (|p#$Mutation_18795| T@Vec_1349) (|v#$Mutation_18795| T@Vec_18150) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_18150 T@Vec_18150) Bool)
(declare-fun InRangeVec_14752 (T@Vec_18150 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_18150) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_18150 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun IndexOfVec_18150 (T@Vec_18150 |T@#0|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |verifyvectordefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectordefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectordefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectordefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectordefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectordefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_18150) (v2 T@Vec_18150) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_18150| v1) (|l#Vec_18150| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14752 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_18150| v2) i@@0)))
 :qid |verifyvectordefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |verifyvectordefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_18150) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_18150| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14752 v@@4 i@@1) true)
 :qid |verifyvectordefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |verifyvectordefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_18150) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14752 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@3) e))
 :qid |verifyvectordefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14752 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) j) e)))
 :qid |verifyvectordefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |verifyvectordefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |verifyvectordefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |verifyvectordefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |verifyvectordefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |verifyvectordefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |verifyvectordefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |verifyvectordefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |verifyvectordefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |verifyvectordefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |verifyvectordefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectordefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectordefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_18150) (i@@8 Int) ) (! (= (InRangeVec_14752 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_18150| v@@8))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14752 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (i@@9 Int) ) (! (= (InRangeVec_4118 v@@9 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_1349| v@@9))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@9 i@@9))
)))
(assert (forall ((v@@10 T@Vec_18150) (e@@1 |T@#0|) ) (! (let ((i@@10 (IndexOfVec_18150 v@@10 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_14752 v@@10 i@@11) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@11) e@@1))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_14752 v@@10 i@@10) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) j@@1) e@@1)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_18150 v@@10 e@@1))
)))
(assert (forall ((v@@11 T@Vec_1349) (e@@2 Int) ) (! (let ((i@@12 (IndexOfVec_1349 v@@11 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_4118 v@@11 i@@13) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@13) e@@2))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_4118 v@@11 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) j@@2) e@@2)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@11 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |verifyvectordefaultz3bpl.275:54|
 :skolemid |74|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@15 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@15) (|Select__T@[Int]#0_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |75|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@16 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |76|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@3 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@3) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |77|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |78|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |79|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]#0|) (|l#3@@5| Int) (|l#4@@5| |T@#0|) (k Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]#0_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |verifyvectordefaultz3bpl.90:14|
 :skolemid |81|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$Sub$1$dst@2 () Int)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun |inline$$1_Vector_length'#0'$0$l@1| () Int)
(declare-fun |inline$$1_Vector_swap'#0'$0$m'@2| () T@$Mutation_18795)
(declare-fun $t11@0 () T@Vec_18150)
(declare-fun $t12@0 () T@Vec_18150)
(declare-fun $t13@0 () T@Vec_18150)
(declare-fun inline$$Sub$1$dst@0 () Int)
(declare-fun $t21@0 () Int)
(declare-fun inline$$Sub$1$dst@1 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t19@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun |inline$$1_Vector_swap'#0'$0$m'@0| () T@$Mutation_18795)
(declare-fun |inline$$1_Vector_swap'#0'$0$v@1| () T@Vec_18150)
(declare-fun |inline$$1_Vector_swap'#0'$0$m'@1| () T@$Mutation_18795)
(declare-fun $t0@0 () T@$Mutation_18795)
(declare-fun |Store__T@[Int]#0_| (|T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (forall ( ( ?x0 |T@[Int]#0|) ( ?x1 Int) ( ?x2 |T@#0|)) (! (= (|Select__T@[Int]#0_| (|Store__T@[Int]#0_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]#0|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@#0|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]#0_| (|Store__T@[Int]#0_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]#0_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun $t0@1 () T@$Mutation_18795)
(declare-fun $t4@0 () T@Vec_18150)
(declare-fun |$temp_0'vec'#0''@3| () T@Vec_18150)
(declare-fun inline$$Sub$0$dst@2 () Int)
(declare-fun _$t0 () T@$Mutation_18795)
(declare-fun $t8@0 () T@Vec_18150)
(declare-fun $t9@0 () T@Vec_18150)
(declare-fun $t10@0 () T@Vec_18150)
(declare-fun $t23@0 () Int)
(declare-fun $t24@0 () Int)
(declare-fun $t25@0 () Int)
(declare-fun $t26@0 () Int)
(declare-fun |$temp_0'vec'#0''@2| () T@Vec_18150)
(declare-fun $t5@0 () T@Vec_18150)
(declare-fun $t6@0 () T@Vec_18150)
(declare-fun $t7@0 () T@Vec_18150)
(declare-fun inline$$Sub$0$dst@0 () Int)
(declare-fun inline$$Sub$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun $t18@0 () Bool)
(declare-fun |$temp_0'vec'#0''@1| () T@Vec_18150)
(declare-fun $t14@0 () T@Vec_18150)
(declare-fun |$temp_0'vec'#0''@0| () T@Vec_18150)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_reverse$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 63691) (let ((L9_correct  (=> (= (ControlFlow 0 52396) (- 0 65168)) false)))
(let ((anon26_Then_correct  (=> $abort_flag@3 (=> (and (= $abort_code@4 $abort_code@4) (= (ControlFlow 0 52386) 52396)) L9_correct))))
(let ((anon25_Then_correct  (=> $abort_flag@2 (=> (and (= $abort_code@3 $abort_code@3) (= (ControlFlow 0 52410) 52396)) L9_correct))))
(let ((anon24_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 52424) 52396)) L9_correct))))
(let ((anon22_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 52438) 52396)) L9_correct))))
(let ((anon26_Else_correct  (=> (and (not $abort_flag@3) (= inline$$Sub$1$dst@2 inline$$Sub$1$dst@2)) (and (=> (= (ControlFlow 0 52372) (- 0 65007)) (= (+ inline$$AddU64$0$dst@2 inline$$Sub$1$dst@2) (- |inline$$1_Vector_length'#0'$0$l@1| 1))) (=> (= (+ inline$$AddU64$0$dst@2 inline$$Sub$1$dst@2) (- |inline$$1_Vector_length'#0'$0$l@1| 1)) (and (=> (= (ControlFlow 0 52372) (- 0 65021)) (let (($range_0 ($Range 0 inline$$AddU64$0$dst@2)))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((i@@19 $i_1))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_swap'#0'$0$m'@2|)) i@@19) (|Select__T@[Int]#0_| (|v#Vec_18150| $t11@0) (- (- |inline$$1_Vector_length'#0'$0$l@1| 1) i@@19)))))
 :qid |verifyvectordefaultz3bpl.4077:49|
 :skolemid |70|
)))) (=> (let (($range_0 ($Range 0 inline$$AddU64$0$dst@2)))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0 $i_1@@0) (let ((i@@19 $i_1@@0))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_swap'#0'$0$m'@2|)) i@@19) (|Select__T@[Int]#0_| (|v#Vec_18150| $t11@0) (- (- |inline$$1_Vector_length'#0'$0$l@1| 1) i@@19)))))
 :qid |verifyvectordefaultz3bpl.4077:49|
 :skolemid |70|
))) (and (=> (= (ControlFlow 0 52372) (- 0 65067)) (let (($range_0@@0 ($Range 0 inline$$AddU64$0$dst@2)))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@1) (let ((i@@20 $i_1@@1))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_swap'#0'$0$m'@2|)) (- (- |inline$$1_Vector_length'#0'$0$l@1| 1) i@@20)) (|Select__T@[Int]#0_| (|v#Vec_18150| $t12@0) i@@20))))
 :qid |verifyvectordefaultz3bpl.4083:49|
 :skolemid |71|
)))) (=> (let (($range_0@@0 ($Range 0 inline$$AddU64$0$dst@2)))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@2) (let ((i@@20 $i_1@@2))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_swap'#0'$0$m'@2|)) (- (- |inline$$1_Vector_length'#0'$0$l@1| 1) i@@20)) (|Select__T@[Int]#0_| (|v#Vec_18150| $t12@0) i@@20))))
 :qid |verifyvectordefaultz3bpl.4083:49|
 :skolemid |71|
))) (and (=> (= (ControlFlow 0 52372) (- 0 65113)) (let (($range_0@@1 ($Range inline$$AddU64$0$dst@2 (+ inline$$Sub$1$dst@2 1))))
(forall (($i_1@@3 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@3) (let ((j@@5 $i_1@@3))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_swap'#0'$0$m'@2|)) j@@5) (|Select__T@[Int]#0_| (|v#Vec_18150| $t13@0) j@@5))))
 :qid |verifyvectordefaultz3bpl.4089:58|
 :skolemid |72|
)))) (=> (let (($range_0@@1 ($Range inline$$AddU64$0$dst@2 (+ inline$$Sub$1$dst@2 1))))
(forall (($i_1@@4 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@4) (let ((j@@5 $i_1@@4))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_swap'#0'$0$m'@2|)) j@@5) (|Select__T@[Int]#0_| (|v#Vec_18150| $t13@0) j@@5))))
 :qid |verifyvectordefaultz3bpl.4089:58|
 :skolemid |72|
))) (=> (= (ControlFlow 0 52372) (- 0 65155)) (= (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_swap'#0'$0$m'@2|)) |inline$$1_Vector_length'#0'$0$l@1|)))))))))))))
(let ((inline$$Sub$1$anon3_Then$1_correct  (=> (= $abort_code@4 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@3 true) (= inline$$Sub$1$dst@2 inline$$Sub$1$dst@0)) (and (=> (= (ControlFlow 0 52179) 52386) anon26_Then_correct) (=> (= (ControlFlow 0 52179) 52372) anon26_Else_correct))))))
(let ((inline$$Sub$1$anon3_Then_correct  (=> (and (< $t21@0 1) (= (ControlFlow 0 52177) 52179)) inline$$Sub$1$anon3_Then$1_correct)))
(let ((inline$$Sub$1$anon3_Else_correct  (=> (<= 1 $t21@0) (=> (and (and (= inline$$Sub$1$dst@1 (- $t21@0 1)) (= $abort_code@4 $abort_code@3)) (and (= $abort_flag@3 $abort_flag@2) (= inline$$Sub$1$dst@2 inline$$Sub$1$dst@1))) (and (=> (= (ControlFlow 0 52129) 52386) anon26_Then_correct) (=> (= (ControlFlow 0 52129) 52372) anon26_Else_correct))))))
(let ((anon25_Else_correct  (=> (not $abort_flag@2) (=> (and (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@2) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 52185) 52177) inline$$Sub$1$anon3_Then_correct) (=> (= (ControlFlow 0 52185) 52129) inline$$Sub$1$anon3_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@2 true) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 52020) 52410) anon25_Then_correct) (=> (= (ControlFlow 0 52020) 52185) anon25_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t19@0 1) $MAX_U64) (= (ControlFlow 0 52018) 52020)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t19@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t19@0 1)) (= $abort_flag@2 $abort_flag@1)) (and (= $abort_code@3 $abort_code@2) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 51966) 52410) anon25_Then_correct) (=> (= (ControlFlow 0 51966) 52185) anon25_Else_correct))))))
(let ((anon24_Else_correct  (=> (and (not $abort_flag@1) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 52026) 52018) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 52026) 51966) inline$$AddU64$0$anon3_Else_correct)))))
(let ((|inline$$1_Vector_swap'#0'$0$anon3_Then$1_correct|  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= |inline$$1_Vector_swap'#0'$0$m'@2| |inline$$1_Vector_swap'#0'$0$m'@0|)) (and (=> (= (ControlFlow 0 51851) 52424) anon24_Then_correct) (=> (= (ControlFlow 0 51851) 52026) anon24_Else_correct))))))
(let ((|inline$$1_Vector_swap'#0'$0$anon3_Then_correct|  (=> (and (or (not (InRangeVec_14752 |inline$$1_Vector_swap'#0'$0$v@1| $t19@0)) (not (InRangeVec_14752 |inline$$1_Vector_swap'#0'$0$v@1| $t21@0))) (= (ControlFlow 0 51849) 51851)) |inline$$1_Vector_swap'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'#0'$0$anon3_Else_correct|  (=> (not (or (not (InRangeVec_14752 |inline$$1_Vector_swap'#0'$0$v@1| $t19@0)) (not (InRangeVec_14752 |inline$$1_Vector_swap'#0'$0$v@1| $t21@0)))) (=> (and (and (= |inline$$1_Vector_swap'#0'$0$m'@1| ($Mutation_18795 (|l#$Mutation_18795| $t0@0) (|p#$Mutation_18795| $t0@0) (let ((m (|v#Vec_18150| |inline$$1_Vector_swap'#0'$0$v@1|)))
(Vec_18150 (|Store__T@[Int]#0_| (|Store__T@[Int]#0_| m $t19@0 (|Select__T@[Int]#0_| m $t21@0)) $t21@0 (|Select__T@[Int]#0_| m $t19@0)) (|l#Vec_18150| |inline$$1_Vector_swap'#0'$0$v@1|))))) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= |inline$$1_Vector_swap'#0'$0$m'@2| |inline$$1_Vector_swap'#0'$0$m'@1|))) (and (=> (= (ControlFlow 0 51789) 52424) anon24_Then_correct) (=> (= (ControlFlow 0 51789) 52026) anon24_Else_correct))))))
(let ((|inline$$1_Vector_swap'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_swap'#0'$0$v@1| (|v#$Mutation_18795| $t0@0)) (and (=> (= (ControlFlow 0 51755) 51849) |inline$$1_Vector_swap'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 51755) 51789) |inline$$1_Vector_swap'#0'$0$anon3_Else_correct|)))))
(let ((anon23_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 51857) 51755)) |inline$$1_Vector_swap'#0'$0$anon0_correct|)))
(let ((L8_correct  (and (=> (= (ControlFlow 0 51639) (- 0 64622)) (not false)) (=> (not false) (=> (= (ControlFlow 0 51639) (- 0 64629)) (let (($range_0@@2 ($Range 0 (|l#Vec_18150| (|v#$Mutation_18795| $t0@1)))))
(forall (($i_1@@5 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@5) (let ((i@@21 $i_1@@5))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| $t0@1)) i@@21) (|Select__T@[Int]#0_| (|v#Vec_18150| $t4@0) (- (- (|l#Vec_18150| (|v#$Mutation_18795| $t0@1)) 1) i@@21)))))
 :qid |verifyvectordefaultz3bpl.4113:70|
 :skolemid |73|
))))))))
(let ((anon23_Else_correct  (=> (not inline$$Lt$0$dst@1) (=> (and (and (= |$temp_0'vec'#0''@3| (|v#$Mutation_18795| $t0@0)) (= |$temp_0'vec'#0''@3| |$temp_0'vec'#0''@3|)) (and (= $t0@1 $t0@0) (= (ControlFlow 0 51572) 51639))) L8_correct))))
(let ((anon22_Else$1_correct  (and (=> (= (ControlFlow 0 51556) 51857) anon23_Then_correct) (=> (= (ControlFlow 0 51556) 51572) anon23_Else_correct))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t19@0 $t21@0)) (= (ControlFlow 0 51546) 51556)) anon22_Else$1_correct)))
(let ((anon22_Else_correct  (=> (and (not $abort_flag@0) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@2)) (and (=> (= (ControlFlow 0 51552) (- 0 64189)) (= (+ 0 inline$$Sub$0$dst@2) (- |inline$$1_Vector_length'#0'$0$l@1| 1))) (=> (= (+ 0 inline$$Sub$0$dst@2) (- |inline$$1_Vector_length'#0'$0$l@1| 1)) (and (=> (= (ControlFlow 0 51552) (- 0 64203)) (let (($range_0@@3 ($Range 0 0)))
(forall (($i_1@@6 Int) ) (!  (=> ($InRange $range_0@@3 $i_1@@6) (let ((i@@22 $i_1@@6))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| _$t0)) i@@22) (|Select__T@[Int]#0_| (|v#Vec_18150| $t8@0) (- (- |inline$$1_Vector_length'#0'$0$l@1| 1) i@@22)))))
 :qid |verifyvectordefaultz3bpl.3909:49|
 :skolemid |64|
)))) (=> (let (($range_0@@3 ($Range 0 0)))
(forall (($i_1@@7 Int) ) (!  (=> ($InRange $range_0@@3 $i_1@@7) (let ((i@@22 $i_1@@7))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| _$t0)) i@@22) (|Select__T@[Int]#0_| (|v#Vec_18150| $t8@0) (- (- |inline$$1_Vector_length'#0'$0$l@1| 1) i@@22)))))
 :qid |verifyvectordefaultz3bpl.3909:49|
 :skolemid |64|
))) (and (=> (= (ControlFlow 0 51552) (- 0 64249)) (let (($range_0@@4 ($Range 0 0)))
(forall (($i_1@@8 Int) ) (!  (=> ($InRange $range_0@@4 $i_1@@8) (let ((i@@23 $i_1@@8))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| _$t0)) (- (- |inline$$1_Vector_length'#0'$0$l@1| 1) i@@23)) (|Select__T@[Int]#0_| (|v#Vec_18150| $t9@0) i@@23))))
 :qid |verifyvectordefaultz3bpl.3915:49|
 :skolemid |65|
)))) (=> (let (($range_0@@4 ($Range 0 0)))
(forall (($i_1@@9 Int) ) (!  (=> ($InRange $range_0@@4 $i_1@@9) (let ((i@@23 $i_1@@9))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| _$t0)) (- (- |inline$$1_Vector_length'#0'$0$l@1| 1) i@@23)) (|Select__T@[Int]#0_| (|v#Vec_18150| $t9@0) i@@23))))
 :qid |verifyvectordefaultz3bpl.3915:49|
 :skolemid |65|
))) (and (=> (= (ControlFlow 0 51552) (- 0 64295)) (let (($range_0@@5 ($Range 0 (+ inline$$Sub$0$dst@2 1))))
(forall (($i_1@@10 Int) ) (!  (=> ($InRange $range_0@@5 $i_1@@10) (let ((j@@6 $i_1@@10))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| _$t0)) j@@6) (|Select__T@[Int]#0_| (|v#Vec_18150| $t10@0) j@@6))))
 :qid |verifyvectordefaultz3bpl.3921:58|
 :skolemid |66|
)))) (=> (let (($range_0@@5 ($Range 0 (+ inline$$Sub$0$dst@2 1))))
(forall (($i_1@@11 Int) ) (!  (=> ($InRange $range_0@@5 $i_1@@11) (let ((j@@6 $i_1@@11))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| _$t0)) j@@6) (|Select__T@[Int]#0_| (|v#Vec_18150| $t10@0) j@@6))))
 :qid |verifyvectordefaultz3bpl.3921:58|
 :skolemid |66|
))) (and (=> (= (ControlFlow 0 51552) (- 0 64337)) (= (|l#Vec_18150| (|v#$Mutation_18795| _$t0)) |inline$$1_Vector_length'#0'$0$l@1|)) (=> (= (|l#Vec_18150| (|v#$Mutation_18795| _$t0)) |inline$$1_Vector_length'#0'$0$l@1|) (=> (|$IsValid'u64'| $t21@0) (=> (and (|$IsValid'u64'| $t19@0) (|$IsValid'u64'| $t23@0)) (=> (and (and (|$IsValid'u64'| $t24@0) (|$IsValid'u64'| $t25@0)) (and (|$IsValid'u64'| $t26@0) (= $t0@0 ($Mutation_18795 (|l#$Mutation_18795| _$t0) (|p#$Mutation_18795| _$t0) |$temp_0'vec'#0''@2|)))) (=> (and (and (and (|$IsValid'vec'#0''| (|v#$Mutation_18795| $t0@0)) (not $abort_flag@0)) (and (= (+ $t19@0 $t21@0) (- |inline$$1_Vector_length'#0'$0$l@1| 1)) (let (($range_0@@6 ($Range 0 $t19@0)))
(forall (($i_1@@12 Int) ) (!  (=> ($InRange $range_0@@6 $i_1@@12) (let ((i@@24 $i_1@@12))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| $t0@0)) i@@24) (|Select__T@[Int]#0_| (|v#Vec_18150| $t5@0) (- (- |inline$$1_Vector_length'#0'$0$l@1| 1) i@@24)))))
 :qid |verifyvectordefaultz3bpl.3971:54|
 :skolemid |67|
))))) (and (and (let (($range_0@@7 ($Range 0 $t19@0)))
(forall (($i_1@@13 Int) ) (!  (=> ($InRange $range_0@@7 $i_1@@13) (let ((i@@25 $i_1@@13))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| $t0@0)) (- (- |inline$$1_Vector_length'#0'$0$l@1| 1) i@@25)) (|Select__T@[Int]#0_| (|v#Vec_18150| $t6@0) i@@25))))
 :qid |verifyvectordefaultz3bpl.3976:54|
 :skolemid |68|
))) (let (($range_0@@8 ($Range $t19@0 (+ $t21@0 1))))
(forall (($i_1@@14 Int) ) (!  (=> ($InRange $range_0@@8 $i_1@@14) (let ((j@@7 $i_1@@14))
(= (|Select__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| $t0@0)) j@@7) (|Select__T@[Int]#0_| (|v#Vec_18150| $t7@0) j@@7))))
 :qid |verifyvectordefaultz3bpl.3981:63|
 :skolemid |69|
)))) (and (= (|l#Vec_18150| (|v#$Mutation_18795| $t0@0)) |inline$$1_Vector_length'#0'$0$l@1|) (= (ControlFlow 0 51552) 51546)))) inline$$Lt$0$anon0_correct)))))))))))))))))
(let ((inline$$Sub$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@0)) (and (=> (= (ControlFlow 0 51096) 52438) anon22_Then_correct) (=> (= (ControlFlow 0 51096) 51552) anon22_Else_correct))))))
(let ((inline$$Sub$0$anon3_Then_correct  (=> (and (< |inline$$1_Vector_length'#0'$0$l@1| 1) (= (ControlFlow 0 51094) 51096)) inline$$Sub$0$anon3_Then$1_correct)))
(let ((inline$$Sub$0$anon3_Else_correct  (=> (<= 1 |inline$$1_Vector_length'#0'$0$l@1|) (=> (and (and (= inline$$Sub$0$dst@1 (- |inline$$1_Vector_length'#0'$0$l@1| 1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@1))) (and (=> (= (ControlFlow 0 51046) 52438) anon22_Then_correct) (=> (= (ControlFlow 0 51046) 51552) anon22_Else_correct))))))
(let ((anon21_Else_correct  (=> (and (and (not $t18@0) (|$IsValid'u64'| 0)) (and (= 0 0) (|$IsValid'u64'| 1))) (and (=> (= (ControlFlow 0 51102) 51094) inline$$Sub$0$anon3_Then_correct) (=> (= (ControlFlow 0 51102) 51046) inline$$Sub$0$anon3_Else_correct)))))
(let ((anon21_Then_correct  (=> $t18@0 (=> (and (and (= |$temp_0'vec'#0''@1| (|v#$Mutation_18795| _$t0)) (= |$temp_0'vec'#0''@1| |$temp_0'vec'#0''@1|)) (and (= $t0@1 _$t0) (= (ControlFlow 0 52452) 51639))) L8_correct))))
(let ((anon20_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_length'#0'$0$l@1| |inline$$1_Vector_length'#0'$0$l@1|)) (and (|$IsValid'u64'| 0) (= $t18@0 (= |inline$$1_Vector_length'#0'$0$l@1| 0)))) (and (=> (= (ControlFlow 0 50939) 52452) anon21_Then_correct) (=> (= (ControlFlow 0 50939) 51102) anon21_Else_correct)))))
(let ((anon20_Then_correct true))
(let ((|inline$$1_Vector_length'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'#0'$0$l@1| (|l#Vec_18150| $t14@0)) (and (=> (= (ControlFlow 0 50905) 52466) anon20_Then_correct) (=> (= (ControlFlow 0 50905) 50939) anon20_Else_correct)))))
(let ((anon0$1_correct  (=> (and (and (and (and (= (|l#$Mutation_18795| _$t0) ($Param 0)) (|$IsValid'vec'#0''| (|v#$Mutation_18795| _$t0))) (and (= $t4@0 (|v#$Mutation_18795| _$t0)) (= $t5@0 (|v#$Mutation_18795| _$t0)))) (and (and (= $t6@0 (|v#$Mutation_18795| _$t0)) (= $t7@0 (|v#$Mutation_18795| _$t0))) (and (= $t8@0 (|v#$Mutation_18795| _$t0)) (= $t9@0 (|v#$Mutation_18795| _$t0))))) (and (and (and (= $t10@0 (|v#$Mutation_18795| _$t0)) (= $t11@0 (|v#$Mutation_18795| _$t0))) (and (= $t12@0 (|v#$Mutation_18795| _$t0)) (= $t13@0 (|v#$Mutation_18795| _$t0)))) (and (and (= |$temp_0'vec'#0''@0| (|v#$Mutation_18795| _$t0)) (= |$temp_0'vec'#0''@0| |$temp_0'vec'#0''@0|)) (and (= $t14@0 (|v#$Mutation_18795| _$t0)) (= (ControlFlow 0 50911) 50905))))) |inline$$1_Vector_length'#0'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (ControlFlow 0 63691) 50911) anon0$1_correct)))
anon0_correct)))))))))))))))))))))))))))))))))))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_18150 0)) (((Vec_18150 (|v#Vec_18150| |T@[Int]#0|) (|l#Vec_18150| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_21435 0)) ((($Mutation_21435 (|l#$Mutation_21435| T@$Location) (|p#$Mutation_21435| T@Vec_1349) (|v#$Mutation_21435| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_19810 0)) ((($Mutation_19810 (|l#$Mutation_19810| T@$Location) (|p#$Mutation_19810| T@Vec_1349) (|v#$Mutation_19810| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18795 0)) ((($Mutation_18795 (|l#$Mutation_18795| T@$Location) (|p#$Mutation_18795| T@Vec_1349) (|v#$Mutation_18795| T@Vec_18150) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_18150 T@Vec_18150) Bool)
(declare-fun InRangeVec_14752 (T@Vec_18150 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_18150) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_18150 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun IndexOfVec_18150 (T@Vec_18150 |T@#0|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |verifyvectordefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectordefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectordefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectordefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectordefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectordefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_18150) (v2 T@Vec_18150) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_18150| v1) (|l#Vec_18150| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14752 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_18150| v2) i@@0)))
 :qid |verifyvectordefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |verifyvectordefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_18150) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_18150| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14752 v@@4 i@@1) true)
 :qid |verifyvectordefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |verifyvectordefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_18150) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14752 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@3) e))
 :qid |verifyvectordefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14752 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) j) e)))
 :qid |verifyvectordefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |verifyvectordefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |verifyvectordefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |verifyvectordefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |verifyvectordefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |verifyvectordefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |verifyvectordefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |verifyvectordefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |verifyvectordefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |verifyvectordefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |verifyvectordefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectordefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectordefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_18150) (i@@8 Int) ) (! (= (InRangeVec_14752 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_18150| v@@8))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14752 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (i@@9 Int) ) (! (= (InRangeVec_4118 v@@9 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_1349| v@@9))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@9 i@@9))
)))
(assert (forall ((v@@10 T@Vec_18150) (e@@1 |T@#0|) ) (! (let ((i@@10 (IndexOfVec_18150 v@@10 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_14752 v@@10 i@@11) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@11) e@@1))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_14752 v@@10 i@@10) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) j@@1) e@@1)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_18150 v@@10 e@@1))
)))
(assert (forall ((v@@11 T@Vec_1349) (e@@2 Int) ) (! (let ((i@@12 (IndexOfVec_1349 v@@11 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_4118 v@@11 i@@13) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@13) e@@2))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_4118 v@@11 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) j@@2) e@@2)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@11 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |verifyvectordefaultz3bpl.275:54|
 :skolemid |74|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@15 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@15) (|Select__T@[Int]#0_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |75|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@16 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |76|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@3 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@3) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |77|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |78|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |79|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]#0|) (|l#3@@5| Int) (|l#4@@5| |T@#0|) (k Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]#0_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |verifyvectordefaultz3bpl.90:14|
 :skolemid |81|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () T@Vec_18150)
(declare-fun |inline$$1_Vector_push_back'#0'$0$m'@1| () T@$Mutation_18795)
(declare-fun _$t0 () |T@#0|)
(declare-fun $t3@0 () T@$Mutation_18795)
(declare-fun |Store__T@[Int]#0_| (|T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (forall ( ( ?x0 |T@[Int]#0|) ( ?x1 Int) ( ?x2 |T@#0|)) (! (= (|Select__T@[Int]#0_| (|Store__T@[Int]#0_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]#0|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@#0|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]#0_| (|Store__T@[Int]#0_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]#0_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Vector_empty'#0'$0$v@1| () T@Vec_18150)
(declare-fun MapConstVec_4347 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_4347 () Int)
(declare-fun MapConstVec_14772 (|T@#0|) |T@[Int]#0|)
(declare-fun DefaultVecElem_14772 () |T@#0|)
(declare-fun $t3 () T@$Mutation_18795)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_singleton$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 65188) (let ((anon7_Else_correct  (=> (not false) (=> (and (= $t1@0 (|v#$Mutation_18795| |inline$$1_Vector_push_back'#0'$0$m'@1|)) (= $t1@0 $t1@0)) (and (=> (= (ControlFlow 0 52837) (- 0 65376)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 52837) (- 0 65383)) (= (|l#Vec_18150| $t1@0) 1)) (=> (= (|l#Vec_18150| $t1@0) 1) (=> (= (ControlFlow 0 52837) (- 0 65393)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| $t1@0) 0) _$t0))))))))))
(let ((anon7_Then_correct true))
(let ((|inline$$1_Vector_push_back'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'#0'$0$m'@1| ($Mutation_18795 (|l#$Mutation_18795| $t3@0) (|p#$Mutation_18795| $t3@0) (let ((l (|l#Vec_18150| (|v#$Mutation_18795| $t3@0))))
(Vec_18150 (|Store__T@[Int]#0_| (|v#Vec_18150| (|v#$Mutation_18795| $t3@0)) l _$t0) (+ l 1))))) (and (=> (= (ControlFlow 0 52777) 52851) anon7_Then_correct) (=> (= (ControlFlow 0 52777) 52837) anon7_Else_correct)))))
(let ((anon6_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_empty'#0'$0$v@1| |inline$$1_Vector_empty'#0'$0$v@1|)) (and (= $t3@0 ($Mutation_18795 ($Local 1) (Vec_1349 (MapConstVec_4347 DefaultVecElem_4347) 0) |inline$$1_Vector_empty'#0'$0$v@1|)) (= (ControlFlow 0 52783) 52777))) |inline$$1_Vector_push_back'#0'$0$anon0_correct|)))
(let ((anon6_Then_correct true))
(let ((|inline$$1_Vector_empty'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'#0'$0$v@1| (Vec_18150 (MapConstVec_14772 DefaultVecElem_14772) 0)) (and (=> (= (ControlFlow 0 52694) 52875) anon6_Then_correct) (=> (= (ControlFlow 0 52694) 52783) anon6_Else_correct)))))
(let ((anon0$1_correct  (=> (and (= _$t0 _$t0) (= (ControlFlow 0 52700) 52694)) |inline$$1_Vector_empty'#0'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (|l#Vec_1349| (|p#$Mutation_18795| $t3)) 0) (= (ControlFlow 0 52656) 52700)) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 65188) 52656) anon0_correct)))
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
(declare-sort |T@#0| 0)
(declare-sort |T@[Int]#0| 0)
(declare-datatypes ((T@Vec_18150 0)) (((Vec_18150 (|v#Vec_18150| |T@[Int]#0|) (|l#Vec_18150| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4742 0)) ((($Mutation_4742 (|l#$Mutation_4742| T@$Location) (|p#$Mutation_4742| T@Vec_1349) (|v#$Mutation_4742| Int) ) ) ))
(declare-datatypes ((T@$Mutation_21435 0)) ((($Mutation_21435 (|l#$Mutation_21435| T@$Location) (|p#$Mutation_21435| T@Vec_1349) (|v#$Mutation_21435| T@Vec_1349) ) ) ))
(declare-datatypes ((T@$Mutation_19810 0)) ((($Mutation_19810 (|l#$Mutation_19810| T@$Location) (|p#$Mutation_19810| T@Vec_1349) (|v#$Mutation_19810| |T@#0|) ) ) ))
(declare-datatypes ((T@$Mutation_18795 0)) ((($Mutation_18795 (|l#$Mutation_18795| T@$Location) (|p#$Mutation_18795| T@Vec_1349) (|v#$Mutation_18795| T@Vec_18150) ) ) ))
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
(declare-fun |$IsEqual'vec'#0''| (T@Vec_18150 T@Vec_18150) Bool)
(declare-fun InRangeVec_14752 (T@Vec_18150 Int) Bool)
(declare-fun |Select__T@[Int]#0_| (|T@[Int]#0| Int) |T@#0|)
(declare-fun |$IsValid'vec'#0''| (T@Vec_18150) Bool)
(declare-fun |$IndexOfVec'#0'| (T@Vec_18150 |T@#0|) Int)
(declare-fun |$IsEqual'vec'u8''| (T@Vec_1349 T@Vec_1349) Bool)
(declare-fun InRangeVec_4118 (T@Vec_1349 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_1349) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_1349 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Hash_sha3 (T@Vec_1349) T@Vec_1349)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_1349) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_1349 T@Vec_1349 T@Vec_1349) Bool)
(declare-fun IndexOfVec_18150 (T@Vec_18150 |T@#0|) Int)
(declare-fun IndexOfVec_1349 (T@Vec_1349 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#3| (Int Int |T@[Int]#0| Int Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]#0| |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(declare-fun |lambda#5| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#6| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#7| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#8| (Int Int |T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |verifyvectordefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |verifyvectordefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |verifyvectordefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |verifyvectordefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |verifyvectordefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |verifyvectordefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |verifyvectordefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_18150) (v2 T@Vec_18150) ) (! (= (|$IsEqual'vec'#0''| v1 v2)  (and (= (|l#Vec_18150| v1) (|l#Vec_18150| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_14752 v1 i@@0) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v1) i@@0) (|Select__T@[Int]#0_| (|v#Vec_18150| v2) i@@0)))
 :qid |verifyvectordefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |verifyvectordefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'#0''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_18150) ) (! (= (|$IsValid'vec'#0''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_18150| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_14752 v@@4 i@@1) true)
 :qid |verifyvectordefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |verifyvectordefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'#0''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_18150) (e |T@#0|) ) (! (let ((i@@2 (|$IndexOfVec'#0'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_14752 v@@5 i@@3)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@3) e))
 :qid |verifyvectordefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_14752 v@@5 i@@2)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@5) j) e)))
 :qid |verifyvectordefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |verifyvectordefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'#0'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_1349) (v2@@0 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_1349| v1@@0) (|l#Vec_1349| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_4118 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_1349| v2@@0) i@@4)))
 :qid |verifyvectordefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |verifyvectordefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_1349) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_1349| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_4118 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_1349| v@@6) i@@5)))
 :qid |verifyvectordefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |verifyvectordefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_1349) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_4118 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@7) e@@0))
 :qid |verifyvectordefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_4118 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@7) j@@0) e@@0)))
 :qid |verifyvectordefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |verifyvectordefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_1349) (v2@@1 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |verifyvectordefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_1349) (v2@@2 T@Vec_1349) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |verifyvectordefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_1349) (k2 T@Vec_1349) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |verifyvectordefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_1349) (s2 T@Vec_1349) (k1@@0 T@Vec_1349) (k2@@0 T@Vec_1349) (m1 T@Vec_1349) (m2 T@Vec_1349) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |verifyvectordefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_18150) (i@@8 Int) ) (! (= (InRangeVec_14752 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_18150| v@@8))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_14752 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_1349) (i@@9 Int) ) (! (= (InRangeVec_4118 v@@9 i@@9)  (and (>= i@@9 0) (< i@@9 (|l#Vec_1349| v@@9))))
 :qid |verifyvectordefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_4118 v@@9 i@@9))
)))
(assert (forall ((v@@10 T@Vec_18150) (e@@1 |T@#0|) ) (! (let ((i@@10 (IndexOfVec_18150 v@@10 e@@1)))
(ite  (not (exists ((i@@11 Int) ) (!  (and (InRangeVec_14752 v@@10 i@@11) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@11) e@@1))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@10 (- 0 1))  (and (and (InRangeVec_14752 v@@10 i@@10) (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) i@@10) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@10)) (not (= (|Select__T@[Int]#0_| (|v#Vec_18150| v@@10) j@@1) e@@1)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_18150 v@@10 e@@1))
)))
(assert (forall ((v@@11 T@Vec_1349) (e@@2 Int) ) (! (let ((i@@12 (IndexOfVec_1349 v@@11 e@@2)))
(ite  (not (exists ((i@@13 Int) ) (!  (and (InRangeVec_4118 v@@11 i@@13) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@13) e@@2))
 :qid |verifyvectordefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@12 (- 0 1))  (and (and (InRangeVec_4118 v@@11 i@@12) (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) i@@12) e@@2)) (forall ((j@@2 Int) ) (!  (=> (and (>= j@@2 0) (< j@@2 i@@12)) (not (= (|Select__T@[Int]Int_| (|v#Vec_1349| v@@11) j@@2) e@@2)))
 :qid |verifyvectordefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |verifyvectordefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_1349 v@@11 e@@2))
)))
(assert (forall ((|l#0| Bool) (i@@14 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14) |l#0|)
 :qid |verifyvectordefaultz3bpl.275:54|
 :skolemid |74|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@14))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]#0|) (|l#4| |T@[Int]#0|) (|l#5| Int) (|l#6| |T@#0|) (i@@15 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15) (ite  (and (>= i@@15 |l#0@@0|) (< i@@15 |l#1|)) (ite (< i@@15 |l#2|) (|Select__T@[Int]#0_| |l#3| i@@15) (|Select__T@[Int]#0_| |l#4| (- i@@15 |l#5|))) |l#6|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |75|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@15))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]#0|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| |T@#0|) (i@@16 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16) (ite  (and (<= |l#0@@1| i@@16) (< i@@16 |l#1@@0|)) (|Select__T@[Int]#0_| |l#2@@0| (- (- |l#3@@0| i@@16) |l#4@@0|)) |l#5@@0|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |76|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@16))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]#0|) (|l#4@@1| |T@[Int]#0|) (|l#5@@1| Int) (|l#6@@0| |T@#0|) (j@@3 Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3) (ite  (and (>= j@@3 |l#0@@2|) (< j@@3 |l#1@@1|)) (ite (< j@@3 |l#2@@1|) (|Select__T@[Int]#0_| |l#3@@1| j@@3) (|Select__T@[Int]#0_| |l#4@@1| (+ j@@3 |l#5@@1|))) |l#6@@0|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |77|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@3))
)))
(assert (forall ((|l#0@@3| Int) (|l#1@@2| Int) (|l#2@@2| Int) (|l#3@@2| |T@[Int]Int|) (|l#4@@2| |T@[Int]Int|) (|l#5@@2| Int) (|l#6@@1| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17) (ite  (and (>= i@@17 |l#0@@3|) (< i@@17 |l#1@@2|)) (ite (< i@@17 |l#2@@2|) (|Select__T@[Int]Int_| |l#3@@2| i@@17) (|Select__T@[Int]Int_| |l#4@@2| (- i@@17 |l#5@@2|))) |l#6@@1|))
 :qid |verifyvectordefaultz3bpl.73:19|
 :skolemid |78|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#5| |l#0@@3| |l#1@@2| |l#2@@2| |l#3@@2| |l#4@@2| |l#5@@2| |l#6@@1|) i@@17))
)))
(assert (forall ((|l#0@@4| Int) (|l#1@@3| Int) (|l#2@@3| |T@[Int]Int|) (|l#3@@3| Int) (|l#4@@3| Int) (|l#5@@3| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18) (ite  (and (<= |l#0@@4| i@@18) (< i@@18 |l#1@@3|)) (|Select__T@[Int]Int_| |l#2@@3| (- (- |l#3@@3| i@@18) |l#4@@3|)) |l#5@@3|))
 :qid |verifyvectordefaultz3bpl.82:30|
 :skolemid |79|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#6| |l#0@@4| |l#1@@3| |l#2@@3| |l#3@@3| |l#4@@3| |l#5@@3|) i@@18))
)))
(assert (forall ((|l#0@@5| Int) (|l#1@@4| Int) (|l#2@@4| Int) (|l#3@@4| |T@[Int]Int|) (|l#4@@4| |T@[Int]Int|) (|l#5@@4| Int) (|l#6@@2| Int) (j@@4 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4) (ite  (and (>= j@@4 |l#0@@5|) (< j@@4 |l#1@@4|)) (ite (< j@@4 |l#2@@4|) (|Select__T@[Int]Int_| |l#3@@4| j@@4) (|Select__T@[Int]Int_| |l#4@@4| (+ j@@4 |l#5@@4|))) |l#6@@2|))
 :qid |verifyvectordefaultz3bpl.63:20|
 :skolemid |80|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#7| |l#0@@5| |l#1@@4| |l#2@@4| |l#3@@4| |l#4@@4| |l#5@@4| |l#6@@2|) j@@4))
)))
(assert (forall ((|l#0@@6| Int) (|l#1@@5| Int) (|l#2@@5| |T@[Int]#0|) (|l#3@@5| Int) (|l#4@@5| |T@#0|) (k Int) ) (! (= (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k) (ite  (and (<= |l#0@@6| k) (< k |l#1@@5|)) (|Select__T@[Int]#0_| |l#2@@5| (+ |l#3@@5| k)) |l#4@@5|))
 :qid |verifyvectordefaultz3bpl.90:14|
 :skolemid |81|
 :pattern ( (|Select__T@[Int]#0_| (|lambda#8| |l#0@@6| |l#1@@5| |l#2@@5| |l#3@@5| |l#4@@5|) k))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t1 () Int)
(declare-fun $t3@0 () T@Vec_18150)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$e@2| () |T@#0|)
(declare-fun |$temp_0'vec'#0''@1| () T@Vec_18150)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$m'@2| () T@$Mutation_18795)
(declare-fun |Store__T@[Int]#0_| (|T@[Int]#0| Int |T@#0|) |T@[Int]#0|)
(assert (forall ( ( ?x0 |T@[Int]#0|) ( ?x1 Int) ( ?x2 |T@#0|)) (! (= (|Select__T@[Int]#0_| (|Store__T@[Int]#0_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]#0|) ( ?x1 Int) ( ?y1 Int) ( ?x2 |T@#0|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]#0_| (|Store__T@[Int]#0_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]#0_| ?x0 ?y1))) :weight 0)))
(declare-fun DefaultVecElem_14772 () |T@#0|)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$e@0| () |T@#0|)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$m'@0| () T@$Mutation_18795)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$len@1| () Int)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$e@1| () |T@#0|)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$v@1| () T@Vec_18150)
(declare-fun |inline$$1_Vector_pop_back'#0'$0$m'@1| () T@$Mutation_18795)
(declare-fun |inline$$1_Vector_swap'#0'$0$m'@2| () T@$Mutation_18795)
(declare-fun |inline$$1_Vector_swap'#0'$0$m'@0| () T@$Mutation_18795)
(declare-fun |inline$$1_Vector_swap'#0'$0$v@1| () T@Vec_18150)
(declare-fun inline$$Sub$0$dst@2 () Int)
(declare-fun |inline$$1_Vector_swap'#0'$0$m'@1| () T@$Mutation_18795)
(declare-fun _$t0 () T@$Mutation_18795)
(declare-fun inline$$Sub$0$dst@0 () Int)
(declare-fun |inline$$1_Vector_length'#0'$0$l@1| () Int)
(declare-fun inline$$Sub$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun $t4@0 () T@Vec_18150)
(declare-fun |$temp_0'vec'#0''@0| () T@Vec_18150)
(push 1)
(set-info :boogie-vc-id $42_VerifyVector_verify_swap_remove$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 65426) (let ((L2_correct  (=> (= (ControlFlow 0 53788) (- 0 66109)) (>= _$t1 (|l#Vec_18150| $t3@0)))))
(let ((anon13_Then_correct  (=> $abort_flag@2 (=> (and (= $abort_code@3 $abort_code@3) (= (ControlFlow 0 53772) 53788)) L2_correct))))
(let ((anon12_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 53802) 53788)) L2_correct))))
(let ((anon11_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 53816) 53788)) L2_correct))))
(let ((anon13_Else_correct  (=> (and (and (not $abort_flag@2) (= |inline$$1_Vector_pop_back'#0'$0$e@2| |inline$$1_Vector_pop_back'#0'$0$e@2|)) (and (= |$temp_0'vec'#0''@1| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|)) (= |$temp_0'vec'#0''@1| |$temp_0'vec'#0''@1|))) (and (=> (= (ControlFlow 0 53758) (- 0 66032)) (not (>= _$t1 (|l#Vec_18150| $t3@0)))) (=> (not (>= _$t1 (|l#Vec_18150| $t3@0))) (and (=> (= (ControlFlow 0 53758) (- 0 66043)) (= (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|)) (- (|l#Vec_18150| $t3@0) 1))) (=> (= (|l#Vec_18150| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|)) (- (|l#Vec_18150| $t3@0) 1)) (and (=> (= (ControlFlow 0 53758) (- 0 66060)) (|$IsEqual'vec'#0''| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|) (let ((m (|v#Vec_18150| (Vec_18150 (|Store__T@[Int]#0_| (|v#Vec_18150| $t3@0) _$t1 (|Select__T@[Int]#0_| (|v#Vec_18150| $t3@0) (- (|l#Vec_18150| $t3@0) 1))) (|l#Vec_18150| $t3@0)))))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 (- (|l#Vec_18150| $t3@0) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_18150| $t3@0) 1)))) m (|lb#$Range| ($Range 0 (- (|l#Vec_18150| $t3@0) 1))) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 (- (|l#Vec_18150| $t3@0) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_18150| $t3@0) 1)))) 0) 0 (- (|ub#$Range| ($Range 0 (- (|l#Vec_18150| $t3@0) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_18150| $t3@0) 1))))))))) (=> (|$IsEqual'vec'#0''| (|v#$Mutation_18795| |inline$$1_Vector_pop_back'#0'$0$m'@2|) (let ((m (|v#Vec_18150| (Vec_18150 (|Store__T@[Int]#0_| (|v#Vec_18150| $t3@0) _$t1 (|Select__T@[Int]#0_| (|v#Vec_18150| $t3@0) (- (|l#Vec_18150| $t3@0) 1))) (|l#Vec_18150| $t3@0)))))
(Vec_18150 (|lambda#8| 0 (- (|ub#$Range| ($Range 0 (- (|l#Vec_18150| $t3@0) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_18150| $t3@0) 1)))) m (|lb#$Range| ($Range 0 (- (|l#Vec_18150| $t3@0) 1))) DefaultVecElem_14772) (ite (< (- (|ub#$Range| ($Range 0 (- (|l#Vec_18150| $t3@0) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_18150| $t3@0) 1)))) 0) 0 (- (|ub#$Range| ($Range 0 (- (|l#Vec_18150| $t3@0) 1))) (|lb#$Range| ($Range 0 (- (|l#Vec_18150| $t3@0) 1)))))))) (=> (= (ControlFlow 0 53758) (- 0 66095)) (= (|Select__T@[Int]#0_| (|v#Vec_18150| $t3@0) _$t1) |inline$$1_Vector_pop_back'#0'$0$e@2|)))))))))))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_flag@2 true) (= $abort_code@3 $EXEC_FAILURE_CODE)) (and (= |inline$$1_Vector_pop_back'#0'$0$e@2| |inline$$1_Vector_pop_back'#0'$0$e@0|) (= |inline$$1_Vector_pop_back'#0'$0$m'@2| |inline$$1_Vector_pop_back'#0'$0$m'@0|))) (and (=> (= (ControlFlow 0 53638) 53772) anon13_Then_correct) (=> (= (ControlFlow 0 53638) 53758) anon13_Else_correct)))))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon3_Then_correct|  (=> (and (= |inline$$1_Vector_pop_back'#0'$0$len@1| 0) (= (ControlFlow 0 53636) 53638)) |inline$$1_Vector_pop_back'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon3_Else_correct|  (=> (not (= |inline$$1_Vector_pop_back'#0'$0$len@1| 0)) (=> (and (= |inline$$1_Vector_pop_back'#0'$0$e@1| (|Select__T@[Int]#0_| (|v#Vec_18150| |inline$$1_Vector_pop_back'#0'$0$v@1|) (- |inline$$1_Vector_pop_back'#0'$0$len@1| 1))) (= |inline$$1_Vector_pop_back'#0'$0$m'@1| ($Mutation_18795 (|l#$Mutation_18795| |inline$$1_Vector_swap'#0'$0$m'@2|) (|p#$Mutation_18795| |inline$$1_Vector_swap'#0'$0$m'@2|) (let ((l (- (|l#Vec_18150| |inline$$1_Vector_pop_back'#0'$0$v@1|) 1)))
(Vec_18150 (|Store__T@[Int]#0_| (|v#Vec_18150| |inline$$1_Vector_pop_back'#0'$0$v@1|) l DefaultVecElem_14772) l))))) (=> (and (and (= $abort_flag@2 $abort_flag@1) (= $abort_code@3 $abort_code@2)) (and (= |inline$$1_Vector_pop_back'#0'$0$e@2| |inline$$1_Vector_pop_back'#0'$0$e@1|) (= |inline$$1_Vector_pop_back'#0'$0$m'@2| |inline$$1_Vector_pop_back'#0'$0$m'@1|))) (and (=> (= (ControlFlow 0 53588) 53772) anon13_Then_correct) (=> (= (ControlFlow 0 53588) 53758) anon13_Else_correct)))))))
(let ((|inline$$1_Vector_pop_back'#0'$0$anon0_correct|  (=> (and (= |inline$$1_Vector_pop_back'#0'$0$v@1| (|v#$Mutation_18795| |inline$$1_Vector_swap'#0'$0$m'@2|)) (= |inline$$1_Vector_pop_back'#0'$0$len@1| (|l#Vec_18150| |inline$$1_Vector_pop_back'#0'$0$v@1|))) (and (=> (= (ControlFlow 0 53562) 53636) |inline$$1_Vector_pop_back'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 53562) 53588) |inline$$1_Vector_pop_back'#0'$0$anon3_Else_correct|)))))
(let ((anon12_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 53646) 53562)) |inline$$1_Vector_pop_back'#0'$0$anon0_correct|)))
(let ((|inline$$1_Vector_swap'#0'$0$anon3_Then$1_correct|  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= |inline$$1_Vector_swap'#0'$0$m'@2| |inline$$1_Vector_swap'#0'$0$m'@0|)) (and (=> (= (ControlFlow 0 53443) 53802) anon12_Then_correct) (=> (= (ControlFlow 0 53443) 53646) anon12_Else_correct))))))
(let ((|inline$$1_Vector_swap'#0'$0$anon3_Then_correct|  (=> (and (or (not (InRangeVec_14752 |inline$$1_Vector_swap'#0'$0$v@1| _$t1)) (not (InRangeVec_14752 |inline$$1_Vector_swap'#0'$0$v@1| inline$$Sub$0$dst@2))) (= (ControlFlow 0 53441) 53443)) |inline$$1_Vector_swap'#0'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'#0'$0$anon3_Else_correct|  (=> (not (or (not (InRangeVec_14752 |inline$$1_Vector_swap'#0'$0$v@1| _$t1)) (not (InRangeVec_14752 |inline$$1_Vector_swap'#0'$0$v@1| inline$$Sub$0$dst@2)))) (=> (and (and (= |inline$$1_Vector_swap'#0'$0$m'@1| ($Mutation_18795 (|l#$Mutation_18795| _$t0) (|p#$Mutation_18795| _$t0) (let ((m@@0 (|v#Vec_18150| |inline$$1_Vector_swap'#0'$0$v@1|)))
(Vec_18150 (|Store__T@[Int]#0_| (|Store__T@[Int]#0_| m@@0 _$t1 (|Select__T@[Int]#0_| m@@0 inline$$Sub$0$dst@2)) inline$$Sub$0$dst@2 (|Select__T@[Int]#0_| m@@0 _$t1)) (|l#Vec_18150| |inline$$1_Vector_swap'#0'$0$v@1|))))) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= |inline$$1_Vector_swap'#0'$0$m'@2| |inline$$1_Vector_swap'#0'$0$m'@1|))) (and (=> (= (ControlFlow 0 53381) 53802) anon12_Then_correct) (=> (= (ControlFlow 0 53381) 53646) anon12_Else_correct))))))
(let ((|inline$$1_Vector_swap'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_swap'#0'$0$v@1| (|v#$Mutation_18795| _$t0)) (and (=> (= (ControlFlow 0 53347) 53441) |inline$$1_Vector_swap'#0'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 53347) 53381) |inline$$1_Vector_swap'#0'$0$anon3_Else_correct|)))))
(let ((anon11_Else_correct  (=> (not $abort_flag@0) (=> (and (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@2) (= (ControlFlow 0 53449) 53347)) |inline$$1_Vector_swap'#0'$0$anon0_correct|))))
(let ((inline$$Sub$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@0)) (and (=> (= (ControlFlow 0 53213) 53816) anon11_Then_correct) (=> (= (ControlFlow 0 53213) 53449) anon11_Else_correct))))))
(let ((inline$$Sub$0$anon3_Then_correct  (=> (and (< |inline$$1_Vector_length'#0'$0$l@1| 1) (= (ControlFlow 0 53211) 53213)) inline$$Sub$0$anon3_Then$1_correct)))
(let ((inline$$Sub$0$anon3_Else_correct  (=> (<= 1 |inline$$1_Vector_length'#0'$0$l@1|) (=> (and (and (= inline$$Sub$0$dst@1 (- |inline$$1_Vector_length'#0'$0$l@1| 1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@1))) (and (=> (= (ControlFlow 0 53163) 53816) anon11_Then_correct) (=> (= (ControlFlow 0 53163) 53449) anon11_Else_correct))))))
(let ((anon10_Else_correct  (=> (and (not false) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 53219) 53211) inline$$Sub$0$anon3_Then_correct) (=> (= (ControlFlow 0 53219) 53163) inline$$Sub$0$anon3_Else_correct)))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_length'#0'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'#0'$0$l@1| (|l#Vec_18150| $t4@0)) (and (=> (= (ControlFlow 0 53062) 53830) anon10_Then_correct) (=> (= (ControlFlow 0 53062) 53219) anon10_Else_correct)))))
(let ((anon0$1_correct  (=> (= (|l#$Mutation_18795| _$t0) ($Param 0)) (=> (and (and (and (|$IsValid'vec'#0''| (|v#$Mutation_18795| _$t0)) (|$IsValid'u64'| _$t1)) (and (= $t3@0 (|v#$Mutation_18795| _$t0)) (= |$temp_0'vec'#0''@0| (|v#$Mutation_18795| _$t0)))) (and (and (= |$temp_0'vec'#0''@0| |$temp_0'vec'#0''@0|) (= _$t1 _$t1)) (and (= $t4@0 (|v#$Mutation_18795| _$t0)) (= (ControlFlow 0 53068) 53062)))) |inline$$1_Vector_length'#0'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (ControlFlow 0 65426) 53068) anon0$1_correct)))
anon0_correct))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
