(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_11013 0)) ((($Mutation_11013 (|l#$Mutation_11013| T@$Location) (|p#$Mutation_11013| (Seq Int)) (|v#$Mutation_11013| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select_[$int]$bool| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |loopswithmemoryopsbpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |loopswithmemoryopsbpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |loopswithmemoryopsbpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |loopswithmemoryopsbpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |loopswithmemoryopsbpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |loopswithmemoryopsbpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |loopswithmemoryopsbpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |loopswithmemoryopsbpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u64'| (seq.nth v@@4 i@@0)))
 :qid |loopswithmemoryopsbpl.590:13|
 :skolemid |15|
))))
 :qid |loopswithmemoryopsbpl.588:29|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |loopswithmemoryopsbpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |loopswithmemoryopsbpl.603:17|
 :skolemid |18|
)))))
 :qid |loopswithmemoryopsbpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |loopswithmemoryopsbpl.770:13|
 :skolemid |20|
))))
 :qid |loopswithmemoryopsbpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |loopswithmemoryopsbpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |loopswithmemoryopsbpl.783:17|
 :skolemid |23|
)))))
 :qid |loopswithmemoryopsbpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |loopswithmemoryopsbpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |loopswithmemoryopsbpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |loopswithmemoryopsbpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |loopswithmemoryopsbpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |loopswithmemoryopsbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |loopswithmemoryopsbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@8))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select_[$int]$bool| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |loopswithmemoryopsbpl.245:54|
 :skolemid |37|
 :pattern ( (|Select_[$int]$bool| (|lambda#0| |l#0|) i@@7))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$$Le$1$dst@1 () Bool)
(declare-fun $t1@1 () T@$Mutation_11013)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$m'@1| () T@$Mutation_11013)
(declare-fun $t24@2 () T@$Mutation_3430)
(declare-fun $t0@1 () T@$Mutation_11013)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$m'@1| () T@$Mutation_11013)
(declare-fun $t23@1 () T@$Mutation_3430)
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
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$dst@2| () T@$Mutation_3430)
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
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@2| () T@$Mutation_3430)
(declare-fun |$temp_0'u64'@2| () Int)
(declare-fun $t24@1 () T@$Mutation_3430)
(declare-fun |$temp_0'u64'@3| () Int)
(declare-fun $t11@2 () Int)
(declare-fun $t12@2 () Int)
(declare-fun $t14@2 () Int)
(declare-fun $t15@2 () Int)
(declare-fun $t16@2 () Int)
(declare-fun |$temp_0'u64'@4| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$dst@0| () T@$Mutation_3430)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$m'@0| () T@$Mutation_11013)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$dst@1| () T@$Mutation_3430)
(declare-fun $t1@0 () T@$Mutation_11013)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@0| () T@$Mutation_3430)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$m'@0| () T@$Mutation_11013)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@1| () T@$Mutation_3430)
(declare-fun $t0@0 () T@$Mutation_11013)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun |$temp_0'vec'u64''@4| () (Seq Int))
(declare-fun |$temp_0'vec'u64''@5| () (Seq Int))
(declare-fun _$t1 () T@$Mutation_11013)
(declare-fun _$t0 () T@$Mutation_11013)
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
(declare-fun |$temp_0'vec'u64''@2| () (Seq Int))
(declare-fun |$temp_0'vec'u64''@3| () (Seq Int))
(declare-fun $t23@0 () T@$Mutation_3430)
(declare-fun $t24@0 () T@$Mutation_3430)
(declare-fun $t6@0 () (Seq Int))
(declare-fun |$temp_0'vec'u64''@0| () (Seq Int))
(declare-fun |$temp_0'vec'u64''@1| () (Seq Int))
(declare-fun $t4 () T@$Mutation_3430)
(declare-fun $t5 () T@$Mutation_3430)
(declare-fun $t23 () T@$Mutation_3430)
(declare-fun $t24 () T@$Mutation_3430)
(push 1)
(set-info :boogie-vc-id $42_VerifyLoopsWithMemoryOps_nested_loop1$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 22387) (let ((anon33_Else_correct true))
(let ((anon32_Then_correct  (=> inline$$Le$1$dst@1 (=> (and (= $t1@1 ($Mutation_11013 (|l#$Mutation_11013| |inline$$1_Vector_borrow_mut'u64'$1$m'@1|) (|p#$Mutation_11013| |inline$$1_Vector_borrow_mut'u64'$1$m'@1|) (seq.++ (seq.extract (|v#$Mutation_11013| |inline$$1_Vector_borrow_mut'u64'$1$m'@1|) 0 (- (seq.nth (|p#$Mutation_3430| $t24@2) (seq.len (|p#$Mutation_11013| |inline$$1_Vector_borrow_mut'u64'$1$m'@1|))) 0)) (seq.unit (|v#$Mutation_3430| $t24@2)) (seq.extract (|v#$Mutation_11013| |inline$$1_Vector_borrow_mut'u64'$1$m'@1|) (+ (seq.nth (|p#$Mutation_3430| $t24@2) (seq.len (|p#$Mutation_11013| |inline$$1_Vector_borrow_mut'u64'$1$m'@1|))) 1) (- (seq.len (|v#$Mutation_11013| |inline$$1_Vector_borrow_mut'u64'$1$m'@1|)) (+ (seq.nth (|p#$Mutation_3430| $t24@2) (seq.len (|p#$Mutation_11013| |inline$$1_Vector_borrow_mut'u64'$1$m'@1|))) 1)))))) (= $t0@1 ($Mutation_11013 (|l#$Mutation_11013| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (|p#$Mutation_11013| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (seq.++ (seq.extract (|v#$Mutation_11013| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) 0 (- (seq.nth (|p#$Mutation_3430| $t23@1) (seq.len (|p#$Mutation_11013| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|))) 0)) (seq.unit (|v#$Mutation_3430| $t23@1)) (seq.extract (|v#$Mutation_11013| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (+ (seq.nth (|p#$Mutation_3430| $t23@1) (seq.len (|p#$Mutation_11013| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|))) 1) (- (seq.len (|v#$Mutation_11013| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|)) (+ (seq.nth (|p#$Mutation_3430| $t23@1) (seq.len (|p#$Mutation_11013| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|))) 1))))))) (and (=> (= (ControlFlow 0 19415) (- 0 23859)) (= |inline$$1_Vector_length'u64'$0$l@1| (seq.len (|v#$Mutation_11013| $t0@1)))) (=> (= |inline$$1_Vector_length'u64'$0$l@1| (seq.len (|v#$Mutation_11013| $t0@1))) (and (=> (= (ControlFlow 0 19415) (- 0 23870)) (= |inline$$1_Vector_length'u64'$0$l@1| (seq.len (|v#$Mutation_11013| $t1@1)))) (=> (= |inline$$1_Vector_length'u64'$0$l@1| (seq.len (|v#$Mutation_11013| $t1@1))) (and (=> (= (ControlFlow 0 19415) (- 0 23881)) (<= 0 |inline$$1_Vector_length'u64'$0$l@1|)) (=> (<= 0 |inline$$1_Vector_length'u64'$0$l@1|) (=> (= (ControlFlow 0 19415) (- 0 23888)) (let (($range_0 ($Range 0 0)))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((n $i_1))
(= (seq.nth (|v#$Mutation_11013| $t0@1) n) (seq.nth (|v#$Mutation_11013| $t1@1) n))))
 :qid |loopswithmemoryopsbpl.1589:48|
 :skolemid |32|
))))))))))))))
(let ((L15_correct  (=> (= (ControlFlow 0 19021) (- 0 24028)) false)))
(let ((anon33_Then_correct  (=> $abort_flag@3 (=> (and (= $abort_code@4 $abort_code@4) (= (ControlFlow 0 19280) 19021)) L15_correct))))
(let ((inline$$AddU64$1$anon3_Then$1_correct  (=> (and (= $abort_flag@3 true) (= $abort_code@4 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 19244) 19280) anon33_Then_correct) (=> (= (ControlFlow 0 19244) 19266) anon33_Else_correct)))))
(let ((inline$$AddU64$1$anon3_Then_correct  (=> (and (> (+ $t20@2 1) $MAX_U64) (= (ControlFlow 0 19242) 19244)) inline$$AddU64$1$anon3_Then$1_correct)))
(let ((inline$$AddU64$1$anon3_Else_correct  (=> (and (and (>= $MAX_U64 (+ $t20@2 1)) (= inline$$AddU64$1$dst@1 (+ $t20@2 1))) (and (= $abort_flag@3 $abort_flag@1) (= $abort_code@4 $abort_code@2))) (and (=> (= (ControlFlow 0 19190) 19280) anon33_Then_correct) (=> (= (ControlFlow 0 19190) 19266) anon33_Else_correct)))))
(let ((anon32_Else_correct  (=> (not inline$$Le$1$dst@1) (=> (and (= $t20@2 (|v#$Mutation_3430| $t23@1)) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 19250) 19242) inline$$AddU64$1$anon3_Then_correct) (=> (= (ControlFlow 0 19250) 19190) inline$$AddU64$1$anon3_Else_correct))))))
(let ((inline$$Le$1$anon0_correct  (=> (= inline$$Le$1$dst@1 (<= $t17@2 $t18@2)) (and (=> (= (ControlFlow 0 19073) 19415) anon32_Then_correct) (=> (= (ControlFlow 0 19073) 19250) anon32_Else_correct)))))
(let ((anon30_Then_correct  (=> (and (and inline$$Le$0$dst@1 (= $t17@2 (|v#$Mutation_3430| $t24@2))) (and (= $t18@2 (|v#$Mutation_3430| $t23@1)) (= (ControlFlow 0 19079) 19073))) inline$$Le$1$anon0_correct)))
(let ((anon31_Then_correct  (=> $abort_flag@2 (=> (and (= $abort_code@3 $abort_code@3) (= (ControlFlow 0 19011) 19021)) L15_correct))))
(let ((anon29_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 19429) 19021)) L15_correct))))
(let ((anon28_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 19443) 19021)) L15_correct))))
(let ((anon31_Else_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (and (= $abort_flag@2 true) (= $abort_code@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 18975) 19011) anon31_Then_correct) (=> (= (ControlFlow 0 18975) 18997) anon31_Else_correct)))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t14@3 1) $MAX_U64) (= (ControlFlow 0 18973) 18975)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (and (and (>= $MAX_U64 (+ $t14@3 1)) (= inline$$AddU64$0$dst@1 (+ $t14@3 1))) (and (= $abort_flag@2 $abort_flag@1) (= $abort_code@3 $abort_code@2))) (and (=> (= (ControlFlow 0 18921) 19011) anon31_Then_correct) (=> (= (ControlFlow 0 18921) 18997) anon31_Else_correct)))))
(let ((anon30_Else_correct  (=> (not inline$$Le$0$dst@1) (=> (and (= $t14@3 (|v#$Mutation_3430| $t24@2)) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 18981) 18973) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 18981) 18921) inline$$AddU64$0$anon3_Else_correct))))))
(let ((inline$$Le$0$anon0_correct  (=> (= inline$$Le$0$dst@1 (<= $t11@3 $t12@3)) (and (=> (= (ControlFlow 0 18802) 19079) anon30_Then_correct) (=> (= (ControlFlow 0 18802) 18981) anon30_Else_correct)))))
(let ((anon29_Else_correct  (=> (not $abort_flag@1) (=> (and (and (= |$temp_0'u64'@1| (|v#$Mutation_3430| |inline$$1_Vector_borrow_mut'u64'$1$dst@2|)) (= |$temp_0'u64'@1| |$temp_0'u64'@1|)) (and (|$IsValid'u64'| $t11@1) (|$IsValid'u64'| $t12@1))) (=> (and (and (and (|$IsValid'u64'| $t14@1) (|$IsValid'u64'| $t15@1)) (and (|$IsValid'u64'| $t16@1) (|$IsValid'u64'| $t17@1))) (and (and (|$IsValid'u64'| $t18@1) (|$IsValid'u64'| $t20@1)) (and (|$IsValid'u64'| $t21@1) (|$IsValid'u64'| $t22@1)))) (=> (and (and (and (and (= $t23@1 ($Mutation_3430 (|l#$Mutation_3430| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) (|p#$Mutation_3430| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) |$temp_0'u64'@2|)) (|$IsValid'u64'| (|v#$Mutation_3430| $t23@1))) (and (= $t24@1 ($Mutation_3430 (|l#$Mutation_3430| |inline$$1_Vector_borrow_mut'u64'$1$dst@2|) (|p#$Mutation_3430| |inline$$1_Vector_borrow_mut'u64'$1$dst@2|) |$temp_0'u64'@3|)) (|$IsValid'u64'| (|v#$Mutation_3430| $t24@1)))) (and (and (not $abort_flag@1) (|$IsValid'u64'| $t11@2)) (and (|$IsValid'u64'| $t12@2) (|$IsValid'u64'| $t14@2)))) (and (and (and (|$IsValid'u64'| $t15@2) (|$IsValid'u64'| $t16@2)) (and (= $t24@2 ($Mutation_3430 (|l#$Mutation_3430| $t24@1) (|p#$Mutation_3430| $t24@1) |$temp_0'u64'@4|)) (|$IsValid'u64'| (|v#$Mutation_3430| $t24@2)))) (and (and (not $abort_flag@1) (= $t11@3 (|v#$Mutation_3430| $t23@1))) (and (= $t12@3 (|v#$Mutation_3430| $t24@2)) (= (ControlFlow 0 18808) 18802))))) inline$$Le$0$anon0_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$1$anon3_Then$1_correct|  (=> (and (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= $abort_flag@1 true)) (and (= |inline$$1_Vector_borrow_mut'u64'$1$dst@2| |inline$$1_Vector_borrow_mut'u64'$1$dst@0|) (= |inline$$1_Vector_borrow_mut'u64'$1$m'@1| |inline$$1_Vector_borrow_mut'u64'$1$m'@0|))) (and (=> (= (ControlFlow 0 18608) 19429) anon29_Then_correct) (=> (= (ControlFlow 0 18608) 18808) anon29_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$1$anon3_Then_correct|  (=> (and (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_borrow_mut'u64'$1$v@1|)))) (= (ControlFlow 0 18606) 18608)) |inline$$1_Vector_borrow_mut'u64'$1$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$1$anon3_Else_correct|  (=> (and (and (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_borrow_mut'u64'$1$v@1|))) (= |inline$$1_Vector_borrow_mut'u64'$1$dst@1| ($Mutation_3430 (|l#$Mutation_11013| $t1@0) (seq.++ (|p#$Mutation_11013| $t1@0) (seq.unit 0)) (seq.nth |inline$$1_Vector_borrow_mut'u64'$1$v@1| 0)))) (and (and (= $abort_code@2 $abort_code@1) (= $abort_flag@1 $abort_flag@0)) (and (= |inline$$1_Vector_borrow_mut'u64'$1$dst@2| |inline$$1_Vector_borrow_mut'u64'$1$dst@1|) (= |inline$$1_Vector_borrow_mut'u64'$1$m'@1| $t1@0)))) (and (=> (= (ControlFlow 0 18556) 19429) anon29_Then_correct) (=> (= (ControlFlow 0 18556) 18808) anon29_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$1$v@1| (|v#$Mutation_11013| $t1@0)) (and (=> (= (ControlFlow 0 18526) 18606) |inline$$1_Vector_borrow_mut'u64'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 18526) 18556) |inline$$1_Vector_borrow_mut'u64'$1$anon3_Else_correct|)))))
(let ((anon28_Else_correct  (=> (and (and (not $abort_flag@0) (= |$temp_0'u64'@0| (|v#$Mutation_3430| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|))) (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (= (ControlFlow 0 18616) 18526))) |inline$$1_Vector_borrow_mut'u64'$1$anon0_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@0|) (= |inline$$1_Vector_borrow_mut'u64'$0$m'@1| |inline$$1_Vector_borrow_mut'u64'$0$m'@0|))) (and (=> (= (ControlFlow 0 18398) 19443) anon28_Then_correct) (=> (= (ControlFlow 0 18398) 18616) anon28_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|  (=> (and (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_borrow_mut'u64'$0$v@1|)))) (= (ControlFlow 0 18396) 18398)) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|  (=> (and (and (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_borrow_mut'u64'$0$v@1|))) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@1| ($Mutation_3430 (|l#$Mutation_11013| $t0@0) (seq.++ (|p#$Mutation_11013| $t0@0) (seq.unit 0)) (seq.nth |inline$$1_Vector_borrow_mut'u64'$0$v@1| 0)))) (and (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0)) (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@1|) (= |inline$$1_Vector_borrow_mut'u64'$0$m'@1| $t0@0)))) (and (=> (= (ControlFlow 0 18346) 19443) anon28_Then_correct) (=> (= (ControlFlow 0 18346) 18616) anon28_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$0$v@1| (|v#$Mutation_11013| $t0@0)) (and (=> (= (ControlFlow 0 18316) 18396) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 18316) 18346) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|)))))
(let ((anon27_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 18406) 18316)) |inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|)))
(let ((anon27_Else_correct  (=> (not inline$$Lt$0$dst@1) (and (=> (= (ControlFlow 0 18212) (- 0 23077)) (let (($range_0@@0 ($Range 0 |inline$$1_Vector_length'u64'$0$l@1|)))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@0) (let ((m $i_1@@0))
(= (seq.nth (|v#$Mutation_11013| $t0@0) m) (seq.nth (|v#$Mutation_11013| $t1@0) m))))
 :qid |loopswithmemoryopsbpl.1535:48|
 :skolemid |31|
)))) (=> (let (($range_0@@0 ($Range 0 |inline$$1_Vector_length'u64'$0$l@1|)))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@1) (let ((m $i_1@@1))
(= (seq.nth (|v#$Mutation_11013| $t0@0) m) (seq.nth (|v#$Mutation_11013| $t1@0) m))))
 :qid |loopswithmemoryopsbpl.1535:48|
 :skolemid |31|
))) (=> (= |$temp_0'vec'u64''@4| (|v#$Mutation_11013| $t0@0)) (=> (and (and (= |$temp_0'vec'u64''@4| |$temp_0'vec'u64''@4|) (= |$temp_0'vec'u64''@5| (|v#$Mutation_11013| $t1@0))) (and (= |$temp_0'vec'u64''@5| |$temp_0'vec'u64''@5|) (= (ControlFlow 0 18212) (- 0 23149)))) (not false))))))))
(let ((anon26_Else$1_correct  (and (=> (= (ControlFlow 0 18131) 18406) anon27_Then_correct) (=> (= (ControlFlow 0 18131) 18212) anon27_Else_correct))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< 0 |inline$$1_Vector_length'u64'$0$l@1|)) (= (ControlFlow 0 18121) 18131)) anon26_Else$1_correct)))
(let ((anon26_Else_correct  (=> (and (not false) (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|)) (=> (and (and (> |inline$$1_Vector_length'u64'$0$l@1| 0) (= |inline$$1_Vector_length'u64'$0$l@1| (seq.len (|v#$Mutation_11013| _$t1)))) (and (|$IsValid'u64'| 0) (= 0 0))) (and (=> (= (ControlFlow 0 18127) (- 0 22775)) (= |inline$$1_Vector_length'u64'$0$l@1| (seq.len (|v#$Mutation_11013| _$t0)))) (=> (= |inline$$1_Vector_length'u64'$0$l@1| (seq.len (|v#$Mutation_11013| _$t0))) (and (=> (= (ControlFlow 0 18127) (- 0 22786)) (= |inline$$1_Vector_length'u64'$0$l@1| (seq.len (|v#$Mutation_11013| _$t1)))) (=> (= |inline$$1_Vector_length'u64'$0$l@1| (seq.len (|v#$Mutation_11013| _$t1))) (and (=> (= (ControlFlow 0 18127) (- 0 22797)) (<= 0 |inline$$1_Vector_length'u64'$0$l@1|)) (=> (<= 0 |inline$$1_Vector_length'u64'$0$l@1|) (and (=> (= (ControlFlow 0 18127) (- 0 22804)) (let (($range_0@@1 ($Range 0 0)))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@2) (let ((n@@0 $i_1@@2))
(= (seq.nth (|v#$Mutation_11013| _$t0) n@@0) (seq.nth (|v#$Mutation_11013| _$t1) n@@0))))
 :qid |loopswithmemoryopsbpl.1188:48|
 :skolemid |29|
)))) (=> (let (($range_0@@1 ($Range 0 0)))
(forall (($i_1@@3 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@3) (let ((n@@0 $i_1@@3))
(= (seq.nth (|v#$Mutation_11013| _$t0) n@@0) (seq.nth (|v#$Mutation_11013| _$t1) n@@0))))
 :qid |loopswithmemoryopsbpl.1188:48|
 :skolemid |29|
))) (=> (and (|$IsValid'u64'| $t11@0) (|$IsValid'u64'| $t12@0)) (=> (and (and (|$IsValid'u64'| $t14@0) (|$IsValid'u64'| $t15@0)) (and (|$IsValid'u64'| $t16@0) (|$IsValid'u64'| $t17@0))) (=> (and (and (and (and (|$IsValid'u64'| $t18@0) (|$IsValid'u64'| $t20@0)) (and (|$IsValid'u64'| $t21@0) (|$IsValid'u64'| $t22@0))) (and (and (= $t0@0 ($Mutation_11013 (|l#$Mutation_11013| _$t0) (|p#$Mutation_11013| _$t0) |$temp_0'vec'u64''@2|)) (|$IsValid'vec'u64''| (|v#$Mutation_11013| $t0@0))) (and (= $t1@0 ($Mutation_11013 (|l#$Mutation_11013| _$t1) (|p#$Mutation_11013| _$t1) |$temp_0'vec'u64''@3|)) (|$IsValid'vec'u64''| (|v#$Mutation_11013| $t1@0))))) (and (and (and (|$IsValid'u64'| (|v#$Mutation_3430| $t23@0)) (|$IsValid'u64'| (|v#$Mutation_3430| $t24@0))) (and (not false) (= |inline$$1_Vector_length'u64'$0$l@1| (seq.len (|v#$Mutation_11013| $t0@0))))) (and (and (= |inline$$1_Vector_length'u64'$0$l@1| (seq.len (|v#$Mutation_11013| $t1@0))) (<= 0 |inline$$1_Vector_length'u64'$0$l@1|)) (and (let (($range_0@@2 ($Range 0 0)))
(forall (($i_1@@4 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@4) (let ((n@@1 $i_1@@4))
(= (seq.nth (|v#$Mutation_11013| $t0@0) n@@1) (seq.nth (|v#$Mutation_11013| $t1@0) n@@1))))
 :qid |loopswithmemoryopsbpl.1278:53|
 :skolemid |30|
))) (= (ControlFlow 0 18127) 18121))))) inline$$Lt$0$anon0_correct)))))))))))))))
(let ((anon26_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$0$l@1| (seq.len $t6@0)) (and (=> (= (ControlFlow 0 17781) 19457) anon26_Then_correct) (=> (= (ControlFlow 0 17781) 18127) anon26_Else_correct)))))
(let ((anon0$1_correct  (=> (and (= (|l#$Mutation_11013| _$t0) ($Param 0)) (= (|l#$Mutation_11013| _$t1) ($Param 1))) (=> (and (and (and (|$IsValid'vec'u64''| (|v#$Mutation_11013| _$t0)) (|$IsValid'vec'u64''| (|v#$Mutation_11013| _$t1))) (and (= |$temp_0'vec'u64''@0| (|v#$Mutation_11013| _$t0)) (= |$temp_0'vec'u64''@0| |$temp_0'vec'u64''@0|))) (and (and (= |$temp_0'vec'u64''@1| (|v#$Mutation_11013| _$t1)) (= |$temp_0'vec'u64''@1| |$temp_0'vec'u64''@1|)) (and (= $t6@0 (|v#$Mutation_11013| _$t0)) (= (ControlFlow 0 17787) 17781)))) |inline$$1_Vector_length'u64'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_3430| $t4)) 0) (=> (and (and (= (seq.len (|p#$Mutation_3430| $t5)) 0) (= (seq.len (|p#$Mutation_3430| $t23)) 0)) (and (= (seq.len (|p#$Mutation_3430| $t24)) 0) (= (ControlFlow 0 17689) 17787))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 22387) 17689) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
