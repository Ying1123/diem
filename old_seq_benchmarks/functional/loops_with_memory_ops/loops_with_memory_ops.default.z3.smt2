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
(declare-datatypes ((T@$Mutation_11523 0)) ((($Mutation_11523 (|l#$Mutation_11523| T@$Location) (|p#$Mutation_11523| T@Vec_2977) (|v#$Mutation_11523| T@Vec_2977) ) ) ))
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
 :qid |loopswithmemoryopsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |loopswithmemoryopsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |loopswithmemoryopsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |loopswithmemoryopsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |loopswithmemoryopsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |loopswithmemoryopsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |loopswithmemoryopsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |loopswithmemoryopsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u64''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |loopswithmemoryopsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |loopswithmemoryopsdefaultz3bpl.613:29|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u64''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |loopswithmemoryopsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |loopswithmemoryopsdefaultz3bpl.619:29|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |loopswithmemoryopsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |loopswithmemoryopsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |loopswithmemoryopsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_2977| v1@@0) (|l#Vec_2977| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_2977 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_2977| v2@@0) i@@4)))
 :qid |loopswithmemoryopsdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |loopswithmemoryopsdefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_2977 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@6) i@@5)))
 :qid |loopswithmemoryopsdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |loopswithmemoryopsdefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_2977 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@7) e@@0))
 :qid |loopswithmemoryopsdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_2977 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |loopswithmemoryopsdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |loopswithmemoryopsdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |loopswithmemoryopsdefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_2977) (v2@@2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |loopswithmemoryopsdefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |loopswithmemoryopsdefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |loopswithmemoryopsdefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_2977) (i@@8 Int) ) (! (= (InRangeVec_2977 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_2977| v@@8))))
 :qid |loopswithmemoryopsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_2977) (e@@1 Int) ) (! (let ((i@@9 (IndexOfVec_2977 v@@9 e@@1)))
(ite  (not (exists ((i@@10 Int) ) (!  (and (InRangeVec_2977 v@@9 i@@10) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@10) e@@1))
 :qid |loopswithmemoryopsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@9 (- 0 1))  (and (and (InRangeVec_2977 v@@9 i@@9) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@9) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@9)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) j@@1) e@@1)))
 :qid |loopswithmemoryopsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |loopswithmemoryopsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@9 e@@1))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |loopswithmemoryopsdefaultz3bpl.275:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@12 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@12) (ite  (and (>= i@@12 |l#0@@0|) (< i@@12 |l#1|)) (ite (< i@@12 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@12) (|Select__T@[Int]Int_| |l#4| (- i@@12 |l#5|))) |l#6|))
 :qid |loopswithmemoryopsdefaultz3bpl.73:19|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@12))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@13 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@13) (ite  (and (<= |l#0@@1| i@@13) (< i@@13 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@13) |l#4@@0|)) |l#5@@0|))
 :qid |loopswithmemoryopsdefaultz3bpl.82:30|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@13))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@2 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2) (ite  (and (>= j@@2 |l#0@@2|) (< j@@2 |l#1@@1|)) (ite (< j@@2 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@2) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@2 |l#5@@1|))) |l#6@@0|))
 :qid |loopswithmemoryopsdefaultz3bpl.63:20|
 :skolemid |46|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$$Le$1$dst@1 () Bool)
(declare-fun $t1@1 () T@$Mutation_11523)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$m'@1| () T@$Mutation_11523)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $t24@2 () T@$Mutation_3601)
(declare-fun $t0@1 () T@$Mutation_11523)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$m'@1| () T@$Mutation_11523)
(declare-fun $t23@1 () T@$Mutation_3601)
(declare-fun |inline$$1_Vector_length'u64'$0$l@1| () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun $t20@2 () Int)
(declare-fun inline$$AddU64$1$dst@1 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $t17@2 () Int)
(declare-fun $t18@2 () Int)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t14@3 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $t11@3 () Int)
(declare-fun $t12@3 () Int)
(declare-fun |$temp_0'u64'@1| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$dst@2| () T@$Mutation_3601)
(declare-fun $t11@1 () Int)
(declare-fun $t12@1 () Int)
(declare-fun $t14@1 () Int)
(declare-fun $t15@1 () Int)
(declare-fun $t16@1 () Int)
(declare-fun $t17@1 () Int)
(declare-fun $t18@1 () Int)
(declare-fun $t20@1 () Int)
(declare-fun $t21@1 () Int)
(declare-fun $t22@1 () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@2| () T@$Mutation_3601)
(declare-fun |$temp_0'u64'@2| () Int)
(declare-fun $t24@1 () T@$Mutation_3601)
(declare-fun |$temp_0'u64'@3| () Int)
(declare-fun $t11@2 () Int)
(declare-fun $t12@2 () Int)
(declare-fun $t14@2 () Int)
(declare-fun $t15@2 () Int)
(declare-fun $t16@2 () Int)
(declare-fun |$temp_0'u64'@4| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$dst@0| () T@$Mutation_3601)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$m'@0| () T@$Mutation_11523)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$v@1| () T@Vec_2977)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$dst@1| () T@$Mutation_3601)
(declare-fun $t1@0 () T@$Mutation_11523)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@0| () T@$Mutation_3601)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$m'@0| () T@$Mutation_11523)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$v@1| () T@Vec_2977)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@1| () T@$Mutation_3601)
(declare-fun $t0@0 () T@$Mutation_11523)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun |$temp_0'vec'u64''@4| () T@Vec_2977)
(declare-fun |$temp_0'vec'u64''@5| () T@Vec_2977)
(declare-fun _$t1 () T@$Mutation_11523)
(declare-fun _$t0 () T@$Mutation_11523)
(declare-fun $t11@0 () Int)
(declare-fun $t12@0 () Int)
(declare-fun $t14@0 () Int)
(declare-fun $t15@0 () Int)
(declare-fun $t16@0 () Int)
(declare-fun $t17@0 () Int)
(declare-fun $t18@0 () Int)
(declare-fun $t20@0 () Int)
(declare-fun $t21@0 () Int)
(declare-fun $t22@0 () Int)
(declare-fun |$temp_0'vec'u64''@2| () T@Vec_2977)
(declare-fun |$temp_0'vec'u64''@3| () T@Vec_2977)
(declare-fun $t23@0 () T@$Mutation_3601)
(declare-fun $t24@0 () T@$Mutation_3601)
(declare-fun $t6@0 () T@Vec_2977)
(declare-fun |$temp_0'vec'u64''@0| () T@Vec_2977)
(declare-fun |$temp_0'vec'u64''@1| () T@Vec_2977)
(declare-fun $t4 () T@$Mutation_3601)
(declare-fun $t5 () T@$Mutation_3601)
(declare-fun $t23 () T@$Mutation_3601)
(declare-fun $t24 () T@$Mutation_3601)
(push 1)
(set-info :boogie-vc-id $42_VerifyLoopsWithMemoryOps_nested_loop1$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 24785) (let ((anon33_Else_correct true))
(let ((anon32_Then_correct  (=> inline$$Le$1$dst@1 (=> (and (= $t1@1 ($Mutation_11523 (|l#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$1$m'@1|) (|p#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$1$m'@1|) (Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$1$m'@1|)) (|Select__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_3601| $t24@2)) (|l#Vec_2977| (|p#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$1$m'@1|))) (|v#$Mutation_3601| $t24@2)) (|l#Vec_2977| (|v#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$1$m'@1|))))) (= $t0@1 ($Mutation_11523 (|l#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (|p#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|)) (|Select__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_3601| $t23@1)) (|l#Vec_2977| (|p#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|))) (|v#$Mutation_3601| $t23@1)) (|l#Vec_2977| (|v#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|)))))) (and (=> (= (ControlFlow 0 21278) (- 0 26257)) (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_2977| (|v#$Mutation_11523| $t0@1)))) (=> (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_2977| (|v#$Mutation_11523| $t0@1))) (and (=> (= (ControlFlow 0 21278) (- 0 26268)) (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_2977| (|v#$Mutation_11523| $t1@1)))) (=> (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_2977| (|v#$Mutation_11523| $t1@1))) (and (=> (= (ControlFlow 0 21278) (- 0 26279)) (<= 0 |inline$$1_Vector_length'u64'$0$l@1|)) (=> (<= 0 |inline$$1_Vector_length'u64'$0$l@1|) (=> (= (ControlFlow 0 21278) (- 0 26286)) (let (($range_0 ($Range 0 0)))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((n $i_1))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| $t0@1)) n) (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| $t1@1)) n))))
 :qid |loopswithmemoryopsdefaultz3bpl.1621:48|
 :skolemid |38|
))))))))))))))
(let ((L15_correct  (=> (= (ControlFlow 0 20884) (- 0 26426)) false)))
(let ((anon33_Then_correct  (=> $abort_flag@3 (=> (and (= $abort_code@4 $abort_code@4) (= (ControlFlow 0 21143) 20884)) L15_correct))))
(let ((inline$$AddU64$1$anon3_Then$1_correct  (=> (and (= $abort_flag@3 true) (= $abort_code@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 21107) 21143) anon33_Then_correct) (=> (= (ControlFlow 0 21107) 21129) anon33_Else_correct)))))
(let ((inline$$AddU64$1$anon3_Then_correct  (=> (and (> (+ $t20@2 1) $MAX_U64) (= (ControlFlow 0 21105) 21107)) inline$$AddU64$1$anon3_Then$1_correct)))
(let ((inline$$AddU64$1$anon3_Else_correct  (=> (and (and (>= $MAX_U64 (+ $t20@2 1)) (= inline$$AddU64$1$dst@1 (+ $t20@2 1))) (and (= $abort_flag@3 $abort_flag@1) (= $abort_code@4 $abort_code@2))) (and (=> (= (ControlFlow 0 21053) 21143) anon33_Then_correct) (=> (= (ControlFlow 0 21053) 21129) anon33_Else_correct)))))
(let ((anon32_Else_correct  (=> (not inline$$Le$1$dst@1) (=> (and (= $t20@2 (|v#$Mutation_3601| $t23@1)) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 21113) 21105) inline$$AddU64$1$anon3_Then_correct) (=> (= (ControlFlow 0 21113) 21053) inline$$AddU64$1$anon3_Else_correct))))))
(let ((inline$$Le$1$anon0_correct  (=> (= inline$$Le$1$dst@1 (<= $t17@2 $t18@2)) (and (=> (= (ControlFlow 0 20936) 21278) anon32_Then_correct) (=> (= (ControlFlow 0 20936) 21113) anon32_Else_correct)))))
(let ((anon30_Then_correct  (=> (and (and inline$$Le$0$dst@1 (= $t17@2 (|v#$Mutation_3601| $t24@2))) (and (= $t18@2 (|v#$Mutation_3601| $t23@1)) (= (ControlFlow 0 20942) 20936))) inline$$Le$1$anon0_correct)))
(let ((anon31_Then_correct  (=> $abort_flag@2 (=> (and (= $abort_code@3 $abort_code@3) (= (ControlFlow 0 20874) 20884)) L15_correct))))
(let ((anon29_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 21292) 20884)) L15_correct))))
(let ((anon28_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 21306) 20884)) L15_correct))))
(let ((anon31_Else_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (and (= $abort_flag@2 true) (= $abort_code@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 20838) 20874) anon31_Then_correct) (=> (= (ControlFlow 0 20838) 20860) anon31_Else_correct)))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t14@3 1) $MAX_U64) (= (ControlFlow 0 20836) 20838)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (and (and (>= $MAX_U64 (+ $t14@3 1)) (= inline$$AddU64$0$dst@1 (+ $t14@3 1))) (and (= $abort_flag@2 $abort_flag@1) (= $abort_code@3 $abort_code@2))) (and (=> (= (ControlFlow 0 20784) 20874) anon31_Then_correct) (=> (= (ControlFlow 0 20784) 20860) anon31_Else_correct)))))
(let ((anon30_Else_correct  (=> (not inline$$Le$0$dst@1) (=> (and (= $t14@3 (|v#$Mutation_3601| $t24@2)) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 20844) 20836) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 20844) 20784) inline$$AddU64$0$anon3_Else_correct))))))
(let ((inline$$Le$0$anon0_correct  (=> (= inline$$Le$0$dst@1 (<= $t11@3 $t12@3)) (and (=> (= (ControlFlow 0 20665) 20942) anon30_Then_correct) (=> (= (ControlFlow 0 20665) 20844) anon30_Else_correct)))))
(let ((anon29_Else_correct  (=> (not $abort_flag@1) (=> (and (and (= |$temp_0'u64'@1| (|v#$Mutation_3601| |inline$$1_Vector_borrow_mut'u64'$1$dst@2|)) (= |$temp_0'u64'@1| |$temp_0'u64'@1|)) (and (|$IsValid'u64'| $t11@1) (|$IsValid'u64'| $t12@1))) (=> (and (and (and (|$IsValid'u64'| $t14@1) (|$IsValid'u64'| $t15@1)) (and (|$IsValid'u64'| $t16@1) (|$IsValid'u64'| $t17@1))) (and (and (|$IsValid'u64'| $t18@1) (|$IsValid'u64'| $t20@1)) (and (|$IsValid'u64'| $t21@1) (|$IsValid'u64'| $t22@1)))) (=> (and (and (and (and (= $t23@1 ($Mutation_3601 (|l#$Mutation_3601| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) (|p#$Mutation_3601| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) |$temp_0'u64'@2|)) (|$IsValid'u64'| (|v#$Mutation_3601| $t23@1))) (and (= $t24@1 ($Mutation_3601 (|l#$Mutation_3601| |inline$$1_Vector_borrow_mut'u64'$1$dst@2|) (|p#$Mutation_3601| |inline$$1_Vector_borrow_mut'u64'$1$dst@2|) |$temp_0'u64'@3|)) (|$IsValid'u64'| (|v#$Mutation_3601| $t24@1)))) (and (and (not $abort_flag@1) (|$IsValid'u64'| $t11@2)) (and (|$IsValid'u64'| $t12@2) (|$IsValid'u64'| $t14@2)))) (and (and (and (|$IsValid'u64'| $t15@2) (|$IsValid'u64'| $t16@2)) (and (= $t24@2 ($Mutation_3601 (|l#$Mutation_3601| $t24@1) (|p#$Mutation_3601| $t24@1) |$temp_0'u64'@4|)) (|$IsValid'u64'| (|v#$Mutation_3601| $t24@2)))) (and (and (not $abort_flag@1) (= $t11@3 (|v#$Mutation_3601| $t23@1))) (and (= $t12@3 (|v#$Mutation_3601| $t24@2)) (= (ControlFlow 0 20671) 20665))))) inline$$Le$0$anon0_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$1$anon3_Then$1_correct|  (=> (and (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= $abort_flag@1 true)) (and (= |inline$$1_Vector_borrow_mut'u64'$1$dst@2| |inline$$1_Vector_borrow_mut'u64'$1$dst@0|) (= |inline$$1_Vector_borrow_mut'u64'$1$m'@1| |inline$$1_Vector_borrow_mut'u64'$1$m'@0|))) (and (=> (= (ControlFlow 0 20471) 21292) anon29_Then_correct) (=> (= (ControlFlow 0 20471) 20671) anon29_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$1$anon3_Then_correct|  (=> (and (not (InRangeVec_2977 |inline$$1_Vector_borrow_mut'u64'$1$v@1| 0)) (= (ControlFlow 0 20469) 20471)) |inline$$1_Vector_borrow_mut'u64'$1$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$1$anon3_Else_correct|  (=> (and (InRangeVec_2977 |inline$$1_Vector_borrow_mut'u64'$1$v@1| 0) (= |inline$$1_Vector_borrow_mut'u64'$1$dst@1| ($Mutation_3601 (|l#$Mutation_11523| $t1@0) (let ((l (|l#Vec_2977| (|p#$Mutation_11523| $t1@0))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_11523| $t1@0)) l 0) (+ l 1))) (|Select__T@[Int]Int_| (|v#Vec_2977| |inline$$1_Vector_borrow_mut'u64'$1$v@1|) 0)))) (=> (and (and (= $abort_code@2 $abort_code@1) (= $abort_flag@1 $abort_flag@0)) (and (= |inline$$1_Vector_borrow_mut'u64'$1$dst@2| |inline$$1_Vector_borrow_mut'u64'$1$dst@1|) (= |inline$$1_Vector_borrow_mut'u64'$1$m'@1| $t1@0))) (and (=> (= (ControlFlow 0 20419) 21292) anon29_Then_correct) (=> (= (ControlFlow 0 20419) 20671) anon29_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$1$v@1| (|v#$Mutation_11523| $t1@0)) (and (=> (= (ControlFlow 0 20389) 20469) |inline$$1_Vector_borrow_mut'u64'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 20389) 20419) |inline$$1_Vector_borrow_mut'u64'$1$anon3_Else_correct|)))))
(let ((anon28_Else_correct  (=> (and (and (not $abort_flag@0) (= |$temp_0'u64'@0| (|v#$Mutation_3601| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|))) (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (= (ControlFlow 0 20479) 20389))) |inline$$1_Vector_borrow_mut'u64'$1$anon0_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@0|) (= |inline$$1_Vector_borrow_mut'u64'$0$m'@1| |inline$$1_Vector_borrow_mut'u64'$0$m'@0|))) (and (=> (= (ControlFlow 0 20261) 21306) anon28_Then_correct) (=> (= (ControlFlow 0 20261) 20479) anon28_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_2977 |inline$$1_Vector_borrow_mut'u64'$0$v@1| 0)) (= (ControlFlow 0 20259) 20261)) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|  (=> (and (InRangeVec_2977 |inline$$1_Vector_borrow_mut'u64'$0$v@1| 0) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@1| ($Mutation_3601 (|l#$Mutation_11523| $t0@0) (let ((l@@0 (|l#Vec_2977| (|p#$Mutation_11523| $t0@0))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_11523| $t0@0)) l@@0 0) (+ l@@0 1))) (|Select__T@[Int]Int_| (|v#Vec_2977| |inline$$1_Vector_borrow_mut'u64'$0$v@1|) 0)))) (=> (and (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@1|) (= |inline$$1_Vector_borrow_mut'u64'$0$m'@1| $t0@0))) (and (=> (= (ControlFlow 0 20209) 21306) anon28_Then_correct) (=> (= (ControlFlow 0 20209) 20479) anon28_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$0$v@1| (|v#$Mutation_11523| $t0@0)) (and (=> (= (ControlFlow 0 20179) 20259) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 20179) 20209) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|)))))
(let ((anon27_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 20269) 20179)) |inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|)))
(let ((anon27_Else_correct  (=> (not inline$$Lt$0$dst@1) (and (=> (= (ControlFlow 0 20075) (- 0 25475)) (let (($range_0@@0 ($Range 0 |inline$$1_Vector_length'u64'$0$l@1|)))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@0) (let ((m $i_1@@0))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| $t0@0)) m) (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| $t1@0)) m))))
 :qid |loopswithmemoryopsdefaultz3bpl.1567:48|
 :skolemid |37|
)))) (=> (let (($range_0@@0 ($Range 0 |inline$$1_Vector_length'u64'$0$l@1|)))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@1) (let ((m $i_1@@1))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| $t0@0)) m) (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| $t1@0)) m))))
 :qid |loopswithmemoryopsdefaultz3bpl.1567:48|
 :skolemid |37|
))) (=> (= |$temp_0'vec'u64''@4| (|v#$Mutation_11523| $t0@0)) (=> (and (and (= |$temp_0'vec'u64''@4| |$temp_0'vec'u64''@4|) (= |$temp_0'vec'u64''@5| (|v#$Mutation_11523| $t1@0))) (and (= |$temp_0'vec'u64''@5| |$temp_0'vec'u64''@5|) (= (ControlFlow 0 20075) (- 0 25547)))) (not false))))))))
(let ((anon26_Else$1_correct  (and (=> (= (ControlFlow 0 19994) 20269) anon27_Then_correct) (=> (= (ControlFlow 0 19994) 20075) anon27_Else_correct))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< 0 |inline$$1_Vector_length'u64'$0$l@1|)) (= (ControlFlow 0 19984) 19994)) anon26_Else$1_correct)))
(let ((anon26_Else_correct  (=> (and (not false) (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|)) (=> (and (and (> |inline$$1_Vector_length'u64'$0$l@1| 0) (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_2977| (|v#$Mutation_11523| _$t1)))) (and (|$IsValid'u64'| 0) (= 0 0))) (and (=> (= (ControlFlow 0 19990) (- 0 25173)) (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_2977| (|v#$Mutation_11523| _$t0)))) (=> (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_2977| (|v#$Mutation_11523| _$t0))) (and (=> (= (ControlFlow 0 19990) (- 0 25184)) (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_2977| (|v#$Mutation_11523| _$t1)))) (=> (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_2977| (|v#$Mutation_11523| _$t1))) (and (=> (= (ControlFlow 0 19990) (- 0 25195)) (<= 0 |inline$$1_Vector_length'u64'$0$l@1|)) (=> (<= 0 |inline$$1_Vector_length'u64'$0$l@1|) (and (=> (= (ControlFlow 0 19990) (- 0 25202)) (let (($range_0@@1 ($Range 0 0)))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@2) (let ((n@@0 $i_1@@2))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| _$t0)) n@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| _$t1)) n@@0))))
 :qid |loopswithmemoryopsdefaultz3bpl.1220:48|
 :skolemid |35|
)))) (=> (let (($range_0@@1 ($Range 0 0)))
(forall (($i_1@@3 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@3) (let ((n@@0 $i_1@@3))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| _$t0)) n@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| _$t1)) n@@0))))
 :qid |loopswithmemoryopsdefaultz3bpl.1220:48|
 :skolemid |35|
))) (=> (and (|$IsValid'u64'| $t11@0) (|$IsValid'u64'| $t12@0)) (=> (and (and (|$IsValid'u64'| $t14@0) (|$IsValid'u64'| $t15@0)) (and (|$IsValid'u64'| $t16@0) (|$IsValid'u64'| $t17@0))) (=> (and (and (and (and (|$IsValid'u64'| $t18@0) (|$IsValid'u64'| $t20@0)) (and (|$IsValid'u64'| $t21@0) (|$IsValid'u64'| $t22@0))) (and (and (= $t0@0 ($Mutation_11523 (|l#$Mutation_11523| _$t0) (|p#$Mutation_11523| _$t0) |$temp_0'vec'u64''@2|)) (|$IsValid'vec'u64''| (|v#$Mutation_11523| $t0@0))) (and (= $t1@0 ($Mutation_11523 (|l#$Mutation_11523| _$t1) (|p#$Mutation_11523| _$t1) |$temp_0'vec'u64''@3|)) (|$IsValid'vec'u64''| (|v#$Mutation_11523| $t1@0))))) (and (and (and (|$IsValid'u64'| (|v#$Mutation_3601| $t23@0)) (|$IsValid'u64'| (|v#$Mutation_3601| $t24@0))) (and (not false) (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_2977| (|v#$Mutation_11523| $t0@0))))) (and (and (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_2977| (|v#$Mutation_11523| $t1@0))) (<= 0 |inline$$1_Vector_length'u64'$0$l@1|)) (and (let (($range_0@@2 ($Range 0 0)))
(forall (($i_1@@4 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@4) (let ((n@@1 $i_1@@4))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| $t0@0)) n@@1) (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| $t1@0)) n@@1))))
 :qid |loopswithmemoryopsdefaultz3bpl.1310:53|
 :skolemid |36|
))) (= (ControlFlow 0 19990) 19984))))) inline$$Lt$0$anon0_correct)))))))))))))))
(let ((anon26_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_2977| $t6@0)) (and (=> (= (ControlFlow 0 19644) 21320) anon26_Then_correct) (=> (= (ControlFlow 0 19644) 19990) anon26_Else_correct)))))
(let ((anon0$1_correct  (=> (and (= (|l#$Mutation_11523| _$t0) ($Param 0)) (= (|l#$Mutation_11523| _$t1) ($Param 1))) (=> (and (and (and (|$IsValid'vec'u64''| (|v#$Mutation_11523| _$t0)) (|$IsValid'vec'u64''| (|v#$Mutation_11523| _$t1))) (and (= |$temp_0'vec'u64''@0| (|v#$Mutation_11523| _$t0)) (= |$temp_0'vec'u64''@0| |$temp_0'vec'u64''@0|))) (and (and (= |$temp_0'vec'u64''@1| (|v#$Mutation_11523| _$t1)) (= |$temp_0'vec'u64''@1| |$temp_0'vec'u64''@1|)) (and (= $t6@0 (|v#$Mutation_11523| _$t0)) (= (ControlFlow 0 19650) 19644)))) |inline$$1_Vector_length'u64'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (|l#Vec_2977| (|p#$Mutation_3601| $t4)) 0) (=> (and (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t5)) 0) (= (|l#Vec_2977| (|p#$Mutation_3601| $t23)) 0)) (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t24)) 0) (= (ControlFlow 0 19552) 19650))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 24785) 19552) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))
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
(declare-datatypes ((T@$Mutation_11523 0)) ((($Mutation_11523 (|l#$Mutation_11523| T@$Location) (|p#$Mutation_11523| T@Vec_2977) (|v#$Mutation_11523| T@Vec_2977) ) ) ))
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
 :qid |loopswithmemoryopsdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |loopswithmemoryopsdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |loopswithmemoryopsdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |loopswithmemoryopsdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |loopswithmemoryopsdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |loopswithmemoryopsdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |loopswithmemoryopsdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |loopswithmemoryopsdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u64''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |loopswithmemoryopsdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |loopswithmemoryopsdefaultz3bpl.613:29|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u64''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u64'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |loopswithmemoryopsdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |loopswithmemoryopsdefaultz3bpl.619:29|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |loopswithmemoryopsdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |loopswithmemoryopsdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |loopswithmemoryopsdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0)  (and (= (|l#Vec_2977| v1@@0) (|l#Vec_2977| v2@@0)) (forall ((i@@4 Int) ) (!  (=> (InRangeVec_2977 v1@@0 i@@4) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1@@0) i@@4) (|Select__T@[Int]Int_| (|v#Vec_2977| v2@@0) i@@4)))
 :qid |loopswithmemoryopsdefaultz3bpl.796:13|
 :skolemid |24|
))))
 :qid |loopswithmemoryopsdefaultz3bpl.794:28|
 :skolemid |25|
 :pattern ( (|$IsEqual'vec'u8''| v1@@0 v2@@0))
)))
(assert (forall ((v@@6 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@6)) (forall ((i@@5 Int) ) (!  (=> (InRangeVec_2977 v@@6 i@@5) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@6) i@@5)))
 :qid |loopswithmemoryopsdefaultz3bpl.802:13|
 :skolemid |26|
))))
 :qid |loopswithmemoryopsdefaultz3bpl.800:28|
 :skolemid |27|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@6 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@7 Int) ) (!  (and (and (|$IsValid'u64'| i@@7) (InRangeVec_2977 v@@7 i@@7)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@7) e@@0))
 :qid |loopswithmemoryopsdefaultz3bpl.807:13|
 :skolemid |28|
))) (= i@@6 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@6) (InRangeVec_2977 v@@7 i@@6)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@6)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |loopswithmemoryopsdefaultz3bpl.815:17|
 :skolemid |29|
)))))
 :qid |loopswithmemoryopsdefaultz3bpl.811:15|
 :skolemid |30|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1)))
 :qid |loopswithmemoryopsdefaultz3bpl.988:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha2 v1@@1) ($1_Hash_sha2 v2@@1))
)))
(assert (forall ((v1@@2 T@Vec_2977) (v2@@2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@2 v2@@2) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2)))
 :qid |loopswithmemoryopsdefaultz3bpl.1004:15|
 :skolemid |32|
 :pattern ( ($1_Hash_sha3 v1@@2) ($1_Hash_sha3 v2@@2))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |loopswithmemoryopsdefaultz3bpl.1051:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |loopswithmemoryopsdefaultz3bpl.1054:15|
 :skolemid |34|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 T@Vec_2977) (i@@8 Int) ) (! (= (InRangeVec_2977 v@@8 i@@8)  (and (>= i@@8 0) (< i@@8 (|l#Vec_2977| v@@8))))
 :qid |loopswithmemoryopsdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@8 i@@8))
)))
(assert (forall ((v@@9 T@Vec_2977) (e@@1 Int) ) (! (let ((i@@9 (IndexOfVec_2977 v@@9 e@@1)))
(ite  (not (exists ((i@@10 Int) ) (!  (and (InRangeVec_2977 v@@9 i@@10) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@10) e@@1))
 :qid |loopswithmemoryopsdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@9 (- 0 1))  (and (and (InRangeVec_2977 v@@9 i@@9) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) i@@9) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (>= j@@1 0) (< j@@1 i@@9)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@9) j@@1) e@@1)))
 :qid |loopswithmemoryopsdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |loopswithmemoryopsdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@9 e@@1))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |loopswithmemoryopsdefaultz3bpl.275:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@12 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@12) (ite  (and (>= i@@12 |l#0@@0|) (< i@@12 |l#1|)) (ite (< i@@12 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@12) (|Select__T@[Int]Int_| |l#4| (- i@@12 |l#5|))) |l#6|))
 :qid |loopswithmemoryopsdefaultz3bpl.73:19|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@12))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@13 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@13) (ite  (and (<= |l#0@@1| i@@13) (< i@@13 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@13) |l#4@@0|)) |l#5@@0|))
 :qid |loopswithmemoryopsdefaultz3bpl.82:30|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@13))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@2 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2) (ite  (and (>= j@@2 |l#0@@2|) (< j@@2 |l#1@@1|)) (ite (< j@@2 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@2) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@2 |l#5@@1|))) |l#6@@0|))
 :qid |loopswithmemoryopsdefaultz3bpl.63:20|
 :skolemid |46|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@2))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@6 () Bool)
