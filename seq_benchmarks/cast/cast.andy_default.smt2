(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7182 0)) ((($Mutation_7182 (|l#$Mutation_7182| T@$Location) (|p#$Mutation_7182| (Seq Int)) (|v#$Mutation_7182| (Seq Int)) ) ) ))
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
 :qid |castandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |castandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |castandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |castandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |castandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |castandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |castandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |castandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |castandybpl.590:13|
 :skolemid |15|
))))
 :qid |castandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |castandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |castandybpl.603:17|
 :skolemid |18|
)))))
 :qid |castandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |castandybpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |castandybpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |castandybpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |castandybpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |castandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |castandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |castandybpl.245:54|
 :skolemid |24|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$CastU64$0$dst@1 () Int)
(declare-fun _$t0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$CastU64$0$dst@0 () Int)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestCast_aborting_u64_cast$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 11030) (let ((anon4_Else_correct  (=> (and (not $abort_flag@0) (= inline$$CastU64$0$dst@1 inline$$CastU64$0$dst@1)) (and (=> (= (ControlFlow 0 9743) (- 0 11196)) (not false)) (=> (not false) (=> (= (ControlFlow 0 9743) (- 0 11203)) (not (> _$t0 18446744073709551615))))))))
(let ((anon4_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 9773) (- 0 11168))) (or false (> _$t0 18446744073709551615))))))
(let ((inline$$CastU64$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$CastU64$0$dst@1 inline$$CastU64$0$dst@0)) (and (=> (= (ControlFlow 0 9703) 9773) anon4_Then_correct) (=> (= (ControlFlow 0 9703) 9743) anon4_Else_correct))))))
(let ((inline$$CastU64$0$anon3_Then_correct  (=> (and (> _$t0 $MAX_U64) (= (ControlFlow 0 9701) 9703)) inline$$CastU64$0$anon3_Then$1_correct)))
(let ((inline$$CastU64$0$anon3_Else_correct  (=> (and (and (>= $MAX_U64 _$t0) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$CastU64$0$dst@1 _$t0))) (and (=> (= (ControlFlow 0 9653) 9773) anon4_Then_correct) (=> (= (ControlFlow 0 9653) 9743) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (and (|$IsValid'u128'| _$t0) (= _$t0 _$t0)) (and (=> (= (ControlFlow 0 9709) 9701) inline$$CastU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 9709) 9653) inline$$CastU64$0$anon3_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 11030) 9709) anon0$1_correct)))
anon0_correct))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun inline$$CastU64$0$dst@1@@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun inline$$CastU64$0$dst@0@@0 () Int)
(declare-fun _$t0@@0 () Int)
(declare-fun $abort_code@0@@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestCast_aborting_u64_cast_incorrect$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 11233) (let ((anon4_Else_correct@@0  (=> (not $abort_flag@0@@0) (=> (and (= inline$$CastU64$0$dst@1@@0 inline$$CastU64$0$dst@1@@0) (= (ControlFlow 0 9992) (- 0 11392))) (not false)))))
(let ((anon4_Then_correct@@0  (=> $abort_flag@0@@0 (=> (and (= $abort_code@1@@0 $abort_code@1@@0) (= (ControlFlow 0 10014) (- 0 11371))) false))))
(let ((inline$$CastU64$0$anon3_Then$1_correct@@0  (=> (= $abort_flag@0@@0 true) (=> (and (= $abort_code@1@@0 $EXEC_FAILURE_CODE) (= inline$$CastU64$0$dst@1@@0 inline$$CastU64$0$dst@0@@0)) (and (=> (= (ControlFlow 0 9962) 10014) anon4_Then_correct@@0) (=> (= (ControlFlow 0 9962) 9992) anon4_Else_correct@@0))))))
(let ((inline$$CastU64$0$anon3_Then_correct@@0  (=> (and (> _$t0@@0 $MAX_U64) (= (ControlFlow 0 9960) 9962)) inline$$CastU64$0$anon3_Then$1_correct@@0)))
(let ((inline$$CastU64$0$anon3_Else_correct@@0  (=> (and (and (>= $MAX_U64 _$t0@@0) (= $abort_flag@0@@0 false)) (and (= $abort_code@1@@0 $abort_code@0@@0) (= inline$$CastU64$0$dst@1@@0 _$t0@@0))) (and (=> (= (ControlFlow 0 9912) 10014) anon4_Then_correct@@0) (=> (= (ControlFlow 0 9912) 9992) anon4_Else_correct@@0)))))
(let ((anon0$1_correct@@0  (=> (and (|$IsValid'u128'| _$t0@@0) (= _$t0@@0 _$t0@@0)) (and (=> (= (ControlFlow 0 9968) 9960) inline$$CastU64$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 9968) 9912) inline$$CastU64$0$anon3_Else_correct@@0)))))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 11233) 9968) anon0$1_correct@@0)))
anon0_correct@@0))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 11233)))
(get-value ((ControlFlow 0 9968)))
(get-value ((ControlFlow 0 9960)))
(get-value ((ControlFlow 0 9962)))
(get-value ((ControlFlow 0 10014)))
(assert (not (= (ControlFlow 0 10014) (- 11371))))
(check-sat)
(pop 1)
; Invalid
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun inline$$CastU8$0$dst@1 () Int)
(declare-fun _$t0@@1 () Int)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun inline$$CastU8$0$dst@0 () Int)
(declare-fun $abort_code@0@@1 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestCast_aborting_u8_cast$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 11408) (let ((anon4_Else_correct@@1  (=> (not $abort_flag@0@@1) (=> (and (= inline$$CastU8$0$dst@1 inline$$CastU8$0$dst@1) (= (ControlFlow 0 10237) (- 0 11570))) (not (> _$t0@@1 255))))))
(let ((anon4_Then_correct@@1  (=> $abort_flag@0@@1 (=> (and (= $abort_code@1@@1 $abort_code@1@@1) (= (ControlFlow 0 10263) (- 0 11546))) (> _$t0@@1 255)))))
(let ((inline$$CastU8$0$anon3_Then$1_correct  (=> (= $abort_flag@0@@1 true) (=> (and (= $abort_code@1@@1 $EXEC_FAILURE_CODE) (= inline$$CastU8$0$dst@1 inline$$CastU8$0$dst@0)) (and (=> (= (ControlFlow 0 10203) 10263) anon4_Then_correct@@1) (=> (= (ControlFlow 0 10203) 10237) anon4_Else_correct@@1))))))
(let ((inline$$CastU8$0$anon3_Then_correct  (=> (and (> _$t0@@1 $MAX_U8) (= (ControlFlow 0 10201) 10203)) inline$$CastU8$0$anon3_Then$1_correct)))
(let ((inline$$CastU8$0$anon3_Else_correct  (=> (and (and (>= $MAX_U8 _$t0@@1) (= $abort_flag@0@@1 false)) (and (= $abort_code@1@@1 $abort_code@0@@1) (= inline$$CastU8$0$dst@1 _$t0@@1))) (and (=> (= (ControlFlow 0 10153) 10263) anon4_Then_correct@@1) (=> (= (ControlFlow 0 10153) 10237) anon4_Else_correct@@1)))))
(let ((anon0$1_correct@@1  (=> (and (|$IsValid'u64'| _$t0@@1) (= _$t0@@1 _$t0@@1)) (and (=> (= (ControlFlow 0 10209) 10201) inline$$CastU8$0$anon3_Then_correct) (=> (= (ControlFlow 0 10209) 10153) inline$$CastU8$0$anon3_Else_correct)))))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 11408) 10209) anon0$1_correct@@1)))
anon0_correct@@1))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun inline$$CastU8$0$dst@1@@0 () Int)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun inline$$CastU8$0$dst@0@@0 () Int)
(declare-fun _$t0@@2 () Int)
(declare-fun $abort_code@0@@2 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestCast_aborting_u8_cast_incorrect$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 11588) (let ((anon4_Else_correct@@2  (=> (not $abort_flag@0@@2) (=> (and (= inline$$CastU8$0$dst@1@@0 inline$$CastU8$0$dst@1@@0) (= (ControlFlow 0 10482) (- 0 11747))) (not false)))))
(let ((anon4_Then_correct@@2  (=> $abort_flag@0@@2 (=> (and (= $abort_code@1@@2 $abort_code@1@@2) (= (ControlFlow 0 10504) (- 0 11726))) false))))
(let ((inline$$CastU8$0$anon3_Then$1_correct@@0  (=> (= $abort_flag@0@@2 true) (=> (and (= $abort_code@1@@2 $EXEC_FAILURE_CODE) (= inline$$CastU8$0$dst@1@@0 inline$$CastU8$0$dst@0@@0)) (and (=> (= (ControlFlow 0 10452) 10504) anon4_Then_correct@@2) (=> (= (ControlFlow 0 10452) 10482) anon4_Else_correct@@2))))))
(let ((inline$$CastU8$0$anon3_Then_correct@@0  (=> (and (> _$t0@@2 $MAX_U8) (= (ControlFlow 0 10450) 10452)) inline$$CastU8$0$anon3_Then$1_correct@@0)))
(let ((inline$$CastU8$0$anon3_Else_correct@@0  (=> (and (and (>= $MAX_U8 _$t0@@2) (= $abort_flag@0@@2 false)) (and (= $abort_code@1@@2 $abort_code@0@@2) (= inline$$CastU8$0$dst@1@@0 _$t0@@2))) (and (=> (= (ControlFlow 0 10402) 10504) anon4_Then_correct@@2) (=> (= (ControlFlow 0 10402) 10482) anon4_Else_correct@@2)))))
(let ((anon0$1_correct@@2  (=> (and (|$IsValid'u64'| _$t0@@2) (= _$t0@@2 _$t0@@2)) (and (=> (= (ControlFlow 0 10458) 10450) inline$$CastU8$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 10458) 10402) inline$$CastU8$0$anon3_Else_correct@@0)))))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 11588) 10458) anon0$1_correct@@2)))
anon0_correct@@2))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 11588)))
(get-value ((ControlFlow 0 10458)))
(get-value ((ControlFlow 0 10450)))
(get-value ((ControlFlow 0 10452)))
(get-value ((ControlFlow 0 10504)))
(assert (not (= (ControlFlow 0 10504) (- 11726))))
(check-sat)
(pop 1)
; Invalid
(push 1)
(set-info :boogie-vc-id $42_TestCast_u64_cast$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 11763) true)
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun inline$$CastU64$0$dst@1@@1 () Int)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun inline$$CastU64$0$dst@0@@1 () Int)
(declare-fun _$t0@@3 () Int)
(declare-fun $abort_code@0@@3 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestCast_u8_cast_incorrect$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 11925) (let ((anon4_Else_correct@@3  (=> (not $abort_flag@0@@3) (=> (and (= inline$$CastU64$0$dst@1@@1 inline$$CastU64$0$dst@1@@1) (= (ControlFlow 0 10954) (- 0 12084))) (not false)))))
(let ((anon4_Then_correct@@3  (=> $abort_flag@0@@3 (=> (and (= $abort_code@1@@3 $abort_code@1@@3) (= (ControlFlow 0 10976) (- 0 12063))) false))))
(let ((inline$$CastU64$0$anon3_Then$1_correct@@1  (=> (= $abort_flag@0@@3 true) (=> (and (= $abort_code@1@@3 $EXEC_FAILURE_CODE) (= inline$$CastU64$0$dst@1@@1 inline$$CastU64$0$dst@0@@1)) (and (=> (= (ControlFlow 0 10924) 10976) anon4_Then_correct@@3) (=> (= (ControlFlow 0 10924) 10954) anon4_Else_correct@@3))))))
(let ((inline$$CastU64$0$anon3_Then_correct@@1  (=> (and (> _$t0@@3 $MAX_U64) (= (ControlFlow 0 10922) 10924)) inline$$CastU64$0$anon3_Then$1_correct@@1)))
(let ((inline$$CastU64$0$anon3_Else_correct@@1  (=> (and (and (>= $MAX_U64 _$t0@@3) (= $abort_flag@0@@3 false)) (and (= $abort_code@1@@3 $abort_code@0@@3) (= inline$$CastU64$0$dst@1@@1 _$t0@@3))) (and (=> (= (ControlFlow 0 10874) 10976) anon4_Then_correct@@3) (=> (= (ControlFlow 0 10874) 10954) anon4_Else_correct@@3)))))
(let ((anon0$1_correct@@3  (=> (and (|$IsValid'u8'| _$t0@@3) (= _$t0@@3 _$t0@@3)) (and (=> (= (ControlFlow 0 10930) 10922) inline$$CastU64$0$anon3_Then_correct@@1) (=> (= (ControlFlow 0 10930) 10874) inline$$CastU64$0$anon3_Else_correct@@1)))))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 11925) 10930) anon0$1_correct@@3)))
anon0_correct@@3))))))))
))
(check-sat)
(pop 1)
; Valid
