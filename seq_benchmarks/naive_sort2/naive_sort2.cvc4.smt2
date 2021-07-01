(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL_SUPPORTED)
; done setting options


(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10571 0)) ((($Mutation_10571 (|l#$Mutation_10571| T@$Location) (|p#$Mutation_10571| (Seq Int)) (|v#$Mutation_10571| (Seq Int)) ) ) ))
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
 :qid |naivesort2cvc4bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |naivesort2cvc4bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |naivesort2cvc4bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |naivesort2cvc4bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |naivesort2cvc4bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |naivesort2cvc4bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |naivesort2cvc4bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |naivesort2cvc4bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u64'| (seq.nth v@@4 i@@0)))
 :qid |naivesort2cvc4bpl.590:13|
 :skolemid |15|
))))
 :qid |naivesort2cvc4bpl.588:29|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |naivesort2cvc4bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |naivesort2cvc4bpl.603:17|
 :skolemid |18|
)))))
 :qid |naivesort2cvc4bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |naivesort2cvc4bpl.770:13|
 :skolemid |20|
))))
 :qid |naivesort2cvc4bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |naivesort2cvc4bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |naivesort2cvc4bpl.783:17|
 :skolemid |23|
)))))
 :qid |naivesort2cvc4bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |naivesort2cvc4bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |naivesort2cvc4bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |naivesort2cvc4bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |naivesort2cvc4bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |naivesort2cvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |naivesort2cvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@8))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |naivesort2cvc4bpl.245:54|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@9 () Bool)