(declare-fun |$temp_0'u64'@6| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$3$dst@2| () T@$Mutation_3601)
(declare-fun |inline$$1_Vector_length'u64'$0$l@1| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$2$m'@1| () T@$Mutation_11523)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$3$m'@1| () T@$Mutation_11523)
(declare-fun inline$$AddU64$2$dst@2 () Int)
(declare-fun $t26@1 () Bool)
(declare-fun $t0@1 () T@$Mutation_11523)
(declare-fun $t1@1 () T@$Mutation_11523)
(declare-fun |$temp_0'vec'u64''@4| () T@Vec_2977)
(declare-fun |$temp_0'vec'u64''@5| () T@Vec_2977)
(declare-fun $abort_code@7 () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$3$dst@0| () T@$Mutation_3601)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$3$m'@0| () T@$Mutation_11523)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$3$v@1| () T@Vec_2977)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$3$dst@1| () T@$Mutation_3601)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_flag@5 () Bool)
(declare-fun $abort_code@6 () Int)
(declare-fun |$temp_0'u64'@5| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$2$dst@2| () T@$Mutation_3601)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$2$dst@0| () T@$Mutation_3601)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$2$m'@0| () T@$Mutation_11523)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$2$v@1| () T@Vec_2977)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$2$dst@1| () T@$Mutation_3601)
(declare-fun $abort_code@5 () Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun inline$$AddU64$2$dst@0 () Int)
(declare-fun $t9@0 () Int)
(declare-fun inline$$AddU64$2$dst@1 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun inline$$Le$1$dst@1 () Bool)
(declare-fun $t1@0 () T@$Mutation_11523)
(declare-fun $t11@2 () T@$Mutation_3601)
(declare-fun $t0@0 () T@$Mutation_11523)
(declare-fun $t10@1 () T@$Mutation_3601)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun $t21@2 () Int)
(declare-fun inline$$AddU64$1$dst@1 () Int)
(declare-fun $t18@2 () Int)
(declare-fun $t19@2 () Int)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t15@3 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $t12@3 () Int)
(declare-fun $t13@3 () Int)
(declare-fun |$temp_0'u64'@1| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$dst@2| () T@$Mutation_3601)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$m'@1| () T@$Mutation_11523)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$m'@1| () T@$Mutation_11523)
(declare-fun $t12@0 () Int)
(declare-fun $t13@0 () Int)
(declare-fun $t15@0 () Int)
(declare-fun $t16@0 () Int)
(declare-fun $t17@0 () Int)
(declare-fun $t18@0 () Int)
(declare-fun $t19@0 () Int)
(declare-fun $t21@0 () Int)
(declare-fun $t22@0 () Int)
(declare-fun $t23@0 () Int)
(declare-fun $t24@0 () Int)
(declare-fun $t25@0 () Int)
(declare-fun |$temp_0'vec'u64''@2| () T@Vec_2977)
(declare-fun |$temp_0'vec'u64''@3| () T@Vec_2977)
(declare-fun $t10@0 () T@$Mutation_3601)
(declare-fun $t11@0 () T@$Mutation_3601)
(declare-fun $t27@0 () T@$Mutation_3601)
(declare-fun $t28@0 () T@$Mutation_3601)
(declare-fun $t12@1 () Int)
(declare-fun $t13@1 () Int)
(declare-fun $t15@1 () Int)
(declare-fun $t16@1 () Int)
(declare-fun $t17@1 () Int)
(declare-fun $t18@1 () Int)
(declare-fun $t19@1 () Int)
(declare-fun $t21@1 () Int)
(declare-fun $t22@1 () Int)
(declare-fun $t23@1 () Int)
(declare-fun |$temp_0'u64'@2| () Int)
(declare-fun $t11@1 () T@$Mutation_3601)
(declare-fun |$temp_0'u64'@3| () Int)
(declare-fun $t12@2 () Int)
(declare-fun $t13@2 () Int)
(declare-fun $t15@2 () Int)
(declare-fun $t16@2 () Int)
(declare-fun $t17@2 () Int)
(declare-fun |$temp_0'u64'@4| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$dst@0| () T@$Mutation_3601)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$m'@0| () T@$Mutation_11523)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$v@1| () T@Vec_2977)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$dst@1| () T@$Mutation_3601)
(declare-fun _$t1 () T@$Mutation_11523)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@2| () T@$Mutation_3601)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@0| () T@$Mutation_3601)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$m'@0| () T@$Mutation_11523)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$v@1| () T@Vec_2977)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@1| () T@$Mutation_3601)
(declare-fun _$t0 () T@$Mutation_11523)
(declare-fun $abort_code@0 () Int)
(declare-fun $t6@0 () T@Vec_2977)
(declare-fun |$temp_0'vec'u64''@0| () T@Vec_2977)
(declare-fun |$temp_0'vec'u64''@1| () T@Vec_2977)
(declare-fun $t4 () T@$Mutation_3601)
(declare-fun $t5 () T@$Mutation_3601)
(declare-fun $t10 () T@$Mutation_3601)
(declare-fun $t11 () T@$Mutation_3601)
(declare-fun $t27 () T@$Mutation_3601)
(declare-fun $t28 () T@$Mutation_3601)
(push 1)
(set-info :boogie-vc-id $42_VerifyLoopsWithMemoryOps_nested_loop2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 26481) (let ((anon42_Else_correct  (=> (not $abort_flag@6) (=> (and (= |$temp_0'u64'@6| (|v#$Mutation_3601| |inline$$1_Vector_borrow_mut'u64'$3$dst@2|)) (= |$temp_0'u64'@6| |$temp_0'u64'@6|)) (and (=> (= (ControlFlow 0 23802) (- 0 28569)) (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_2977| (|v#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$2$m'@1|)))) (=> (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_2977| (|v#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$2$m'@1|))) (and (=> (= (ControlFlow 0 23802) (- 0 28580)) (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_2977| (|v#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$3$m'@1|)))) (=> (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_2977| (|v#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$3$m'@1|))) (and (=> (= (ControlFlow 0 23802) (- 0 28591)) (< inline$$AddU64$2$dst@2 |inline$$1_Vector_length'u64'$0$l@1|)) (=> (< inline$$AddU64$2$dst@2 |inline$$1_Vector_length'u64'$0$l@1|) (=> (= (ControlFlow 0 23802) (- 0 28598)) (let (($range_0 ($Range 0 inline$$AddU64$2$dst@2)))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((n $i_1))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$2$m'@1|)) n) (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$3$m'@1|)) n))))
 :qid |loopswithmemoryopsdefaultz3bpl.2260:49|
 :skolemid |42|
))))))))))))))
(let ((anon40_Then_correct  (=> $t26@1 (and (=> (= (ControlFlow 0 23909) (- 0 28195)) (let (($range_0@@0 ($Range 0 |inline$$1_Vector_length'u64'$0$l@1|)))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@0) (let ((m $i_1@@0))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| $t0@1)) m) (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| $t1@1)) m))))
 :qid |loopswithmemoryopsdefaultz3bpl.2206:48|
 :skolemid |41|
)))) (=> (let (($range_0@@0 ($Range 0 |inline$$1_Vector_length'u64'$0$l@1|)))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@1) (let ((m $i_1@@1))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| $t0@1)) m) (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| $t1@1)) m))))
 :qid |loopswithmemoryopsdefaultz3bpl.2206:48|
 :skolemid |41|
))) (=> (= |$temp_0'vec'u64''@4| (|v#$Mutation_11523| $t0@1)) (=> (and (and (= |$temp_0'vec'u64''@4| |$temp_0'vec'u64''@4|) (= |$temp_0'vec'u64''@5| (|v#$Mutation_11523| $t1@1))) (and (= |$temp_0'vec'u64''@5| |$temp_0'vec'u64''@5|) (= (ControlFlow 0 23909) (- 0 28267)))) (not false))))))))
(let ((anon38_Else_correct true))
(let ((L14_correct  (=> (= (ControlFlow 0 22803) (- 0 28541)) false)))
(let ((anon42_Then_correct  (=> $abort_flag@6 (=> (and (= $abort_code@7 $abort_code@7) (= (ControlFlow 0 23816) 22803)) L14_correct))))
(let ((|inline$$1_Vector_borrow_mut'u64'$3$anon3_Then$1_correct|  (=> (and (and (= $abort_flag@6 true) (= $abort_code@7 $EXEC_FAILURE_CODE)) (and (= |inline$$1_Vector_borrow_mut'u64'$3$dst@2| |inline$$1_Vector_borrow_mut'u64'$3$dst@0|) (= |inline$$1_Vector_borrow_mut'u64'$3$m'@1| |inline$$1_Vector_borrow_mut'u64'$3$m'@0|))) (and (=> (= (ControlFlow 0 23699) 23816) anon42_Then_correct) (=> (= (ControlFlow 0 23699) 23802) anon42_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$3$anon3_Then_correct|  (=> (and (not (InRangeVec_2977 |inline$$1_Vector_borrow_mut'u64'$3$v@1| inline$$AddU64$2$dst@2)) (= (ControlFlow 0 23697) 23699)) |inline$$1_Vector_borrow_mut'u64'$3$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$3$anon3_Else_correct|  (=> (and (InRangeVec_2977 |inline$$1_Vector_borrow_mut'u64'$3$v@1| inline$$AddU64$2$dst@2) (= |inline$$1_Vector_borrow_mut'u64'$3$dst@1| ($Mutation_3601 (|l#$Mutation_11523| $t1@1) (let ((l (|l#Vec_2977| (|p#$Mutation_11523| $t1@1))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_11523| $t1@1)) l inline$$AddU64$2$dst@2) (+ l 1))) (|Select__T@[Int]Int_| (|v#Vec_2977| |inline$$1_Vector_borrow_mut'u64'$3$v@1|) inline$$AddU64$2$dst@2)))) (=> (and (and (= $abort_flag@6 $abort_flag@5) (= $abort_code@7 $abort_code@6)) (and (= |inline$$1_Vector_borrow_mut'u64'$3$dst@2| |inline$$1_Vector_borrow_mut'u64'$3$dst@1|) (= |inline$$1_Vector_borrow_mut'u64'$3$m'@1| $t1@1))) (and (=> (= (ControlFlow 0 23647) 23816) anon42_Then_correct) (=> (= (ControlFlow 0 23647) 23802) anon42_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$3$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$3$v@1| (|v#$Mutation_11523| $t1@1)) (and (=> (= (ControlFlow 0 23617) 23697) |inline$$1_Vector_borrow_mut'u64'$3$anon3_Then_correct|) (=> (= (ControlFlow 0 23617) 23647) |inline$$1_Vector_borrow_mut'u64'$3$anon3_Else_correct|)))))
(let ((anon41_Else_correct  (=> (and (and (not $abort_flag@5) (= |$temp_0'u64'@5| (|v#$Mutation_3601| |inline$$1_Vector_borrow_mut'u64'$2$dst@2|))) (and (= |$temp_0'u64'@5| |$temp_0'u64'@5|) (= (ControlFlow 0 23707) 23617))) |inline$$1_Vector_borrow_mut'u64'$3$anon0_correct|)))
(let ((anon41_Then_correct  (=> $abort_flag@5 (=> (and (= $abort_code@6 $abort_code@6) (= (ControlFlow 0 23830) 22803)) L14_correct))))
(let ((|inline$$1_Vector_borrow_mut'u64'$2$anon3_Then$1_correct|  (=> (and (and (= $abort_code@6 $EXEC_FAILURE_CODE) (= $abort_flag@5 true)) (and (= |inline$$1_Vector_borrow_mut'u64'$2$dst@2| |inline$$1_Vector_borrow_mut'u64'$2$dst@0|) (= |inline$$1_Vector_borrow_mut'u64'$2$m'@1| |inline$$1_Vector_borrow_mut'u64'$2$m'@0|))) (and (=> (= (ControlFlow 0 23489) 23830) anon41_Then_correct) (=> (= (ControlFlow 0 23489) 23707) anon41_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$2$anon3_Then_correct|  (=> (and (not (InRangeVec_2977 |inline$$1_Vector_borrow_mut'u64'$2$v@1| inline$$AddU64$2$dst@2)) (= (ControlFlow 0 23487) 23489)) |inline$$1_Vector_borrow_mut'u64'$2$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$2$anon3_Else_correct|  (=> (and (InRangeVec_2977 |inline$$1_Vector_borrow_mut'u64'$2$v@1| inline$$AddU64$2$dst@2) (= |inline$$1_Vector_borrow_mut'u64'$2$dst@1| ($Mutation_3601 (|l#$Mutation_11523| $t0@1) (let ((l@@0 (|l#Vec_2977| (|p#$Mutation_11523| $t0@1))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_11523| $t0@1)) l@@0 inline$$AddU64$2$dst@2) (+ l@@0 1))) (|Select__T@[Int]Int_| (|v#Vec_2977| |inline$$1_Vector_borrow_mut'u64'$2$v@1|) inline$$AddU64$2$dst@2)))) (=> (and (and (= $abort_code@6 $abort_code@5) (= $abort_flag@5 $abort_flag@4)) (and (= |inline$$1_Vector_borrow_mut'u64'$2$dst@2| |inline$$1_Vector_borrow_mut'u64'$2$dst@1|) (= |inline$$1_Vector_borrow_mut'u64'$2$m'@1| $t0@1))) (and (=> (= (ControlFlow 0 23437) 23830) anon41_Then_correct) (=> (= (ControlFlow 0 23437) 23707) anon41_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$2$v@1| (|v#$Mutation_11523| $t0@1)) (and (=> (= (ControlFlow 0 23407) 23487) |inline$$1_Vector_borrow_mut'u64'$2$anon3_Then_correct|) (=> (= (ControlFlow 0 23407) 23437) |inline$$1_Vector_borrow_mut'u64'$2$anon3_Else_correct|)))))
(let ((anon40_Else_correct  (=> (and (not $t26@1) (= (ControlFlow 0 23497) 23407)) |inline$$1_Vector_borrow_mut'u64'$2$anon0_correct|)))
(let ((anon39_Else_correct  (=> (not $abort_flag@4) (=> (and (= inline$$AddU64$2$dst@2 inline$$AddU64$2$dst@2) (= $t26@1 (= inline$$AddU64$2$dst@2 |inline$$1_Vector_length'u64'$0$l@1|))) (and (=> (= (ControlFlow 0 23301) 23909) anon40_Then_correct) (=> (= (ControlFlow 0 23301) 23497) anon40_Else_correct))))))
(let ((anon39_Then_correct  (=> $abort_flag@4 (=> (and (= $abort_code@5 $abort_code@5) (= (ControlFlow 0 23923) 22803)) L14_correct))))
(let ((inline$$AddU64$2$anon3_Then$1_correct  (=> (= $abort_flag@4 true) (=> (and (= $abort_code@5 $EXEC_FAILURE_CODE) (= inline$$AddU64$2$dst@2 inline$$AddU64$2$dst@0)) (and (=> (= (ControlFlow 0 23273) 23923) anon39_Then_correct) (=> (= (ControlFlow 0 23273) 23301) anon39_Else_correct))))))
(let ((inline$$AddU64$2$anon3_Then_correct  (=> (and (> (+ $t9@0 1) $MAX_U64) (= (ControlFlow 0 23271) 23273)) inline$$AddU64$2$anon3_Then$1_correct)))
(let ((inline$$AddU64$2$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t9@0 1)) (=> (and (and (= inline$$AddU64$2$dst@1 (+ $t9@0 1)) (= $abort_flag@4 $abort_flag@1)) (and (= $abort_code@5 $abort_code@2) (= inline$$AddU64$2$dst@2 inline$$AddU64$2$dst@1))) (and (=> (= (ControlFlow 0 23219) 23923) anon39_Then_correct) (=> (= (ControlFlow 0 23219) 23301) anon39_Else_correct))))))
(let ((anon37_Then_correct  (=> (and (and inline$$Le$1$dst@1 (= $t1@1 ($Mutation_11523 (|l#$Mutation_11523| $t1@0) (|p#$Mutation_11523| $t1@0) (Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| $t1@0)) (|Select__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_3601| $t11@2)) (|l#Vec_2977| (|p#$Mutation_11523| $t1@0))) (|v#$Mutation_3601| $t11@2)) (|l#Vec_2977| (|v#$Mutation_11523| $t1@0)))))) (and (= $t0@1 ($Mutation_11523 (|l#$Mutation_11523| $t0@0) (|p#$Mutation_11523| $t0@0) (Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| $t0@0)) (|Select__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_3601| $t10@1)) (|l#Vec_2977| (|p#$Mutation_11523| $t0@0))) (|v#$Mutation_3601| $t10@1)) (|l#Vec_2977| (|v#$Mutation_11523| $t0@0))))) (|$IsValid'u64'| 1))) (and (=> (= (ControlFlow 0 23279) 23271) inline$$AddU64$2$anon3_Then_correct) (=> (= (ControlFlow 0 23279) 23219) inline$$AddU64$2$anon3_Else_correct)))))
(let ((anon38_Then_correct  (=> $abort_flag@3 (=> (and (= $abort_code@4 $abort_code@4) (= (ControlFlow 0 23062) 22803)) L14_correct))))
(let ((inline$$AddU64$1$anon3_Then$1_correct  (=> (and (= $abort_flag@3 true) (= $abort_code@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 23026) 23062) anon38_Then_correct) (=> (= (ControlFlow 0 23026) 23048) anon38_Else_correct)))))
(let ((inline$$AddU64$1$anon3_Then_correct  (=> (and (> (+ $t21@2 1) $MAX_U64) (= (ControlFlow 0 23024) 23026)) inline$$AddU64$1$anon3_Then$1_correct)))
(let ((inline$$AddU64$1$anon3_Else_correct  (=> (and (and (>= $MAX_U64 (+ $t21@2 1)) (= inline$$AddU64$1$dst@1 (+ $t21@2 1))) (and (= $abort_flag@3 $abort_flag@1) (= $abort_code@4 $abort_code@2))) (and (=> (= (ControlFlow 0 22972) 23062) anon38_Then_correct) (=> (= (ControlFlow 0 22972) 23048) anon38_Else_correct)))))
(let ((anon37_Else_correct  (=> (not inline$$Le$1$dst@1) (=> (and (= $t21@2 (|v#$Mutation_3601| $t10@1)) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 23032) 23024) inline$$AddU64$1$anon3_Then_correct) (=> (= (ControlFlow 0 23032) 22972) inline$$AddU64$1$anon3_Else_correct))))))
(let ((inline$$Le$1$anon0_correct  (=> (= inline$$Le$1$dst@1 (<= $t18@2 $t19@2)) (and (=> (= (ControlFlow 0 22855) 23279) anon37_Then_correct) (=> (= (ControlFlow 0 22855) 23032) anon37_Else_correct)))))
(let ((anon35_Then_correct  (=> (and (and inline$$Le$0$dst@1 (= $t18@2 (|v#$Mutation_3601| $t11@2))) (and (= $t19@2 (|v#$Mutation_3601| $t10@1)) (= (ControlFlow 0 22861) 22855))) inline$$Le$1$anon0_correct)))
(let ((anon36_Then_correct  (=> $abort_flag@2 (=> (and (= $abort_code@3 $abort_code@3) (= (ControlFlow 0 22793) 22803)) L14_correct))))
(let ((anon34_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 23937) 22803)) L14_correct))))
(let ((anon33_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 23951) 22803)) L14_correct))))
(let ((anon36_Else_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (and (= $abort_flag@2 true) (= $abort_code@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 22757) 22793) anon36_Then_correct) (=> (= (ControlFlow 0 22757) 22779) anon36_Else_correct)))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t15@3 1) $MAX_U64) (= (ControlFlow 0 22755) 22757)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (and (and (>= $MAX_U64 (+ $t15@3 1)) (= inline$$AddU64$0$dst@1 (+ $t15@3 1))) (and (= $abort_flag@2 $abort_flag@1) (= $abort_code@3 $abort_code@2))) (and (=> (= (ControlFlow 0 22703) 22793) anon36_Then_correct) (=> (= (ControlFlow 0 22703) 22779) anon36_Else_correct)))))
(let ((anon35_Else_correct  (=> (not inline$$Le$0$dst@1) (=> (and (= $t15@3 (|v#$Mutation_3601| $t11@2)) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 22763) 22755) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 22763) 22703) inline$$AddU64$0$anon3_Else_correct))))))
(let ((inline$$Le$0$anon0_correct  (=> (= inline$$Le$0$dst@1 (<= $t12@3 $t13@3)) (and (=> (= (ControlFlow 0 22584) 22861) anon35_Then_correct) (=> (= (ControlFlow 0 22584) 22763) anon35_Else_correct)))))
(let ((anon34_Else_correct  (=> (not $abort_flag@1) (=> (and (= |$temp_0'u64'@1| (|v#$Mutation_3601| |inline$$1_Vector_borrow_mut'u64'$1$dst@2|)) (= |$temp_0'u64'@1| |$temp_0'u64'@1|)) (and (=> (= (ControlFlow 0 22590) (- 0 27239)) (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_2977| (|v#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|)))) (=> (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_2977| (|v#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|))) (and (=> (= (ControlFlow 0 22590) (- 0 27250)) (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_2977| (|v#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$1$m'@1|)))) (=> (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_2977| (|v#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$1$m'@1|))) (and (=> (= (ControlFlow 0 22590) (- 0 27261)) (< 0 |inline$$1_Vector_length'u64'$0$l@1|)) (=> (< 0 |inline$$1_Vector_length'u64'$0$l@1|) (and (=> (= (ControlFlow 0 22590) (- 0 27268)) (let (($range_0@@1 ($Range 0 0)))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@2) (let ((n@@0 $i_1@@2))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|)) n@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$1$m'@1|)) n@@0))))
 :qid |loopswithmemoryopsdefaultz3bpl.1830:48|
 :skolemid |39|
)))) (=> (let (($range_0@@1 ($Range 0 0)))
(forall (($i_1@@3 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@3) (let ((n@@0 $i_1@@3))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|)) n@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$1$m'@1|)) n@@0))))
 :qid |loopswithmemoryopsdefaultz3bpl.1830:48|
 :skolemid |39|
))) (=> (and (and (|$IsValid'u64'| $t9@0) (|$IsValid'u64'| $t12@0)) (and (|$IsValid'u64'| $t13@0) (|$IsValid'u64'| $t15@0))) (=> (and (and (and (and (|$IsValid'u64'| $t16@0) (|$IsValid'u64'| $t17@0)) (and (|$IsValid'u64'| $t18@0) (|$IsValid'u64'| $t19@0))) (and (and (|$IsValid'u64'| $t21@0) (|$IsValid'u64'| $t22@0)) (and (|$IsValid'u64'| $t23@0) (|$IsValid'u64'| $t24@0)))) (and (and (and (|$IsValid'u64'| $t25@0) (= $t0@0 ($Mutation_11523 (|l#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (|p#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) |$temp_0'vec'u64''@2|))) (and (|$IsValid'vec'u64''| (|v#$Mutation_11523| $t0@0)) (= $t1@0 ($Mutation_11523 (|l#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$1$m'@1|) (|p#$Mutation_11523| |inline$$1_Vector_borrow_mut'u64'$1$m'@1|) |$temp_0'vec'u64''@3|)))) (and (and (|$IsValid'vec'u64''| (|v#$Mutation_11523| $t1@0)) (|$IsValid'u64'| (|v#$Mutation_3601| $t10@0))) (and (|$IsValid'u64'| (|v#$Mutation_3601| $t11@0)) (|$IsValid'u64'| (|v#$Mutation_3601| $t27@0)))))) (=> (and (and (and (and (and (|$IsValid'u64'| (|v#$Mutation_3601| $t28@0)) (not $abort_flag@1)) (and (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_2977| (|v#$Mutation_11523| $t0@0))) (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_2977| (|v#$Mutation_11523| $t1@0))))) (and (and (< $t9@0 |inline$$1_Vector_length'u64'$0$l@1|) (let (($range_0@@2 ($Range 0 $t9@0)))
(forall (($i_1@@4 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@4) (let ((n@@1 $i_1@@4))
(= (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| $t0@0)) n@@1) (|Select__T@[Int]Int_| (|v#Vec_2977| (|v#$Mutation_11523| $t1@0)) n@@1))))
 :qid |loopswithmemoryopsdefaultz3bpl.1940:53|
 :skolemid |40|
)))) (and (|$IsValid'u64'| $t12@1) (|$IsValid'u64'| $t13@1)))) (and (and (and (|$IsValid'u64'| $t15@1) (|$IsValid'u64'| $t16@1)) (and (|$IsValid'u64'| $t17@1) (|$IsValid'u64'| $t18@1))) (and (and (|$IsValid'u64'| $t19@1) (|$IsValid'u64'| $t21@1)) (and (|$IsValid'u64'| $t22@1) (|$IsValid'u64'| $t23@1))))) (and (and (and (and (= $t10@1 ($Mutation_3601 (|l#$Mutation_3601| $t10@0) (|p#$Mutation_3601| $t10@0) |$temp_0'u64'@2|)) (|$IsValid'u64'| (|v#$Mutation_3601| $t10@1))) (and (= $t11@1 ($Mutation_3601 (|l#$Mutation_3601| $t11@0) (|p#$Mutation_3601| $t11@0) |$temp_0'u64'@3|)) (|$IsValid'u64'| (|v#$Mutation_3601| $t11@1)))) (and (and (not $abort_flag@1) (|$IsValid'u64'| $t12@2)) (and (|$IsValid'u64'| $t13@2) (|$IsValid'u64'| $t15@2)))) (and (and (and (|$IsValid'u64'| $t16@2) (|$IsValid'u64'| $t17@2)) (and (= $t11@2 ($Mutation_3601 (|l#$Mutation_3601| $t11@1) (|p#$Mutation_3601| $t11@1) |$temp_0'u64'@4|)) (|$IsValid'u64'| (|v#$Mutation_3601| $t11@2)))) (and (and (not $abort_flag@1) (= $t12@3 (|v#$Mutation_3601| $t10@1))) (and (= $t13@3 (|v#$Mutation_3601| $t11@2)) (= (ControlFlow 0 22590) 22584)))))) inline$$Le$0$anon0_correct)))))))))))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$1$anon3_Then$1_correct|  (=> (and (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= $abort_flag@1 true)) (and (= |inline$$1_Vector_borrow_mut'u64'$1$dst@2| |inline$$1_Vector_borrow_mut'u64'$1$dst@0|) (= |inline$$1_Vector_borrow_mut'u64'$1$m'@1| |inline$$1_Vector_borrow_mut'u64'$1$m'@0|))) (and (=> (= (ControlFlow 0 22122) 23937) anon34_Then_correct) (=> (= (ControlFlow 0 22122) 22590) anon34_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$1$anon3_Then_correct|  (=> (and (not (InRangeVec_2977 |inline$$1_Vector_borrow_mut'u64'$1$v@1| 0)) (= (ControlFlow 0 22120) 22122)) |inline$$1_Vector_borrow_mut'u64'$1$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$1$anon3_Else_correct|  (=> (and (InRangeVec_2977 |inline$$1_Vector_borrow_mut'u64'$1$v@1| 0) (= |inline$$1_Vector_borrow_mut'u64'$1$dst@1| ($Mutation_3601 (|l#$Mutation_11523| _$t1) (let ((l@@1 (|l#Vec_2977| (|p#$Mutation_11523| _$t1))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_11523| _$t1)) l@@1 0) (+ l@@1 1))) (|Select__T@[Int]Int_| (|v#Vec_2977| |inline$$1_Vector_borrow_mut'u64'$1$v@1|) 0)))) (=> (and (and (= $abort_code@2 $abort_code@1) (= $abort_flag@1 $abort_flag@0)) (and (= |inline$$1_Vector_borrow_mut'u64'$1$dst@2| |inline$$1_Vector_borrow_mut'u64'$1$dst@1|) (= |inline$$1_Vector_borrow_mut'u64'$1$m'@1| _$t1))) (and (=> (= (ControlFlow 0 22070) 23937) anon34_Then_correct) (=> (= (ControlFlow 0 22070) 22590) anon34_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$1$v@1| (|v#$Mutation_11523| _$t1)) (and (=> (= (ControlFlow 0 22040) 22120) |inline$$1_Vector_borrow_mut'u64'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 22040) 22070) |inline$$1_Vector_borrow_mut'u64'$1$anon3_Else_correct|)))))
(let ((anon33_Else_correct  (=> (and (and (not $abort_flag@0) (= |$temp_0'u64'@0| (|v#$Mutation_3601| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|))) (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (= (ControlFlow 0 22130) 22040))) |inline$$1_Vector_borrow_mut'u64'$1$anon0_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@0|) (= |inline$$1_Vector_borrow_mut'u64'$0$m'@1| |inline$$1_Vector_borrow_mut'u64'$0$m'@0|))) (and (=> (= (ControlFlow 0 21912) 23951) anon33_Then_correct) (=> (= (ControlFlow 0 21912) 22130) anon33_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|  (=> (and (not (InRangeVec_2977 |inline$$1_Vector_borrow_mut'u64'$0$v@1| 0)) (= (ControlFlow 0 21910) 21912)) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|  (=> (and (InRangeVec_2977 |inline$$1_Vector_borrow_mut'u64'$0$v@1| 0) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@1| ($Mutation_3601 (|l#$Mutation_11523| _$t0) (let ((l@@2 (|l#Vec_2977| (|p#$Mutation_11523| _$t0))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_11523| _$t0)) l@@2 0) (+ l@@2 1))) (|Select__T@[Int]Int_| (|v#Vec_2977| |inline$$1_Vector_borrow_mut'u64'$0$v@1|) 0)))) (=> (and (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@1|) (= |inline$$1_Vector_borrow_mut'u64'$0$m'@1| _$t0))) (and (=> (= (ControlFlow 0 21860) 23951) anon33_Then_correct) (=> (= (ControlFlow 0 21860) 22130) anon33_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$0$v@1| (|v#$Mutation_11523| _$t0)) (and (=> (= (ControlFlow 0 21830) 21910) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 21830) 21860) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|)))))
(let ((anon32_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|) (> |inline$$1_Vector_length'u64'$0$l@1| 0)) (=> (and (and (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_2977| (|v#$Mutation_11523| _$t1))) (|$IsValid'u64'| 0)) (and (= 0 0) (= (ControlFlow 0 21920) 21830))) |inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|)))))
(let ((anon32_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$0$l@1| (|l#Vec_2977| $t6@0)) (and (=> (= (ControlFlow 0 21674) 23965) anon32_Then_correct) (=> (= (ControlFlow 0 21674) 21920) anon32_Else_correct)))))
(let ((anon0$1_correct  (=> (and (= (|l#$Mutation_11523| _$t0) ($Param 0)) (= (|l#$Mutation_11523| _$t1) ($Param 1))) (=> (and (and (and (|$IsValid'vec'u64''| (|v#$Mutation_11523| _$t0)) (|$IsValid'vec'u64''| (|v#$Mutation_11523| _$t1))) (and (= |$temp_0'vec'u64''@0| (|v#$Mutation_11523| _$t0)) (= |$temp_0'vec'u64''@0| |$temp_0'vec'u64''@0|))) (and (and (= |$temp_0'vec'u64''@1| (|v#$Mutation_11523| _$t1)) (= |$temp_0'vec'u64''@1| |$temp_0'vec'u64''@1|)) (and (= $t6@0 (|v#$Mutation_11523| _$t0)) (= (ControlFlow 0 21680) 21674)))) |inline$$1_Vector_length'u64'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (|l#Vec_2977| (|p#$Mutation_3601| $t4)) 0) (=> (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t5)) 0) (= (|l#Vec_2977| (|p#$Mutation_3601| $t10)) 0)) (=> (and (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t11)) 0) (= (|l#Vec_2977| (|p#$Mutation_3601| $t27)) 0)) (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t28)) 0) (= (ControlFlow 0 21582) 21680))) anon0$1_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 26481) 21582) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 26481)))
(get-value ((ControlFlow 0 21582)))
(get-value ((ControlFlow 0 21680)))
(get-value ((ControlFlow 0 21674)))
(get-value ((ControlFlow 0 21920)))
(get-value ((ControlFlow 0 21830)))
(get-value ((ControlFlow 0 21860)))
(get-value ((ControlFlow 0 22130)))
(get-value ((ControlFlow 0 22040)))
(get-value ((ControlFlow 0 22070)))
(get-value ((ControlFlow 0 22590)))
(get-value ((ControlFlow 0 22584)))
(get-value ((ControlFlow 0 22861)))
(get-value ((ControlFlow 0 22855)))
(get-value ((ControlFlow 0 23279)))
(get-value ((ControlFlow 0 23219)))
(get-value ((ControlFlow 0 23301)))
(get-value ((ControlFlow 0 23909)))
(assert (not (= (ControlFlow 0 23909) (- 28195))))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 26481)))
(get-value ((ControlFlow 0 21582)))
(get-value ((ControlFlow 0 21680)))
(get-value ((ControlFlow 0 21674)))
(get-value ((ControlFlow 0 21920)))
(get-value ((ControlFlow 0 21830)))
(get-value ((ControlFlow 0 21860)))
(get-value ((ControlFlow 0 22130)))
(get-value ((ControlFlow 0 22040)))
(get-value ((ControlFlow 0 22070)))
(get-value ((ControlFlow 0 22590)))
(get-value ((ControlFlow 0 22584)))
(get-value ((ControlFlow 0 22861)))
(get-value ((ControlFlow 0 22855)))
(get-value ((ControlFlow 0 23279)))
(get-value ((ControlFlow 0 23219)))
(get-value ((ControlFlow 0 23301)))
(get-value ((ControlFlow 0 23497)))
(get-value ((ControlFlow 0 23407)))
(get-value ((ControlFlow 0 23437)))
(get-value ((ControlFlow 0 23707)))
(get-value ((ControlFlow 0 23617)))
(get-value ((ControlFlow 0 23647)))
(get-value ((ControlFlow 0 23802)))
(assert (not (= (ControlFlow 0 23802) (- 28598))))
(check-sat)
(pop 1)
; Invalid
