(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL_SUPPORTED)
; done setting options


(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9730 0)) ((($Mutation_9730 (|l#$Mutation_9730| T@$Location) (|p#$Mutation_9730| (Seq Int)) (|v#$Mutation_9730| (Seq Int)) ) ) ))
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
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |naivesortcvc4bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |naivesortcvc4bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |naivesortcvc4bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |naivesortcvc4bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |naivesortcvc4bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |naivesortcvc4bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |naivesortcvc4bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |naivesortcvc4bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u64'| (seq.nth v@@4 i@@0)))
 :qid |naivesortcvc4bpl.590:13|
 :skolemid |15|
))))
 :qid |naivesortcvc4bpl.588:29|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |naivesortcvc4bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |naivesortcvc4bpl.603:17|
 :skolemid |18|
)))))
 :qid |naivesortcvc4bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |naivesortcvc4bpl.770:13|
 :skolemid |20|
))))
 :qid |naivesortcvc4bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |naivesortcvc4bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |naivesortcvc4bpl.783:17|
 :skolemid |23|
)))))
 :qid |naivesortcvc4bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |naivesortcvc4bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |naivesortcvc4bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |naivesortcvc4bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |naivesortcvc4bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |naivesortcvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |naivesortcvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@8))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |naivesortcvc4bpl.245:54|
 :skolemid |52|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@7 () Bool)
