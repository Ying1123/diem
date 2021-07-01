(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_11578 0)) ((($Mutation_11578 (|l#$Mutation_11578| T@$Location) (|p#$Mutation_11578| (Seq Int)) (|v#$Mutation_11578| (Seq Int)) ) ) ))
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
 :qid |bubblesortbpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |bubblesortbpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |bubblesortbpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |bubblesortbpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |bubblesortbpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |bubblesortbpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |bubblesortbpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |bubblesortbpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u64'| (seq.nth v@@4 i@@0)))
 :qid |bubblesortbpl.590:13|
 :skolemid |15|
))))
 :qid |bubblesortbpl.588:29|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |bubblesortbpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |bubblesortbpl.603:17|
 :skolemid |18|
)))))
 :qid |bubblesortbpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |bubblesortbpl.770:13|
 :skolemid |20|
))))
 :qid |bubblesortbpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |bubblesortbpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |bubblesortbpl.783:17|
 :skolemid |23|
)))))
 :qid |bubblesortbpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |bubblesortbpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |bubblesortbpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |bubblesortbpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |bubblesortbpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |bubblesortbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |bubblesortbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@8))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select_[$int]$bool| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |bubblesortbpl.245:54|
 :skolemid |77|
 :pattern ( (|Select_[$int]$bool| (|lambda#0| |l#0|) i@@7))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@10 () Bool)
(declare-fun inline$$AddU64$4$dst@2 () Int)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_11578)
(declare-fun $t0@3 () T@$Mutation_11578)
(declare-fun $t29@0 () (Seq Int))
(declare-fun $t11@0 () (Seq Int))
(declare-fun inline$$Lt$1$dst@1 () Bool)
(declare-fun $t49@0 () (Seq Int))
(declare-fun $t21@2 () T@$Mutation_11578)
(declare-fun $t5@1 () (Seq Int))
(declare-fun |$temp_0'vec'u64''@6| () (Seq Int))
(declare-fun $t0@0 () T@$Mutation_11578)
(declare-fun inline$$Le$0$dst@1 () Bool)
(declare-fun $t28@0 () (Seq Int))
(declare-fun $t21@1 () T@$Mutation_11578)
(declare-fun $t5@0 () (Seq Int))
(declare-fun |$temp_0'vec'u64''@3| () (Seq Int))
(declare-fun _$t0 () T@$Mutation_11578)
(declare-fun $abort_code@11 () Int)
(declare-fun inline$$AddU64$4$dst@0 () Int)
(declare-fun $t22@0 () Int)
(declare-fun inline$$AddU64$4$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun $abort_flag@7 () Bool)
(declare-fun $abort_code@8 () Int)
(declare-fun $abort_flag@6 () Bool)
(declare-fun $abort_code@7 () Int)
(declare-fun $abort_flag@5 () Bool)
(declare-fun $abort_code@6 () Int)
(declare-fun $abort_flag@4 () Bool)
(declare-fun $abort_code@5 () Int)
(declare-fun $abort_flag@9 () Bool)
(declare-fun $abort_code@10 () Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@4 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$AddU64$1$dst@2 () Int)
(declare-fun inline$$Sub$0$dst@2 () Int)
(declare-fun $t19@0 () Int)
(declare-fun $t0@2 () T@$Mutation_11578)
(declare-fun $t21@4 () T@$Mutation_11578)
(declare-fun $t16@0 () (Seq Int))
(declare-fun inline$$AddU64$1$dst@0 () Int)
(declare-fun $t34@1 () Int)
(declare-fun inline$$AddU64$1$dst@1 () Int)
(declare-fun $abort_code@9 () Int)
(declare-fun $abort_flag@8 () Bool)
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@2| () T@$Mutation_11578)
(declare-fun |inline$$1_Vector_swap'u64'$1$m'@2| () T@$Mutation_11578)
(declare-fun |inline$$1_Vector_swap'u64'$1$m'@0| () T@$Mutation_11578)
(declare-fun inline$$AddU64$3$dst@2 () Int)
(declare-fun |inline$$1_Vector_swap'u64'$1$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_swap'u64'$1$m'@1| () T@$Mutation_11578)
(declare-fun $t21@3 () T@$Mutation_11578)
(declare-fun inline$$AddU64$3$dst@0 () Int)
(declare-fun inline$$AddU64$3$dst@1 () Int)
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@0| () T@$Mutation_11578)
(declare-fun inline$$AddU64$2$dst@2 () Int)
(declare-fun |inline$$1_Vector_swap'u64'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_swap'u64'$0$m'@1| () T@$Mutation_11578)
(declare-fun $t0@1 () T@$Mutation_11578)
(declare-fun inline$$AddU64$2$dst@0 () Int)
(declare-fun inline$$AddU64$2$dst@1 () Int)
(declare-fun inline$$Lt$3$dst@1 () Bool)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@2| () Int)
(declare-fun |inline$$1_Vector_borrow'u64'$1$dst@2| () Int)
(declare-fun |inline$$1_Vector_borrow'u64'$1$dst@0| () Int)
(declare-fun $t40@2 () (Seq Int))
(declare-fun |inline$$1_Vector_borrow'u64'$1$dst@1| () Int)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@0| () Int)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun $t38@2 () (Seq Int))
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@1| () Int)
(declare-fun |$temp_0'vec'u64''@9| () (Seq Int))
(declare-fun |$temp_0'vec'u64''@10| () (Seq Int))
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun inline$$Lt$2$dst@1 () Bool)
(declare-fun $t17@0 () (Seq Int))
(declare-fun $t15@0 () (Seq Int))
(declare-fun $t36@1 () Int)
(declare-fun $t37@1 () Int)
(declare-fun $t38@1 () (Seq Int))
(declare-fun $t39@1 () Int)
(declare-fun $t40@1 () (Seq Int))
(declare-fun $t41@1 () Int)
(declare-fun $t43@1 () Int)
(declare-fun $t44@1 () Int)
(declare-fun $t45@1 () Int)
(declare-fun $t46@1 () Int)
(declare-fun $t47@1 () Int)
(declare-fun $t48@1 () Int)
(declare-fun |$temp_0'vec'u64''@7| () (Seq Int))
(declare-fun |$temp_0'vec'u64''@8| () (Seq Int))
(declare-fun $t13@0 () (Seq Int))
(declare-fun inline$$Sub$0$dst@0 () Int)
(declare-fun inline$$Sub$0$dst@1 () Int)
(declare-fun |inline$$1_Vector_length'u64'$0$l@1| () Int)
(declare-fun $t14@0 () (Seq Int))
(declare-fun $t3@0 () Int)
(declare-fun $t30@0 () Int)
(declare-fun $t31@0 () Int)
(declare-fun $t32@0 () Int)
(declare-fun $t34@0 () Int)
(declare-fun $t36@0 () Int)
(declare-fun $t37@0 () Int)
(declare-fun $t38@0 () (Seq Int))
(declare-fun $t39@0 () Int)
(declare-fun $t40@0 () (Seq Int))
(declare-fun $t41@0 () Int)
(declare-fun $t43@0 () Int)
(declare-fun $t44@0 () Int)
(declare-fun $t45@0 () Int)
(declare-fun $t46@0 () Int)
(declare-fun $t47@0 () Int)
(declare-fun $t48@0 () Int)
(declare-fun |$temp_0'vec'u64''@4| () (Seq Int))
(declare-fun |$temp_0'vec'u64''@5| () (Seq Int))
(declare-fun $t12@0 () (Seq Int))
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t21@0 () T@$Mutation_11578)
(declare-fun |$temp_0'vec'u64''@1| () (Seq Int))
(declare-fun $t24@0 () Int)
(declare-fun $t25@0 () Int)
(declare-fun |$temp_0'vec'u64''@2| () (Seq Int))
(declare-fun $t18@0 () (Seq Int))
(declare-fun |$temp_0'vec'u64''@0| () (Seq Int))
(declare-fun $t4 () T@$Mutation_11578)
(declare-fun $t6 () T@$Mutation_11578)
(declare-fun $t8 () T@$Mutation_11578)
(declare-fun $t21 () T@$Mutation_11578)
(push 1)
(set-info :boogie-vc-id $42_TestBubbleSort_verify_sort$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 24938) (let ((anon52_Else_correct  (=> (and (not $abort_flag@10) (= inline$$AddU64$4$dst@2 inline$$AddU64$4$dst@2)) (and (=> (= (ControlFlow 0 24432) (- 0 29317)) (= (seq.len (|v#$Mutation_11578| |inline$$1_Vector_push_back'u64'$0$m'@1|)) inline$$AddU64$4$dst@2)) (=> (= (seq.len (|v#$Mutation_11578| |inline$$1_Vector_push_back'u64'$0$m'@1|)) inline$$AddU64$4$dst@2) (=> (= (ControlFlow 0 24432) (- 0 29328)) (let (($range_0 ($Range 0 (seq.len (|v#$Mutation_11578| |inline$$1_Vector_push_back'u64'$0$m'@1|)))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((k $i_1))
(= (seq.nth (|v#$Mutation_11578| |inline$$1_Vector_push_back'u64'$0$m'@1|) k) k)))
 :qid |bubblesortbpl.1911:71|
 :skolemid |57|
)))))))))
(let ((anon51_Then_correct true))
(let ((L21_correct  (and (=> (= (ControlFlow 0 24089) (- 0 28886)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 24089) (- 0 28893)) (= (seq.len (|v#$Mutation_11578| $t0@3)) (seq.len $t29@0))) (=> (= (seq.len (|v#$Mutation_11578| $t0@3)) (seq.len $t29@0)) (and (=> (= (ControlFlow 0 24089) (- 0 28906)) (let (($range_0@@0 ($Range 0 (- (seq.len (|v#$Mutation_11578| $t0@3)) 1))))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@0) (let ((i@@8 $i_1@@0))
(let (($range_2 ($Range (+ i@@8 1) (seq.len (|v#$Mutation_11578| $t0@3)))))
(forall (($i_3 Int) ) (!  (=> ($InRange $range_2 $i_3) (let ((j@@1 $i_3))
(<= (seq.nth (|v#$Mutation_11578| $t0@3) i@@8) (seq.nth (|v#$Mutation_11578| $t0@3) j@@1))))
 :qid |bubblesortbpl.2020:75|
 :skolemid |71|
)))))
 :qid |bubblesortbpl.2019:76|
 :skolemid |72|
)))) (=> (let (($range_0@@0 ($Range 0 (- (seq.len (|v#$Mutation_11578| $t0@3)) 1))))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@1) (let ((i@@8 $i_1@@1))
(let (($range_2 ($Range (+ i@@8 1) (seq.len (|v#$Mutation_11578| $t0@3)))))
(forall (($i_3@@0 Int) ) (!  (=> ($InRange $range_2 $i_3@@0) (let ((j@@1 $i_3@@0))
(<= (seq.nth (|v#$Mutation_11578| $t0@3) i@@8) (seq.nth (|v#$Mutation_11578| $t0@3) j@@1))))
 :qid |bubblesortbpl.2020:75|
 :skolemid |71|
)))))
 :qid |bubblesortbpl.2019:76|
 :skolemid |72|
))) (and (=> (= (ControlFlow 0 24089) (- 0 28985)) (let (($range_0@@1 ($Range 0 (seq.len (|v#$Mutation_11578| $t0@3)))))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@2) (let ((k@@0 $i_1@@2))
 (and (<= 0 (seq.nth $t29@0 k@@0)) (< (seq.nth $t29@0 k@@0) (seq.len (|v#$Mutation_11578| $t0@3))))))
 :qid |bubblesortbpl.2026:70|
 :skolemid |73|
)))) (=> (let (($range_0@@1 ($Range 0 (seq.len (|v#$Mutation_11578| $t0@3)))))
(forall (($i_1@@3 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@3) (let ((k@@0 $i_1@@3))
 (and (<= 0 (seq.nth $t29@0 k@@0)) (< (seq.nth $t29@0 k@@0) (seq.len (|v#$Mutation_11578| $t0@3))))))
 :qid |bubblesortbpl.2026:70|
 :skolemid |73|
))) (and (=> (= (ControlFlow 0 24089) (- 0 29037)) (let (($range_0@@2 ($Range 0 (- (seq.len (|v#$Mutation_11578| $t0@3)) 1))))
(forall (($i_1@@4 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@4) (let ((k@@1 $i_1@@4))
(let (($range_2@@0 ($Range (+ k@@1 1) (seq.len (|v#$Mutation_11578| $t0@3)))))
(forall (($i_3@@1 Int) ) (!  (=> ($InRange $range_2@@0 $i_3@@1) (let ((l $i_3@@1))
 (not (= (seq.nth $t29@0 k@@1) (seq.nth $t29@0 l)))))
 :qid |bubblesortbpl.2033:75|
 :skolemid |74|
)))))
 :qid |bubblesortbpl.2032:76|
 :skolemid |75|
)))) (=> (let (($range_0@@2 ($Range 0 (- (seq.len (|v#$Mutation_11578| $t0@3)) 1))))
(forall (($i_1@@5 Int) ) (!  (=> ($InRange $range_0@@2 $i_1@@5) (let ((k@@1 $i_1@@5))
(let (($range_2@@0 ($Range (+ k@@1 1) (seq.len (|v#$Mutation_11578| $t0@3)))))
(forall (($i_3@@2 Int) ) (!  (=> ($InRange $range_2@@0 $i_3@@2) (let ((l $i_3@@2))
 (not (= (seq.nth $t29@0 k@@1) (seq.nth $t29@0 l)))))
 :qid |bubblesortbpl.2033:75|
 :skolemid |74|
)))))
 :qid |bubblesortbpl.2032:76|
 :skolemid |75|
))) (=> (= (ControlFlow 0 24089) (- 0 29114)) (let (($range_0@@3 ($Range 0 (seq.len (|v#$Mutation_11578| $t0@3)))))
(forall (($i_1@@6 Int) ) (!  (=> ($InRange $range_0@@3 $i_1@@6) (let ((k@@2 $i_1@@6))
(= (seq.nth (|v#$Mutation_11578| $t0@3) k@@2) (seq.nth $t11@0 (seq.nth $t29@0 k@@2)))))
 :qid |bubblesortbpl.2039:70|
 :skolemid |76|
))))))))))))))))
(let ((anon55_Then_correct  (=> inline$$Lt$1$dst@1 (=> (and (and (and (= $t49@0 (|v#$Mutation_11578| $t21@2)) (= $t5@1 (|v#$Mutation_11578| $t21@2))) (and (= $t49@0 $t49@0) (= |$temp_0'vec'u64''@6| (|v#$Mutation_11578| $t0@0)))) (and (and (= |$temp_0'vec'u64''@6| |$temp_0'vec'u64''@6|) (= $t0@3 $t0@0)) (and (= $t29@0 $t49@0) (= (ControlFlow 0 23797) 24089)))) L21_correct))))
(let ((anon53_Then_correct  (=> inline$$Le$0$dst@1 (=> (and (and (and (= $t28@0 (|v#$Mutation_11578| $t21@1)) (= $t5@0 (|v#$Mutation_11578| $t21@1))) (and (= $t28@0 $t28@0) (= |$temp_0'vec'u64''@3| (|v#$Mutation_11578| _$t0)))) (and (and (= |$temp_0'vec'u64''@3| |$temp_0'vec'u64''@3|) (= $t0@3 _$t0)) (and (= $t29@0 $t28@0) (= (ControlFlow 0 24133) 24089)))) L21_correct))))
(let ((L22_correct  (=> (= (ControlFlow 0 22883) (- 0 29298)) false)))
(let ((anon52_Then_correct  (=> $abort_flag@10 (=> (and (= $abort_code@11 $abort_code@11) (= (ControlFlow 0 24446) 22883)) L22_correct))))
(let ((inline$$AddU64$4$anon3_Then$1_correct  (=> (= $abort_flag@10 true) (=> (and (= $abort_code@11 $EXEC_FAILURE_CODE) (= inline$$AddU64$4$dst@2 inline$$AddU64$4$dst@0)) (and (=> (= (ControlFlow 0 24357) 24446) anon52_Then_correct) (=> (= (ControlFlow 0 24357) 24432) anon52_Else_correct))))))
(let ((inline$$AddU64$4$anon3_Then_correct  (=> (and (> (+ $t22@0 1) $MAX_U64) (= (ControlFlow 0 24355) 24357)) inline$$AddU64$4$anon3_Then$1_correct)))
(let ((inline$$AddU64$4$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t22@0 1)) (=> (and (and (= inline$$AddU64$4$dst@1 (+ $t22@0 1)) (= $abort_flag@10 false)) (and (= $abort_code@11 $abort_code@0) (= inline$$AddU64$4$dst@2 inline$$AddU64$4$dst@1))) (and (=> (= (ControlFlow 0 24303) 24446) anon52_Then_correct) (=> (= (ControlFlow 0 24303) 24432) anon52_Else_correct))))))
(let ((anon51_Else_correct  (=> (and (not false) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 24363) 24355) inline$$AddU64$4$anon3_Then_correct) (=> (= (ControlFlow 0 24363) 24303) inline$$AddU64$4$anon3_Else_correct)))))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_11578 (|l#$Mutation_11578| $t21@1) (|p#$Mutation_11578| $t21@1) (seq.++ (|v#$Mutation_11578| $t21@1) (seq.unit $t22@0)))) (and (=> (= (ControlFlow 0 24188) 24460) anon51_Then_correct) (=> (= (ControlFlow 0 24188) 24363) anon51_Else_correct)))))
(let ((anon50_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 24194) 24188)) |inline$$1_Vector_push_back'u64'$0$anon0_correct|)))
(let ((anon64_Then_correct  (=> $abort_flag@7 (=> (and (= $abort_code@8 $abort_code@8) (= (ControlFlow 0 23683) 22883)) L22_correct))))
(let ((anon63_Then_correct  (=> $abort_flag@6 (=> (and (= $abort_code@7 $abort_code@7) (= (ControlFlow 0 23697) 22883)) L22_correct))))
(let ((anon62_Then_correct  (=> $abort_flag@5 (=> (and (= $abort_code@6 $abort_code@6) (= (ControlFlow 0 23711) 22883)) L22_correct))))
(let ((anon61_Then_correct  (=> $abort_flag@4 (=> (and (= $abort_code@5 $abort_code@5) (= (ControlFlow 0 23725) 22883)) L22_correct))))
(let ((anon65_Then_correct  (=> $abort_flag@9 (=> (and (= $abort_code@10 $abort_code@10) (= (ControlFlow 0 22873) 22883)) L22_correct))))
(let ((anon59_Then_correct  (=> $abort_flag@3 (=> (and (= $abort_code@4 $abort_code@4) (= (ControlFlow 0 23739) 22883)) L22_correct))))
(let ((anon58_Then_correct  (=> $abort_flag@2 (=> (and (= $abort_code@3 $abort_code@3) (= (ControlFlow 0 23753) 22883)) L22_correct))))
(let ((anon57_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 23767) 22883)) L22_correct))))
(let ((anon54_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 24103) 22883)) L22_correct))))
(let ((anon65_Else_correct  (=> (and (not $abort_flag@9) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@2)) (and (=> (= (ControlFlow 0 22859) (- 0 28580)) (and (<= 0 inline$$AddU64$1$dst@2) (< inline$$AddU64$1$dst@2 inline$$Sub$0$dst@2))) (=> (and (<= 0 inline$$AddU64$1$dst@2) (< inline$$AddU64$1$dst@2 inline$$Sub$0$dst@2)) (and (=> (= (ControlFlow 0 22859) (- 0 28594)) (let (($range_0@@4 ($Range (+ inline$$Sub$0$dst@2 1) $t19@0)))
(forall (($i_1@@7 Int) ) (!  (=> ($InRange $range_0@@4 $i_1@@7) (let ((k@@3 $i_1@@7))
(let (($range_2@@1 ($Range 0 k@@3)))
(forall (($i_3@@3 Int) ) (!  (=> ($InRange $range_2@@1 $i_3@@3) (let ((l@@0 $i_3@@3))
(<= (seq.nth (|v#$Mutation_11578| $t0@2) l@@0) (seq.nth (|v#$Mutation_11578| $t0@2) k@@3))))
 :qid |bubblesortbpl.1931:45|
 :skolemid |58|
)))))
 :qid |bubblesortbpl.1930:58|
 :skolemid |59|
)))) (=> (let (($range_0@@4 ($Range (+ inline$$Sub$0$dst@2 1) $t19@0)))
(forall (($i_1@@8 Int) ) (!  (=> ($InRange $range_0@@4 $i_1@@8) (let ((k@@3 $i_1@@8))
(let (($range_2@@1 ($Range 0 k@@3)))
(forall (($i_3@@4 Int) ) (!  (=> ($InRange $range_2@@1 $i_3@@4) (let ((l@@0 $i_3@@4))
(<= (seq.nth (|v#$Mutation_11578| $t0@2) l@@0) (seq.nth (|v#$Mutation_11578| $t0@2) k@@3))))
 :qid |bubblesortbpl.1931:45|
 :skolemid |58|
)))))
 :qid |bubblesortbpl.1930:58|
 :skolemid |59|
))) (and (=> (= (ControlFlow 0 22859) (- 0 28661)) (let (($range_0@@5 ($Range 0 $t19@0)))
(forall (($i_1@@9 Int) ) (!  (=> ($InRange $range_0@@5 $i_1@@9) (let ((k@@4 $i_1@@9))
 (and (<= 0 (seq.nth (|v#$Mutation_11578| $t21@4) k@@4)) (< (seq.nth (|v#$Mutation_11578| $t21@4) k@@4) $t19@0))))
 :qid |bubblesortbpl.1937:49|
 :skolemid |60|
)))) (=> (let (($range_0@@5 ($Range 0 $t19@0)))
(forall (($i_1@@10 Int) ) (!  (=> ($InRange $range_0@@5 $i_1@@10) (let ((k@@4 $i_1@@10))
 (and (<= 0 (seq.nth (|v#$Mutation_11578| $t21@4) k@@4)) (< (seq.nth (|v#$Mutation_11578| $t21@4) k@@4) $t19@0))))
 :qid |bubblesortbpl.1937:49|
 :skolemid |60|
))) (and (=> (= (ControlFlow 0 22859) (- 0 28709)) (let (($range_0@@6 ($Range 0 (- $t19@0 1))))
(forall (($i_1@@11 Int) ) (!  (=> ($InRange $range_0@@6 $i_1@@11) (let ((k@@5 $i_1@@11))
(let (($range_2@@2 ($Range (+ k@@5 1) $t19@0)))
(forall (($i_3@@5 Int) ) (!  (=> ($InRange $range_2@@2 $i_3@@5) (let ((l@@1 $i_3@@5))
 (not (= (seq.nth (|v#$Mutation_11578| $t21@4) k@@5) (seq.nth (|v#$Mutation_11578| $t21@4) l@@1)))))
 :qid |bubblesortbpl.1944:54|
 :skolemid |61|
)))))
 :qid |bubblesortbpl.1943:55|
 :skolemid |62|
)))) (=> (let (($range_0@@6 ($Range 0 (- $t19@0 1))))
(forall (($i_1@@12 Int) ) (!  (=> ($InRange $range_0@@6 $i_1@@12) (let ((k@@5 $i_1@@12))
(let (($range_2@@2 ($Range (+ k@@5 1) $t19@0)))
(forall (($i_3@@6 Int) ) (!  (=> ($InRange $range_2@@2 $i_3@@6) (let ((l@@1 $i_3@@6))
 (not (= (seq.nth (|v#$Mutation_11578| $t21@4) k@@5) (seq.nth (|v#$Mutation_11578| $t21@4) l@@1)))))
 :qid |bubblesortbpl.1944:54|
 :skolemid |61|
)))))
 :qid |bubblesortbpl.1943:55|
 :skolemid |62|
))) (and (=> (= (ControlFlow 0 22859) (- 0 28782)) (let (($range_0@@7 ($Range 0 $t19@0)))
(forall (($i_1@@13 Int) ) (!  (=> ($InRange $range_0@@7 $i_1@@13) (let ((k@@6 $i_1@@13))
(= (seq.nth (|v#$Mutation_11578| $t0@2) k@@6) (seq.nth $t16@0 (seq.nth (|v#$Mutation_11578| $t21@4) k@@6)))))
 :qid |bubblesortbpl.1950:49|
 :skolemid |63|
)))) (=> (let (($range_0@@7 ($Range 0 $t19@0)))
(forall (($i_1@@14 Int) ) (!  (=> ($InRange $range_0@@7 $i_1@@14) (let ((k@@6 $i_1@@14))
(= (seq.nth (|v#$Mutation_11578| $t0@2) k@@6) (seq.nth $t16@0 (seq.nth (|v#$Mutation_11578| $t21@4) k@@6)))))
 :qid |bubblesortbpl.1950:49|
 :skolemid |63|
))) (=> (= (ControlFlow 0 22859) (- 0 28826)) (let (($range_0@@8 ($Range 0 inline$$AddU64$1$dst@2)))
(forall (($i_1@@15 Int) ) (!  (=> ($InRange $range_0@@8 $i_1@@15) (let ((k@@7 $i_1@@15))
(<= (seq.nth (|v#$Mutation_11578| $t0@2) k@@7) (seq.nth (|v#$Mutation_11578| $t0@2) inline$$AddU64$1$dst@2))))
 :qid |bubblesortbpl.1956:49|
 :skolemid |64|
)))))))))))))))))
(let ((inline$$AddU64$1$anon3_Then$1_correct  (=> (= $abort_code@10 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@9 true) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@0)) (and (=> (= (ControlFlow 0 22534) 22873) anon65_Then_correct) (=> (= (ControlFlow 0 22534) 22859) anon65_Else_correct))))))
(let ((inline$$AddU64$1$anon3_Then_correct  (=> (and (> (+ $t34@1 1) $MAX_U64) (= (ControlFlow 0 22532) 22534)) inline$$AddU64$1$anon3_Then$1_correct)))
(let ((inline$$AddU64$1$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t34@1 1)) (=> (and (and (= inline$$AddU64$1$dst@1 (+ $t34@1 1)) (= $abort_code@10 $abort_code@9)) (and (= $abort_flag@9 $abort_flag@8) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@1))) (and (=> (= (ControlFlow 0 22480) 22873) anon65_Then_correct) (=> (= (ControlFlow 0 22480) 22859) anon65_Else_correct))))))
(let ((L15_correct  (=> (|$IsValid'u64'| 1) (and (=> (= (ControlFlow 0 22540) 22532) inline$$AddU64$1$anon3_Then_correct) (=> (= (ControlFlow 0 22540) 22480) inline$$AddU64$1$anon3_Else_correct)))))
(let ((anon64_Else_correct  (=> (and (not $abort_flag@7) (= $t0@2 |inline$$1_Vector_swap'u64'$0$m'@2|)) (=> (and (and (= $t21@4 |inline$$1_Vector_swap'u64'$1$m'@2|) (= $abort_flag@8 $abort_flag@7)) (and (= $abort_code@9 $abort_code@8) (= (ControlFlow 0 23669) 22540))) L15_correct))))
(let ((|inline$$1_Vector_swap'u64'$1$anon3_Then$1_correct|  (=> (= $abort_code@8 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@7 true) (= |inline$$1_Vector_swap'u64'$1$m'@2| |inline$$1_Vector_swap'u64'$1$m'@0|)) (and (=> (= (ControlFlow 0 23653) 23683) anon64_Then_correct) (=> (= (ControlFlow 0 23653) 23669) anon64_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$1$anon3_Then_correct|  (=> (and (or (not (and (>= inline$$AddU64$3$dst@2 0) (< inline$$AddU64$3$dst@2 (seq.len |inline$$1_Vector_swap'u64'$1$v@1|)))) (not (and (>= $t34@1 0) (< $t34@1 (seq.len |inline$$1_Vector_swap'u64'$1$v@1|))))) (= (ControlFlow 0 23651) 23653)) |inline$$1_Vector_swap'u64'$1$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'u64'$1$anon3_Else_correct|  (=> (not (or (not (and (>= inline$$AddU64$3$dst@2 0) (< inline$$AddU64$3$dst@2 (seq.len |inline$$1_Vector_swap'u64'$1$v@1|)))) (not (and (>= $t34@1 0) (< $t34@1 (seq.len |inline$$1_Vector_swap'u64'$1$v@1|)))))) (=> (and (and (= |inline$$1_Vector_swap'u64'$1$m'@1| ($Mutation_11578 (|l#$Mutation_11578| $t21@3) (|p#$Mutation_11578| $t21@3) (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$1$v@1| 0 (- $t34@1 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$1$v@1| inline$$AddU64$3$dst@2)) (seq.extract |inline$$1_Vector_swap'u64'$1$v@1| (+ $t34@1 1) (- (seq.len |inline$$1_Vector_swap'u64'$1$v@1|) (+ $t34@1 1)))) 0 (- inline$$AddU64$3$dst@2 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$1$v@1| $t34@1)) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$1$v@1| 0 (- $t34@1 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$1$v@1| inline$$AddU64$3$dst@2)) (seq.extract |inline$$1_Vector_swap'u64'$1$v@1| (+ $t34@1 1) (- (seq.len |inline$$1_Vector_swap'u64'$1$v@1|) (+ $t34@1 1)))) (+ inline$$AddU64$3$dst@2 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$1$v@1| 0 (- $t34@1 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$1$v@1| inline$$AddU64$3$dst@2)) (seq.extract |inline$$1_Vector_swap'u64'$1$v@1| (+ $t34@1 1) (- (seq.len |inline$$1_Vector_swap'u64'$1$v@1|) (+ $t34@1 1))))) (+ inline$$AddU64$3$dst@2 1)))))) (= $abort_code@8 $abort_code@7)) (and (= $abort_flag@7 $abort_flag@6) (= |inline$$1_Vector_swap'u64'$1$m'@2| |inline$$1_Vector_swap'u64'$1$m'@1|))) (and (=> (= (ControlFlow 0 23591) 23683) anon64_Then_correct) (=> (= (ControlFlow 0 23591) 23669) anon64_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_swap'u64'$1$v@1| (|v#$Mutation_11578| $t21@3)) (and (=> (= (ControlFlow 0 23557) 23651) |inline$$1_Vector_swap'u64'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 23557) 23591) |inline$$1_Vector_swap'u64'$1$anon3_Else_correct|)))))
(let ((anon63_Else_correct  (=> (and (not $abort_flag@6) (= (ControlFlow 0 23659) 23557)) |inline$$1_Vector_swap'u64'$1$anon0_correct|)))
(let ((inline$$AddU64$3$anon3_Then$1_correct  (=> (= $abort_flag@6 true) (=> (and (= $abort_code@7 $EXEC_FAILURE_CODE) (= inline$$AddU64$3$dst@2 inline$$AddU64$3$dst@0)) (and (=> (= (ControlFlow 0 23431) 23697) anon63_Then_correct) (=> (= (ControlFlow 0 23431) 23659) anon63_Else_correct))))))
(let ((inline$$AddU64$3$anon3_Then_correct  (=> (and (> (+ $t34@1 1) $MAX_U64) (= (ControlFlow 0 23429) 23431)) inline$$AddU64$3$anon3_Then$1_correct)))
(let ((inline$$AddU64$3$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t34@1 1)) (=> (and (and (= inline$$AddU64$3$dst@1 (+ $t34@1 1)) (= $abort_flag@6 $abort_flag@5)) (and (= $abort_code@7 $abort_code@6) (= inline$$AddU64$3$dst@2 inline$$AddU64$3$dst@1))) (and (=> (= (ControlFlow 0 23377) 23697) anon63_Then_correct) (=> (= (ControlFlow 0 23377) 23659) anon63_Else_correct))))))
(let ((anon62_Else_correct  (=> (and (not $abort_flag@5) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 23437) 23429) inline$$AddU64$3$anon3_Then_correct) (=> (= (ControlFlow 0 23437) 23377) inline$$AddU64$3$anon3_Else_correct)))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|  (=> (= $abort_code@6 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@5 true) (= |inline$$1_Vector_swap'u64'$0$m'@2| |inline$$1_Vector_swap'u64'$0$m'@0|)) (and (=> (= (ControlFlow 0 23262) 23711) anon62_Then_correct) (=> (= (ControlFlow 0 23262) 23437) anon62_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Then_correct|  (=> (and (or (not (and (>= inline$$AddU64$2$dst@2 0) (< inline$$AddU64$2$dst@2 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))) (not (and (>= $t34@1 0) (< $t34@1 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|))))) (= (ControlFlow 0 23260) 23262)) |inline$$1_Vector_swap'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_swap'u64'$0$anon3_Else_correct|  (=> (not (or (not (and (>= inline$$AddU64$2$dst@2 0) (< inline$$AddU64$2$dst@2 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))) (not (and (>= $t34@1 0) (< $t34@1 (seq.len |inline$$1_Vector_swap'u64'$0$v@1|)))))) (=> (and (and (= |inline$$1_Vector_swap'u64'$0$m'@1| ($Mutation_11578 (|l#$Mutation_11578| $t0@1) (|p#$Mutation_11578| $t0@1) (seq.++ (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- $t34@1 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| inline$$AddU64$2$dst@2)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ $t34@1 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ $t34@1 1)))) 0 (- inline$$AddU64$2$dst@2 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| $t34@1)) (seq.extract (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- $t34@1 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| inline$$AddU64$2$dst@2)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ $t34@1 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ $t34@1 1)))) (+ inline$$AddU64$2$dst@2 1) (- (seq.len (seq.++ (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| 0 (- $t34@1 0)) (seq.unit (seq.nth |inline$$1_Vector_swap'u64'$0$v@1| inline$$AddU64$2$dst@2)) (seq.extract |inline$$1_Vector_swap'u64'$0$v@1| (+ $t34@1 1) (- (seq.len |inline$$1_Vector_swap'u64'$0$v@1|) (+ $t34@1 1))))) (+ inline$$AddU64$2$dst@2 1)))))) (= $abort_code@6 $abort_code@5)) (and (= $abort_flag@5 $abort_flag@4) (= |inline$$1_Vector_swap'u64'$0$m'@2| |inline$$1_Vector_swap'u64'$0$m'@1|))) (and (=> (= (ControlFlow 0 23200) 23711) anon62_Then_correct) (=> (= (ControlFlow 0 23200) 23437) anon62_Else_correct))))))
(let ((|inline$$1_Vector_swap'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_swap'u64'$0$v@1| (|v#$Mutation_11578| $t0@1)) (and (=> (= (ControlFlow 0 23166) 23260) |inline$$1_Vector_swap'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 23166) 23200) |inline$$1_Vector_swap'u64'$0$anon3_Else_correct|)))))
(let ((anon61_Else_correct  (=> (and (not $abort_flag@4) (= (ControlFlow 0 23268) 23166)) |inline$$1_Vector_swap'u64'$0$anon0_correct|)))
(let ((inline$$AddU64$2$anon3_Then$1_correct  (=> (= $abort_flag@4 true) (=> (and (= $abort_code@5 $EXEC_FAILURE_CODE) (= inline$$AddU64$2$dst@2 inline$$AddU64$2$dst@0)) (and (=> (= (ControlFlow 0 23040) 23725) anon61_Then_correct) (=> (= (ControlFlow 0 23040) 23268) anon61_Else_correct))))))
(let ((inline$$AddU64$2$anon3_Then_correct  (=> (and (> (+ $t34@1 1) $MAX_U64) (= (ControlFlow 0 23038) 23040)) inline$$AddU64$2$anon3_Then$1_correct)))
(let ((inline$$AddU64$2$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t34@1 1)) (=> (and (and (= inline$$AddU64$2$dst@1 (+ $t34@1 1)) (= $abort_flag@4 $abort_flag@3)) (and (= $abort_code@5 $abort_code@4) (= inline$$AddU64$2$dst@2 inline$$AddU64$2$dst@1))) (and (=> (= (ControlFlow 0 22986) 23725) anon61_Then_correct) (=> (= (ControlFlow 0 22986) 23268) anon61_Else_correct))))))
(let ((anon60_Then_correct  (=> (and inline$$Lt$3$dst@1 (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 23046) 23038) inline$$AddU64$2$anon3_Then_correct) (=> (= (ControlFlow 0 23046) 22986) inline$$AddU64$2$anon3_Else_correct)))))
(let ((anon60_Else_correct  (=> (and (not inline$$Lt$3$dst@1) (= $t0@2 $t0@1)) (=> (and (and (= $t21@4 $t21@3) (= $abort_flag@8 $abort_flag@3)) (and (= $abort_code@9 $abort_code@4) (= (ControlFlow 0 22379) 22540))) L15_correct))))
(let ((inline$$Lt$3$anon0_correct  (=> (= inline$$Lt$3$dst@1 (< |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$1$dst@2|)) (and (=> (= (ControlFlow 0 22365) 23046) anon60_Then_correct) (=> (= (ControlFlow 0 22365) 22379) anon60_Else_correct)))))
(let ((anon59_Else_correct  (=> (and (not $abort_flag@3) (= (ControlFlow 0 22371) 22365)) inline$$Lt$3$anon0_correct)))
(let ((|inline$$1_Vector_borrow'u64'$1$anon3_Then$1_correct|  (=> (= $abort_code@4 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@3 true) (= |inline$$1_Vector_borrow'u64'$1$dst@2| |inline$$1_Vector_borrow'u64'$1$dst@0|)) (and (=> (= (ControlFlow 0 22311) 23739) anon59_Then_correct) (=> (= (ControlFlow 0 22311) 22371) anon59_Else_correct))))))
(let ((|inline$$1_Vector_borrow'u64'$1$anon3_Then_correct|  (=> (and (not (and (>= $t34@1 0) (< $t34@1 (seq.len $t40@2)))) (= (ControlFlow 0 22309) 22311)) |inline$$1_Vector_borrow'u64'$1$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'u64'$1$anon3_Else_correct|  (=> (and (>= $t34@1 0) (< $t34@1 (seq.len $t40@2))) (=> (and (and (= |inline$$1_Vector_borrow'u64'$1$dst@1| (seq.nth $t40@2 $t34@1)) (= $abort_code@4 $abort_code@3)) (and (= $abort_flag@3 $abort_flag@2) (= |inline$$1_Vector_borrow'u64'$1$dst@2| |inline$$1_Vector_borrow'u64'$1$dst@1|))) (and (=> (= (ControlFlow 0 22259) 23739) anon59_Then_correct) (=> (= (ControlFlow 0 22259) 22371) anon59_Else_correct))))))
(let ((anon58_Else_correct  (=> (and (not $abort_flag@2) (= $t40@2 (|v#$Mutation_11578| $t0@1))) (and (=> (= (ControlFlow 0 22317) 22309) |inline$$1_Vector_borrow'u64'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 22317) 22259) |inline$$1_Vector_borrow'u64'$1$anon3_Else_correct|)))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@2 true) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@0|)) (and (=> (= (ControlFlow 0 22158) 23753) anon58_Then_correct) (=> (= (ControlFlow 0 22158) 22317) anon58_Else_correct))))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|  (=> (and (not (and (>= inline$$AddU64$0$dst@2 0) (< inline$$AddU64$0$dst@2 (seq.len $t38@2)))) (= (ControlFlow 0 22156) 22158)) |inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|  (=> (and (>= inline$$AddU64$0$dst@2 0) (< inline$$AddU64$0$dst@2 (seq.len $t38@2))) (=> (and (and (= |inline$$1_Vector_borrow'u64'$0$dst@1| (seq.nth $t38@2 inline$$AddU64$0$dst@2)) (= $abort_flag@2 $abort_flag@1)) (and (= $abort_code@3 $abort_code@2) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@1|))) (and (=> (= (ControlFlow 0 22106) 23753) anon58_Then_correct) (=> (= (ControlFlow 0 22106) 22317) anon58_Else_correct))))))
(let ((anon57_Else_correct  (=> (and (and (and (not $abort_flag@1) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@2)) (and (= |$temp_0'vec'u64''@9| (|v#$Mutation_11578| $t0@1)) (= |$temp_0'vec'u64''@9| |$temp_0'vec'u64''@9|))) (and (and (= $t34@1 $t34@1) (= |$temp_0'vec'u64''@10| (|v#$Mutation_11578| $t0@1))) (and (= |$temp_0'vec'u64''@10| |$temp_0'vec'u64''@10|) (= $t38@2 (|v#$Mutation_11578| $t0@1))))) (and (=> (= (ControlFlow 0 22164) 22156) |inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 22164) 22106) |inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|)))))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 21973) 23767) anon57_Then_correct) (=> (= (ControlFlow 0 21973) 22164) anon57_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t34@1 1) $MAX_U64) (= (ControlFlow 0 21971) 21973)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t34@1 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t34@1 1)) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 21919) 23767) anon57_Then_correct) (=> (= (ControlFlow 0 21919) 22164) anon57_Else_correct))))))
(let ((anon56_Then_correct  (=> (and inline$$Lt$2$dst@1 (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 21979) 21971) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 21979) 21919) inline$$AddU64$0$anon3_Else_correct)))))
(let ((anon56_Else_correct  (=> (not inline$$Lt$2$dst@1) (and (=> (= (ControlFlow 0 21816) (- 0 27420)) (and (<= 0 inline$$Sub$0$dst@2) (<= inline$$Sub$0$dst@2 $t19@0))) (=> (and (<= 0 inline$$Sub$0$dst@2) (<= inline$$Sub$0$dst@2 $t19@0)) (and (=> (= (ControlFlow 0 21816) (- 0 27434)) (let (($range_0@@9 ($Range inline$$Sub$0$dst@2 $t19@0)))
(forall (($i_1@@16 Int) ) (!  (=> ($InRange $range_0@@9 $i_1@@16) (let ((k@@8 $i_1@@16))
(let (($range_2@@3 ($Range 0 k@@8)))
(forall (($i_3@@7 Int) ) (!  (=> ($InRange $range_2@@3 $i_3@@7) (let ((l@@2 $i_3@@7))
(<= (seq.nth (|v#$Mutation_11578| $t0@1) l@@2) (seq.nth (|v#$Mutation_11578| $t0@1) k@@8))))
 :qid |bubblesortbpl.1976:45|
 :skolemid |65|
)))))
 :qid |bubblesortbpl.1975:52|
 :skolemid |66|
)))) (=> (let (($range_0@@9 ($Range inline$$Sub$0$dst@2 $t19@0)))
(forall (($i_1@@17 Int) ) (!  (=> ($InRange $range_0@@9 $i_1@@17) (let ((k@@8 $i_1@@17))
(let (($range_2@@3 ($Range 0 k@@8)))
(forall (($i_3@@8 Int) ) (!  (=> ($InRange $range_2@@3 $i_3@@8) (let ((l@@2 $i_3@@8))
(<= (seq.nth (|v#$Mutation_11578| $t0@1) l@@2) (seq.nth (|v#$Mutation_11578| $t0@1) k@@8))))
 :qid |bubblesortbpl.1976:45|
 :skolemid |65|
)))))
 :qid |bubblesortbpl.1975:52|
 :skolemid |66|
))) (and (=> (= (ControlFlow 0 21816) (- 0 27497)) (let (($range_0@@10 ($Range 0 $t19@0)))
(forall (($i_1@@18 Int) ) (!  (=> ($InRange $range_0@@10 $i_1@@18) (let ((k@@9 $i_1@@18))
 (and (<= 0 (seq.nth (|v#$Mutation_11578| $t21@3) k@@9)) (< (seq.nth (|v#$Mutation_11578| $t21@3) k@@9) $t19@0))))
 :qid |bubblesortbpl.1982:49|
 :skolemid |67|
)))) (=> (let (($range_0@@10 ($Range 0 $t19@0)))
(forall (($i_1@@19 Int) ) (!  (=> ($InRange $range_0@@10 $i_1@@19) (let ((k@@9 $i_1@@19))
 (and (<= 0 (seq.nth (|v#$Mutation_11578| $t21@3) k@@9)) (< (seq.nth (|v#$Mutation_11578| $t21@3) k@@9) $t19@0))))
 :qid |bubblesortbpl.1982:49|
 :skolemid |67|
))) (and (=> (= (ControlFlow 0 21816) (- 0 27545)) (let (($range_0@@11 ($Range 0 (- $t19@0 1))))
(forall (($i_1@@20 Int) ) (!  (=> ($InRange $range_0@@11 $i_1@@20) (let ((k@@10 $i_1@@20))
(let (($range_2@@4 ($Range (+ k@@10 1) $t19@0)))
(forall (($i_3@@9 Int) ) (!  (=> ($InRange $range_2@@4 $i_3@@9) (let ((l@@3 $i_3@@9))
 (not (= (seq.nth (|v#$Mutation_11578| $t21@3) k@@10) (seq.nth (|v#$Mutation_11578| $t21@3) l@@3)))))
 :qid |bubblesortbpl.1989:54|
 :skolemid |68|
)))))
 :qid |bubblesortbpl.1988:55|
 :skolemid |69|
)))) (=> (let (($range_0@@11 ($Range 0 (- $t19@0 1))))
(forall (($i_1@@21 Int) ) (!  (=> ($InRange $range_0@@11 $i_1@@21) (let ((k@@10 $i_1@@21))
(let (($range_2@@4 ($Range (+ k@@10 1) $t19@0)))
(forall (($i_3@@10 Int) ) (!  (=> ($InRange $range_2@@4 $i_3@@10) (let ((l@@3 $i_3@@10))
 (not (= (seq.nth (|v#$Mutation_11578| $t21@3) k@@10) (seq.nth (|v#$Mutation_11578| $t21@3) l@@3)))))
 :qid |bubblesortbpl.1989:54|
 :skolemid |68|
)))))
 :qid |bubblesortbpl.1988:55|
 :skolemid |69|
))) (=> (= (ControlFlow 0 21816) (- 0 27618)) (let (($range_0@@12 ($Range 0 $t19@0)))
(forall (($i_1@@22 Int) ) (!  (=> ($InRange $range_0@@12 $i_1@@22) (let ((k@@11 $i_1@@22))
(= (seq.nth (|v#$Mutation_11578| $t0@1) k@@11) (seq.nth $t17@0 (seq.nth (|v#$Mutation_11578| $t21@3) k@@11)))))
 :qid |bubblesortbpl.1995:49|
 :skolemid |70|
)))))))))))))))
(let ((anon55_Else$1_correct  (and (=> (= (ControlFlow 0 21552) 21979) anon56_Then_correct) (=> (= (ControlFlow 0 21552) 21816) anon56_Else_correct))))
(let ((inline$$Lt$2$anon0_correct  (=> (and (= inline$$Lt$2$dst@1 (< $t34@1 inline$$Sub$0$dst@2)) (= (ControlFlow 0 21542) 21552)) anon55_Else$1_correct)))
(let ((anon55_Else_correct  (=> (not inline$$Lt$1$dst@1) (=> (and (|$IsValid'u64'| 0) (= 0 0)) (and (=> (= (ControlFlow 0 21548) (- 0 26684)) (and (<= 0 0) (< 0 inline$$Sub$0$dst@2))) (=> (and (<= 0 0) (< 0 inline$$Sub$0$dst@2)) (and (=> (= (ControlFlow 0 21548) (- 0 26698)) (let (($range_0@@13 ($Range (+ inline$$Sub$0$dst@2 1) $t19@0)))
(forall (($i_1@@23 Int) ) (!  (=> ($InRange $range_0@@13 $i_1@@23) (let ((k@@12 $i_1@@23))
(let (($range_2@@5 ($Range 0 k@@12)))
(forall (($i_3@@11 Int) ) (!  (=> ($InRange $range_2@@5 $i_3@@11) (let ((l@@4 $i_3@@11))
(<= (seq.nth (|v#$Mutation_11578| $t0@0) l@@4) (seq.nth (|v#$Mutation_11578| $t0@0) k@@12))))
 :qid |bubblesortbpl.1607:45|
 :skolemid |43|
)))))
 :qid |bubblesortbpl.1606:58|
 :skolemid |44|
)))) (=> (let (($range_0@@13 ($Range (+ inline$$Sub$0$dst@2 1) $t19@0)))
(forall (($i_1@@24 Int) ) (!  (=> ($InRange $range_0@@13 $i_1@@24) (let ((k@@12 $i_1@@24))
(let (($range_2@@5 ($Range 0 k@@12)))
(forall (($i_3@@12 Int) ) (!  (=> ($InRange $range_2@@5 $i_3@@12) (let ((l@@4 $i_3@@12))
(<= (seq.nth (|v#$Mutation_11578| $t0@0) l@@4) (seq.nth (|v#$Mutation_11578| $t0@0) k@@12))))
 :qid |bubblesortbpl.1607:45|
 :skolemid |43|
)))))
 :qid |bubblesortbpl.1606:58|
 :skolemid |44|
))) (and (=> (= (ControlFlow 0 21548) (- 0 26765)) (let (($range_0@@14 ($Range 0 $t19@0)))
(forall (($i_1@@25 Int) ) (!  (=> ($InRange $range_0@@14 $i_1@@25) (let ((k@@13 $i_1@@25))
 (and (<= 0 (seq.nth (|v#$Mutation_11578| $t21@2) k@@13)) (< (seq.nth (|v#$Mutation_11578| $t21@2) k@@13) $t19@0))))
 :qid |bubblesortbpl.1613:49|
 :skolemid |45|
)))) (=> (let (($range_0@@14 ($Range 0 $t19@0)))
(forall (($i_1@@26 Int) ) (!  (=> ($InRange $range_0@@14 $i_1@@26) (let ((k@@13 $i_1@@26))
 (and (<= 0 (seq.nth (|v#$Mutation_11578| $t21@2) k@@13)) (< (seq.nth (|v#$Mutation_11578| $t21@2) k@@13) $t19@0))))
 :qid |bubblesortbpl.1613:49|
 :skolemid |45|
))) (and (=> (= (ControlFlow 0 21548) (- 0 26813)) (let (($range_0@@15 ($Range 0 (- $t19@0 1))))
(forall (($i_1@@27 Int) ) (!  (=> ($InRange $range_0@@15 $i_1@@27) (let ((k@@14 $i_1@@27))
(let (($range_2@@6 ($Range (+ k@@14 1) $t19@0)))
(forall (($i_3@@13 Int) ) (!  (=> ($InRange $range_2@@6 $i_3@@13) (let ((l@@5 $i_3@@13))
 (not (= (seq.nth (|v#$Mutation_11578| $t21@2) k@@14) (seq.nth (|v#$Mutation_11578| $t21@2) l@@5)))))
 :qid |bubblesortbpl.1620:54|
 :skolemid |46|
)))))
 :qid |bubblesortbpl.1619:55|
 :skolemid |47|
)))) (=> (let (($range_0@@15 ($Range 0 (- $t19@0 1))))
(forall (($i_1@@28 Int) ) (!  (=> ($InRange $range_0@@15 $i_1@@28) (let ((k@@14 $i_1@@28))
(let (($range_2@@6 ($Range (+ k@@14 1) $t19@0)))
(forall (($i_3@@14 Int) ) (!  (=> ($InRange $range_2@@6 $i_3@@14) (let ((l@@5 $i_3@@14))
 (not (= (seq.nth (|v#$Mutation_11578| $t21@2) k@@14) (seq.nth (|v#$Mutation_11578| $t21@2) l@@5)))))
 :qid |bubblesortbpl.1620:54|
 :skolemid |46|
)))))
 :qid |bubblesortbpl.1619:55|
 :skolemid |47|
))) (and (=> (= (ControlFlow 0 21548) (- 0 26886)) (let (($range_0@@16 ($Range 0 $t19@0)))
(forall (($i_1@@29 Int) ) (!  (=> ($InRange $range_0@@16 $i_1@@29) (let ((k@@15 $i_1@@29))
(= (seq.nth (|v#$Mutation_11578| $t0@0) k@@15) (seq.nth $t15@0 (seq.nth (|v#$Mutation_11578| $t21@2) k@@15)))))
 :qid |bubblesortbpl.1626:49|
 :skolemid |48|
)))) (=> (let (($range_0@@16 ($Range 0 $t19@0)))
(forall (($i_1@@30 Int) ) (!  (=> ($InRange $range_0@@16 $i_1@@30) (let ((k@@15 $i_1@@30))
(= (seq.nth (|v#$Mutation_11578| $t0@0) k@@15) (seq.nth $t15@0 (seq.nth (|v#$Mutation_11578| $t21@2) k@@15)))))
 :qid |bubblesortbpl.1626:49|
 :skolemid |48|
))) (and (=> (= (ControlFlow 0 21548) (- 0 26930)) (let (($range_0@@17 ($Range 0 0)))
(forall (($i_1@@31 Int) ) (!  (=> ($InRange $range_0@@17 $i_1@@31) (let ((k@@16 $i_1@@31))
(<= (seq.nth (|v#$Mutation_11578| $t0@0) k@@16) (seq.nth (|v#$Mutation_11578| $t0@0) 0))))
 :qid |bubblesortbpl.1632:49|
 :skolemid |49|
)))) (=> (let (($range_0@@17 ($Range 0 0)))
(forall (($i_1@@32 Int) ) (!  (=> ($InRange $range_0@@17 $i_1@@32) (let ((k@@16 $i_1@@32))
(<= (seq.nth (|v#$Mutation_11578| $t0@0) k@@16) (seq.nth (|v#$Mutation_11578| $t0@0) 0))))
 :qid |bubblesortbpl.1632:49|
 :skolemid |49|
))) (=> (and (|$IsValid'u64'| $t34@1) (|$IsValid'u64'| $t36@1)) (=> (and (and (and (|$IsValid'u64'| $t37@1) (|$IsValid'vec'u64''| $t38@1)) (and (|$IsValid'u64'| $t39@1) (|$IsValid'vec'u64''| $t40@1))) (and (and (|$IsValid'u64'| $t41@1) (|$IsValid'u64'| $t43@1)) (and (|$IsValid'u64'| $t44@1) (|$IsValid'u64'| $t45@1)))) (=> (and (and (and (and (|$IsValid'u64'| $t46@1) (|$IsValid'u64'| $t47@1)) (and (|$IsValid'u64'| $t48@1) (= $t0@1 ($Mutation_11578 (|l#$Mutation_11578| $t0@0) (|p#$Mutation_11578| $t0@0) |$temp_0'vec'u64''@7|)))) (and (and (|$IsValid'vec'u64''| (|v#$Mutation_11578| $t0@1)) (= $t21@3 ($Mutation_11578 (|l#$Mutation_11578| $t21@2) (|p#$Mutation_11578| $t21@2) |$temp_0'vec'u64''@8|))) (and (|$IsValid'vec'u64''| (|v#$Mutation_11578| $t21@3)) (not $abort_flag@0)))) (and (and (and (<= 0 $t34@1) (< $t34@1 inline$$Sub$0$dst@2)) (and (let (($range_0@@18 ($Range (+ inline$$Sub$0$dst@2 1) $t19@0)))
(forall (($i_1@@33 Int) ) (!  (=> ($InRange $range_0@@18 $i_1@@33) (let ((k@@17 $i_1@@33))
(let (($range_2@@7 ($Range 0 k@@17)))
(forall (($i_3@@15 Int) ) (!  (=> ($InRange $range_2@@7 $i_3@@15) (let ((l@@6 $i_3@@15))
(<= (seq.nth (|v#$Mutation_11578| $t0@1) l@@6) (seq.nth (|v#$Mutation_11578| $t0@1) k@@17))))
 :qid |bubblesortbpl.1715:45|
 :skolemid |50|
)))))
 :qid |bubblesortbpl.1714:63|
 :skolemid |51|
))) (let (($range_0@@19 ($Range 0 $t19@0)))
(forall (($i_1@@34 Int) ) (!  (=> ($InRange $range_0@@19 $i_1@@34) (let ((k@@18 $i_1@@34))
 (and (<= 0 (seq.nth (|v#$Mutation_11578| $t21@3) k@@18)) (< (seq.nth (|v#$Mutation_11578| $t21@3) k@@18) $t19@0))))
 :qid |bubblesortbpl.1720:54|
 :skolemid |52|
))))) (and (and (let (($range_0@@20 ($Range 0 (- $t19@0 1))))
(forall (($i_1@@35 Int) ) (!  (=> ($InRange $range_0@@20 $i_1@@35) (let ((k@@19 $i_1@@35))
(let (($range_2@@8 ($Range (+ k@@19 1) $t19@0)))
(forall (($i_3@@16 Int) ) (!  (=> ($InRange $range_2@@8 $i_3@@16) (let ((l@@7 $i_3@@16))
 (not (= (seq.nth (|v#$Mutation_11578| $t21@3) k@@19) (seq.nth (|v#$Mutation_11578| $t21@3) l@@7)))))
 :qid |bubblesortbpl.1726:54|
 :skolemid |53|
)))))
 :qid |bubblesortbpl.1725:60|
 :skolemid |54|
))) (let (($range_0@@21 ($Range 0 $t19@0)))
(forall (($i_1@@36 Int) ) (!  (=> ($InRange $range_0@@21 $i_1@@36) (let ((k@@20 $i_1@@36))
(= (seq.nth (|v#$Mutation_11578| $t0@1) k@@20) (seq.nth $t13@0 (seq.nth (|v#$Mutation_11578| $t21@3) k@@20)))))
 :qid |bubblesortbpl.1731:54|
 :skolemid |55|
)))) (and (let (($range_0@@22 ($Range 0 $t34@1)))
(forall (($i_1@@37 Int) ) (!  (=> ($InRange $range_0@@22 $i_1@@37) (let ((k@@21 $i_1@@37))
(<= (seq.nth (|v#$Mutation_11578| $t0@1) k@@21) (seq.nth (|v#$Mutation_11578| $t0@1) $t34@1))))
 :qid |bubblesortbpl.1736:54|
 :skolemid |56|
))) (= (ControlFlow 0 21548) 21542))))) inline$$Lt$2$anon0_correct)))))))))))))))))))
(let ((inline$$Lt$1$anon0_correct  (=> (= inline$$Lt$1$dst@1 (< inline$$Sub$0$dst@2 0)) (and (=> (= (ControlFlow 0 20778) 23797) anon55_Then_correct) (=> (= (ControlFlow 0 20778) 21548) anon55_Else_correct)))))
(let ((anon54_Else_correct  (=> (and (and (not $abort_flag@0) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@2)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 20784) 20778))) inline$$Lt$1$anon0_correct)))
(let ((inline$$Sub$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@0)) (and (=> (= (ControlFlow 0 20710) 24103) anon54_Then_correct) (=> (= (ControlFlow 0 20710) 20784) anon54_Else_correct))))))
(let ((inline$$Sub$0$anon3_Then_correct  (=> (and (< $t19@0 1) (= (ControlFlow 0 20708) 20710)) inline$$Sub$0$anon3_Then$1_correct)))
(let ((inline$$Sub$0$anon3_Else_correct  (=> (<= 1 $t19@0) (=> (and (and (= inline$$Sub$0$dst@1 (- $t19@0 1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$Sub$0$dst@2 inline$$Sub$0$dst@1))) (and (=> (= (ControlFlow 0 20660) 24103) anon54_Then_correct) (=> (= (ControlFlow 0 20660) 20784) anon54_Else_correct))))))
(let ((anon53_Else_correct  (=> (and (not inline$$Le$0$dst@1) (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|)) (and (=> (= (ControlFlow 0 20716) (- 0 25854)) (and (<= 0 |inline$$1_Vector_length'u64'$0$l@1|) (<= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|))) (=> (and (<= 0 |inline$$1_Vector_length'u64'$0$l@1|) (<= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|)) (and (=> (= (ControlFlow 0 20716) (- 0 25868)) (let (($range_0@@23 ($Range |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|)))
(forall (($i_1@@38 Int) ) (!  (=> ($InRange $range_0@@23 $i_1@@38) (let ((k@@22 $i_1@@38))
(let (($range_2@@9 ($Range 0 k@@22)))
(forall (($i_3@@17 Int) ) (!  (=> ($InRange $range_2@@9 $i_3@@17) (let ((l@@8 $i_3@@17))
(<= (seq.nth (|v#$Mutation_11578| _$t0) l@@8) (seq.nth (|v#$Mutation_11578| _$t0) k@@22))))
 :qid |bubblesortbpl.1379:45|
 :skolemid |31|
)))))
 :qid |bubblesortbpl.1378:52|
 :skolemid |32|
)))) (=> (let (($range_0@@23 ($Range |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|)))
(forall (($i_1@@39 Int) ) (!  (=> ($InRange $range_0@@23 $i_1@@39) (let ((k@@22 $i_1@@39))
(let (($range_2@@9 ($Range 0 k@@22)))
(forall (($i_3@@18 Int) ) (!  (=> ($InRange $range_2@@9 $i_3@@18) (let ((l@@8 $i_3@@18))
(<= (seq.nth (|v#$Mutation_11578| _$t0) l@@8) (seq.nth (|v#$Mutation_11578| _$t0) k@@22))))
 :qid |bubblesortbpl.1379:45|
 :skolemid |31|
)))))
 :qid |bubblesortbpl.1378:52|
 :skolemid |32|
))) (and (=> (= (ControlFlow 0 20716) (- 0 25931)) (let (($range_0@@24 ($Range 0 |inline$$1_Vector_length'u64'$0$l@1|)))
(forall (($i_1@@40 Int) ) (!  (=> ($InRange $range_0@@24 $i_1@@40) (let ((k@@23 $i_1@@40))
 (and (<= 0 (seq.nth (|v#$Mutation_11578| $t21@1) k@@23)) (< (seq.nth (|v#$Mutation_11578| $t21@1) k@@23) |inline$$1_Vector_length'u64'$0$l@1|))))
 :qid |bubblesortbpl.1385:49|
 :skolemid |33|
)))) (=> (let (($range_0@@24 ($Range 0 |inline$$1_Vector_length'u64'$0$l@1|)))
(forall (($i_1@@41 Int) ) (!  (=> ($InRange $range_0@@24 $i_1@@41) (let ((k@@23 $i_1@@41))
 (and (<= 0 (seq.nth (|v#$Mutation_11578| $t21@1) k@@23)) (< (seq.nth (|v#$Mutation_11578| $t21@1) k@@23) |inline$$1_Vector_length'u64'$0$l@1|))))
 :qid |bubblesortbpl.1385:49|
 :skolemid |33|
))) (and (=> (= (ControlFlow 0 20716) (- 0 25979)) (let (($range_0@@25 ($Range 0 (- |inline$$1_Vector_length'u64'$0$l@1| 1))))
(forall (($i_1@@42 Int) ) (!  (=> ($InRange $range_0@@25 $i_1@@42) (let ((k@@24 $i_1@@42))
(let (($range_2@@10 ($Range (+ k@@24 1) |inline$$1_Vector_length'u64'$0$l@1|)))
(forall (($i_3@@19 Int) ) (!  (=> ($InRange $range_2@@10 $i_3@@19) (let ((l@@9 $i_3@@19))
 (not (= (seq.nth (|v#$Mutation_11578| $t21@1) k@@24) (seq.nth (|v#$Mutation_11578| $t21@1) l@@9)))))
 :qid |bubblesortbpl.1392:54|
 :skolemid |34|
)))))
 :qid |bubblesortbpl.1391:55|
 :skolemid |35|
)))) (=> (let (($range_0@@25 ($Range 0 (- |inline$$1_Vector_length'u64'$0$l@1| 1))))
(forall (($i_1@@43 Int) ) (!  (=> ($InRange $range_0@@25 $i_1@@43) (let ((k@@24 $i_1@@43))
(let (($range_2@@10 ($Range (+ k@@24 1) |inline$$1_Vector_length'u64'$0$l@1|)))
(forall (($i_3@@20 Int) ) (!  (=> ($InRange $range_2@@10 $i_3@@20) (let ((l@@9 $i_3@@20))
 (not (= (seq.nth (|v#$Mutation_11578| $t21@1) k@@24) (seq.nth (|v#$Mutation_11578| $t21@1) l@@9)))))
 :qid |bubblesortbpl.1392:54|
 :skolemid |34|
)))))
 :qid |bubblesortbpl.1391:55|
 :skolemid |35|
))) (and (=> (= (ControlFlow 0 20716) (- 0 26052)) (let (($range_0@@26 ($Range 0 |inline$$1_Vector_length'u64'$0$l@1|)))
(forall (($i_1@@44 Int) ) (!  (=> ($InRange $range_0@@26 $i_1@@44) (let ((k@@25 $i_1@@44))
(= (seq.nth (|v#$Mutation_11578| _$t0) k@@25) (seq.nth $t14@0 (seq.nth (|v#$Mutation_11578| $t21@1) k@@25)))))
 :qid |bubblesortbpl.1398:49|
 :skolemid |36|
)))) (=> (let (($range_0@@26 ($Range 0 |inline$$1_Vector_length'u64'$0$l@1|)))
(forall (($i_1@@45 Int) ) (!  (=> ($InRange $range_0@@26 $i_1@@45) (let ((k@@25 $i_1@@45))
(= (seq.nth (|v#$Mutation_11578| _$t0) k@@25) (seq.nth $t14@0 (seq.nth (|v#$Mutation_11578| $t21@1) k@@25)))))
 :qid |bubblesortbpl.1398:49|
 :skolemid |36|
))) (=> (|$IsValid'u64'| $t19@0) (=> (and (|$IsValid'u64'| $t3@0) (|$IsValid'u64'| $t30@0)) (=> (and (and (|$IsValid'u64'| $t31@0) (|$IsValid'u64'| $t32@0)) (and (|$IsValid'u64'| $t34@0) (|$IsValid'u64'| $t36@0))) (=> (and (and (and (|$IsValid'u64'| $t37@0) (|$IsValid'vec'u64''| $t38@0)) (and (|$IsValid'u64'| $t39@0) (|$IsValid'vec'u64''| $t40@0))) (and (and (|$IsValid'u64'| $t41@0) (|$IsValid'u64'| $t43@0)) (and (|$IsValid'u64'| $t44@0) (|$IsValid'u64'| $t45@0)))) (=> (and (and (and (and (|$IsValid'u64'| $t46@0) (|$IsValid'u64'| $t47@0)) (and (|$IsValid'u64'| $t48@0) (= $t0@0 ($Mutation_11578 (|l#$Mutation_11578| _$t0) (|p#$Mutation_11578| _$t0) |$temp_0'vec'u64''@4|)))) (and (and (|$IsValid'vec'u64''| (|v#$Mutation_11578| $t0@0)) (= $t21@2 ($Mutation_11578 (|l#$Mutation_11578| $t21@1) (|p#$Mutation_11578| $t21@1) |$temp_0'vec'u64''@5|))) (and (|$IsValid'vec'u64''| (|v#$Mutation_11578| $t21@2)) (not false)))) (and (and (and (<= 0 $t19@0) (<= $t19@0 $t19@0)) (let (($range_0@@27 ($Range $t19@0 $t19@0)))
(forall (($i_1@@46 Int) ) (!  (=> ($InRange $range_0@@27 $i_1@@46) (let ((k@@26 $i_1@@46))
(let (($range_2@@11 ($Range 0 k@@26)))
(forall (($i_3@@21 Int) ) (!  (=> ($InRange $range_2@@11 $i_3@@21) (let ((l@@10 $i_3@@21))
(<= (seq.nth (|v#$Mutation_11578| $t0@0) l@@10) (seq.nth (|v#$Mutation_11578| $t0@0) k@@26))))
 :qid |bubblesortbpl.1505:45|
 :skolemid |37|
)))))
 :qid |bubblesortbpl.1504:57|
 :skolemid |38|
)))) (and (and (let (($range_0@@28 ($Range 0 $t19@0)))
(forall (($i_1@@47 Int) ) (!  (=> ($InRange $range_0@@28 $i_1@@47) (let ((k@@27 $i_1@@47))
 (and (<= 0 (seq.nth (|v#$Mutation_11578| $t21@2) k@@27)) (< (seq.nth (|v#$Mutation_11578| $t21@2) k@@27) $t19@0))))
 :qid |bubblesortbpl.1510:54|
 :skolemid |39|
))) (let (($range_0@@29 ($Range 0 (- $t19@0 1))))
(forall (($i_1@@48 Int) ) (!  (=> ($InRange $range_0@@29 $i_1@@48) (let ((k@@28 $i_1@@48))
(let (($range_2@@12 ($Range (+ k@@28 1) $t19@0)))
(forall (($i_3@@22 Int) ) (!  (=> ($InRange $range_2@@12 $i_3@@22) (let ((l@@11 $i_3@@22))
 (not (= (seq.nth (|v#$Mutation_11578| $t21@2) k@@28) (seq.nth (|v#$Mutation_11578| $t21@2) l@@11)))))
 :qid |bubblesortbpl.1516:54|
 :skolemid |40|
)))))
 :qid |bubblesortbpl.1515:60|
 :skolemid |41|
)))) (and (let (($range_0@@30 ($Range 0 $t19@0)))
(forall (($i_1@@49 Int) ) (!  (=> ($InRange $range_0@@30 $i_1@@49) (let ((k@@29 $i_1@@49))
(= (seq.nth (|v#$Mutation_11578| $t0@0) k@@29) (seq.nth $t12@0 (seq.nth (|v#$Mutation_11578| $t21@2) k@@29)))))
 :qid |bubblesortbpl.1521:54|
 :skolemid |42|
))) (|$IsValid'u64'| 1))))) (and (=> (= (ControlFlow 0 20716) 20708) inline$$Sub$0$anon3_Then_correct) (=> (= (ControlFlow 0 20716) 20660) inline$$Sub$0$anon3_Else_correct))))))))))))))))))))
(let ((inline$$Le$0$anon0_correct  (=> (= inline$$Le$0$dst@1 (<= |inline$$1_Vector_length'u64'$0$l@1| 1)) (and (=> (= (ControlFlow 0 19925) 24133) anon53_Then_correct) (=> (= (ControlFlow 0 19925) 20716) anon53_Else_correct)))))
(let ((anon50_Else_correct  (=> (not inline$$Lt$0$dst@1) (=> (and (|$IsValid'u64'| 1) (= (ControlFlow 0 19931) 19925)) inline$$Le$0$anon0_correct))))
(let ((anon49_Else$1_correct  (and (=> (= (ControlFlow 0 19873) 24194) anon50_Then_correct) (=> (= (ControlFlow 0 19873) 19931) anon50_Else_correct))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t22@0 |inline$$1_Vector_length'u64'$0$l@1|)) (= (ControlFlow 0 19863) 19873)) anon49_Else$1_correct)))
(let ((anon49_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t21@0 ($Mutation_11578 ($Local 5) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (=> (and (and (= |$temp_0'vec'u64''@1| (|v#$Mutation_11578| $t21@0)) (= |$temp_0'vec'u64''@1| |$temp_0'vec'u64''@1|)) (and (|$IsValid'u64'| 0) (= 0 0))) (and (=> (= (ControlFlow 0 19869) (- 0 25602)) (= (seq.len (|v#$Mutation_11578| $t21@0)) 0)) (=> (= (seq.len (|v#$Mutation_11578| $t21@0)) 0) (and (=> (= (ControlFlow 0 19869) (- 0 25613)) (let (($range_0@@31 ($Range 0 (seq.len (|v#$Mutation_11578| $t21@0)))))
(forall (($i_1@@50 Int) ) (!  (=> ($InRange $range_0@@31 $i_1@@50) (let ((k@@30 $i_1@@50))
(= (seq.nth (|v#$Mutation_11578| $t21@0) k@@30) k@@30)))
 :qid |bubblesortbpl.1232:71|
 :skolemid |29|
)))) (=> (let (($range_0@@31 ($Range 0 (seq.len (|v#$Mutation_11578| $t21@0)))))
(forall (($i_1@@51 Int) ) (!  (=> ($InRange $range_0@@31 $i_1@@51) (let ((k@@30 $i_1@@51))
(= (seq.nth (|v#$Mutation_11578| $t21@0) k@@30) k@@30)))
 :qid |bubblesortbpl.1232:71|
 :skolemid |29|
))) (=> (|$IsValid'u64'| $t22@0) (=> (and (and (and (|$IsValid'u64'| $t24@0) (|$IsValid'u64'| $t25@0)) (and (= $t21@1 ($Mutation_11578 (|l#$Mutation_11578| $t21@0) (|p#$Mutation_11578| $t21@0) |$temp_0'vec'u64''@2|)) (|$IsValid'vec'u64''| (|v#$Mutation_11578| $t21@1)))) (and (and (not false) (= (seq.len (|v#$Mutation_11578| $t21@1)) $t22@0)) (and (let (($range_0@@32 ($Range 0 (seq.len (|v#$Mutation_11578| $t21@1)))))
(forall (($i_1@@52 Int) ) (!  (=> ($InRange $range_0@@32 $i_1@@52) (let ((k@@31 $i_1@@52))
(= (seq.nth (|v#$Mutation_11578| $t21@1) k@@31) k@@31)))
 :qid |bubblesortbpl.1265:76|
 :skolemid |30|
))) (= (ControlFlow 0 19869) 19863)))) inline$$Lt$0$anon0_correct)))))))))))
(let ((anon49_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 19627) 24474) anon49_Then_correct) (=> (= (ControlFlow 0 19627) 19869) anon49_Else_correct)))))
(let ((anon48_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|)) (and (= (seq.len (|v#$Mutation_11578| _$t0)) 4) (= (ControlFlow 0 19633) 19627))) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon48_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$0$l@1| (seq.len $t18@0)) (and (=> (= (ControlFlow 0 19573) 24488) anon48_Then_correct) (=> (= (ControlFlow 0 19573) 19633) anon48_Else_correct)))))
(let ((anon0$1_correct  (=> (= (|l#$Mutation_11578| _$t0) ($Param 0)) (=> (and (and (|$IsValid'vec'u64''| (|v#$Mutation_11578| _$t0)) (= $t11@0 (|v#$Mutation_11578| _$t0))) (and (= $t12@0 (|v#$Mutation_11578| _$t0)) (= $t13@0 (|v#$Mutation_11578| _$t0)))) (=> (and (and (and (= $t14@0 (|v#$Mutation_11578| _$t0)) (= $t15@0 (|v#$Mutation_11578| _$t0))) (and (= $t16@0 (|v#$Mutation_11578| _$t0)) (= $t17@0 (|v#$Mutation_11578| _$t0)))) (and (and (= |$temp_0'vec'u64''@0| (|v#$Mutation_11578| _$t0)) (= |$temp_0'vec'u64''@0| |$temp_0'vec'u64''@0|)) (and (= $t18@0 (|v#$Mutation_11578| _$t0)) (= (ControlFlow 0 19579) 19573)))) |inline$$1_Vector_length'u64'$0$anon0_correct|)))))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_11578| $t4)) 0) (=> (and (and (= (seq.len (|p#$Mutation_11578| $t6)) 0) (= (seq.len (|p#$Mutation_11578| $t8)) 0)) (and (= (seq.len (|p#$Mutation_11578| $t21)) 0) (= (ControlFlow 0 19477) 19579))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 24938) 19477) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
