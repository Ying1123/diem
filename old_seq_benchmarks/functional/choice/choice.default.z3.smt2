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
(declare-datatypes ((T@$42_TestSome_R 0)) ((($42_TestSome_R (|$x#$42_TestSome_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestSome_R| 0)
(declare-datatypes ((T@$Memory_13737 0)) ((($Memory_13737 (|domain#$Memory_13737| |T@[Int]Bool|) (|contents#$Memory_13737| |T@[Int]$42_TestSome_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10238 0)) ((($Mutation_10238 (|l#$Mutation_10238| T@$Location) (|p#$Mutation_10238| T@Vec_2977) (|v#$Mutation_10238| T@Vec_2977) ) ) ))
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
(declare-fun |$IsValid'$42_TestSome_R'| (T@$42_TestSome_R) Bool)
(declare-fun $choice_2 () Int)
(declare-fun $choice_3 () Int)
(declare-fun $choice_0 (Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |Select__T@[Int]$42_TestSome_R_| (|T@[Int]$42_TestSome_R| Int) T@$42_TestSome_R)
(declare-fun $choice_1 (T@$Memory_13737) Int)
(declare-fun $choice_4 (T@Vec_2977) Int)
(declare-fun $choice_5 (T@Vec_2977) Int)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |choicedefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |choicedefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |choicedefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |choicedefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |choicedefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |choicedefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |choicedefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |choicedefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u64''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |choicedefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |choicedefaultz3bpl.613:29|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u64''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |choicedefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |choicedefaultz3bpl.619:29|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |choicedefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |choicedefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |choicedefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_2977| v1@@0) (|l#Vec_2977| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_2977 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_2977| v2@@0) i@@4)))
 :qid |choicedefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |choicedefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_2977 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@6) i@@5)))
 :qid |choicedefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |choicedefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_2977 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@7) e@@0))
 :qid |choicedefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_2977 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |choicedefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |choicedefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |choicedefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_2977) (v2@@2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |choicedefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |choicedefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |choicedefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestSome_R) ) (! (= (|$IsValid'$42_TestSome_R'| s) (|$IsValid'u64'| (|$x#$42_TestSome_R| s)))
 :qid |choicedefaultz3bpl.1118:35|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestSome_R'| s))
)))
(assert  (=> (exists ((x Int) ) (!  (and (|$IsValid'u64'| x) (>= x 4))
 :qid |choicedefaultz3bpl.1736:13|
 :skolemid |38|
)) (let ((x@@0 $choice_2))
 (and (|$IsValid'u64'| x@@0) (>= x@@0 4)))))
(assert  (=> (exists ((x@@1 Int) ) (!  (and (|$IsValid'u64'| x@@1) (and (>= x@@1 4) (<= x@@1 5)))
 :qid |choicedefaultz3bpl.1747:13|
 :skolemid |39|
)) (let ((x@@2 $choice_3))
 (and (|$IsValid'u64'| x@@2) (and (>= x@@2 4) (<= x@@2 5))))))
(assert (forall ((x@@3 Int) ) (!  (=> (|$IsValid'u64'| x@@3) (=> (exists ((y Int) ) (!  (and (|$IsValid'u64'| y) (>= y x@@3))
 :qid |choicedefaultz3bpl.1758:13|
 :skolemid |40|
)) (let ((y@@0 ($choice_0 x@@3)))
 (and (|$IsValid'u64'| y@@0) (>= y@@0 x@@3)))))
 :qid |choicedefaultz3bpl.1757:15|
 :skolemid |41|
)))
(assert (forall (($42_TestSome_R_$memory T@$Memory_13737) ) (!  (=> (exists ((a Int) ) (!  (and (|$IsValid'address'| a) (and (|Select__T@[Int]Bool_| (|domain#$Memory_13737| $42_TestSome_R_$memory) a) (= (|$x#$42_TestSome_R| (|Select__T@[Int]$42_TestSome_R_| (|contents#$Memory_13737| $42_TestSome_R_$memory) a)) 2)))
 :qid |choicedefaultz3bpl.1768:72|
 :skolemid |42|
)) (let ((a@@0 ($choice_1 $42_TestSome_R_$memory)))
 (and (|$IsValid'address'| a@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_13737| $42_TestSome_R_$memory) a@@0) (= (|$x#$42_TestSome_R| (|Select__T@[Int]$42_TestSome_R_| (|contents#$Memory_13737| $42_TestSome_R_$memory) a@@0)) 2)))))
 :qid |choicedefaultz3bpl.1768:15|
 :skolemid |43|
)))
(assert (forall (($t8 T@Vec_2977) ) (!  (=> (|$IsValid'vec'u64''| $t8) (=> (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'num'| i@@8) ($InRange ($Range 0 (|l#Vec_2977| $t8)) i@@8)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t8) i@@8) 2))
 :qid |choicedefaultz3bpl.1779:13|
 :skolemid |44|
)) (let ((i@@9 ($choice_4 $t8)))
 (and (and (and (|$IsValid'num'| i@@9) ($InRange ($Range 0 (|l#Vec_2977| $t8)) i@@9)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t8) i@@9) 2)) (let (($$c i@@9))
(forall ((i@@10 Int) ) (!  (=> (< i@@10 $$c) (not (and (and (|$IsValid'num'| i@@10) ($InRange ($Range 0 (|l#Vec_2977| $t8)) i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t8) i@@10) 2))))
 :qid |choicedefaultz3bpl.1781:32|
 :skolemid |45|
)))))))
 :qid |choicedefaultz3bpl.1778:15|
 :skolemid |46|
)))
(assert (forall (($t9 T@Vec_2977) ) (!  (=> (|$IsValid'vec'u64''| $t9) (=> (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'num'| i@@11) ($InRange ($Range 0 (|l#Vec_2977| $t9)) i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t9) i@@11) 2))
 :qid |choicedefaultz3bpl.1790:13|
 :skolemid |47|
)) (let ((i@@12 ($choice_5 $t9)))
 (and (and (|$IsValid'num'| i@@12) ($InRange ($Range 0 (|l#Vec_2977| $t9)) i@@12)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t9) i@@12) 2)))))
 :qid |choicedefaultz3bpl.1789:15|
 :skolemid |48|
)))
(assert (forall ((v@@8 T@Vec_2977) (i@@13 Int) ) (! (= (InRangeVec_2977 v@@8 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_2977| v@@8))))
 :qid |choicedefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@8 i@@13))
)))
(assert (forall ((v@@9 T@Vec_2977) (e@@1 Int) ) (! (let ((i@@14 (IndexOfVec_2977 v@@9 e@@1)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_2977 v@@9 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@15) e@@1))
 :qid |choicedefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_2977 v@@9 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@14) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) j@@1) e@@1)))
 :qid |choicedefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |choicedefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@9 e@@1))
)))
(assert (forall ((|l#0| Bool) (i@@16 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@16) |l#0|)
 :qid |choicedefaultz3bpl.275:54|
 :skolemid |49|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@16))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@17) (ite  (and (>= i@@17 |l#0@@0|) (< i@@17 |l#1|)) (ite (< i@@17 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@17) (|Select__T@[Int]Int_| |l#4| (- i@@17 |l#5|))) |l#6|))
 :qid |choicedefaultz3bpl.73:19|
 :skolemid |50|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@17))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@18) (ite  (and (<= |l#0@@1| i@@18) (< i@@18 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@18) |l#4@@0|)) |l#5@@0|))
 :qid |choicedefaultz3bpl.82:30|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@18))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@2 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2) (ite  (and (>= j@@2 |l#0@@2|) (< j@@2 |l#1@@1|)) (ite (< j@@2 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@2) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@2 |l#5@@1|))) |l#6@@0|))
 :qid |choicedefaultz3bpl.63:20|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t4 () Int)
(declare-fun _$t1 () Int)
(declare-fun $abort_code@2 () Int)
(declare-fun $42_TestSome_R_$memory@1 () T@$Memory_13737)
(declare-fun $42_TestSome_R_$memory@2 () T@$Memory_13737)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$42_TestSome_R_| (|T@[Int]$42_TestSome_R| Int T@$42_TestSome_R) |T@[Int]$42_TestSome_R|)
(assert (forall ( ( ?x0 |T@[Int]$42_TestSome_R|) ( ?x1 Int) ( ?x2 T@$42_TestSome_R)) (! (= (|Select__T@[Int]$42_TestSome_R_| (|Store__T@[Int]$42_TestSome_R_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestSome_R|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$42_TestSome_R)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestSome_R_| (|Store__T@[Int]$42_TestSome_R_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestSome_R_| ?x0 ?y1))) :weight 0)))
(declare-fun $t9@0 () T@$42_TestSome_R)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $42_TestSome_R_$memory@@0 () T@$Memory_13737)
(declare-fun _$t0 () Int)
(declare-fun $42_TestSome_R_$memory@0 () T@$Memory_13737)
(declare-fun $t6@0 () T@$42_TestSome_R)
(declare-fun $abort_code@0 () Int)
(declare-fun $t2 () Int)
(declare-fun $t3 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestSome_populate_R$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 18955) (let ((anon15_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 16395) (- 0 19296))) (= $t4 _$t1))))
(let ((anon15_Then_correct true))
(let ((anon14_Then$1_correct  (=> (and (= $abort_flag@1 true) (= $abort_code@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 16465) 16409) anon15_Then_correct) (=> (= (ControlFlow 0 16465) 16395) anon15_Else_correct)))))
(let ((anon14_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_13737| $42_TestSome_R_$memory@1) _$t1) (= (ControlFlow 0 16463) 16465)) anon14_Then$1_correct)))
(let ((anon14_Else_correct  (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_13737| $42_TestSome_R_$memory@1) _$t1)) (= $42_TestSome_R_$memory@2 ($Memory_13737 (|Store__T@[Int]Bool_| (|domain#$Memory_13737| $42_TestSome_R_$memory@1) _$t1 true) (|Store__T@[Int]$42_TestSome_R_| (|contents#$Memory_13737| $42_TestSome_R_$memory@1) _$t1 $t9@0)))) (and (= $abort_flag@1 $abort_flag@0) (= $abort_code@2 $abort_code@1))) (and (=> (= (ControlFlow 0 16375) 16409) anon15_Then_correct) (=> (= (ControlFlow 0 16375) 16395) anon15_Else_correct)))))
(let ((anon13_Else_correct  (=> (not $abort_flag@0) (=> (and (|$IsValid'u64'| 2) (= $t9@0 ($42_TestSome_R 2))) (and (=> (= (ControlFlow 0 16357) 16463) anon14_Then_correct) (=> (= (ControlFlow 0 16357) 16375) anon14_Else_correct))))))
(let ((anon13_Then_correct true))
(let ((anon12_Then$1_correct  (=> (= $42_TestSome_R_$memory@1 $42_TestSome_R_$memory@@0) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 16529) 16479) anon13_Then_correct) (=> (= (ControlFlow 0 16529) 16357) anon13_Else_correct))))))
(let ((anon12_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_13737| $42_TestSome_R_$memory@@0) _$t0) (= (ControlFlow 0 16527) 16529)) anon12_Then$1_correct)))
(let ((anon12_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_13737| $42_TestSome_R_$memory@@0) _$t0)) (=> (and (and (= $42_TestSome_R_$memory@0 ($Memory_13737 (|Store__T@[Int]Bool_| (|domain#$Memory_13737| $42_TestSome_R_$memory@@0) _$t0 true) (|Store__T@[Int]$42_TestSome_R_| (|contents#$Memory_13737| $42_TestSome_R_$memory@@0) _$t0 $t6@0))) (= $42_TestSome_R_$memory@1 $42_TestSome_R_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 16337) 16479) anon13_Then_correct) (=> (= (ControlFlow 0 16337) 16357) anon13_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (|$IsValid'address'| _$t1) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestSome_R_| (|contents#$Memory_13737| $42_TestSome_R_$memory@@0) $a_0)))
(|$IsValid'$42_TestSome_R'| $rsc))
 :qid |choicedefaultz3bpl.1156:20|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]$42_TestSome_R_| (|contents#$Memory_13737| $42_TestSome_R_$memory@@0) $a_0))
))) (=> (and (and (and (= $t2 _$t0) (= $t3 _$t1)) (and (= $t4 ($choice_1 $42_TestSome_R_$memory@@0)) (forall ((a@@1 Int) ) (!  (=> (|$IsValid'address'| a@@1) (not (|Select__T@[Int]Bool_| (|domain#$Memory_13737| $42_TestSome_R_$memory@@0) a@@1)))
 :qid |choicedefaultz3bpl.1173:20|
 :skolemid |37|
)))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (|$IsValid'u64'| 1) (= $t6@0 ($42_TestSome_R 1))))) (and (=> (= (ControlFlow 0 16319) 16527) anon12_Then_correct) (=> (= (ControlFlow 0 16319) 16337) anon12_Else_correct)))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 18955) 16319) anon0$1_correct)))
anon0_correct)))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 18955)))
(get-value ((ControlFlow 0 16319)))
(get-value ((ControlFlow 0 16337)))
(get-value ((ControlFlow 0 16357)))
(get-value ((ControlFlow 0 16375)))
(get-value ((ControlFlow 0 16395)))
(assert (not (= (ControlFlow 0 16395) (- 19296))))
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
(declare-datatypes ((T@$42_TestSome_R 0)) ((($42_TestSome_R (|$x#$42_TestSome_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestSome_R| 0)
(declare-datatypes ((T@$Memory_13737 0)) ((($Memory_13737 (|domain#$Memory_13737| |T@[Int]Bool|) (|contents#$Memory_13737| |T@[Int]$42_TestSome_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10238 0)) ((($Mutation_10238 (|l#$Mutation_10238| T@$Location) (|p#$Mutation_10238| T@Vec_2977) (|v#$Mutation_10238| T@Vec_2977) ) ) ))
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
(declare-fun |$IsValid'$42_TestSome_R'| (T@$42_TestSome_R) Bool)
(declare-fun $choice_2 () Int)
(declare-fun $choice_3 () Int)
(declare-fun $choice_0 (Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |Select__T@[Int]$42_TestSome_R_| (|T@[Int]$42_TestSome_R| Int) T@$42_TestSome_R)
(declare-fun $choice_1 (T@$Memory_13737) Int)
(declare-fun $choice_4 (T@Vec_2977) Int)
(declare-fun $choice_5 (T@Vec_2977) Int)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |choicedefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |choicedefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |choicedefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |choicedefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |choicedefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |choicedefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |choicedefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |choicedefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u64''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |choicedefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |choicedefaultz3bpl.613:29|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u64''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |choicedefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |choicedefaultz3bpl.619:29|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |choicedefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |choicedefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |choicedefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_2977| v1@@0) (|l#Vec_2977| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_2977 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_2977| v2@@0) i@@4)))
 :qid |choicedefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |choicedefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_2977 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@6) i@@5)))
 :qid |choicedefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |choicedefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_2977 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@7) e@@0))
 :qid |choicedefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_2977 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |choicedefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |choicedefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |choicedefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_2977) (v2@@2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |choicedefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |choicedefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |choicedefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestSome_R) ) (! (= (|$IsValid'$42_TestSome_R'| s) (|$IsValid'u64'| (|$x#$42_TestSome_R| s)))
 :qid |choicedefaultz3bpl.1118:35|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestSome_R'| s))
)))
(assert  (=> (exists ((x Int) ) (!  (and (|$IsValid'u64'| x) (>= x 4))
 :qid |choicedefaultz3bpl.1736:13|
 :skolemid |38|
)) (let ((x@@0 $choice_2))
 (and (|$IsValid'u64'| x@@0) (>= x@@0 4)))))
(assert  (=> (exists ((x@@1 Int) ) (!  (and (|$IsValid'u64'| x@@1) (and (>= x@@1 4) (<= x@@1 5)))
 :qid |choicedefaultz3bpl.1747:13|
 :skolemid |39|
)) (let ((x@@2 $choice_3))
 (and (|$IsValid'u64'| x@@2) (and (>= x@@2 4) (<= x@@2 5))))))
(assert (forall ((x@@3 Int) ) (!  (=> (|$IsValid'u64'| x@@3) (=> (exists ((y Int) ) (!  (and (|$IsValid'u64'| y) (>= y x@@3))
 :qid |choicedefaultz3bpl.1758:13|
 :skolemid |40|
)) (let ((y@@0 ($choice_0 x@@3)))
 (and (|$IsValid'u64'| y@@0) (>= y@@0 x@@3)))))
 :qid |choicedefaultz3bpl.1757:15|
 :skolemid |41|
)))
(assert (forall (($42_TestSome_R_$memory T@$Memory_13737) ) (!  (=> (exists ((a Int) ) (!  (and (|$IsValid'address'| a) (and (|Select__T@[Int]Bool_| (|domain#$Memory_13737| $42_TestSome_R_$memory) a) (= (|$x#$42_TestSome_R| (|Select__T@[Int]$42_TestSome_R_| (|contents#$Memory_13737| $42_TestSome_R_$memory) a)) 2)))
 :qid |choicedefaultz3bpl.1768:72|
 :skolemid |42|
)) (let ((a@@0 ($choice_1 $42_TestSome_R_$memory)))
 (and (|$IsValid'address'| a@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_13737| $42_TestSome_R_$memory) a@@0) (= (|$x#$42_TestSome_R| (|Select__T@[Int]$42_TestSome_R_| (|contents#$Memory_13737| $42_TestSome_R_$memory) a@@0)) 2)))))
 :qid |choicedefaultz3bpl.1768:15|
 :skolemid |43|
)))
(assert (forall (($t8 T@Vec_2977) ) (!  (=> (|$IsValid'vec'u64''| $t8) (=> (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'num'| i@@8) ($InRange ($Range 0 (|l#Vec_2977| $t8)) i@@8)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t8) i@@8) 2))
 :qid |choicedefaultz3bpl.1779:13|
 :skolemid |44|
)) (let ((i@@9 ($choice_4 $t8)))
 (and (and (and (|$IsValid'num'| i@@9) ($InRange ($Range 0 (|l#Vec_2977| $t8)) i@@9)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t8) i@@9) 2)) (let (($$c i@@9))
(forall ((i@@10 Int) ) (!  (=> (< i@@10 $$c) (not (and (and (|$IsValid'num'| i@@10) ($InRange ($Range 0 (|l#Vec_2977| $t8)) i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t8) i@@10) 2))))
 :qid |choicedefaultz3bpl.1781:32|
 :skolemid |45|
)))))))
 :qid |choicedefaultz3bpl.1778:15|
 :skolemid |46|
)))
(assert (forall (($t9 T@Vec_2977) ) (!  (=> (|$IsValid'vec'u64''| $t9) (=> (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'num'| i@@11) ($InRange ($Range 0 (|l#Vec_2977| $t9)) i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t9) i@@11) 2))
 :qid |choicedefaultz3bpl.1790:13|
 :skolemid |47|
)) (let ((i@@12 ($choice_5 $t9)))
 (and (and (|$IsValid'num'| i@@12) ($InRange ($Range 0 (|l#Vec_2977| $t9)) i@@12)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t9) i@@12) 2)))))
 :qid |choicedefaultz3bpl.1789:15|
 :skolemid |48|
)))
(assert (forall ((v@@8 T@Vec_2977) (i@@13 Int) ) (! (= (InRangeVec_2977 v@@8 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_2977| v@@8))))
 :qid |choicedefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@8 i@@13))
)))
(assert (forall ((v@@9 T@Vec_2977) (e@@1 Int) ) (! (let ((i@@14 (IndexOfVec_2977 v@@9 e@@1)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_2977 v@@9 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@15) e@@1))
 :qid |choicedefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_2977 v@@9 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@14) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) j@@1) e@@1)))
 :qid |choicedefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |choicedefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@9 e@@1))
)))
(assert (forall ((|l#0| Bool) (i@@16 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@16) |l#0|)
 :qid |choicedefaultz3bpl.275:54|
 :skolemid |49|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@16))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@17) (ite  (and (>= i@@17 |l#0@@0|) (< i@@17 |l#1|)) (ite (< i@@17 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@17) (|Select__T@[Int]Int_| |l#4| (- i@@17 |l#5|))) |l#6|))
 :qid |choicedefaultz3bpl.73:19|
 :skolemid |50|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@17))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@18) (ite  (and (<= |l#0@@1| i@@18) (< i@@18 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@18) |l#4@@0|)) |l#5@@0|))
 :qid |choicedefaultz3bpl.82:30|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@18))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@2 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2) (ite  (and (>= j@@2 |l#0@@2|) (< j@@2 |l#1@@1|)) (ite (< j@@2 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@2) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@2 |l#5@@1|))) |l#6@@0|))
 :qid |choicedefaultz3bpl.63:20|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $42_TestSome_simple$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 19328) (let ((anon0$1_correct  (=> (|$IsValid'u64'| 4) (=> (and (= 4 4) (= (ControlFlow 0 16627) (- 0 19368))) (<= 4 $choice_2)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 19328) 16627) anon0$1_correct)))
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
(declare-datatypes ((T@$42_TestSome_R 0)) ((($42_TestSome_R (|$x#$42_TestSome_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestSome_R| 0)
(declare-datatypes ((T@$Memory_13737 0)) ((($Memory_13737 (|domain#$Memory_13737| |T@[Int]Bool|) (|contents#$Memory_13737| |T@[Int]$42_TestSome_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10238 0)) ((($Mutation_10238 (|l#$Mutation_10238| T@$Location) (|p#$Mutation_10238| T@Vec_2977) (|v#$Mutation_10238| T@Vec_2977) ) ) ))
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
(declare-fun |$IsValid'$42_TestSome_R'| (T@$42_TestSome_R) Bool)
(declare-fun $choice_2 () Int)
(declare-fun $choice_3 () Int)
(declare-fun $choice_0 (Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |Select__T@[Int]$42_TestSome_R_| (|T@[Int]$42_TestSome_R| Int) T@$42_TestSome_R)
(declare-fun $choice_1 (T@$Memory_13737) Int)
(declare-fun $choice_4 (T@Vec_2977) Int)
(declare-fun $choice_5 (T@Vec_2977) Int)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |choicedefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |choicedefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |choicedefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |choicedefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |choicedefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |choicedefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |choicedefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |choicedefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u64''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |choicedefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |choicedefaultz3bpl.613:29|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u64''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |choicedefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |choicedefaultz3bpl.619:29|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |choicedefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |choicedefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |choicedefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_2977| v1@@0) (|l#Vec_2977| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_2977 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_2977| v2@@0) i@@4)))
 :qid |choicedefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |choicedefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_2977 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@6) i@@5)))
 :qid |choicedefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |choicedefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_2977 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@7) e@@0))
 :qid |choicedefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_2977 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |choicedefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |choicedefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |choicedefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_2977) (v2@@2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |choicedefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |choicedefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |choicedefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestSome_R) ) (! (= (|$IsValid'$42_TestSome_R'| s) (|$IsValid'u64'| (|$x#$42_TestSome_R| s)))
 :qid |choicedefaultz3bpl.1118:35|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestSome_R'| s))
)))
(assert  (=> (exists ((x Int) ) (!  (and (|$IsValid'u64'| x) (>= x 4))
 :qid |choicedefaultz3bpl.1736:13|
 :skolemid |38|
)) (let ((x@@0 $choice_2))
 (and (|$IsValid'u64'| x@@0) (>= x@@0 4)))))
(assert  (=> (exists ((x@@1 Int) ) (!  (and (|$IsValid'u64'| x@@1) (and (>= x@@1 4) (<= x@@1 5)))
 :qid |choicedefaultz3bpl.1747:13|
 :skolemid |39|
)) (let ((x@@2 $choice_3))
 (and (|$IsValid'u64'| x@@2) (and (>= x@@2 4) (<= x@@2 5))))))
(assert (forall ((x@@3 Int) ) (!  (=> (|$IsValid'u64'| x@@3) (=> (exists ((y Int) ) (!  (and (|$IsValid'u64'| y) (>= y x@@3))
 :qid |choicedefaultz3bpl.1758:13|
 :skolemid |40|
)) (let ((y@@0 ($choice_0 x@@3)))
 (and (|$IsValid'u64'| y@@0) (>= y@@0 x@@3)))))
 :qid |choicedefaultz3bpl.1757:15|
 :skolemid |41|
)))
(assert (forall (($42_TestSome_R_$memory T@$Memory_13737) ) (!  (=> (exists ((a Int) ) (!  (and (|$IsValid'address'| a) (and (|Select__T@[Int]Bool_| (|domain#$Memory_13737| $42_TestSome_R_$memory) a) (= (|$x#$42_TestSome_R| (|Select__T@[Int]$42_TestSome_R_| (|contents#$Memory_13737| $42_TestSome_R_$memory) a)) 2)))
 :qid |choicedefaultz3bpl.1768:72|
 :skolemid |42|
)) (let ((a@@0 ($choice_1 $42_TestSome_R_$memory)))
 (and (|$IsValid'address'| a@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_13737| $42_TestSome_R_$memory) a@@0) (= (|$x#$42_TestSome_R| (|Select__T@[Int]$42_TestSome_R_| (|contents#$Memory_13737| $42_TestSome_R_$memory) a@@0)) 2)))))
 :qid |choicedefaultz3bpl.1768:15|
 :skolemid |43|
)))
(assert (forall (($t8 T@Vec_2977) ) (!  (=> (|$IsValid'vec'u64''| $t8) (=> (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'num'| i@@8) ($InRange ($Range 0 (|l#Vec_2977| $t8)) i@@8)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t8) i@@8) 2))
 :qid |choicedefaultz3bpl.1779:13|
 :skolemid |44|
)) (let ((i@@9 ($choice_4 $t8)))
 (and (and (and (|$IsValid'num'| i@@9) ($InRange ($Range 0 (|l#Vec_2977| $t8)) i@@9)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t8) i@@9) 2)) (let (($$c i@@9))
(forall ((i@@10 Int) ) (!  (=> (< i@@10 $$c) (not (and (and (|$IsValid'num'| i@@10) ($InRange ($Range 0 (|l#Vec_2977| $t8)) i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t8) i@@10) 2))))
 :qid |choicedefaultz3bpl.1781:32|
 :skolemid |45|
)))))))
 :qid |choicedefaultz3bpl.1778:15|
 :skolemid |46|
)))
(assert (forall (($t9 T@Vec_2977) ) (!  (=> (|$IsValid'vec'u64''| $t9) (=> (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'num'| i@@11) ($InRange ($Range 0 (|l#Vec_2977| $t9)) i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t9) i@@11) 2))
 :qid |choicedefaultz3bpl.1790:13|
 :skolemid |47|
)) (let ((i@@12 ($choice_5 $t9)))
 (and (and (|$IsValid'num'| i@@12) ($InRange ($Range 0 (|l#Vec_2977| $t9)) i@@12)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t9) i@@12) 2)))))
 :qid |choicedefaultz3bpl.1789:15|
 :skolemid |48|
)))
(assert (forall ((v@@8 T@Vec_2977) (i@@13 Int) ) (! (= (InRangeVec_2977 v@@8 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_2977| v@@8))))
 :qid |choicedefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@8 i@@13))
)))
(assert (forall ((v@@9 T@Vec_2977) (e@@1 Int) ) (! (let ((i@@14 (IndexOfVec_2977 v@@9 e@@1)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_2977 v@@9 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@15) e@@1))
 :qid |choicedefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_2977 v@@9 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@14) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) j@@1) e@@1)))
 :qid |choicedefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |choicedefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@9 e@@1))
)))
(assert (forall ((|l#0| Bool) (i@@16 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@16) |l#0|)
 :qid |choicedefaultz3bpl.275:54|
 :skolemid |49|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@16))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@17) (ite  (and (>= i@@17 |l#0@@0|) (< i@@17 |l#1|)) (ite (< i@@17 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@17) (|Select__T@[Int]Int_| |l#4| (- i@@17 |l#5|))) |l#6|))
 :qid |choicedefaultz3bpl.73:19|
 :skolemid |50|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@17))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@18) (ite  (and (<= |l#0@@1| i@@18) (< i@@18 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@18) |l#4@@0|)) |l#5@@0|))
 :qid |choicedefaultz3bpl.82:30|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@18))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@2 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2) (ite  (and (>= j@@2 |l#0@@2|) (< j@@2 |l#1@@1|)) (ite (< j@@2 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@2) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@2 |l#5@@1|))) |l#6@@0|))
 :qid |choicedefaultz3bpl.63:20|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () Int)
(declare-fun $t4 () Int)
(declare-fun _$t0 () Bool)
(push 1)
(set-info :boogie-vc-id $42_TestSome_simple_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 19380) (let ((L3_correct  (=> (= $t1@0 $t1@0) (=> (and (= $t4 $choice_3) (= (ControlFlow 0 16747) (- 0 19490))) (= $t1@0 $choice_3)))))
(let ((anon3_Else_correct  (=> (not _$t0) (=> (and (and (|$IsValid'u64'| 5) (= 5 5)) (and (= $t1@0 5) (= (ControlFlow 0 16719) 16747))) L3_correct))))
(let ((anon3_Then_correct  (=> _$t0 (=> (and (and (|$IsValid'u64'| 4) (= 4 4)) (and (= $t1@0 4) (= (ControlFlow 0 16765) 16747))) L3_correct))))
(let ((anon0$1_correct  (=> (= _$t0 _$t0) (and (=> (= (ControlFlow 0 16699) 16765) anon3_Then_correct) (=> (= (ControlFlow 0 16699) 16719) anon3_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 19380) 16699) anon0$1_correct)))
anon0_correct))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 19380)))
(get-value ((ControlFlow 0 16699)))
(get-value ((ControlFlow 0 16719)))
(get-value ((ControlFlow 0 16747)))
(assert (not (= (ControlFlow 0 16747) (- 19490))))
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
(declare-datatypes ((T@$42_TestSome_R 0)) ((($42_TestSome_R (|$x#$42_TestSome_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestSome_R| 0)
(declare-datatypes ((T@$Memory_13737 0)) ((($Memory_13737 (|domain#$Memory_13737| |T@[Int]Bool|) (|contents#$Memory_13737| |T@[Int]$42_TestSome_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10238 0)) ((($Mutation_10238 (|l#$Mutation_10238| T@$Location) (|p#$Mutation_10238| T@Vec_2977) (|v#$Mutation_10238| T@Vec_2977) ) ) ))
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
(declare-fun |$IsValid'$42_TestSome_R'| (T@$42_TestSome_R) Bool)
(declare-fun $choice_2 () Int)
(declare-fun $choice_3 () Int)
(declare-fun $choice_0 (Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |Select__T@[Int]$42_TestSome_R_| (|T@[Int]$42_TestSome_R| Int) T@$42_TestSome_R)
(declare-fun $choice_1 (T@$Memory_13737) Int)
(declare-fun $choice_4 (T@Vec_2977) Int)
(declare-fun $choice_5 (T@Vec_2977) Int)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |choicedefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |choicedefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |choicedefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |choicedefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |choicedefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |choicedefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |choicedefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |choicedefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u64''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |choicedefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |choicedefaultz3bpl.613:29|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u64''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |choicedefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |choicedefaultz3bpl.619:29|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |choicedefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |choicedefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |choicedefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_2977| v1@@0) (|l#Vec_2977| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_2977 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_2977| v2@@0) i@@4)))
 :qid |choicedefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |choicedefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_2977 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@6) i@@5)))
 :qid |choicedefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |choicedefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_2977 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@7) e@@0))
 :qid |choicedefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_2977 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |choicedefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |choicedefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |choicedefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_2977) (v2@@2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |choicedefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |choicedefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |choicedefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestSome_R) ) (! (= (|$IsValid'$42_TestSome_R'| s) (|$IsValid'u64'| (|$x#$42_TestSome_R| s)))
 :qid |choicedefaultz3bpl.1118:35|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestSome_R'| s))
)))
(assert  (=> (exists ((x Int) ) (!  (and (|$IsValid'u64'| x) (>= x 4))
 :qid |choicedefaultz3bpl.1736:13|
 :skolemid |38|
)) (let ((x@@0 $choice_2))
 (and (|$IsValid'u64'| x@@0) (>= x@@0 4)))))
(assert  (=> (exists ((x@@1 Int) ) (!  (and (|$IsValid'u64'| x@@1) (and (>= x@@1 4) (<= x@@1 5)))
 :qid |choicedefaultz3bpl.1747:13|
 :skolemid |39|
)) (let ((x@@2 $choice_3))
 (and (|$IsValid'u64'| x@@2) (and (>= x@@2 4) (<= x@@2 5))))))
(assert (forall ((x@@3 Int) ) (!  (=> (|$IsValid'u64'| x@@3) (=> (exists ((y Int) ) (!  (and (|$IsValid'u64'| y) (>= y x@@3))
 :qid |choicedefaultz3bpl.1758:13|
 :skolemid |40|
)) (let ((y@@0 ($choice_0 x@@3)))
 (and (|$IsValid'u64'| y@@0) (>= y@@0 x@@3)))))
 :qid |choicedefaultz3bpl.1757:15|
 :skolemid |41|
)))
(assert (forall (($42_TestSome_R_$memory T@$Memory_13737) ) (!  (=> (exists ((a Int) ) (!  (and (|$IsValid'address'| a) (and (|Select__T@[Int]Bool_| (|domain#$Memory_13737| $42_TestSome_R_$memory) a) (= (|$x#$42_TestSome_R| (|Select__T@[Int]$42_TestSome_R_| (|contents#$Memory_13737| $42_TestSome_R_$memory) a)) 2)))
 :qid |choicedefaultz3bpl.1768:72|
 :skolemid |42|
)) (let ((a@@0 ($choice_1 $42_TestSome_R_$memory)))
 (and (|$IsValid'address'| a@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_13737| $42_TestSome_R_$memory) a@@0) (= (|$x#$42_TestSome_R| (|Select__T@[Int]$42_TestSome_R_| (|contents#$Memory_13737| $42_TestSome_R_$memory) a@@0)) 2)))))
 :qid |choicedefaultz3bpl.1768:15|
 :skolemid |43|
)))
(assert (forall (($t8 T@Vec_2977) ) (!  (=> (|$IsValid'vec'u64''| $t8) (=> (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'num'| i@@8) ($InRange ($Range 0 (|l#Vec_2977| $t8)) i@@8)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t8) i@@8) 2))
 :qid |choicedefaultz3bpl.1779:13|
 :skolemid |44|
)) (let ((i@@9 ($choice_4 $t8)))
 (and (and (and (|$IsValid'num'| i@@9) ($InRange ($Range 0 (|l#Vec_2977| $t8)) i@@9)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t8) i@@9) 2)) (let (($$c i@@9))
(forall ((i@@10 Int) ) (!  (=> (< i@@10 $$c) (not (and (and (|$IsValid'num'| i@@10) ($InRange ($Range 0 (|l#Vec_2977| $t8)) i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t8) i@@10) 2))))
 :qid |choicedefaultz3bpl.1781:32|
 :skolemid |45|
)))))))
 :qid |choicedefaultz3bpl.1778:15|
 :skolemid |46|
)))
(assert (forall (($t9 T@Vec_2977) ) (!  (=> (|$IsValid'vec'u64''| $t9) (=> (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'num'| i@@11) ($InRange ($Range 0 (|l#Vec_2977| $t9)) i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t9) i@@11) 2))
 :qid |choicedefaultz3bpl.1790:13|
 :skolemid |47|
)) (let ((i@@12 ($choice_5 $t9)))
 (and (and (|$IsValid'num'| i@@12) ($InRange ($Range 0 (|l#Vec_2977| $t9)) i@@12)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t9) i@@12) 2)))))
 :qid |choicedefaultz3bpl.1789:15|
 :skolemid |48|
)))
(assert (forall ((v@@8 T@Vec_2977) (i@@13 Int) ) (! (= (InRangeVec_2977 v@@8 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_2977| v@@8))))
 :qid |choicedefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@8 i@@13))
)))
(assert (forall ((v@@9 T@Vec_2977) (e@@1 Int) ) (! (let ((i@@14 (IndexOfVec_2977 v@@9 e@@1)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_2977 v@@9 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@15) e@@1))
 :qid |choicedefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_2977 v@@9 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@14) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) j@@1) e@@1)))
 :qid |choicedefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |choicedefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@9 e@@1))
)))
(assert (forall ((|l#0| Bool) (i@@16 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@16) |l#0|)
 :qid |choicedefaultz3bpl.275:54|
 :skolemid |49|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@16))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@17) (ite  (and (>= i@@17 |l#0@@0|) (< i@@17 |l#1|)) (ite (< i@@17 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@17) (|Select__T@[Int]Int_| |l#4| (- i@@17 |l#5|))) |l#6|))
 :qid |choicedefaultz3bpl.73:19|
 :skolemid |50|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@17))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@18) (ite  (and (<= |l#0@@1| i@@18) (< i@@18 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@18) |l#4@@0|)) |l#5@@0|))
 :qid |choicedefaultz3bpl.82:30|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@18))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@2 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2) (ite  (and (>= j@@2 |l#0@@2|) (< j@@2 |l#1@@1|)) (ite (< j@@2 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@2) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@2 |l#5@@1|))) |l#6@@0|))
 :qid |choicedefaultz3bpl.63:20|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@0 () T@Vec_2977)
(declare-fun |inline$$1_Vector_push_back'u64'$3$m'@1| () T@$Mutation_10238)
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_10238)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_10238)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_10238)
(declare-fun $t3@0 () T@$Mutation_10238)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_2977)
(declare-fun MapConstVec_3206 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_3206 () Int)
(declare-fun |$temp_0'vec'u64''@0| () T@Vec_2977)
(declare-fun $t1 () T@$Mutation_10238)
(declare-fun $t3 () T@$Mutation_10238)
(push 1)
(set-info :boogie-vc-id $42_TestSome_test_min$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 19505) (let ((anon16_Else_correct  (=> (and (and (not false) (= $t0@0 (|v#$Mutation_10238| |inline$$1_Vector_push_back'u64'$3$m'@1|))) (and (= $t0@0 $t0@0) (= (ControlFlow 0 17215) (- 0 19884)))) (= ($choice_4 $t0@0) 1))))
(let ((anon16_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$3$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$3$m'@1| ($Mutation_10238 (|l#$Mutation_10238| |inline$$1_Vector_push_back'u64'$2$m'@1|) (|p#$Mutation_10238| |inline$$1_Vector_push_back'u64'$2$m'@1|) (let ((l (|l#Vec_2977| (|v#$Mutation_10238| |inline$$1_Vector_push_back'u64'$2$m'@1|))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_10238| |inline$$1_Vector_push_back'u64'$2$m'@1|)) l 2) (+ l 1))))) (and (=> (= (ControlFlow 0 17173) 17229) anon16_Then_correct) (=> (= (ControlFlow 0 17173) 17215) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (not false) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 17179) 17173)) |inline$$1_Vector_push_back'u64'$3$anon0_correct|))))
(let ((anon15_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_10238 (|l#$Mutation_10238| |inline$$1_Vector_push_back'u64'$1$m'@1|) (|p#$Mutation_10238| |inline$$1_Vector_push_back'u64'$1$m'@1|) (let ((l@@0 (|l#Vec_2977| (|v#$Mutation_10238| |inline$$1_Vector_push_back'u64'$1$m'@1|))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_10238| |inline$$1_Vector_push_back'u64'$1$m'@1|)) l@@0 3) (+ l@@0 1))))) (and (=> (= (ControlFlow 0 17100) 17249) anon15_Then_correct) (=> (= (ControlFlow 0 17100) 17179) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (not false) (=> (and (|$IsValid'u64'| 3) (= (ControlFlow 0 17106) 17100)) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon14_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_10238 (|l#$Mutation_10238| |inline$$1_Vector_push_back'u64'$0$m'@1|) (|p#$Mutation_10238| |inline$$1_Vector_push_back'u64'$0$m'@1|) (let ((l@@1 (|l#Vec_2977| (|v#$Mutation_10238| |inline$$1_Vector_push_back'u64'$0$m'@1|))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_10238| |inline$$1_Vector_push_back'u64'$0$m'@1|)) l@@1 2) (+ l@@1 1))))) (and (=> (= (ControlFlow 0 17027) 17263) anon14_Then_correct) (=> (= (ControlFlow 0 17027) 17106) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (not false) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 17033) 17027)) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_10238 (|l#$Mutation_10238| $t3@0) (|p#$Mutation_10238| $t3@0) (let ((l@@2 (|l#Vec_2977| (|v#$Mutation_10238| $t3@0))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_10238| $t3@0)) l@@2 1) (+ l@@2 1))))) (and (=> (= (ControlFlow 0 16954) 17277) anon13_Then_correct) (=> (= (ControlFlow 0 16954) 17033) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t3@0 ($Mutation_10238 ($Local 0) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) |inline$$1_Vector_empty'u64'$0$v@1|))) (=> (and (and (= |$temp_0'vec'u64''@0| (|v#$Mutation_10238| $t3@0)) (= |$temp_0'vec'u64''@0| |$temp_0'vec'u64''@0|)) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 16960) 16954))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|)))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0)) (and (=> (= (ControlFlow 0 16853) 17291) anon12_Then_correct) (=> (= (ControlFlow 0 16853) 16960) anon12_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 16859) 16853) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (|l#Vec_2977| (|p#$Mutation_10238| $t1)) 0) (=> (and (= (|l#Vec_2977| (|p#$Mutation_10238| $t3)) 0) (= (ControlFlow 0 16829) 16859)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 19505) 16829) anon0_correct)))
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
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$42_TestSome_R 0)) ((($42_TestSome_R (|$x#$42_TestSome_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestSome_R| 0)
(declare-datatypes ((T@$Memory_13737 0)) ((($Memory_13737 (|domain#$Memory_13737| |T@[Int]Bool|) (|contents#$Memory_13737| |T@[Int]$42_TestSome_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10238 0)) ((($Mutation_10238 (|l#$Mutation_10238| T@$Location) (|p#$Mutation_10238| T@Vec_2977) (|v#$Mutation_10238| T@Vec_2977) ) ) ))
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
(declare-fun |$IsValid'$42_TestSome_R'| (T@$42_TestSome_R) Bool)
(declare-fun $choice_2 () Int)
(declare-fun $choice_3 () Int)
(declare-fun $choice_0 (Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |Select__T@[Int]$42_TestSome_R_| (|T@[Int]$42_TestSome_R| Int) T@$42_TestSome_R)
(declare-fun $choice_1 (T@$Memory_13737) Int)
(declare-fun $choice_4 (T@Vec_2977) Int)
(declare-fun $choice_5 (T@Vec_2977) Int)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |choicedefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |choicedefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |choicedefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |choicedefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |choicedefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |choicedefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |choicedefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |choicedefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u64''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |choicedefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |choicedefaultz3bpl.613:29|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u64''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |choicedefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |choicedefaultz3bpl.619:29|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |choicedefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |choicedefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |choicedefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_2977| v1@@0) (|l#Vec_2977| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_2977 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_2977| v2@@0) i@@4)))
 :qid |choicedefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |choicedefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_2977 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@6) i@@5)))
 :qid |choicedefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |choicedefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_2977 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@7) e@@0))
 :qid |choicedefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_2977 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |choicedefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |choicedefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |choicedefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_2977) (v2@@2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |choicedefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |choicedefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |choicedefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestSome_R) ) (! (= (|$IsValid'$42_TestSome_R'| s) (|$IsValid'u64'| (|$x#$42_TestSome_R| s)))
 :qid |choicedefaultz3bpl.1118:35|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestSome_R'| s))
)))
(assert  (=> (exists ((x Int) ) (!  (and (|$IsValid'u64'| x) (>= x 4))
 :qid |choicedefaultz3bpl.1736:13|
 :skolemid |38|
)) (let ((x@@0 $choice_2))
 (and (|$IsValid'u64'| x@@0) (>= x@@0 4)))))
(assert  (=> (exists ((x@@1 Int) ) (!  (and (|$IsValid'u64'| x@@1) (and (>= x@@1 4) (<= x@@1 5)))
 :qid |choicedefaultz3bpl.1747:13|
 :skolemid |39|
)) (let ((x@@2 $choice_3))
 (and (|$IsValid'u64'| x@@2) (and (>= x@@2 4) (<= x@@2 5))))))
(assert (forall ((x@@3 Int) ) (!  (=> (|$IsValid'u64'| x@@3) (=> (exists ((y Int) ) (!  (and (|$IsValid'u64'| y) (>= y x@@3))
 :qid |choicedefaultz3bpl.1758:13|
 :skolemid |40|
)) (let ((y@@0 ($choice_0 x@@3)))
 (and (|$IsValid'u64'| y@@0) (>= y@@0 x@@3)))))
 :qid |choicedefaultz3bpl.1757:15|
 :skolemid |41|
)))
(assert (forall (($42_TestSome_R_$memory T@$Memory_13737) ) (!  (=> (exists ((a Int) ) (!  (and (|$IsValid'address'| a) (and (|Select__T@[Int]Bool_| (|domain#$Memory_13737| $42_TestSome_R_$memory) a) (= (|$x#$42_TestSome_R| (|Select__T@[Int]$42_TestSome_R_| (|contents#$Memory_13737| $42_TestSome_R_$memory) a)) 2)))
 :qid |choicedefaultz3bpl.1768:72|
 :skolemid |42|
)) (let ((a@@0 ($choice_1 $42_TestSome_R_$memory)))
 (and (|$IsValid'address'| a@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_13737| $42_TestSome_R_$memory) a@@0) (= (|$x#$42_TestSome_R| (|Select__T@[Int]$42_TestSome_R_| (|contents#$Memory_13737| $42_TestSome_R_$memory) a@@0)) 2)))))
 :qid |choicedefaultz3bpl.1768:15|
 :skolemid |43|
)))
(assert (forall (($t8 T@Vec_2977) ) (!  (=> (|$IsValid'vec'u64''| $t8) (=> (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'num'| i@@8) ($InRange ($Range 0 (|l#Vec_2977| $t8)) i@@8)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t8) i@@8) 2))
 :qid |choicedefaultz3bpl.1779:13|
 :skolemid |44|
)) (let ((i@@9 ($choice_4 $t8)))
 (and (and (and (|$IsValid'num'| i@@9) ($InRange ($Range 0 (|l#Vec_2977| $t8)) i@@9)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t8) i@@9) 2)) (let (($$c i@@9))
(forall ((i@@10 Int) ) (!  (=> (< i@@10 $$c) (not (and (and (|$IsValid'num'| i@@10) ($InRange ($Range 0 (|l#Vec_2977| $t8)) i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t8) i@@10) 2))))
 :qid |choicedefaultz3bpl.1781:32|
 :skolemid |45|
)))))))
 :qid |choicedefaultz3bpl.1778:15|
 :skolemid |46|
)))
(assert (forall (($t9 T@Vec_2977) ) (!  (=> (|$IsValid'vec'u64''| $t9) (=> (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'num'| i@@11) ($InRange ($Range 0 (|l#Vec_2977| $t9)) i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t9) i@@11) 2))
 :qid |choicedefaultz3bpl.1790:13|
 :skolemid |47|
)) (let ((i@@12 ($choice_5 $t9)))
 (and (and (|$IsValid'num'| i@@12) ($InRange ($Range 0 (|l#Vec_2977| $t9)) i@@12)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t9) i@@12) 2)))))
 :qid |choicedefaultz3bpl.1789:15|
 :skolemid |48|
)))
(assert (forall ((v@@8 T@Vec_2977) (i@@13 Int) ) (! (= (InRangeVec_2977 v@@8 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_2977| v@@8))))
 :qid |choicedefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@8 i@@13))
)))
(assert (forall ((v@@9 T@Vec_2977) (e@@1 Int) ) (! (let ((i@@14 (IndexOfVec_2977 v@@9 e@@1)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_2977 v@@9 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@15) e@@1))
 :qid |choicedefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_2977 v@@9 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@14) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) j@@1) e@@1)))
 :qid |choicedefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |choicedefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@9 e@@1))
)))
(assert (forall ((|l#0| Bool) (i@@16 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@16) |l#0|)
 :qid |choicedefaultz3bpl.275:54|
 :skolemid |49|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@16))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@17) (ite  (and (>= i@@17 |l#0@@0|) (< i@@17 |l#1|)) (ite (< i@@17 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@17) (|Select__T@[Int]Int_| |l#4| (- i@@17 |l#5|))) |l#6|))
 :qid |choicedefaultz3bpl.73:19|
 :skolemid |50|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@17))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@18) (ite  (and (<= |l#0@@1| i@@18) (< i@@18 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@18) |l#4@@0|)) |l#5@@0|))
 :qid |choicedefaultz3bpl.82:30|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@18))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@2 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2) (ite  (and (>= j@@2 |l#0@@2|) (< j@@2 |l#1@@1|)) (ite (< j@@2 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@2) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@2 |l#5@@1|))) |l#6@@0|))
 :qid |choicedefaultz3bpl.63:20|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@0 () T@Vec_2977)
(declare-fun |inline$$1_Vector_push_back'u64'$4$m'@1| () T@$Mutation_10238)
(declare-fun $t10 () Int)
(declare-fun |inline$$1_Vector_push_back'u64'$3$m'@1| () T@$Mutation_10238)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_10238)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_10238)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_10238)
(declare-fun $t3@0 () T@$Mutation_10238)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () T@Vec_2977)
(declare-fun MapConstVec_3206 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_3206 () Int)
(declare-fun |$temp_0'vec'u64''@0| () T@Vec_2977)
(declare-fun $t1 () T@$Mutation_10238)
(declare-fun $t3 () T@$Mutation_10238)
(push 1)
(set-info :boogie-vc-id $42_TestSome_test_not_using_min_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 19911) (let ((anon19_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_10238| |inline$$1_Vector_push_back'u64'$4$m'@1|)) (= $t0@0 $t0@0)) (and (= $t10 ($choice_5 $t0@0)) (= (ControlFlow 0 17897) (- 0 20359)))) (= ($choice_5 $t0@0) 1)))))
(let ((anon19_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$4$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$4$m'@1| ($Mutation_10238 (|l#$Mutation_10238| |inline$$1_Vector_push_back'u64'$3$m'@1|) (|p#$Mutation_10238| |inline$$1_Vector_push_back'u64'$3$m'@1|) (let ((l (|l#Vec_2977| (|v#$Mutation_10238| |inline$$1_Vector_push_back'u64'$3$m'@1|))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_10238| |inline$$1_Vector_push_back'u64'$3$m'@1|)) l 2) (+ l 1))))) (and (=> (= (ControlFlow 0 17845) 17911) anon19_Then_correct) (=> (= (ControlFlow 0 17845) 17897) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (not false) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 17851) 17845)) |inline$$1_Vector_push_back'u64'$4$anon0_correct|))))
(let ((anon18_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$3$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$3$m'@1| ($Mutation_10238 (|l#$Mutation_10238| |inline$$1_Vector_push_back'u64'$2$m'@1|) (|p#$Mutation_10238| |inline$$1_Vector_push_back'u64'$2$m'@1|) (let ((l@@0 (|l#Vec_2977| (|v#$Mutation_10238| |inline$$1_Vector_push_back'u64'$2$m'@1|))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_10238| |inline$$1_Vector_push_back'u64'$2$m'@1|)) l@@0 2) (+ l@@0 1))))) (and (=> (= (ControlFlow 0 17772) 17931) anon18_Then_correct) (=> (= (ControlFlow 0 17772) 17851) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (not false) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 17778) 17772)) |inline$$1_Vector_push_back'u64'$3$anon0_correct|))))
(let ((anon17_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_10238 (|l#$Mutation_10238| |inline$$1_Vector_push_back'u64'$1$m'@1|) (|p#$Mutation_10238| |inline$$1_Vector_push_back'u64'$1$m'@1|) (let ((l@@1 (|l#Vec_2977| (|v#$Mutation_10238| |inline$$1_Vector_push_back'u64'$1$m'@1|))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_10238| |inline$$1_Vector_push_back'u64'$1$m'@1|)) l@@1 3) (+ l@@1 1))))) (and (=> (= (ControlFlow 0 17699) 17945) anon17_Then_correct) (=> (= (ControlFlow 0 17699) 17778) anon17_Else_correct)))))
(let ((anon16_Else_correct  (=> (not false) (=> (and (|$IsValid'u64'| 3) (= (ControlFlow 0 17705) 17699)) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon16_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_10238 (|l#$Mutation_10238| |inline$$1_Vector_push_back'u64'$0$m'@1|) (|p#$Mutation_10238| |inline$$1_Vector_push_back'u64'$0$m'@1|) (let ((l@@2 (|l#Vec_2977| (|v#$Mutation_10238| |inline$$1_Vector_push_back'u64'$0$m'@1|))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_10238| |inline$$1_Vector_push_back'u64'$0$m'@1|)) l@@2 2) (+ l@@2 1))))) (and (=> (= (ControlFlow 0 17626) 17959) anon16_Then_correct) (=> (= (ControlFlow 0 17626) 17705) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (not false) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 17632) 17626)) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon15_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_10238 (|l#$Mutation_10238| $t3@0) (|p#$Mutation_10238| $t3@0) (let ((l@@3 (|l#Vec_2977| (|v#$Mutation_10238| $t3@0))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_10238| $t3@0)) l@@3 1) (+ l@@3 1))))) (and (=> (= (ControlFlow 0 17553) 17973) anon15_Then_correct) (=> (= (ControlFlow 0 17553) 17632) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t3@0 ($Mutation_10238 ($Local 0) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) |inline$$1_Vector_empty'u64'$0$v@1|))) (=> (and (and (= |$temp_0'vec'u64''@0| (|v#$Mutation_10238| $t3@0)) (= |$temp_0'vec'u64''@0| |$temp_0'vec'u64''@0|)) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 17559) 17553))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|)))))
(let ((anon14_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0)) (and (=> (= (ControlFlow 0 17452) 17987) anon14_Then_correct) (=> (= (ControlFlow 0 17452) 17559) anon14_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 17458) 17452) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (= (|l#Vec_2977| (|p#$Mutation_10238| $t1)) 0) (=> (and (= (|l#Vec_2977| (|p#$Mutation_10238| $t3)) 0) (= (ControlFlow 0 17428) 17458)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 19911) 17428) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 19911)))
(get-value ((ControlFlow 0 17428)))
(get-value ((ControlFlow 0 17458)))
(get-value ((ControlFlow 0 17452)))
(get-value ((ControlFlow 0 17559)))
(get-value ((ControlFlow 0 17553)))
(get-value ((ControlFlow 0 17632)))
(get-value ((ControlFlow 0 17626)))
(get-value ((ControlFlow 0 17705)))
(get-value ((ControlFlow 0 17699)))
(get-value ((ControlFlow 0 17778)))
(get-value ((ControlFlow 0 17772)))
(get-value ((ControlFlow 0 17851)))
(get-value ((ControlFlow 0 17845)))
(get-value ((ControlFlow 0 17897)))
(assert (not (= (ControlFlow 0 17897) (- 20359))))
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
(declare-datatypes ((T@$42_TestSome_R 0)) ((($42_TestSome_R (|$x#$42_TestSome_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestSome_R| 0)
(declare-datatypes ((T@$Memory_13737 0)) ((($Memory_13737 (|domain#$Memory_13737| |T@[Int]Bool|) (|contents#$Memory_13737| |T@[Int]$42_TestSome_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10238 0)) ((($Mutation_10238 (|l#$Mutation_10238| T@$Location) (|p#$Mutation_10238| T@Vec_2977) (|v#$Mutation_10238| T@Vec_2977) ) ) ))
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
(declare-fun |$IsValid'$42_TestSome_R'| (T@$42_TestSome_R) Bool)
(declare-fun $choice_2 () Int)
(declare-fun $choice_3 () Int)
(declare-fun $choice_0 (Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |Select__T@[Int]$42_TestSome_R_| (|T@[Int]$42_TestSome_R| Int) T@$42_TestSome_R)
(declare-fun $choice_1 (T@$Memory_13737) Int)
(declare-fun $choice_4 (T@Vec_2977) Int)
(declare-fun $choice_5 (T@Vec_2977) Int)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |choicedefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |choicedefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |choicedefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |choicedefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |choicedefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |choicedefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |choicedefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |choicedefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u64''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |choicedefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |choicedefaultz3bpl.613:29|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u64''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |choicedefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |choicedefaultz3bpl.619:29|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |choicedefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |choicedefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |choicedefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_2977| v1@@0) (|l#Vec_2977| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_2977 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_2977| v2@@0) i@@4)))
 :qid |choicedefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |choicedefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_2977 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@6) i@@5)))
 :qid |choicedefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |choicedefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_2977 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@7) e@@0))
 :qid |choicedefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_2977 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |choicedefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |choicedefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |choicedefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_2977) (v2@@2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |choicedefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |choicedefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |choicedefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestSome_R) ) (! (= (|$IsValid'$42_TestSome_R'| s) (|$IsValid'u64'| (|$x#$42_TestSome_R| s)))
 :qid |choicedefaultz3bpl.1118:35|
 :skolemid |35|
 :pattern ( (|$IsValid'$42_TestSome_R'| s))
)))
(assert  (=> (exists ((x Int) ) (!  (and (|$IsValid'u64'| x) (>= x 4))
 :qid |choicedefaultz3bpl.1736:13|
 :skolemid |38|
)) (let ((x@@0 $choice_2))
 (and (|$IsValid'u64'| x@@0) (>= x@@0 4)))))
(assert  (=> (exists ((x@@1 Int) ) (!  (and (|$IsValid'u64'| x@@1) (and (>= x@@1 4) (<= x@@1 5)))
 :qid |choicedefaultz3bpl.1747:13|
 :skolemid |39|
)) (let ((x@@2 $choice_3))
 (and (|$IsValid'u64'| x@@2) (and (>= x@@2 4) (<= x@@2 5))))))
(assert (forall ((x@@3 Int) ) (!  (=> (|$IsValid'u64'| x@@3) (=> (exists ((y Int) ) (!  (and (|$IsValid'u64'| y) (>= y x@@3))
 :qid |choicedefaultz3bpl.1758:13|
 :skolemid |40|
)) (let ((y@@0 ($choice_0 x@@3)))
 (and (|$IsValid'u64'| y@@0) (>= y@@0 x@@3)))))
 :qid |choicedefaultz3bpl.1757:15|
 :skolemid |41|
)))
(assert (forall (($42_TestSome_R_$memory T@$Memory_13737) ) (!  (=> (exists ((a Int) ) (!  (and (|$IsValid'address'| a) (and (|Select__T@[Int]Bool_| (|domain#$Memory_13737| $42_TestSome_R_$memory) a) (= (|$x#$42_TestSome_R| (|Select__T@[Int]$42_TestSome_R_| (|contents#$Memory_13737| $42_TestSome_R_$memory) a)) 2)))
 :qid |choicedefaultz3bpl.1768:72|
 :skolemid |42|
)) (let ((a@@0 ($choice_1 $42_TestSome_R_$memory)))
 (and (|$IsValid'address'| a@@0) (and (|Select__T@[Int]Bool_| (|domain#$Memory_13737| $42_TestSome_R_$memory) a@@0) (= (|$x#$42_TestSome_R| (|Select__T@[Int]$42_TestSome_R_| (|contents#$Memory_13737| $42_TestSome_R_$memory) a@@0)) 2)))))
 :qid |choicedefaultz3bpl.1768:15|
 :skolemid |43|
)))
(assert (forall (($t8 T@Vec_2977) ) (!  (=> (|$IsValid'vec'u64''| $t8) (=> (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'num'| i@@8) ($InRange ($Range 0 (|l#Vec_2977| $t8)) i@@8)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t8) i@@8) 2))
 :qid |choicedefaultz3bpl.1779:13|
 :skolemid |44|
)) (let ((i@@9 ($choice_4 $t8)))
 (and (and (and (|$IsValid'num'| i@@9) ($InRange ($Range 0 (|l#Vec_2977| $t8)) i@@9)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t8) i@@9) 2)) (let (($$c i@@9))
(forall ((i@@10 Int) ) (!  (=> (< i@@10 $$c) (not (and (and (|$IsValid'num'| i@@10) ($InRange ($Range 0 (|l#Vec_2977| $t8)) i@@10)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t8) i@@10) 2))))
 :qid |choicedefaultz3bpl.1781:32|
 :skolemid |45|
)))))))
 :qid |choicedefaultz3bpl.1778:15|
 :skolemid |46|
)))
(assert (forall (($t9 T@Vec_2977) ) (!  (=> (|$IsValid'vec'u64''| $t9) (=> (exists ((i@@11 Int) ) (!  (and (and (|$IsValid'num'| i@@11) ($InRange ($Range 0 (|l#Vec_2977| $t9)) i@@11)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t9) i@@11) 2))
 :qid |choicedefaultz3bpl.1790:13|
 :skolemid |47|
)) (let ((i@@12 ($choice_5 $t9)))
 (and (and (|$IsValid'num'| i@@12) ($InRange ($Range 0 (|l#Vec_2977| $t9)) i@@12)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| $t9) i@@12) 2)))))
 :qid |choicedefaultz3bpl.1789:15|
 :skolemid |48|
)))
(assert (forall ((v@@8 T@Vec_2977) (i@@13 Int) ) (! (= (InRangeVec_2977 v@@8 i@@13)  (and (>= i@@13 0) (< i@@13 (|l#Vec_2977| v@@8))))
 :qid |choicedefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@8 i@@13))
)))
(assert (forall ((v@@9 T@Vec_2977) (e@@1 Int) ) (! (let ((i@@14 (IndexOfVec_2977 v@@9 e@@1)))
(ite  (not (exists ((i@@15 Int) ) (!  (and (InRangeVec_2977 v@@9 i@@15) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@15) e@@1))
 :qid |choicedefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@14 (- 0 1))  (and (and (InRangeVec_2977 v@@9 i@@14) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@14) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@14)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) j@@1) e@@1)))
 :qid |choicedefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |choicedefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@9 e@@1))
)))
(assert (forall ((|l#0| Bool) (i@@16 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@16) |l#0|)
 :qid |choicedefaultz3bpl.275:54|
 :skolemid |49|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@16))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@17 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@17) (ite  (and (>= i@@17 |l#0@@0|) (< i@@17 |l#1|)) (ite (< i@@17 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@17) (|Select__T@[Int]Int_| |l#4| (- i@@17 |l#5|))) |l#6|))
 :qid |choicedefaultz3bpl.73:19|
 :skolemid |50|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@17))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@18 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@18) (ite  (and (<= |l#0@@1| i@@18) (< i@@18 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@18) |l#4@@0|)) |l#5@@0|))
 :qid |choicedefaultz3bpl.82:30|
 :skolemid |51|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@18))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@2 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2) (ite  (and (>= j@@2 |l#0@@2|) (< j@@2 |l#1@@1|)) (ite (< j@@2 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@2) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@2 |l#5@@1|))) |l#6@@0|))
 :qid |choicedefaultz3bpl.63:20|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun $t4 () Int)
(declare-fun _$t0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestSome_with_spec_fun_choice$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 20388) (let ((anon4_Else_correct  (=> (and (and (not $abort_flag@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@2)) (and (= $t4 ($choice_0 (+ _$t0 42))) (= (ControlFlow 0 18348) (- 0 20585)))) (<= inline$$AddU64$0$dst@2 ($choice_0 (+ _$t0 42))))))
(let ((anon4_Then_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 18296) 18366) anon4_Then_correct) (=> (= (ControlFlow 0 18296) 18348) anon4_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ _$t0 42) $MAX_U64) (= (ControlFlow 0 18294) 18296)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ _$t0 42)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ _$t0 42)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 18242) 18366) anon4_Then_correct) (=> (= (ControlFlow 0 18242) 18348) anon4_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'u64'| _$t0) (=> (and (= _$t0 _$t0) (|$IsValid'u64'| 42)) (and (=> (= (ControlFlow 0 18302) 18294) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 18302) 18242) inline$$AddU64$0$anon3_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 20388) 18302) anon0$1_correct)))
anon0_correct))))))))
))
(check-sat)
(pop 1)
; Valid
