(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-logic ALL)
; done setting options


(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7407 0)) ((($Mutation_7407 (|l#$Mutation_7407| T@$Location) (|p#$Mutation_7407| (Seq Int)) (|v#$Mutation_7407| (Seq Int)) ) ) ))
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
 :qid |returnvaluesandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |returnvaluesandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |returnvaluesandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |returnvaluesandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |returnvaluesandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |returnvaluesandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |returnvaluesandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |returnvaluesandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |returnvaluesandybpl.590:13|
 :skolemid |15|
))))
 :qid |returnvaluesandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |returnvaluesandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |returnvaluesandybpl.603:17|
 :skolemid |18|
)))))
 :qid |returnvaluesandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |returnvaluesandybpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |returnvaluesandybpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |returnvaluesandybpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |returnvaluesandybpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |returnvaluesandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |returnvaluesandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |returnvaluesandybpl.245:54|
 :skolemid |24|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $42_TestReturnValue_one_two$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 11255) (let ((anon0$1_correct  (=> (and (and (|$IsValid'u64'| 1) (|$IsValid'u64'| 2)) (and (= 1 1) (= 2 2))) (and (=> (= (ControlFlow 0 10037) (- 0 11313)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 10037) (- 0 11320)) (= 1 1)) (=> (= 1 1) (=> (= (ControlFlow 0 10037) (- 0 11328)) (= 2 2)))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 11255) 10037) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $42_TestReturnValue_one_two_incorrect$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 11354) true)
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $42_TestReturnValue_one_two_wrapper$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 11422) (let ((anon4_Else_correct  (=> (not false) (=> (and (= 1 1) (= 2 2)) (and (=> (= (ControlFlow 0 10338) (- 0 11554)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 10338) (- 0 11561)) (= 1 1)) (=> (= 1 1) (=> (= (ControlFlow 0 10338) (- 0 11569)) (= 2 2))))))))))
(let ((anon4_Then_correct true))
(let ((inline$$42_TestReturnValue_one_two$0$anon0_correct  (=> (and (and (|$IsValid'u64'| 1) (|$IsValid'u64'| 2)) (and (= 1 1) (= 2 2))) (and (=> (= (ControlFlow 0 10282) 10360) anon4_Then_correct) (=> (= (ControlFlow 0 10282) 10338) anon4_Else_correct)))))
(let ((anon0$1_correct@@0  (=> (= (ControlFlow 0 10290) 10282) inline$$42_TestReturnValue_one_two$0$anon0_correct)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 11422) 10290) anon0$1_correct@@0)))
anon0_correct@@0))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $42_TestReturnValue_one_two_wrapper_incorrect$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 11588) (let ((anon4_Else_correct@@0  (=> (not false) (=> (and (= 1 1) (= 2 2)) (and (=> (= (ControlFlow 0 10597) (- 0 11724)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 10597) (- 0 11731)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 10597) (- 0 11738)) (= 1 2)) (=> (= 1 2) (and (=> (= (ControlFlow 0 10597) (- 0 11746)) (= 2 1)) (=> (= 2 1) (and (=> (= (ControlFlow 0 10597) (- 0 11754)) (= 1 2)) (=> (= 1 2) (=> (= (ControlFlow 0 10597) (- 0 11762)) (= 2 1))))))))))))))))
(let ((anon4_Then_correct@@0 true))
(let ((inline$$42_TestReturnValue_one_two$0$anon0_correct@@0  (=> (and (and (|$IsValid'u64'| 1) (|$IsValid'u64'| 2)) (and (= 1 1) (= 2 2))) (and (=> (= (ControlFlow 0 10519) 10623) anon4_Then_correct@@0) (=> (= (ControlFlow 0 10519) 10597) anon4_Else_correct@@0)))))
(let ((anon0$1_correct@@1  (=> (= (ControlFlow 0 10527) 10519) inline$$42_TestReturnValue_one_two$0$anon0_correct@@0)))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 11588) 10527) anon0$1_correct@@1)))
anon0_correct@@1))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 11588)))
(get-value ((ControlFlow 0 10527)))
(get-value ((ControlFlow 0 10519)))
(get-value ((ControlFlow 0 10597)))
(assert (not (= (ControlFlow 0 10597) (- 11738))))
(check-sat)
(pop 1)
; Invalid
(push 1)
(set-info :boogie-vc-id $42_TestReturnValue_true_one$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 11777) (let ((anon0$1_correct@@2  (=> (|$IsValid'u64'| 1) (=> (and (= true true) (= 1 1)) (and (=> (= (ControlFlow 0 10731) (- 0 11835)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 10731) (- 0 11842)) (= true true)) (=> (= true true) (=> (= (ControlFlow 0 10731) (- 0 11850)) (= 1 1))))))))))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 11777) 10731) anon0$1_correct@@2)))
anon0_correct@@2)))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $42_TestReturnValue_true_one_wrapper$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 11868) (let ((anon4_Else_correct@@1  (=> (not false) (=> (and (= true true) (= 1 1)) (and (=> (= (ControlFlow 0 10940) (- 0 11995)) (= true true)) (=> (= true true) (=> (= (ControlFlow 0 10940) (- 0 12003)) (= 1 1))))))))
(let ((anon4_Then_correct@@1 true))
(let ((inline$$42_TestReturnValue_true_one$0$anon0_correct  (=> (|$IsValid'u64'| 1) (=> (and (= true true) (= 1 1)) (and (=> (= (ControlFlow 0 10890) 10958) anon4_Then_correct@@1) (=> (= (ControlFlow 0 10890) 10940) anon4_Else_correct@@1))))))
(let ((anon0$1_correct@@3  (=> (= (ControlFlow 0 10898) 10890) inline$$42_TestReturnValue_true_one$0$anon0_correct)))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 11868) 10898) anon0$1_correct@@3)))
anon0_correct@@3))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $42_TestReturnValue_true_one_wrapper_incorrect$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 12022) (let ((anon4_Else_correct@@2  (=> (and (and (not false) (= true true)) (and (= 1 1) (= (ControlFlow 0 11187) (- 0 12149)))) false)))
(let ((anon4_Then_correct@@2 true))
(let ((inline$$42_TestReturnValue_true_one$0$anon0_correct@@0  (=> (|$IsValid'u64'| 1) (=> (and (= true true) (= 1 1)) (and (=> (= (ControlFlow 0 11117) 11205) anon4_Then_correct@@2) (=> (= (ControlFlow 0 11117) 11187) anon4_Else_correct@@2))))))
(let ((anon0$1_correct@@4  (=> (= (ControlFlow 0 11125) 11117) inline$$42_TestReturnValue_true_one$0$anon0_correct@@0)))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 12022) 11125) anon0$1_correct@@4)))
anon0_correct@@4))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 12022)))
(get-value ((ControlFlow 0 11125)))
(get-value ((ControlFlow 0 11117)))
(get-value ((ControlFlow 0 11187)))
(assert (not (= (ControlFlow 0 11187) (- 12149))))
(check-sat)
(pop 1)
; Invalid
