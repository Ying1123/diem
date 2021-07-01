(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8514 0)) ((($Mutation_8514 (|l#$Mutation_8514| T@$Location) (|p#$Mutation_8514| (Seq Int)) (|v#$Mutation_8514| (Seq Int)) ) ) ))
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
 :qid |naivepermbpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |naivepermbpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |naivepermbpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |naivepermbpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |naivepermbpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |naivepermbpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |naivepermbpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |naivepermbpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u64'| (seq.nth v@@4 i@@0)))
 :qid |naivepermbpl.590:13|
 :skolemid |15|
))))
 :qid |naivepermbpl.588:29|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |naivepermbpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |naivepermbpl.603:17|
 :skolemid |18|
)))))
 :qid |naivepermbpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |naivepermbpl.770:13|
 :skolemid |20|
))))
 :qid |naivepermbpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |naivepermbpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |naivepermbpl.783:17|
 :skolemid |23|
)))))
 :qid |naivepermbpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |naivepermbpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |naivepermbpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |naivepermbpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |naivepermbpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |naivepermbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |naivepermbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@8))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select_[$int]$bool| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |naivepermbpl.245:54|
 :skolemid |32|
 :pattern ( (|Select_[$int]$bool| (|lambda#0| |l#0|) i@@7))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_8514)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t9@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun $t8@1 () T@$Mutation_8514)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun $t13@0 () (Seq Int))
(declare-fun $t3@0 () (Seq Int))
(declare-fun |$temp_0'vec'u64''@3| () (Seq Int))
(declare-fun _$t0 () T@$Mutation_8514)
(declare-fun |inline$$1_Vector_length'u64'$0$l@1| () Int)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t8@0 () T@$Mutation_8514)
(declare-fun |$temp_0'vec'u64''@1| () (Seq Int))
(declare-fun $t11@0 () Int)
(declare-fun $t12@0 () Int)
(declare-fun |$temp_0'vec'u64''@2| () (Seq Int))
(declare-fun $t5@0 () (Seq Int))
(declare-fun |$temp_0'vec'u64''@0| () (Seq Int))
(declare-fun $t2 () T@$Mutation_8514)
(declare-fun $t8 () T@$Mutation_8514)
(push 1)
(set-info :boogie-vc-id $42_TestNaiveSort_verify_sort$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 13208) (let ((L6_correct  (=> (= (ControlFlow 0 13021) (- 0 13919)) false)))
(let ((anon20_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 13011) 13021)) L6_correct))))
(let ((anon20_Else_correct  (=> (and (not $abort_flag@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@2)) (and (=> (= (ControlFlow 0 12997) (- 0 13866)) (= (seq.len (|v#$Mutation_8514| |inline$$1_Vector_push_back'u64'$0$m'@1|)) inline$$AddU64$0$dst@2)) (=> (= (seq.len (|v#$Mutation_8514| |inline$$1_Vector_push_back'u64'$0$m'@1|)) inline$$AddU64$0$dst@2) (=> (= (ControlFlow 0 12997) (- 0 13877)) (let (($range_0 ($Range 0 (seq.len (|v#$Mutation_8514| |inline$$1_Vector_push_back'u64'$0$m'@1|)))))
(forall (($i_1 Int) ) (!  (=> ($InRange $range_0 $i_1) (let ((k $i_1))
(= (seq.nth (|v#$Mutation_8514| |inline$$1_Vector_push_back'u64'$0$m'@1|) k) k)))
 :qid |naivepermbpl.1287:70|
 :skolemid |31|
)))))))))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 12922) 13011) anon20_Then_correct) (=> (= (ControlFlow 0 12922) 12997) anon20_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t9@0 1) $MAX_U64) (= (ControlFlow 0 12920) 12922)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t9@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t9@0 1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 12868) 13011) anon20_Then_correct) (=> (= (ControlFlow 0 12868) 12997) anon20_Else_correct))))))
(let ((anon19_Else_correct  (=> (and (not false) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 12928) 12920) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 12928) 12868) inline$$AddU64$0$anon3_Else_correct)))))
(let ((anon19_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_8514 (|l#$Mutation_8514| $t8@1) (|p#$Mutation_8514| $t8@1) (seq.++ (|v#$Mutation_8514| $t8@1) (seq.unit $t9@0)))) (and (=> (= (ControlFlow 0 12753) 13035) anon19_Then_correct) (=> (= (ControlFlow 0 12753) 12928) anon19_Else_correct)))))
(let ((anon18_Then_correct  (=> (and inline$$Lt$0$dst@1 (= (ControlFlow 0 12759) 12753)) |inline$$1_Vector_push_back'u64'$0$anon0_correct|)))
(let ((anon18_Else_correct  (=> (not inline$$Lt$0$dst@1) (=> (and (= $t13@0 (|v#$Mutation_8514| $t8@1)) (= $t3@0 (|v#$Mutation_8514| $t8@1))) (=> (and (and (= $t13@0 $t13@0) (= |$temp_0'vec'u64''@3| (|v#$Mutation_8514| _$t0))) (and (= |$temp_0'vec'u64''@3| |$temp_0'vec'u64''@3|) (= (ControlFlow 0 12698) (- 0 13713)))) (not false))))))
(let ((anon17_Else$1_correct  (and (=> (= (ControlFlow 0 12658) 12759) anon18_Then_correct) (=> (= (ControlFlow 0 12658) 12698) anon18_Else_correct))))
(let ((inline$$Lt$0$anon0_correct  (=> (and (= inline$$Lt$0$dst@1 (< $t9@0 |inline$$1_Vector_length'u64'$0$l@1|)) (= (ControlFlow 0 12648) 12658)) anon17_Else$1_correct)))
(let ((anon17_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t8@0 ($Mutation_8514 ($Local 3) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (=> (and (and (= |$temp_0'vec'u64''@1| (|v#$Mutation_8514| $t8@0)) (= |$temp_0'vec'u64''@1| |$temp_0'vec'u64''@1|)) (and (|$IsValid'u64'| 0) (= 0 0))) (and (=> (= (ControlFlow 0 12654) (- 0 13500)) (= (seq.len (|v#$Mutation_8514| $t8@0)) 0)) (=> (= (seq.len (|v#$Mutation_8514| $t8@0)) 0) (and (=> (= (ControlFlow 0 12654) (- 0 13511)) (let (($range_0@@0 ($Range 0 (seq.len (|v#$Mutation_8514| $t8@0)))))
(forall (($i_1@@0 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@0) (let ((k@@0 $i_1@@0))
(= (seq.nth (|v#$Mutation_8514| $t8@0) k@@0) k@@0)))
 :qid |naivepermbpl.1172:70|
 :skolemid |29|
)))) (=> (let (($range_0@@0 ($Range 0 (seq.len (|v#$Mutation_8514| $t8@0)))))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@0 $i_1@@1) (let ((k@@0 $i_1@@1))
(= (seq.nth (|v#$Mutation_8514| $t8@0) k@@0) k@@0)))
 :qid |naivepermbpl.1172:70|
 :skolemid |29|
))) (=> (|$IsValid'u64'| $t9@0) (=> (and (and (and (|$IsValid'u64'| $t11@0) (|$IsValid'u64'| $t12@0)) (and (= $t8@1 ($Mutation_8514 (|l#$Mutation_8514| $t8@0) (|p#$Mutation_8514| $t8@0) |$temp_0'vec'u64''@2|)) (|$IsValid'vec'u64''| (|v#$Mutation_8514| $t8@1)))) (and (and (not false) (= (seq.len (|v#$Mutation_8514| $t8@1)) $t9@0)) (and (let (($range_0@@1 ($Range 0 (seq.len (|v#$Mutation_8514| $t8@1)))))
(forall (($i_1@@2 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@2) (let ((k@@1 $i_1@@2))
(= (seq.nth (|v#$Mutation_8514| $t8@1) k@@1) k@@1)))
 :qid |naivepermbpl.1205:75|
 :skolemid |30|
))) (= (ControlFlow 0 12654) 12648)))) inline$$Lt$0$anon0_correct)))))))))))
(let ((anon17_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 12412) 13049) anon17_Then_correct) (=> (= (ControlFlow 0 12412) 12654) anon17_Else_correct)))))
(let ((anon16_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_length'u64'$0$l@1| |inline$$1_Vector_length'u64'$0$l@1|)) (and (= (seq.len (|v#$Mutation_8514| _$t0)) 2) (= (ControlFlow 0 12418) 12412))) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon16_Then_correct true))
(let ((|inline$$1_Vector_length'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_length'u64'$0$l@1| (seq.len $t5@0)) (and (=> (= (ControlFlow 0 12358) 13063) anon16_Then_correct) (=> (= (ControlFlow 0 12358) 12418) anon16_Else_correct)))))
(let ((anon0$1_correct  (=> (and (= (|l#$Mutation_8514| _$t0) ($Param 0)) (|$IsValid'vec'u64''| (|v#$Mutation_8514| _$t0))) (=> (and (and (= |$temp_0'vec'u64''@0| (|v#$Mutation_8514| _$t0)) (= |$temp_0'vec'u64''@0| |$temp_0'vec'u64''@0|)) (and (= $t5@0 (|v#$Mutation_8514| _$t0)) (= (ControlFlow 0 12364) 12358))) |inline$$1_Vector_length'u64'$0$anon0_correct|))))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_8514| $t2)) 0) (=> (and (= (seq.len (|p#$Mutation_8514| $t8)) 0) (= (ControlFlow 0 12292) 12364)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 13208) 12292) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))
))
(check-sat)