(declare-fun $abort_code@8 () Int)
(declare-fun $abort_flag@6 () Bool)
(declare-fun $abort_code@7 () Int)
(declare-fun $abort_flag@5 () Bool)
(declare-fun $abort_code@6 () Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun $abort_code@5 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t1@0 () Int)
(declare-fun $t2@0 () Int)
(declare-fun $t0@2 () T@$Mutation_9730)
(declare-fun |inline$$1_Vector_length'u64'$0$l@1| () Int)
(declare-fun $t11@0 () (Seq Int))
(declare-fun inline$$AddU64$3$dst@2 () Int)
(declare-fun inline$$AddU64$3$dst@0 () Int)
(declare-fun $t18@0 () Int)
(declare-fun inline$$AddU64$3$dst@1 () Int)
(declare-fun inline$$Lt$1$dst@1 () Bool)
(declare-fun inline$$AddU64$2$dst@2 () Int)
(declare-fun inline$$AddU64$1$dst@2 () Int)
(declare-fun inline$$AddU64$2$dst@0 () Int)
(declare-fun inline$$AddU64$2$dst@1 () Int)
(declare-fun inline$$AddU64$1$dst@0 () Int)
(declare-fun $t17@0 () Int)
(declare-fun inline$$AddU64$1$dst@1 () Int)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@2| () T@$Mutation_9730)
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@0| () T@$Mutation_9730)
(declare-fun |inline$$1_Vector_swap'u64'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@1| () T@$Mutation_9730)
(declare-fun $t0@0 () T@$Mutation_9730)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@2| () Int)
(declare-fun |inline$$1_Vector_borrow'u64'$1$dst@2| () Int)
(declare-fun |inline$$1_Vector_borrow'u64'$1$dst@0| () Int)
(declare-fun $t22@1 () (Seq Int))
(declare-fun |inline$$1_Vector_borrow'u64'$1$dst@1| () Int)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@0| () Int)
(declare-fun $t20@1 () (Seq Int))
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@1| () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun |$temp_0'vec'u64''@3| () (Seq Int))
(declare-fun |$temp_0'vec'u64''@4| () (Seq Int))
(declare-fun $t0@1 () T@$Mutation_9730)
(declare-fun $t8@0 () (Seq Int))
(declare-fun |$temp_0'vec'u64''@5| () (Seq Int))
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun _$t0 () T@$Mutation_9730)
(declare-fun $t10@0 () (Seq Int))
(declare-fun $t20@0 () (Seq Int))
(declare-fun $t21@0 () Int)
(declare-fun $t22@0 () (Seq Int))
(declare-fun $t23@0 () Int)
(declare-fun $t25@0 () Int)
(declare-fun $t26@0 () Int)
(declare-fun $t28@0 () Int)
(declare-fun $t29@0 () Int)
(declare-fun $t30@0 () Int)
(declare-fun $t31@0 () Int)
(declare-fun $t32@0 () Int)
(declare-fun $t33@0 () Int)
(declare-fun |$temp_0'vec'u64''@2| () (Seq Int))
(declare-fun $t9@0 () (Seq Int))
(declare-fun |$temp_0'vec'u64''@1| () (Seq Int))
(declare-fun $t12@0 () (Seq Int))
(declare-fun |$temp_0'vec'u64''@0| () (Seq Int))
(declare-fun $t3 () T@$Mutation_9730)
(declare-fun $t5 () T@$Mutation_9730)
(push 1)
(set-info :boogie-vc-id $42_TestNaiveSort_verify_sort$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 18102) (let ((L16_correct  (=> (= (ControlFlow 0 17330) (- 0 20235)) false)))
(let ((anon39_Then_correct  (=> $abort_flag@2 (=> (and (= $abort_code@3 $abort_code@3) (= (ControlFlow 0 17795) 17330)) L16_correct))))
(let ((anon42_Then_correct  (=> $abort_flag@7 (=> (and (= $abort_code@8 $abort_code@8) (= (ControlFlow 0 17539) 17330)) L16_correct))))
(let ((anon44_Then_correct  (=> $abort_flag@6 (=> (and (= $abort_code@7 $abort_code@7) (= (ControlFlow 0 17320) 17330)) L16_correct))))
(let ((anon43_Then_correct  (=> $abort_flag@5 (=> (and (= $abort_code@6 $abort_code@6) (= (ControlFlow 0 17344) 17330)) L16_correct))))
(let ((anon40_Then_correct  (=> $abort_flag@4 (=> (and (= $abort_code@5 $abort_code@5) (= (ControlFlow 0 17553) 17330)) L16_correct))))
(let ((anon37_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 17809) 17330)) L16_correct))))
(let ((anon36_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 17823) 17330)) L16_correct))))
(let ((L12_correct  (and (=> (= (ControlFlow 0 17306) (- 0 20277)) (< $t1@0 $t2@0)) (=> (< $t1@0 $t2@0) (and (=> (= (ControlFlow 0 17306) (- 0 20284)) (= (seq.len (|v#$Mutation_9730| $t0@2)) |inline$$1_Vector_length'u64'$0$l@1|)) (=> (= (seq.len (|v#$Mutation_9730| $t0@2)) |inline$$1_Vector_length'u64'$0$l@1|) (and (=> (= (ControlFlow 0 17306) (- 0 20295)) (let (($range_0 ($Range 0 (- $t1@0 1))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((k $i_1))
(<= (seq.nth (|v#$Mutation_9730| $t0@2) k) (seq.nth (|v#$Mutation_9730| $t0@2) (+ k 1)))))
 :qid |naivesortcvc4bpl.1567:54|
 :skolemid |41|
)))) (=> (let (($range_0 ($Range 0 (- $t1@0 1))))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0 $i_1@@0) (let ((k $i_1@@0))
(<= (seq.nth (|v#$Mutation_9730| $t0@2) k) (seq.nth (|v#$Mutation_9730| $t0@2) (+ k 1)))))
 :qid |naivesortcvc4bpl.1567:54|
 :skolemid |41|
))) (and (=> (= (ControlFlow 0 17306) (- 0 20344)) (let (($range_0@@0 ($Range (+ $t1@0 1) $t2@0)))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@1) (let ((k@@0 $i_1@@1))
(<= (seq.nth (|v#$Mutation_9730| $t0@2) $t1@0) (seq.nth (|v#$Mutation_9730| $t0@2) k@@0))))
 :qid |naivesortcvc4bpl.1573:56|
 :skolemid |42|
)))) (=> (let (($range_0@@0 ($Range (+ $t1@0 1) $t2@0)))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@2) (let ((k@@0 $i_1@@2))
(<= (seq.nth (|v#$Mutation_9730| $t0@2) $t1@0) (seq.nth (|v#$Mutation_9730| $t0@2) k@@0))))
 :qid |naivesortcvc4bpl.1573:56|
 :skolemid |42|
))) (=> (= (ControlFlow 0 17306) (- 0 20387)) (exists ((p@@1 (Seq Int)) ) (!  (and (|$IsValid'vec'u64''| p@@1) (let (($range_0@@1 ($Range 0 (seq.len (|v#$Mutation_9730| $t0@2)))))
(forall (($i_1@@3 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@3) (let ((k@@1 $i_1@@3))
 (and (= (seq.nth (|v#$Mutation_9730| $t0@2) k@@1) (seq.nth $t11@0 (seq.nth p@@1 k@@1))) (let (($range_2 ($Range 0 (seq.len (|v#$Mutation_9730| $t0@2)))))
(forall (($i_3 Int) ) (!  (=> ($InRange $range_2 $i_3) (let ((num $i_3))
(let (($range_4 ($Range 0 (seq.len (|v#$Mutation_9730| $t0@2)))))
(exists (($i_5 Int) ) (!  (and ($InRange $range_4 $i_5) (let ((ind $i_5))
(= (seq.nth p@@1 ind) num)))
 :qid |naivesortcvc4bpl.1581:69|
 :skolemid |43|
)))))
 :qid |naivesortcvc4bpl.1580:148|
 :skolemid |44|
))))))
 :qid |naivesortcvc4bpl.1579:120|
 :skolemid |45|
))))
 :qid |naivesortcvc4bpl.1579:15|
 :skolemid |46|
)))))))))))))
(let ((anon42_Else_correct  (=> (not $abort_flag@7) (=> (and (and (= inline$$AddU64$3$dst@2 inline$$AddU64$3$dst@2) (= $t1@0 0)) (and (= $t2@0 inline$$AddU64$3$dst@2) (= (ControlFlow 0 17525) 17306))) L12_correct))))
(let ((inline$$AddU64$3$anon3_Then$1_correct  (=> (= $abort_code@8 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@7 true) (= inline$$AddU64$3$dst@2 inline$$AddU64$3$dst@0)) (and (=> (= (ControlFlow 0 17501) 17539) anon42_Then_correct) (=> (= (ControlFlow 0 17501) 17525) anon42_Else_correct))))))
(let ((inline$$AddU64$3$anon3_Then_correct  (=> (and (> (+ $t18@0 1) $MAX_U64) (= (ControlFlow 0 17499) 17501)) inline$$AddU64$3$anon3_Then$1_correct)))
(let ((inline$$AddU64$3$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t18@0 1)) (=> (and (and (= inline$$AddU64$3$dst@1 (+ $t18@0 1)) (= $abort_code@8 $abort_code@5)) (and (= $abort_flag@7 $abort_flag@4) (= inline$$AddU64$3$dst@2 inline$$AddU64$3$dst@1))) (and (=> (= (ControlFlow 0 17447) 17539) anon42_Then_correct) (=> (= (ControlFlow 0 17447) 17525) anon42_Else_correct))))))
(let ((anon41_Then_correct  (=> (and inline$$Lt$1$dst@1 (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 17507) 17499) inline$$AddU64$3$anon3_Then_correct) (=> (= (ControlFlow 0 17507) 17447) inline$$AddU64$3$anon3_Else_correct)))))
(let ((anon44_Else_correct  (=> (not $abort_flag@6) (=> (and (and (= inline$$AddU64$2$dst@2 inline$$AddU64$2$dst@2) (= $t1@0 inline$$AddU64$1$dst@2)) (and (= $t2@0 inline$$AddU64$2$dst@2) (= (ControlFlow 0 17060) 17306))) L12_correct))))
(let ((inline$$AddU64$2$anon3_Then$1_correct  (=> (= $abort_flag@6 true) (=> (and (= $abort_code@7 $EXEC_FAILURE_CODE) (= inline$$AddU64$2$dst@2 inline$$AddU64$2$dst@0)) (and (=> (= (ControlFlow 0 17036) 17320) anon44_Then_correct) (=> (= (ControlFlow 0 17036) 17060) anon44_Else_correct))))))
(let ((inline$$AddU64$2$anon3_Then_correct  (=> (and (> (+ inline$$AddU64$1$dst@2 1) $MAX_U64) (= (ControlFlow 0 17034) 17036)) inline$$AddU64$2$anon3_Then$1_correct)))
(let ((inline$$AddU64$2$anon3_Else_correct  (=> (>= $MAX_U64 (+ inline$$AddU64$1$dst@2 1)) (=> (and (and (= inline$$AddU64$2$dst@1 (+ inline$$AddU64$1$dst@2 1)) (= $abort_flag@6 $abort_flag@5)) (and (= $abort_code@7 $abort_code@6) (= inline$$AddU64$2$dst@2 inline$$AddU64$2$dst@1))) (and (=> (= (ControlFlow 0 16982) 17320) anon44_Then_correct) (=> (= (ControlFlow 0 16982) 17060) anon44_Else_correct))))))
(let ((anon43_Else_correct  (=> (not $abort_flag@5) (=> (and (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@2) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 17042) 17034) inline$$AddU64$2$anon3_Then_correct) (=> (= (ControlFlow 0 17042) 16982) inline$$AddU64$2$anon3_Else_correct))))))
(let ((inline$$AddU64$1$anon3_Then$1_correct  (=> (= $abort_code@6 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@5 true) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@0)) (and (=> (= (ControlFlow 0 16859) 17344) anon43_Then_correct) (=> (= (ControlFlow 0 16859) 17042) anon43_Else_correct))))))
(let ((inline$$AddU64$1$anon3_Then_correct  (=> (and (> (+ $t17@0 1) $MAX_U64) (= (ControlFlow 0 16857) 16859)) inline$$AddU64$1$anon3_Then$1_correct)))
(let ((inline$$AddU64$1$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t17@0 1)) (=> (and (and (= inline$$AddU64$1$dst@1 (+ $t17@0 1)) (= $abort_code@6 $abort_code@5)) (and (= $abort_flag@5 $abort_flag@4) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@1))) (and (=> (= (ControlFlow 0 16805) 17344) anon43_Then_correct) (=> (= (ControlFlow 0 16805) 17042) anon43_Else_correct))))))
(let ((anon41_Else_correct  (=> (and (not inline$$Lt$1$dst@1) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 16865) 16857) inline$$AddU64$1$anon3_Then_correct) (=> (= (ControlFlow 0 16865) 16805) inline$$AddU64$1$anon3_Else_correct)))))
(let ((inline$$Lt$1$anon0_correct  (=> (= inline$$Lt$1$dst@1 (< inline$$AddU64$0$dst@2 |inline$$1_Vector_length'u64'$0$l@1|)) (and (=> (= (ControlFlow 0 16692) 17507) anon41_Then_correct) (=> (= (ControlFlow 0 16692) 16865) anon41_Else_correct)))))
(let ((anon40_Else_correct  (=> (and (not $abort_flag@4) (= (ControlFlow 0 16698) 16692)) inline$$Lt$1$anon0_correct)))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@4 true) (=> (and (= $abort_code@5 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 16638) 17553) anon40_Then_correct) (=> (= (ControlFlow 0 16638) 16698) anon40_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t18@0 1) $MAX_U64) (= (ControlFlow 0 16636) 16638)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t18@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t18@0 1)) (= $abort_flag@4 $abort_flag@3)) (and (= $abort_code@5 $abort_code@4) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 16584) 17553) anon40_Then_correct) (=> (= (ControlFlow 0 16584) 16698) anon40_Else_correct))))))
(let ((L8_correct  (=> (|$IsValid'u64'| 1) (and (=> (= (ControlFlow 0 16644) 16636) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 16644) 16584) inline$$AddU64$0$anon3_Else_correct)))))
(let ((anon39_Else_correct  (=> (not $abort_flag@2) (=> (and (and (= $t0@2 |inline$$1_Vector_swap'u64'$0$m'@2|) (= $abort_code@4 $abort_code@3)) (and (= $abort_flag@3 $abort_flag@2) (= (ControlFlow 0 17781) 16644))) L8_correct))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@2 true) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_swap'u64'$0$m'@2| |inline$$1_Vector_swap'u64'$0$m'@0|)) (and (=> (= (ControlFlow 0 17765) 17795) anon39_Then_correct) (=> (= (ControlFlow 0 17765) 17781) anon39_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then_correct|  (=> (and (or (not (and (>= $t17@0 0) (< $t17@0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))) (not (and (>= $t18@0 0) (< $t18@0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|))))) (= (ControlFlow 0 17763) 17765)) |inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Else_correct|  (=> (not (or (not (and (>= $t17@0 0) (< $t17@0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))) (not (and (>= $t18@0 0) (< $t18@0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))))) (=> (and (and (= |inline$$1_Vector_swap'u64'$0$m'@1| ($Mutation_9730 (|l#$Mutation_9730| $t0@0) (|p#$Mutation_9730| $t0@0) (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- $t18@0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| $t17@0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ $t18@0 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ $t18@0 1)))) 0 (- $t17@0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| $t18@0)) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- $t18@0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| $t17@0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ $t18@0 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ $t18@0 1)))) (+ $t17@0 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- $t18@0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| $t17@0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ $t18@0 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ $t18@0 1))))) (+ $t17@0 1)))))) (= $abort_flag@2 $abort_flag@1)) (and (= $abort_code@3 $abort_code@2) (= |inline$$1_Vector_swap'u64'$0$m'@2| |inline$$1_Vector_swap'u64'$0$m'@1|))) (and (=> (= (ControlFlow 0 17703) 17795) anon39_Then_correct) (=> (= (ControlFlow 0 17703) 17781) anon39_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_swap'u64'$0$v@1| (|v#$Mutation_9730| $t0@0)) (and (=> (= (ControlFlow 0 17669) 17763) |inline$$1_Vector_swap'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 17669) 17703) |inline$$1_Vector_swap'u64'$0$anon3_Else_correct|)))))
(let ((anon38_Then_correct  (=> (and inline$$Gt$0$dst@1 (= (ControlFlow 0 17771) 17669)) |inline$$1_Vector_swap'u64'$0$anon0_correct|)))
(let ((anon38_Else_correct  (=> (not inline$$Gt$0$dst@1) (=> (and (and (= $t0@2 $t0@0) (= $abort_code@4 $abort_code@2)) (and (= $abort_flag@3 $abort_flag@1) (= (ControlFlow 0 16483) 16644))) L8_correct))))
(let ((inline$$Gt$0$anon0_correct  (=> (= inline$$Gt$0$dst@1 (> |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$1$dst@2|)) (and (=> (= (ControlFlow 0 16469) 17771) anon38_Then_correct) (=> (= (ControlFlow 0 16469) 16483) anon38_Else_correct)))))
(let ((anon37_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 16475) 16469)) inline$$Gt$0$anon0_correct)))
(let ((|inline$$1_Vector_borrow'u64'$1$anon3_Then$1_correct|  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= |inline$$1_Vector_borrow'u64'$1$dst@2| |inline$$1_Vector_borrow'u64'$1$dst@0|)) (and (=> (= (ControlFlow 0 16415) 17809) anon37_Then_correct) (=> (= (ControlFlow 0 16415) 16475) anon37_Else_correct))))))
(let ((|inline$$1_Vector_borrow'u64'$1$anon3_Then_correct|  (=> (and (not (and (>= $t18@0 0) (< $t18@0 (seq.len $t22@1)))) (= (ControlFlow 0 16413) 16415)) |inline$$1_Vector_borrow'u64'$1$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'u64'$1$anon3_Else_correct|  (=> (and (>= $t18@0 0) (< $t18@0 (seq.len $t22@1))) (=> (and (and (= |inline$$1_Vector_borrow'u64'$1$dst@1| (seq.nth $t22@1 $t18@0)) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= |inline$$1_Vector_borrow'u64'$1$dst@2| |inline$$1_Vector_borrow'u64'$1$dst@1|))) (and (=> (= (ControlFlow 0 16363) 17809) anon37_Then_correct) (=> (= (ControlFlow 0 16363) 16475) anon37_Else_correct))))))
(let ((anon36_Else_correct  (=> (and (not $abort_flag@0) (= $t22@1 (|v#$Mutation_9730| $t0@0))) (and (=> (= (ControlFlow 0 16421) 16413) |inline$$1_Vector_borrow'u64'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 16421) 16363) |inline$$1_Vector_borrow'u64'$1$anon3_Else_correct|)))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@0|)) (and (=> (= (ControlFlow 0 16262) 17823) anon36_Then_correct) (=> (= (ControlFlow 0 16262) 16421) anon36_Else_correct))))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|  (=> (and (not (and (>= $t17@0 0) (< $t17@0 (seq.len $t20@1)))) (= (ControlFlow 0 16260) 16262)) |inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|  (=> (and (>= $t17@0 0) (< $t17@0 (seq.len $t20@1))) (=> (and (and (= |inline$$1_Vector_borrow'u64'$0$dst@1| (seq.nth $t20@1 $t17@0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@1|))) (and (=> (= (ControlFlow 0 16210) 17823) anon36_Then_correct) (=> (= (ControlFlow 0 16210) 16421) anon36_Else_correct))))))
(let ((anon35_Then_correct  (=> (and (and (and inline$$Lt$0$dst@1 (= $t17@0 $t17@0)) (and (= |$temp_0'vec'u64''@3| (|v#$Mutation_9730| $t0@0)) (= |$temp_0'vec'u64''@3| |$temp_0'vec'u64''@3|))) (and (and (= $t18@0 $t18@0) (= |$temp_0'vec'u64''@4| (|v#$Mutation_9730| $t0@0))) (and (= |$temp_0'vec'u64''@4| |$temp_0'vec'u64''@4|) (= $t20@1 (|v#$Mutation_9730| $t0@0))))) (and (=> (= (ControlFlow 0 16268) 16260) |inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 16268) 16210) |inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|)))))
(let ((L15_correct  (and (=> (= (ControlFlow 0 16087) (- 0 19277)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 16087) (- 0 19284)) (let (($range_0@@2 ($Range 0 (- (seq.len (|v#$Mutation_9730| $t0@1)) 1))))
(forall (($i_1@@4 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@4) (let ((i@@8 $i_1@@4))
(<= (seq.nth (|v#$Mutation_9730| $t0@1) i@@8) (seq.nth (|v#$Mutation_9730| $t0@1) (+ i@@8 1)))))
 :qid |naivesortcvc4bpl.1600:76|
 :skolemid |47|
)))) (=> (let (($range_0@@2 ($Range 0 (- (seq.len (|v#$Mutation_9730| $t0@1)) 1))))
(forall (($i_1@@5 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@5) (let ((i@@8 $i_1@@5))
(<= (seq.nth (|v#$Mutation_9730| $t0@1) i@@8) (seq.nth (|v#$Mutation_9730| $t0@1) (+ i@@8 1)))))
 :qid |naivesortcvc4bpl.1600:76|
 :skolemid |47|
))) (=> (= (ControlFlow 0 16087) (- 0 19337)) (exists ((p@@2 (Seq Int)) ) (!  (and (|$IsValid'vec'u64''| p@@2) (let (($range_0@@3 ($Range 0 (seq.len (|v#$Mutation_9730| $t0@1)))))
(forall (($i_1@@6 Int) ) (!  (=> ($InRange $range_0@@3 $i_1@@6) (let ((k@@2 $i_1@@6))
 (and (= (seq.nth (|v#$Mutation_9730| $t0@1) k@@2) (seq.nth $t8@0 (seq.nth p@@2 k@@2))) (let (($range_2@@0 ($Range 0 (seq.len (|v#$Mutation_9730| $t0@1)))))
(forall (($i_3@@0 Int) ) (!  (=> ($InRange $range_2@@0 $i_3@@0) (let ((num@@0 $i_3@@0))
(let (($range_4@@0 ($Range 0 (seq.len (|v#$Mutation_9730| $t0@1)))))
(exists (($i_5@@0 Int) ) (!  (and ($InRange $range_4@@0 $i_5@@0) (let ((ind@@0 $i_5@@0))
(= (seq.nth p@@2 ind@@0) num@@0)))
 :qid |naivesortcvc4bpl.1608:69|
 :skolemid |48|
)))))
 :qid |naivesortcvc4bpl.1607:147|
 :skolemid |49|
))))))
 :qid |naivesortcvc4bpl.1606:120|
 :skolemid |50|
))))
 :qid |naivesortcvc4bpl.1606:15|
 :skolemid |51|
)))))))))
(let ((anon35_Else_correct  (=> (not inline$$Lt$0$dst@1) (=> (and (and (= |$temp_0'vec'u64''@5| (|v#$Mutation_9730| $t0@0)) (= |$temp_0'vec'u64''@5| |$temp_0'vec'u64''@5|)) (and (= $t0@1 $t0@0) (= (ControlFlow 0 15898) 16087))) L15_correct))))
(let ((anon34_Else$1_correct  (and (=> (= (ControlFlow 0 15882) 16268) anon35_Then_correct) (=> (= (ControlFlow 0 15882) 15898) anon35_Else_correct))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t18@0 |inline$$1_Vector_length'u64'$0$l@1|)) (= (ControlFlow 0 15872) 15882)) anon34_Else$1_correct)))
(let ((anon34_Else_correct  (=> (not inline$$Le$0$dst@1) (=> (and (and (|$IsValid'u64'| 0) (= 0 0)) (and (|$IsValid'u64'| 1) (= 1 1))) (and (=> (= (ControlFlow 0 15878) (- 0 18595)) (< 0 1)) (=> (< 0 1) (and (=> (= (ControlFlow 0 15878) (- 0 18602)) (= (seq.len (|v#$Mutation_9730| _$t0)) |inline$$1_Vector_length'u64'$0$l@1|)) (=> (= (seq.len (|v#$Mutation_9730| _$t0)) |inline$$1_Vector_length'u64'$0$l@1|) (and (=> (= (ControlFlow 0 15878) (- 0 18613)) (let (($range_0@@4 ($Range 0 (- 0 1))))
(forall (($i_1@@7 Int) ) (!  (=> ($InRange $range_0@@4 $i_1@@7) (let ((k@@3 $i_1@@7))
(<= (seq.nth (|v#$Mutation_9730| _$t0) k@@3) (seq.nth (|v#$Mutation_9730| _$t0) (+ k@@3 1)))))
 :qid |naivesortcvc4bpl.1232:55|
 :skolemid |29|
)))) (=> (let (($range_0@@4 ($Range 0 (- 0 1))))
(forall (($i_1@@8 Int) ) (!  (=> ($InRange $range_0@@4 $i_1@@8) (let ((k@@3 $i_1@@8))
(<= (seq.nth (|v#$Mutation_9730| _$t0) k@@3) (seq.nth (|v#$Mutation_9730| _$t0) (+ k@@3 1)))))
 :qid |naivesortcvc4bpl.1232:55|
 :skolemid |29|
))) (and (=> (= (ControlFlow 0 15878) (- 0 18662)) (let (($range_0@@5 ($Range (+ 0 1) 1)))
(forall (($i_1@@9 Int) ) (!  (=> ($InRange $range_0@@5 $i_1@@9) (let ((k@@4 $i_1@@9))
(<= (seq.nth (|v#$Mutation_9730| _$t0) 0) (seq.nth (|v#$Mutation_9730| _$t0) k@@4))))
 :qid |naivesortcvc4bpl.1238:58|
 :skolemid |30|
)))) (=> (let (($range_0@@5 ($Range (+ 0 1) 1)))
(forall (($i_1@@10 Int) ) (!  (=> ($InRange $range_0@@5 $i_1@@10) (let ((k@@4 $i_1@@10))
(<= (seq.nth (|v#$Mutation_9730| _$t0) 0) (seq.nth (|v#$Mutation_9730| _$t0) k@@4))))
 :qid |naivesortcvc4bpl.1238:58|
 :skolemid |30|
))) (and (=> (= (ControlFlow 0 15878) (- 0 18705)) (exists ((p@@3 (Seq Int)) ) (!  (and (|$IsValid'vec'u64''| p@@3) (let (($range_0@@6 ($Range 0 (seq.len (|v#$Mutation_9730| _$t0)))))
(forall (($i_1@@11 Int) ) (!  (=> ($InRange $range_0@@6 $i_1@@11) (let ((k@@5 $i_1@@11))
 (and (= (seq.nth (|v#$Mutation_9730| _$t0) k@@5) (seq.nth $t10@0 (seq.nth p@@3 k@@5))) (let (($range_2@@1 ($Range 0 (seq.len (|v#$Mutation_9730| _$t0)))))
(forall (($i_3@@1 Int) ) (!  (=> ($InRange $range_2@@1 $i_3@@1) (let ((num@@1 $i_3@@1))
(let (($range_4@@1 ($Range 0 (seq.len (|v#$Mutation_9730| _$t0)))))
(exists (($i_5@@1 Int) ) (!  (and ($InRange $range_4@@1 $i_5@@1) (let ((ind@@1 $i_5@@1))
(= (seq.nth p@@3 ind@@1) num@@1)))
 :qid |naivesortcvc4bpl.1246:69|
 :skolemid |31|
)))))
 :qid |naivesortcvc4bpl.1245:148|
 :skolemid |32|
))))))
 :qid |naivesortcvc4bpl.1244:120|
 :skolemid |33|
))))
 :qid |naivesortcvc4bpl.1244:15|
 :skolemid |34|
))) (=> (exists ((p@@4 (Seq Int)) ) (!  (and (|$IsValid'vec'u64''| p@@4) (let (($range_0@@6 ($Range 0 (seq.len (|v#$Mutation_9730| _$t0)))))
(forall (($i_1@@12 Int) ) (!  (=> ($InRange $range_0@@6 $i_1@@12) (let ((k@@5 $i_1@@12))
 (and (= (seq.nth (|v#$Mutation_9730| _$t0) k@@5) (seq.nth $t10@0 (seq.nth p@@4 k@@5))) (let (($range_2@@1 ($Range 0 (seq.len (|v#$Mutation_9730| _$t0)))))
(forall (($i_3@@2 Int) ) (!  (=> ($InRange $range_2@@1 $i_3@@2) (let ((num@@1 $i_3@@2))
(let (($range_4@@1 ($Range 0 (seq.len (|v#$Mutation_9730| _$t0)))))
(exists (($i_5@@2 Int) ) (!  (and ($InRange $range_4@@1 $i_5@@2) (let ((ind@@1 $i_5@@2))
(= (seq.nth p@@4 ind@@1) num@@1)))
 :qid |naivesortcvc4bpl.1246:69|
 :skolemid |31|
)))))
 :qid |naivesortcvc4bpl.1245:148|
 :skolemid |32|
))))))
 :qid |naivesortcvc4bpl.1244:120|
 :skolemid |33|
))))
 :qid |naivesortcvc4bpl.1244:15|
 :skolemid |34|
)) (=> (|$IsValid'u64'| $t17@0) (=> (and (|$IsValid'u64'| $t18@0) (|$IsValid'vec'u64''| $t20@0)) (=> (and (and (|$IsValid'u64'| $t21@0) (|$IsValid'vec'u64''| $t22@0)) (and (|$IsValid'u64'| $t23@0) (|$IsValid'u64'| $t25@0))) (=> (and (and (and (and (|$IsValid'u64'| $t26@0) (|$IsValid'u64'| $t28@0)) (and (|$IsValid'u64'| $t29@0) (|$IsValid'u64'| $t30@0))) (and (and (|$IsValid'u64'| $t31@0) (|$IsValid'u64'| $t32@0)) (and (|$IsValid'u64'| $t33@0) (= $t0@0 ($Mutation_9730 (|l#$Mutation_9730| _$t0) (|p#$Mutation_9730| _$t0) |$temp_0'vec'u64''@2|))))) (and (and (and (|$IsValid'vec'u64''| (|v#$Mutation_9730| $t0@0)) (not false)) (and (< $t17@0 $t18@0) (= (seq.len (|v#$Mutation_9730| $t0@0)) |inline$$1_Vector_length'u64'$0$l@1|))) (and (and (let (($range_0@@7 ($Range 0 (- $t17@0 1))))
(forall (($i_1@@13 Int) ) (!  (=> ($InRange $range_0@@7 $i_1@@13) (let ((k@@6 $i_1@@13))
(<= (seq.nth (|v#$Mutation_9730| $t0@0) k@@6) (seq.nth (|v#$Mutation_9730| $t0@0) (+ k@@6 1)))))
 :qid |naivesortcvc4bpl.1335:60|
 :skolemid |35|
))) (let (($range_0@@8 ($Range (+ $t17@0 1) $t18@0)))
(forall (($i_1@@14 Int) ) (!  (=> ($InRange $range_0@@8 $i_1@@14) (let ((k@@7 $i_1@@14))
(<= (seq.nth (|v#$Mutation_9730| $t0@0) $t17@0) (seq.nth (|v#$Mutation_9730| $t0@0) k@@7))))
 :qid |naivesortcvc4bpl.1340:63|
 :skolemid |36|
)))) (and (exists ((p@@5 (Seq Int)) ) (!  (and (|$IsValid'vec'u64''| p@@5) (let (($range_0@@9 ($Range 0 (seq.len (|v#$Mutation_9730| $t0@0)))))
(forall (($i_1@@15 Int) ) (!  (=> ($InRange $range_0@@9 $i_1@@15) (let ((k@@8 $i_1@@15))
 (and (= (seq.nth (|v#$Mutation_9730| $t0@0) k@@8) (seq.nth $t9@0 (seq.nth p@@5 k@@8))) (let (($range_2@@2 ($Range 0 (seq.len (|v#$Mutation_9730| $t0@0)))))
(forall (($i_3@@3 Int) ) (!  (=> ($InRange $range_2@@2 $i_3@@3) (let ((num@@2 $i_3@@3))
(let (($range_4@@2 ($Range 0 (seq.len (|v#$Mutation_9730| $t0@0)))))
(exists (($i_5@@3 Int) ) (!  (and ($InRange $range_4@@2 $i_5@@3) (let ((ind@@2 $i_5@@3))
(= (seq.nth p@@5 ind@@2) num@@2)))
 :qid |naivesortcvc4bpl.1347:69|
 :skolemid |37|
)))))
 :qid |naivesortcvc4bpl.1346:147|
 :skolemid |38|
))))))
 :qid |naivesortcvc4bpl.1345:125|
 :skolemid |39|
))))
 :qid |naivesortcvc4bpl.1345:20|
 :skolemid |40|
)) (= (ControlFlow 0 15878) 15872))))) inline$$Lt$0$anon0_correct))))))))))))))))))
(let ((anon34_Then_correct  (=> inline$$Le$0$dst@1 (=> (and (and (= |$temp_0'vec'u64''@1| (|v#$Mutation_9730| _$t0)) (= |$temp_0'vec'u64''@1| |$temp_0'vec'u64''@1|)) (and (= $t0@1 _$t0) (= (ControlFlow 0 17837) 16087))) L15_correct))))
(let ((inline$$Le$0$anon0_correct  (=> (= inline$$Le$0$dst@1 (<= |inline$$1_Vector_length'u64'$0$l@1| 1)) (and (=> (= (ControlFlow 0 15218) 17837) anon34_Then_correct) (=> (= (ControlFlow 0 15218) 15878) anon34_Else_correct)))))
(let ((anon33_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|) (= (seq.len (|v#$Mutation_9730| _$t0)) 2)) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 15224) 15218))) inline$$Le$0$anon0_correct))))
(let ((anon33_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$0$l@1| (seq.len $t12@0)) (and (=> (= (ControlFlow 0 15138) 17851) anon33_Then_correct) (=> (= (ControlFlow 0 15138) 15224) anon33_Else_correct)))))
(let ((anon0$1_correct  (=> (and (= (|l#$Mutation_9730| _$t0) ($Param 0)) (|$IsValid'vec'u64''| (|v#$Mutation_9730| _$t0))) (=> (and (and (and (= $t8@0 (|v#$Mutation_9730| _$t0)) (= $t9@0 (|v#$Mutation_9730| _$t0))) (and (= $t10@0 (|v#$Mutation_9730| _$t0)) (= $t11@0 (|v#$Mutation_9730| _$t0)))) (and (and (= |$temp_0'vec'u64''@0| (|v#$Mutation_9730| _$t0)) (= |$temp_0'vec'u64''@0| |$temp_0'vec'u64''@0|)) (and (= $t12@0 (|v#$Mutation_9730| _$t0)) (= (ControlFlow 0 15144) 15138)))) |inline$$1_Vector_length'u64'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_9730| $t3)) 0) (=> (and (= (seq.len (|p#$Mutation_9730| $t5)) 0) (= (ControlFlow 0 15056) 15144)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 18102) 15056) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