(declare-fun inline$$AddU64$4$dst@2 () Int)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_10571)
(declare-fun $abort_code@10 () Int)
(declare-fun inline$$AddU64$4$dst@0 () Int)
(declare-fun $t19@0 () Int)
(declare-fun inline$$AddU64$4$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun $t18@1 () T@$Mutation_10571)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@8 () Bool)
(declare-fun $abort_code@9 () Int)
(declare-fun $abort_flag@7 () Bool)
(declare-fun $abort_code@8 () Int)
(declare-fun $abort_flag@6 () Bool)
(declare-fun $abort_code@7 () Int)
(declare-fun $abort_flag@5 () Bool)
(declare-fun $abort_code@6 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t2@0 () Int)
(declare-fun $t3@0 () Int)
(declare-fun $t0@2 () T@$Mutation_10571)
(declare-fun |inline$$1_Vector_length'u64'$0$l@1| () Int)
(declare-fun $t14@0 () (Seq Int))
(declare-fun $t18@3 () T@$Mutation_10571)
(declare-fun inline$$AddU64$3$dst@2 () Int)
(declare-fun inline$$AddU64$3$dst@0 () Int)
(declare-fun $t28@0 () Int)
(declare-fun inline$$AddU64$3$dst@1 () Int)
(declare-fun inline$$Lt$2$dst@1 () Bool)
(declare-fun inline$$AddU64$2$dst@2 () Int)
(declare-fun inline$$AddU64$1$dst@2 () Int)
(declare-fun inline$$AddU64$2$dst@0 () Int)
(declare-fun inline$$AddU64$2$dst@1 () Int)
(declare-fun inline$$AddU64$1$dst@0 () Int)
(declare-fun $t27@0 () Int)
(declare-fun inline$$AddU64$1$dst@1 () Int)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@5 () Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun |inline$$1_Vector_swap'u64'$1$m'@2| () T@$Mutation_10571)
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@2| () T@$Mutation_10571)
(declare-fun |inline$$1_Vector_swap'u64'$1$m'@0| () T@$Mutation_10571)
(declare-fun |inline$$1_Vector_swap'u64'$1$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_swap'u64'$1$m'@1| () T@$Mutation_10571)
(declare-fun $t0@0 () T@$Mutation_10571)
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@0| () T@$Mutation_10571)
(declare-fun |inline$$1_Vector_swap'u64'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@1| () T@$Mutation_10571)
(declare-fun $t18@2 () T@$Mutation_10571)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@2| () Int)
(declare-fun |inline$$1_Vector_borrow'u64'$1$dst@2| () Int)
(declare-fun |inline$$1_Vector_borrow'u64'$1$dst@0| () Int)
(declare-fun $t32@1 () (Seq Int))
(declare-fun |inline$$1_Vector_borrow'u64'$1$dst@1| () Int)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@0| () Int)
(declare-fun $t30@1 () (Seq Int))
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@1| () Int)
(declare-fun inline$$Lt$1$dst@1 () Bool)
(declare-fun |$temp_0'vec'u64''@6| () (Seq Int))
(declare-fun |$temp_0'vec'u64''@7| () (Seq Int))
(declare-fun $t0@1 () T@$Mutation_10571)
(declare-fun $t11@0 () (Seq Int))
(declare-fun $t26@0 () (Seq Int))
(declare-fun $t44@0 () (Seq Int))
(declare-fun $t5@1 () (Seq Int))
(declare-fun |$temp_0'vec'u64''@8| () (Seq Int))
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun _$t0 () T@$Mutation_10571)
(declare-fun $t13@0 () (Seq Int))
(declare-fun $t30@0 () (Seq Int))
(declare-fun $t31@0 () Int)
(declare-fun $t32@0 () (Seq Int))
(declare-fun $t33@0 () Int)
(declare-fun $t35@0 () Int)
(declare-fun $t36@0 () Int)
(declare-fun $t38@0 () Int)
(declare-fun $t39@0 () Int)
(declare-fun $t40@0 () Int)
(declare-fun $t41@0 () Int)
(declare-fun $t42@0 () Int)
(declare-fun $t43@0 () Int)
(declare-fun |$temp_0'vec'u64''@4| () (Seq Int))
(declare-fun |$temp_0'vec'u64''@5| () (Seq Int))
(declare-fun $t12@0 () (Seq Int))
(declare-fun $t25@0 () (Seq Int))
(declare-fun $t5@0 () (Seq Int))
(declare-fun |$temp_0'vec'u64''@3| () (Seq Int))
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t18@0 () T@$Mutation_10571)
(declare-fun |$temp_0'vec'u64''@1| () (Seq Int))
(declare-fun $t21@0 () Int)
(declare-fun $t22@0 () Int)
(declare-fun |$temp_0'vec'u64''@2| () (Seq Int))
(declare-fun $t15@0 () (Seq Int))
(declare-fun |$temp_0'vec'u64''@0| () (Seq Int))
(declare-fun $t4 () T@$Mutation_10571)
(declare-fun $t6 () T@$Mutation_10571)
(declare-fun $t8 () T@$Mutation_10571)
(declare-fun $t18 () T@$Mutation_10571)
(push 1)
(set-info :boogie-vc-id $42_TestNaiveSort_verify_sort$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 21248) (let ((anon50_Else_correct  (=> (and (not $abort_flag@9) (= inline$$AddU64$4$dst@2 inline$$AddU64$4$dst@2)) (and (=> (= (ControlFlow 0 20834) (- 0 24580)) (= (seq.len (|v#$Mutation_10571| |inline$$1_Vector_push_back'u64'$0$m'@1|)) inline$$AddU64$4$dst@2)) (=> (= (seq.len (|v#$Mutation_10571| |inline$$1_Vector_push_back'u64'$0$m'@1|)) inline$$AddU64$4$dst@2) (=> (= (ControlFlow 0 20834) (- 0 24591)) (let (($range_0 ($Range 0 (seq.len (|v#$Mutation_10571| |inline$$1_Vector_push_back'u64'$0$m'@1|)))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((k $i_1))
(= (seq.nth (|v#$Mutation_10571| |inline$$1_Vector_push_back'u64'$0$m'@1|) k) k)))
 :qid |naivesort2cvc4bpl.1760:71|
 :skolemid |43|
)))))))))
(let ((anon49_Then_correct true))
(let ((L21_correct  (=> (= (ControlFlow 0 19776) (- 0 24561)) false)))
(let ((anon50_Then_correct  (=> $abort_flag@9 (=> (and (= $abort_code@10 $abort_code@10) (= (ControlFlow 0 20848) 19776)) L21_correct))))
(let ((inline$$AddU64$4$anon3_Then$1_correct  (=> (= $abort_flag@9 true) (=> (and (= $abort_code@10 $EXEC_FAILURE_CODE) (= inline$$AddU64$4$dst@2 inline$$AddU64$4$dst@0)) (and (=> (= (ControlFlow 0 20759) 20848) anon50_Then_correct) (=> (= (ControlFlow 0 20759) 20834) anon50_Else_correct))))))
(let ((inline$$AddU64$4$anon3_Then_correct  (=> (and (> (+ $t19@0 1) $MAX_U64) (= (ControlFlow 0 20757) 20759)) inline$$AddU64$4$anon3_Then$1_correct)))
(let ((inline$$AddU64$4$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t19@0 1)) (=> (and (and (= inline$$AddU64$4$dst@1 (+ $t19@0 1)) (= $abort_flag@9 false)) (and (= $abort_code@10 $abort_code@0) (= inline$$AddU64$4$dst@2 inline$$AddU64$4$dst@1))) (and (=> (= (ControlFlow 0 20705) 20848) anon50_Then_correct) (=> (= (ControlFlow 0 20705) 20834) anon50_Else_correct))))))
(let ((anon49_Else_correct  (=> (and (not false) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 20765) 20757) inline$$AddU64$4$anon3_Then_correct) (=> (= (ControlFlow 0 20765) 20705) inline$$AddU64$4$anon3_Else_correct)))))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_10571 (|l#$Mutation_10571| $t18@1) (|p#$Mutation_10571| $t18@1) (seq.++ (|v#$Mutation_10571| $t18@1) (seq.unit $t19@0)))) (and (=> (= (ControlFlow 0 20590) 20862) anon49_Then_correct) (=> (= (ControlFlow 0 20590) 20765) anon49_Else_correct)))))
(let ((anon48_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 20596) 20590)) |inline$$1_Vector_push_back'u64'$0$anon0_correct|)))
(let ((anon57_Then_correct  (=> $abort_flag@3 (=> (and (= $abort_code@4 $abort_code@4) (= (ControlFlow 0 20463) 19776)) L21_correct))))
(let ((anon56_Then_correct  (=> $abort_flag@2 (=> (and (= $abort_code@3 $abort_code@3) (= (ControlFlow 0 20477) 19776)) L21_correct))))
(let ((anon60_Then_correct  (=> $abort_flag@8 (=> (and (= $abort_code@9 $abort_code@9) (= (ControlFlow 0 19983) 19776)) L21_correct))))
(let ((anon62_Then_correct  (=> $abort_flag@7 (=> (and (= $abort_code@8 $abort_code@8) (= (ControlFlow 0 19766) 19776)) L21_correct))))
(let ((anon61_Then_correct  (=> $abort_flag@6 (=> (and (= $abort_code@7 $abort_code@7) (= (ControlFlow 0 19790) 19776)) L21_correct))))
(let ((anon58_Then_correct  (=> $abort_flag@5 (=> (and (= $abort_code@6 $abort_code@6) (= (ControlFlow 0 19997) 19776)) L21_correct))))
(let ((anon54_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 20491) 19776)) L21_correct))))
(let ((anon53_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 20505) 19776)) L21_correct))))
(let ((L16_correct  (and (=> (= (ControlFlow 0 19752) (- 0 24144)) (< $t2@0 $t3@0)) (=> (< $t2@0 $t3@0) (and (=> (= (ControlFlow 0 19752) (- 0 24151)) (= (seq.len (|v#$Mutation_10571| $t0@2)) |inline$$1_Vector_length'u64'$0$l@1|)) (=> (= (seq.len (|v#$Mutation_10571| $t0@2)) |inline$$1_Vector_length'u64'$0$l@1|) (and (=> (= (ControlFlow 0 19752) (- 0 24162)) (let (($range_0@@0 ($Range 0 (- $t2@0 1))))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@0) (let ((k@@0 $i_1@@0))
(<= (seq.nth (|v#$Mutation_10571| $t0@2) k@@0) (seq.nth (|v#$Mutation_10571| $t0@2) (+ k@@0 1)))))
 :qid |naivesort2cvc4bpl.1784:54|
 :skolemid |44|
)))) (=> (let (($range_0@@0 ($Range 0 (- $t2@0 1))))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@1) (let ((k@@0 $i_1@@1))
(<= (seq.nth (|v#$Mutation_10571| $t0@2) k@@0) (seq.nth (|v#$Mutation_10571| $t0@2) (+ k@@0 1)))))
 :qid |naivesort2cvc4bpl.1784:54|
 :skolemid |44|
))) (and (=> (= (ControlFlow 0 19752) (- 0 24211)) (let (($range_0@@1 ($Range (+ $t2@0 1) $t3@0)))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@2) (let ((k@@1 $i_1@@2))
(<= (seq.nth (|v#$Mutation_10571| $t0@2) $t2@0) (seq.nth (|v#$Mutation_10571| $t0@2) k@@1))))
 :qid |naivesort2cvc4bpl.1790:56|
 :skolemid |45|
)))) (=> (let (($range_0@@1 ($Range (+ $t2@0 1) $t3@0)))
(forall (($i_1@@3 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@3) (let ((k@@1 $i_1@@3))
(<= (seq.nth (|v#$Mutation_10571| $t0@2) $t2@0) (seq.nth (|v#$Mutation_10571| $t0@2) k@@1))))
 :qid |naivesort2cvc4bpl.1790:56|
 :skolemid |45|
))) (and (=> (= (ControlFlow 0 19752) (- 0 24254)) (let (($range_0@@2 ($Range 0 (seq.len (|v#$Mutation_10571| $t0@2)))))
(forall (($i_1@@4 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@4) (let ((k@@2 $i_1@@4))
(= (seq.nth (|v#$Mutation_10571| $t0@2) k@@2) (seq.nth $t14@0 (seq.nth (|v#$Mutation_10571| $t18@3) k@@2)))))
 :qid |naivesort2cvc4bpl.1796:70|
 :skolemid |46|
)))) (=> (let (($range_0@@2 ($Range 0 (seq.len (|v#$Mutation_10571| $t0@2)))))
(forall (($i_1@@5 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@5) (let ((k@@2 $i_1@@5))
(= (seq.nth (|v#$Mutation_10571| $t0@2) k@@2) (seq.nth $t14@0 (seq.nth (|v#$Mutation_10571| $t18@3) k@@2)))))
 :qid |naivesort2cvc4bpl.1796:70|
 :skolemid |46|
))) (and (=> (= (ControlFlow 0 19752) (- 0 24302)) (let (($range_0@@3 ($Range 0 |inline$$1_Vector_length'u64'$0$l@1|)))
(forall (($i_1@@6 Int) ) (!  (=> ($InRange $range_0@@3 $i_1@@6) (let ((k@@3 $i_1@@6))
 (and (<= 0 (seq.nth (|v#$Mutation_10571| $t18@3) k@@3)) (< (seq.nth (|v#$Mutation_10571| $t18@3) k@@3) |inline$$1_Vector_length'u64'$0$l@1|))))
 :qid |naivesort2cvc4bpl.1802:49|
 :skolemid |47|
)))) (=> (let (($range_0@@3 ($Range 0 |inline$$1_Vector_length'u64'$0$l@1|)))
(forall (($i_1@@7 Int) ) (!  (=> ($InRange $range_0@@3 $i_1@@7) (let ((k@@3 $i_1@@7))
 (and (<= 0 (seq.nth (|v#$Mutation_10571| $t18@3) k@@3)) (< (seq.nth (|v#$Mutation_10571| $t18@3) k@@3) |inline$$1_Vector_length'u64'$0$l@1|))))
 :qid |naivesort2cvc4bpl.1802:49|
 :skolemid |47|
))) (=> (= (ControlFlow 0 19752) (- 0 24350)) (let (($range_0@@4 ($Range 0 |inline$$1_Vector_length'u64'$0$l@1|)))
(forall (($i_1@@8 Int) ) (!  (=> ($InRange $range_0@@4 $i_1@@8) (let ((k@@4 $i_1@@8))
(let (($range_2 ($Range 0 |inline$$1_Vector_length'u64'$0$l@1|)))
(forall (($i_3 Int) ) (!  (=> ($InRange $range_2 $i_3) (let ((l $i_3))
 (=> (not (= k@@4 l)) (not (= (seq.nth (|v#$Mutation_10571| $t18@3) k@@4) (seq.nth (|v#$Mutation_10571| $t18@3) l))))))
 :qid |naivesort2cvc4bpl.1809:48|
 :skolemid |48|
)))))
 :qid |naivesort2cvc4bpl.1808:49|
 :skolemid |49|
))))))))))))))))))
(let ((anon60_Else_correct  (=> (not $abort_flag@8) (=> (and (and (= inline$$AddU64$3$dst@2 inline$$AddU64$3$dst@2) (= $t2@0 0)) (and (= $t3@0 inline$$AddU64$3$dst@2) (= (ControlFlow 0 19969) 19752))) L16_correct))))
(let ((inline$$AddU64$3$anon3_Then$1_correct  (=> (= $abort_flag@8 true) (=> (and (= $abort_code@9 $EXEC_FAILURE_CODE) (= inline$$AddU64$3$dst@2 inline$$AddU64$3$dst@0)) (and (=> (= (ControlFlow 0 19947) 19983) anon60_Then_correct) (=> (= (ControlFlow 0 19947) 19969) anon60_Else_correct))))))
(let ((inline$$AddU64$3$anon3_Then_correct  (=> (and (> (+ $t28@0 1) $MAX_U64) (= (ControlFlow 0 19945) 19947)) inline$$AddU64$3$anon3_Then$1_correct)))
(let ((inline$$AddU64$3$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t28@0 1)) (=> (and (and (= inline$$AddU64$3$dst@1 (+ $t28@0 1)) (= $abort_flag@8 $abort_flag@5)) (and (= $abort_code@9 $abort_code@6) (= inline$$AddU64$3$dst@2 inline$$AddU64$3$dst@1))) (and (=> (= (ControlFlow 0 19893) 19983) anon60_Then_correct) (=> (= (ControlFlow 0 19893) 19969) anon60_Else_correct))))))
(let ((anon59_Then_correct  (=> (and inline$$Lt$2$dst@1 (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 19953) 19945) inline$$AddU64$3$anon3_Then_correct) (=> (= (ControlFlow 0 19953) 19893) inline$$AddU64$3$anon3_Else_correct)))))
(let ((anon62_Else_correct  (=> (not $abort_flag@7) (=> (and (and (= inline$$AddU64$2$dst@2 inline$$AddU64$2$dst@2) (= $t2@0 inline$$AddU64$1$dst@2)) (and (= $t3@0 inline$$AddU64$2$dst@2) (= (ControlFlow 0 19450) 19752))) L16_correct))))
(let ((inline$$AddU64$2$anon3_Then$1_correct  (=> (= $abort_code@8 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@7 true) (= inline$$AddU64$2$dst@2 inline$$AddU64$2$dst@0)) (and (=> (= (ControlFlow 0 19426) 19766) anon62_Then_correct) (=> (= (ControlFlow 0 19426) 19450) anon62_Else_correct))))))
(let ((inline$$AddU64$2$anon3_Then_correct  (=> (and (> (+ inline$$AddU64$1$dst@2 1) $MAX_U64) (= (ControlFlow 0 19424) 19426)) inline$$AddU64$2$anon3_Then$1_correct)))
(let ((inline$$AddU64$2$anon3_Else_correct  (=> (>= $MAX_U64 (+ inline$$AddU64$1$dst@2 1)) (=> (and (and (= inline$$AddU64$2$dst@1 (+ inline$$AddU64$1$dst@2 1)) (= $abort_code@8 $abort_code@7)) (and (= $abort_flag@7 $abort_flag@6) (= inline$$AddU64$2$dst@2 inline$$AddU64$2$dst@1))) (and (=> (= (ControlFlow 0 19372) 19766) anon62_Then_correct) (=> (= (ControlFlow 0 19372) 19450) anon62_Else_correct))))))
(let ((anon61_Else_correct  (=> (not $abort_flag@6) (=> (and (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@2) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 19432) 19424) inline$$AddU64$2$anon3_Then_correct) (=> (= (ControlFlow 0 19432) 19372) inline$$AddU64$2$anon3_Else_correct))))))
(let ((inline$$AddU64$1$anon3_Then$1_correct  (=> (= $abort_flag@6 true) (=> (and (= $abort_code@7 $EXEC_FAILURE_CODE) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@0)) (and (=> (= (ControlFlow 0 19249) 19790) anon61_Then_correct) (=> (= (ControlFlow 0 19249) 19432) anon61_Else_correct))))))
(let ((inline$$AddU64$1$anon3_Then_correct  (=> (and (> (+ $t27@0 1) $MAX_U64) (= (ControlFlow 0 19247) 19249)) inline$$AddU64$1$anon3_Then$1_correct)))
(let ((inline$$AddU64$1$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t27@0 1)) (=> (and (and (= inline$$AddU64$1$dst@1 (+ $t27@0 1)) (= $abort_flag@6 $abort_flag@5)) (and (= $abort_code@7 $abort_code@6) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@1))) (and (=> (= (ControlFlow 0 19195) 19790) anon61_Then_correct) (=> (= (ControlFlow 0 19195) 19432) anon61_Else_correct))))))
(let ((anon59_Else_correct  (=> (and (not inline$$Lt$2$dst@1) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 19255) 19247) inline$$AddU64$1$anon3_Then_correct) (=> (= (ControlFlow 0 19255) 19195) inline$$AddU64$1$anon3_Else_correct)))))
(let ((inline$$Lt$2$anon0_correct  (=> (= inline$$Lt$2$dst@1 (< inline$$AddU64$0$dst@2 |inline$$1_Vector_length'u64'$0$l@1|)) (and (=> (= (ControlFlow 0 19082) 19953) anon59_Then_correct) (=> (= (ControlFlow 0 19082) 19255) anon59_Else_correct)))))
(let ((anon58_Else_correct  (=> (and (not $abort_flag@5) (= (ControlFlow 0 19088) 19082)) inline$$Lt$2$anon0_correct)))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_code@6 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@5 true) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 19028) 19997) anon58_Then_correct) (=> (= (ControlFlow 0 19028) 19088) anon58_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t28@0 1) $MAX_U64) (= (ControlFlow 0 19026) 19028)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t28@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t28@0 1)) (= $abort_code@6 $abort_code@5)) (and (= $abort_flag@5 $abort_flag@4) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 18974) 19997) anon58_Then_correct) (=> (= (ControlFlow 0 18974) 19088) anon58_Else_correct))))))
(let ((L12_correct  (=> (|$IsValid'u64'| 1) (and (=> (= (ControlFlow 0 19034) 19026) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 19034) 18974) inline$$AddU64$0$anon3_Else_correct)))))
(let ((anon57_Else_correct  (=> (and (not $abort_flag@3) (= $t0@2 |inline$$1_Vector_swap'u64'$1$m'@2|)) (=> (and (and (= $t18@3 |inline$$1_Vector_swap'u64'$0$m'@2|) (= $abort_flag@4 $abort_flag@3)) (and (= $abort_code@5 $abort_code@4) (= (ControlFlow 0 20449) 19034))) L12_correct))))
(let ((|inline$$1_Vector_swap'u64'$1$anon3_Then$1_correct|  (=> (= $abort_code@4 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@3 true) (= |inline$$1_Vector_swap'u64'$1$m'@2| |inline$$1_Vector_swap'u64'$1$m'@0|)) (and (=> (= (ControlFlow 0 20433) 20463) anon57_Then_correct) (=> (= (ControlFlow 0 20433) 20449) anon57_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$1$anon3_Then_correct|  (=> (and (or (not (and (>= $t27@0 0) (< $t27@0 (seq.len |inline$$1_Vector_swap'u64'$1$v@1|)))) (not (and (>= $t28@0 0) (< $t28@0 (seq.len |inline$$1_Vector_swap'u64'$1$v@1|))))) (= (ControlFlow 0 20431) 20433)) |inline$$1_Vector_swap'u64'$1$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'u64'$1$anon3_Else_correct|  (=> (not (or (not (and (>= $t27@0 0) (< $t27@0 (seq.len |inline$$1_Vector_swap'u64'$1$v@1|)))) (not (and (>= $t28@0 0) (< $t28@0 (seq.len |inline$$1_Vector_swap'u64'$1$v@1|)))))) (=> (and (and (= |inline$$1_Vector_swap'u64'$1$m'@1| ($Mutation_10571 (|l#$Mutation_10571| $t0@0) (|p#$Mutation_10571| $t0@0) (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$1$v@1| 0 (- $t28@0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$1$v@1| $t27@0)) (seq.extract |inline$$1_Vector_swap'u64'$1$v@1| (+ $t28@0 1) (- (seq.len |inline$$1_Vector_swap'u64'$1$v@1|) (+ $t28@0 1)))) 0 (- $t27@0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$1$v@1| $t28@0)) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$1$v@1| 0 (- $t28@0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$1$v@1| $t27@0)) (seq.extract |inline$$1_Vector_swap'u64'$1$v@1| (+ $t28@0 1) (- (seq.len |inline$$1_Vector_swap'u64'$1$v@1|) (+ $t28@0 1)))) (+ $t27@0 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$1$v@1| 0 (- $t28@0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$1$v@1| $t27@0)) (seq.extract |inline$$1_Vector_swap'u64'$1$v@1| (+ $t28@0 1) (- (seq.len |inline$$1_Vector_swap'u64'$1$v@1|) (+ $t28@0 1))))) (+ $t27@0 1)))))) (= $abort_code@4 $abort_code@3)) (and (= $abort_flag@3 $abort_flag@2) (= |inline$$1_Vector_swap'u64'$1$m'@2| |inline$$1_Vector_swap'u64'$1$m'@1|))) (and (=> (= (ControlFlow 0 20371) 20463) anon57_Then_correct) (=> (= (ControlFlow 0 20371) 20449) anon57_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_swap'u64'$1$v@1| (|v#$Mutation_10571| $t0@0)) (and (=> (= (ControlFlow 0 20337) 20431) |inline$$1_Vector_swap'u64'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 20337) 20371) |inline$$1_Vector_swap'u64'$1$anon3_Else_correct|)))))
(let ((anon56_Else_correct  (=> (and (not $abort_flag@2) (= (ControlFlow 0 20439) 20337)) |inline$$1_Vector_swap'u64'$1$anon0_correct|)))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@2 true) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_swap'u64'$0$m'@2| |inline$$1_Vector_swap'u64'$0$m'@0|)) (and (=> (= (ControlFlow 0 20209) 20477) anon56_Then_correct) (=> (= (ControlFlow 0 20209) 20439) anon56_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then_correct|  (=> (and (or (not (and (>= $t27@0 0) (< $t27@0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))) (not (and (>= $t28@0 0) (< $t28@0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|))))) (= (ControlFlow 0 20207) 20209)) |inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Else_correct|  (=> (not (or (not (and (>= $t27@0 0) (< $t27@0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))) (not (and (>= $t28@0 0) (< $t28@0 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))))) (=> (and (and (= |inline$$1_Vector_swap'u64'$0$m'@1| ($Mutation_10571 (|l#$Mutation_10571| $t18@2) (|p#$Mutation_10571| $t18@2) (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- $t28@0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| $t27@0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ $t28@0 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ $t28@0 1)))) 0 (- $t27@0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| $t28@0)) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- $t28@0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| $t27@0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ $t28@0 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ $t28@0 1)))) (+ $t27@0 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- $t28@0 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| $t27@0)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ $t28@0 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ $t28@0 1))))) (+ $t27@0 1)))))) (= $abort_flag@2 $abort_flag@1)) (and (= $abort_code@3 $abort_code@2) (= |inline$$1_Vector_swap'u64'$0$m'@2| |inline$$1_Vector_swap'u64'$0$m'@1|))) (and (=> (= (ControlFlow 0 20147) 20477) anon56_Then_correct) (=> (= (ControlFlow 0 20147) 20439) anon56_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_swap'u64'$0$v@1| (|v#$Mutation_10571| $t18@2)) (and (=> (= (ControlFlow 0 20113) 20207) |inline$$1_Vector_swap'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 20113) 20147) |inline$$1_Vector_swap'u64'$0$anon3_Else_correct|)))))
(let ((anon55_Then_correct  (=> (and inline$$Gt$0$dst@1 (= (ControlFlow 0 20215) 20113)) |inline$$1_Vector_swap'u64'$0$anon0_correct|)))
(let ((anon55_Else_correct  (=> (and (not inline$$Gt$0$dst@1) (= $t0@2 $t0@0)) (=> (and (and (= $t18@3 $t18@2) (= $abort_flag@4 $abort_flag@1)) (and (= $abort_code@5 $abort_code@2) (= (ControlFlow 0 18873) 19034))) L12_correct))))
(let ((inline$$Gt$0$anon0_correct  (=> (= inline$$Gt$0$dst@1 (> |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$1$dst@2|)) (and (=> (= (ControlFlow 0 18859) 20215) anon55_Then_correct) (=> (= (ControlFlow 0 18859) 18873) anon55_Else_correct)))))
(let ((anon54_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 18865) 18859)) inline$$Gt$0$anon0_correct)))
(let ((|inline$$1_Vector_borrow'u64'$1$anon3_Then$1_correct|  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= |inline$$1_Vector_borrow'u64'$1$dst@2| |inline$$1_Vector_borrow'u64'$1$dst@0|)) (and (=> (= (ControlFlow 0 18805) 20491) anon54_Then_correct) (=> (= (ControlFlow 0 18805) 18865) anon54_Else_correct))))))
(let ((|inline$$1_Vector_borrow'u64'$1$anon3_Then_correct|  (=> (and (not (and (>= $t28@0 0) (< $t28@0 (seq.len $t32@1)))) (= (ControlFlow 0 18803) 18805)) |inline$$1_Vector_borrow'u64'$1$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'u64'$1$anon3_Else_correct|  (=> (and (>= $t28@0 0) (< $t28@0 (seq.len $t32@1))) (=> (and (and (= |inline$$1_Vector_borrow'u64'$1$dst@1| (seq.nth $t32@1 $t28@0)) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= |inline$$1_Vector_borrow'u64'$1$dst@2| |inline$$1_Vector_borrow'u64'$1$dst@1|))) (and (=> (= (ControlFlow 0 18753) 20491) anon54_Then_correct) (=> (= (ControlFlow 0 18753) 18865) anon54_Else_correct))))))
(let ((anon53_Else_correct  (=> (and (not $abort_flag@0) (= $t32@1 (|v#$Mutation_10571| $t0@0))) (and (=> (= (ControlFlow 0 18811) 18803) |inline$$1_Vector_borrow'u64'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 18811) 18753) |inline$$1_Vector_borrow'u64'$1$anon3_Else_correct|)))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@0|)) (and (=> (= (ControlFlow 0 18652) 20505) anon53_Then_correct) (=> (= (ControlFlow 0 18652) 18811) anon53_Else_correct))))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|  (=> (and (not (and (>= $t27@0 0) (< $t27@0 (seq.len $t30@1)))) (= (ControlFlow 0 18650) 18652)) |inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|  (=> (and (>= $t27@0 0) (< $t27@0 (seq.len $t30@1))) (=> (and (and (= |inline$$1_Vector_borrow'u64'$0$dst@1| (seq.nth $t30@1 $t27@0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@1|))) (and (=> (= (ControlFlow 0 18600) 20505) anon53_Then_correct) (=> (= (ControlFlow 0 18600) 18811) anon53_Else_correct))))))
(let ((anon52_Then_correct  (=> (and (and (and inline$$Lt$1$dst@1 (= $t27@0 $t27@0)) (and (= |$temp_0'vec'u64''@6| (|v#$Mutation_10571| $t0@0)) (= |$temp_0'vec'u64''@6| |$temp_0'vec'u64''@6|))) (and (and (= $t28@0 $t28@0) (= |$temp_0'vec'u64''@7| (|v#$Mutation_10571| $t0@0))) (and (= |$temp_0'vec'u64''@7| |$temp_0'vec'u64''@7|) (= $t30@1 (|v#$Mutation_10571| $t0@0))))) (and (=> (= (ControlFlow 0 18658) 18650) |inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 18658) 18600) |inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|)))))
(let ((L20_correct  (and (=> (= (ControlFlow 0 18477) (- 0 22969)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 18477) (- 0 22976)) (let (($range_0@@5 ($Range 0 (- (seq.len (|v#$Mutation_10571| $t0@1)) 1))))
(forall (($i_1@@9 Int) ) (!  (=> ($InRange $range_0@@5 $i_1@@9) (let ((i@@8 $i_1@@9))
(<= (seq.nth (|v#$Mutation_10571| $t0@1) i@@8) (seq.nth (|v#$Mutation_10571| $t0@1) (+ i@@8 1)))))
 :qid |naivesort2cvc4bpl.1828:76|
 :skolemid |50|
)))) (=> (let (($range_0@@5 ($Range 0 (- (seq.len (|v#$Mutation_10571| $t0@1)) 1))))
(forall (($i_1@@10 Int) ) (!  (=> ($InRange $range_0@@5 $i_1@@10) (let ((i@@8 $i_1@@10))
(<= (seq.nth (|v#$Mutation_10571| $t0@1) i@@8) (seq.nth (|v#$Mutation_10571| $t0@1) (+ i@@8 1)))))
 :qid |naivesort2cvc4bpl.1828:76|
 :skolemid |50|
))) (and (=> (= (ControlFlow 0 18477) (- 0 23029)) (let (($range_0@@6 ($Range 0 (seq.len (|v#$Mutation_10571| $t0@1)))))
(forall (($i_1@@11 Int) ) (!  (=> ($InRange $range_0@@6 $i_1@@11) (let ((k@@5 $i_1@@11))
(= (seq.nth (|v#$Mutation_10571| $t0@1) k@@5) (seq.nth $t11@0 (seq.nth $t26@0 k@@5)))))
 :qid |naivesort2cvc4bpl.1834:70|
 :skolemid |51|
)))) (=> (let (($range_0@@6 ($Range 0 (seq.len (|v#$Mutation_10571| $t0@1)))))
(forall (($i_1@@12 Int) ) (!  (=> ($InRange $range_0@@6 $i_1@@12) (let ((k@@5 $i_1@@12))
(= (seq.nth (|v#$Mutation_10571| $t0@1) k@@5) (seq.nth $t11@0 (seq.nth $t26@0 k@@5)))))
 :qid |naivesort2cvc4bpl.1834:70|
 :skolemid |51|
))) (and (=> (= (ControlFlow 0 18477) (- 0 23075)) (let (($range_0@@7 ($Range 0 (seq.len (|v#$Mutation_10571| $t0@1)))))
(forall (($i_1@@13 Int) ) (!  (=> ($InRange $range_0@@7 $i_1@@13) (let ((i@@9 $i_1@@13))
 (and (<= 0 (seq.nth $t26@0 i@@9)) (< (seq.nth $t26@0 i@@9) (seq.len $t26@0)))))
 :qid |naivesort2cvc4bpl.1840:70|
 :skolemid |52|
)))) (=> (let (($range_0@@7 ($Range 0 (seq.len (|v#$Mutation_10571| $t0@1)))))
(forall (($i_1@@14 Int) ) (!  (=> ($InRange $range_0@@7 $i_1@@14) (let ((i@@9 $i_1@@14))
 (and (<= 0 (seq.nth $t26@0 i@@9)) (< (seq.nth $t26@0 i@@9) (seq.len $t26@0)))))
 :qid |naivesort2cvc4bpl.1840:70|
 :skolemid |52|
))) (=> (= (ControlFlow 0 18477) (- 0 23125)) (let (($range_0@@8 ($Range 0 (seq.len (|v#$Mutation_10571| $t0@1)))))
(forall (($i_1@@15 Int) ) (!  (=> ($InRange $range_0@@8 $i_1@@15) (let ((i@@10 $i_1@@15))
(let (($range_2@@0 ($Range 0 (seq.len $t26@0))))
(forall (($i_3@@0 Int) ) (!  (=> ($InRange $range_2@@0 $i_3@@0) (let ((j@@1 $i_3@@0))
 (=> (not (= i@@10 j@@1)) (not (= (seq.nth $t26@0 i@@10) (seq.nth $t26@0 j@@1))))))
 :qid |naivesort2cvc4bpl.1847:56|
 :skolemid |53|
)))))
 :qid |naivesort2cvc4bpl.1846:70|
 :skolemid |54|
))))))))))))))
(let ((anon52_Else_correct  (=> (not inline$$Lt$1$dst@1) (=> (and (and (and (= $t44@0 (|v#$Mutation_10571| $t18@2)) (= $t5@1 (|v#$Mutation_10571| $t18@2))) (and (= $t44@0 $t44@0) (= |$temp_0'vec'u64''@8| (|v#$Mutation_10571| $t0@0)))) (and (and (= |$temp_0'vec'u64''@8| |$temp_0'vec'u64''@8|) (= $t0@1 $t0@0)) (and (= $t26@0 $t44@0) (= (ControlFlow 0 18228) 18477)))) L20_correct))))
(let ((anon51_Else$1_correct  (and (=> (= (ControlFlow 0 18196) 18658) anon52_Then_correct) (=> (= (ControlFlow 0 18196) 18228) anon52_Else_correct))))
(let ((inline$$Lt$1$anon0_correct  (=> (and (= inline$$Lt$1$dst@1 (< $t28@0 |inline$$1_Vector_length'u64'$0$l@1|)) (= (ControlFlow 0 18186) 18196)) anon51_Else$1_correct)))
(let ((anon51_Else_correct  (=> (not inline$$Le$0$dst@1) (=> (and (and (|$IsValid'u64'| 0) (= 0 0)) (and (|$IsValid'u64'| 1) (= 1 1))) (and (=> (= (ControlFlow 0 18192) (- 0 22133)) (< 0 1)) (=> (< 0 1) (and (=> (= (ControlFlow 0 18192) (- 0 22140)) (= (seq.len (|v#$Mutation_10571| _$t0)) |inline$$1_Vector_length'u64'$0$l@1|)) (=> (= (seq.len (|v#$Mutation_10571| _$t0)) |inline$$1_Vector_length'u64'$0$l@1|) (and (=> (= (ControlFlow 0 18192) (- 0 22151)) (let (($range_0@@9 ($Range 0 (- 0 1))))
(forall (($i_1@@16 Int) ) (!  (=> ($InRange $range_0@@9 $i_1@@16) (let ((k@@6 $i_1@@16))
(<= (seq.nth (|v#$Mutation_10571| _$t0) k@@6) (seq.nth (|v#$Mutation_10571| _$t0) (+ k@@6 1)))))
 :qid |naivesort2cvc4bpl.1384:55|
 :skolemid |31|
)))) (=> (let (($range_0@@9 ($Range 0 (- 0 1))))
(forall (($i_1@@17 Int) ) (!  (=> ($InRange $range_0@@9 $i_1@@17) (let ((k@@6 $i_1@@17))
(<= (seq.nth (|v#$Mutation_10571| _$t0) k@@6) (seq.nth (|v#$Mutation_10571| _$t0) (+ k@@6 1)))))
 :qid |naivesort2cvc4bpl.1384:55|
 :skolemid |31|
))) (and (=> (= (ControlFlow 0 18192) (- 0 22200)) (let (($range_0@@10 ($Range (+ 0 1) 1)))
(forall (($i_1@@18 Int) ) (!  (=> ($InRange $range_0@@10 $i_1@@18) (let ((k@@7 $i_1@@18))
(<= (seq.nth (|v#$Mutation_10571| _$t0) 0) (seq.nth (|v#$Mutation_10571| _$t0) k@@7))))
 :qid |naivesort2cvc4bpl.1390:58|
 :skolemid |32|
)))) (=> (let (($range_0@@10 ($Range (+ 0 1) 1)))
(forall (($i_1@@19 Int) ) (!  (=> ($InRange $range_0@@10 $i_1@@19) (let ((k@@7 $i_1@@19))
(<= (seq.nth (|v#$Mutation_10571| _$t0) 0) (seq.nth (|v#$Mutation_10571| _$t0) k@@7))))
 :qid |naivesort2cvc4bpl.1390:58|
 :skolemid |32|
))) (and (=> (= (ControlFlow 0 18192) (- 0 22243)) (let (($range_0@@11 ($Range 0 (seq.len (|v#$Mutation_10571| _$t0)))))
(forall (($i_1@@20 Int) ) (!  (=> ($InRange $range_0@@11 $i_1@@20) (let ((k@@8 $i_1@@20))
(= (seq.nth (|v#$Mutation_10571| _$t0) k@@8) (seq.nth $t13@0 (seq.nth (|v#$Mutation_10571| $t18@1) k@@8)))))
 :qid |naivesort2cvc4bpl.1396:70|
 :skolemid |33|
)))) (=> (let (($range_0@@11 ($Range 0 (seq.len (|v#$Mutation_10571| _$t0)))))
(forall (($i_1@@21 Int) ) (!  (=> ($InRange $range_0@@11 $i_1@@21) (let ((k@@8 $i_1@@21))
(= (seq.nth (|v#$Mutation_10571| _$t0) k@@8) (seq.nth $t13@0 (seq.nth (|v#$Mutation_10571| $t18@1) k@@8)))))
 :qid |naivesort2cvc4bpl.1396:70|
 :skolemid |33|
))) (and (=> (= (ControlFlow 0 18192) (- 0 22291)) (let (($range_0@@12 ($Range 0 |inline$$1_Vector_length'u64'$0$l@1|)))
(forall (($i_1@@22 Int) ) (!  (=> ($InRange $range_0@@12 $i_1@@22) (let ((k@@9 $i_1@@22))
 (and (<= 0 (seq.nth (|v#$Mutation_10571| $t18@1) k@@9)) (< (seq.nth (|v#$Mutation_10571| $t18@1) k@@9) |inline$$1_Vector_length'u64'$0$l@1|))))
 :qid |naivesort2cvc4bpl.1402:49|
 :skolemid |34|
)))) (=> (let (($range_0@@12 ($Range 0 |inline$$1_Vector_length'u64'$0$l@1|)))
(forall (($i_1@@23 Int) ) (!  (=> ($InRange $range_0@@12 $i_1@@23) (let ((k@@9 $i_1@@23))
 (and (<= 0 (seq.nth (|v#$Mutation_10571| $t18@1) k@@9)) (< (seq.nth (|v#$Mutation_10571| $t18@1) k@@9) |inline$$1_Vector_length'u64'$0$l@1|))))
 :qid |naivesort2cvc4bpl.1402:49|
 :skolemid |34|
))) (and (=> (= (ControlFlow 0 18192) (- 0 22339)) (let (($range_0@@13 ($Range 0 |inline$$1_Vector_length'u64'$0$l@1|)))
(forall (($i_1@@24 Int) ) (!  (=> ($InRange $range_0@@13 $i_1@@24) (let ((k@@10 $i_1@@24))
(let (($range_2@@1 ($Range 0 |inline$$1_Vector_length'u64'$0$l@1|)))
(forall (($i_3@@1 Int) ) (!  (=> ($InRange $range_2@@1 $i_3@@1) (let ((l@@0 $i_3@@1))
 (=> (not (= k@@10 l@@0)) (not (= (seq.nth (|v#$Mutation_10571| $t18@1) k@@10) (seq.nth (|v#$Mutation_10571| $t18@1) l@@0))))))
 :qid |naivesort2cvc4bpl.1409:48|
 :skolemid |35|
)))))
 :qid |naivesort2cvc4bpl.1408:49|
 :skolemid |36|
)))) (=> (let (($range_0@@13 ($Range 0 |inline$$1_Vector_length'u64'$0$l@1|)))
(forall (($i_1@@25 Int) ) (!  (=> ($InRange $range_0@@13 $i_1@@25) (let ((k@@10 $i_1@@25))
(let (($range_2@@1 ($Range 0 |inline$$1_Vector_length'u64'$0$l@1|)))
(forall (($i_3@@2 Int) ) (!  (=> ($InRange $range_2@@1 $i_3@@2) (let ((l@@0 $i_3@@2))
 (=> (not (= k@@10 l@@0)) (not (= (seq.nth (|v#$Mutation_10571| $t18@1) k@@10) (seq.nth (|v#$Mutation_10571| $t18@1) l@@0))))))
 :qid |naivesort2cvc4bpl.1409:48|
 :skolemid |35|
)))))
 :qid |naivesort2cvc4bpl.1408:49|
 :skolemid |36|
))) (=> (|$IsValid'u64'| $t27@0) (=> (and (|$IsValid'u64'| $t28@0) (|$IsValid'vec'u64''| $t30@0)) (=> (and (and (and (|$IsValid'u64'| $t31@0) (|$IsValid'vec'u64''| $t32@0)) (and (|$IsValid'u64'| $t33@0) (|$IsValid'u64'| $t35@0))) (and (and (|$IsValid'u64'| $t36@0) (|$IsValid'u64'| $t38@0)) (and (|$IsValid'u64'| $t39@0) (|$IsValid'u64'| $t40@0)))) (=> (and (and (and (and (|$IsValid'u64'| $t41@0) (|$IsValid'u64'| $t42@0)) (and (|$IsValid'u64'| $t43@0) (= $t0@0 ($Mutation_10571 (|l#$Mutation_10571| _$t0) (|p#$Mutation_10571| _$t0) |$temp_0'vec'u64''@4|)))) (and (and (|$IsValid'vec'u64''| (|v#$Mutation_10571| $t0@0)) (= $t18@2 ($Mutation_10571 (|l#$Mutation_10571| $t18@1) (|p#$Mutation_10571| $t18@1) |$temp_0'vec'u64''@5|))) (and (|$IsValid'vec'u64''| (|v#$Mutation_10571| $t18@2)) (not false)))) (and (and (and (< $t27@0 $t28@0) (= (seq.len (|v#$Mutation_10571| $t0@0)) |inline$$1_Vector_length'u64'$0$l@1|)) (and (let (($range_0@@14 ($Range 0 (- $t27@0 1))))
(forall (($i_1@@26 Int) ) (!  (=> ($InRange $range_0@@14 $i_1@@26) (let ((k@@11 $i_1@@26))
(<= (seq.nth (|v#$Mutation_10571| $t0@0) k@@11) (seq.nth (|v#$Mutation_10571| $t0@0) (+ k@@11 1)))))
 :qid |naivesort2cvc4bpl.1503:60|
 :skolemid |37|
))) (let (($range_0@@15 ($Range (+ $t27@0 1) $t28@0)))
(forall (($i_1@@27 Int) ) (!  (=> ($InRange $range_0@@15 $i_1@@27) (let ((k@@12 $i_1@@27))
(<= (seq.nth (|v#$Mutation_10571| $t0@0) $t27@0) (seq.nth (|v#$Mutation_10571| $t0@0) k@@12))))
 :qid |naivesort2cvc4bpl.1508:63|
 :skolemid |38|
))))) (and (and (let (($range_0@@16 ($Range 0 (seq.len (|v#$Mutation_10571| $t0@0)))))
(forall (($i_1@@28 Int) ) (!  (=> ($InRange $range_0@@16 $i_1@@28) (let ((k@@13 $i_1@@28))
(= (seq.nth (|v#$Mutation_10571| $t0@0) k@@13) (seq.nth $t12@0 (seq.nth (|v#$Mutation_10571| $t18@2) k@@13)))))
 :qid |naivesort2cvc4bpl.1513:75|
 :skolemid |39|
))) (let (($range_0@@17 ($Range 0 |inline$$1_Vector_length'u64'$0$l@1|)))
(forall (($i_1@@29 Int) ) (!  (=> ($InRange $range_0@@17 $i_1@@29) (let ((k@@14 $i_1@@29))
 (and (<= 0 (seq.nth (|v#$Mutation_10571| $t18@2) k@@14)) (< (seq.nth (|v#$Mutation_10571| $t18@2) k@@14) |inline$$1_Vector_length'u64'$0$l@1|))))
 :qid |naivesort2cvc4bpl.1518:54|
 :skolemid |40|
)))) (and (let (($range_0@@18 ($Range 0 |inline$$1_Vector_length'u64'$0$l@1|)))
(forall (($i_1@@30 Int) ) (!  (=> ($InRange $range_0@@18 $i_1@@30) (let ((k@@15 $i_1@@30))
(let (($range_2@@2 ($Range 0 |inline$$1_Vector_length'u64'$0$l@1|)))
(forall (($i_3@@3 Int) ) (!  (=> ($InRange $range_2@@2 $i_3@@3) (let ((l@@1 $i_3@@3))
 (=> (not (= k@@15 l@@1)) (not (= (seq.nth (|v#$Mutation_10571| $t18@2) k@@15) (seq.nth (|v#$Mutation_10571| $t18@2) l@@1))))))
 :qid |naivesort2cvc4bpl.1524:48|
 :skolemid |41|
)))))
 :qid |naivesort2cvc4bpl.1523:54|
 :skolemid |42|
))) (= (ControlFlow 0 18192) 18186))))) inline$$Lt$1$anon0_correct))))))))))))))))))))))
(let ((anon51_Then_correct  (=> inline$$Le$0$dst@1 (=> (and (and (and (= $t25@0 (|v#$Mutation_10571| $t18@1)) (= $t5@0 (|v#$Mutation_10571| $t18@1))) (and (= $t25@0 $t25@0) (= |$temp_0'vec'u64''@3| (|v#$Mutation_10571| _$t0)))) (and (and (= |$temp_0'vec'u64''@3| |$temp_0'vec'u64''@3|) (= $t0@1 _$t0)) (and (= $t26@0 $t25@0) (= (ControlFlow 0 20535) 18477)))) L20_correct))))
(let ((inline$$Le$0$anon0_correct  (=> (= inline$$Le$0$dst@1 (<= |inline$$1_Vector_length'u64'$0$l@1| 1)) (and (=> (= (ControlFlow 0 17408) 20535) anon51_Then_correct) (=> (= (ControlFlow 0 17408) 18192) anon51_Else_correct)))))
(let ((anon48_Else_correct  (=> (not inline$$Lt$0$dst@1) (=> (and (|$IsValid'u64'| 1) (= (ControlFlow 0 17414) 17408)) inline$$Le$0$anon0_correct))))
(let ((anon47_Else$1_correct  (and (=> (= (ControlFlow 0 17356) 20596) anon48_Then_correct) (=> (= (ControlFlow 0 17356) 17414) anon48_Else_correct))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t19@0 |inline$$1_Vector_length'u64'$0$l@1|)) (= (ControlFlow 0 17346) 17356)) anon47_Else$1_correct)))
(let ((anon47_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t18@0 ($Mutation_10571 ($Local 5) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (=> (and (and (= |$temp_0'vec'u64''@1| (|v#$Mutation_10571| $t18@0)) (= |$temp_0'vec'u64''@1| |$temp_0'vec'u64''@1|)) (and (|$IsValid'u64'| 0) (= 0 0))) (and (=> (= (ControlFlow 0 17352) (- 0 21859)) (= (seq.len (|v#$Mutation_10571| $t18@0)) 0)) (=> (= (seq.len (|v#$Mutation_10571| $t18@0)) 0) (and (=> (= (ControlFlow 0 17352) (- 0 21870)) (let (($range_0@@19 ($Range 0 (seq.len (|v#$Mutation_10571| $t18@0)))))
(forall (($i_1@@31 Int) ) (!  (=> ($InRange $range_0@@19 $i_1@@31) (let ((k@@16 $i_1@@31))
(= (seq.nth (|v#$Mutation_10571| $t18@0) k@@16) k@@16)))
 :qid |naivesort2cvc4bpl.1218:71|
 :skolemid |29|
)))) (=> (let (($range_0@@19 ($Range 0 (seq.len (|v#$Mutation_10571| $t18@0)))))
(forall (($i_1@@32 Int) ) (!  (=> ($InRange $range_0@@19 $i_1@@32) (let ((k@@16 $i_1@@32))
(= (seq.nth (|v#$Mutation_10571| $t18@0) k@@16) k@@16)))
 :qid |naivesort2cvc4bpl.1218:71|
 :skolemid |29|
))) (=> (|$IsValid'u64'| $t19@0) (=> (and (and (and (|$IsValid'u64'| $t21@0) (|$IsValid'u64'| $t22@0)) (and (= $t18@1 ($Mutation_10571 (|l#$Mutation_10571| $t18@0) (|p#$Mutation_10571| $t18@0) |$temp_0'vec'u64''@2|)) (|$IsValid'vec'u64''| (|v#$Mutation_10571| $t18@1)))) (and (and (not false) (= (seq.len (|v#$Mutation_10571| $t18@1)) $t19@0)) (and (let (($range_0@@20 ($Range 0 (seq.len (|v#$Mutation_10571| $t18@1)))))
(forall (($i_1@@33 Int) ) (!  (=> ($InRange $range_0@@20 $i_1@@33) (let ((k@@17 $i_1@@33))
(= (seq.nth (|v#$Mutation_10571| $t18@1) k@@17) k@@17)))
 :qid |naivesort2cvc4bpl.1251:76|
 :skolemid |30|
))) (= (ControlFlow 0 17352) 17346)))) inline$$Lt$0$anon0_correct)))))))))))
(let ((anon47_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 17110) 20876) anon47_Then_correct) (=> (= (ControlFlow 0 17110) 17352) anon47_Else_correct)))))
(let ((anon46_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|)) (and (= (seq.len (|v#$Mutation_10571| _$t0)) 2) (= (ControlFlow 0 17116) 17110))) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon46_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$0$l@1| (seq.len $t15@0)) (and (=> (= (ControlFlow 0 17056) 20890) anon46_Then_correct) (=> (= (ControlFlow 0 17056) 17116) anon46_Else_correct)))))
(let ((anon0$1_correct  (=> (and (= (|l#$Mutation_10571| _$t0) ($Param 0)) (|$IsValid'vec'u64''| (|v#$Mutation_10571| _$t0))) (=> (and (and (and (= $t11@0 (|v#$Mutation_10571| _$t0)) (= $t12@0 (|v#$Mutation_10571| _$t0))) (and (= $t13@0 (|v#$Mutation_10571| _$t0)) (= $t14@0 (|v#$Mutation_10571| _$t0)))) (and (and (= |$temp_0'vec'u64''@0| (|v#$Mutation_10571| _$t0)) (= |$temp_0'vec'u64''@0| |$temp_0'vec'u64''@0|)) (and (= $t15@0 (|v#$Mutation_10571| _$t0)) (= (ControlFlow 0 17062) 17056)))) |inline$$1_Vector_length'u64'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_10571| $t4)) 0) (=> (and (and (= (seq.len (|p#$Mutation_10571| $t6)) 0) (= (seq.len (|p#$Mutation_10571| $t8)) 0)) (and (= (seq.len (|p#$Mutation_10571| $t18)) 0) (= (ControlFlow 0 16972) 17062))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 21248) 16972) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
