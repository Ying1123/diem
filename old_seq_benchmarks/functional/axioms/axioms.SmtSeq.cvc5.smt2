(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-logic ALL)
; done setting options


(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_6877 0)) ((($Mutation_6877 (|l#$Mutation_6877| T@$Location) (|p#$Mutation_6877| (Seq Int)) (|v#$Mutation_6877| (Seq Int)) ) ) ))
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
(declare-fun $42_TestAxioms_spec_incr (Int) Int)
(declare-fun |$42_TestAxioms_spec_id'u64'| (Int) Int)
(declare-sort |T@#0| 0)
(declare-fun |$42_TestAxioms_spec_id'#0'| (|T@#0|) |T@#0|)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |axiomsSmtSeqcvc4bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |axiomsSmtSeqcvc4bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |axiomsSmtSeqcvc4bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |axiomsSmtSeqcvc4bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |axiomsSmtSeqcvc4bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |axiomsSmtSeqcvc4bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |axiomsSmtSeqcvc4bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |axiomsSmtSeqcvc4bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |axiomsSmtSeqcvc4bpl.590:13|
 :skolemid |15|
))))
 :qid |axiomsSmtSeqcvc4bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |axiomsSmtSeqcvc4bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |axiomsSmtSeqcvc4bpl.603:17|
 :skolemid |18|
)))))
 :qid |axiomsSmtSeqcvc4bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |axiomsSmtSeqcvc4bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |axiomsSmtSeqcvc4bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |axiomsSmtSeqcvc4bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |axiomsSmtSeqcvc4bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((x Int) ) (!  (=> (|$IsValid'num'| x) (= ($42_TestAxioms_spec_incr x) (+ x 1)))
 :qid |axiomsSmtSeqcvc4bpl.899:15|
 :skolemid |24|
)))
(assert (forall ((x@@0 Int) ) (!  (=> (|$IsValid'u64'| x@@0) (= (|$42_TestAxioms_spec_id'u64'| x@@0) x@@0))
 :qid |axiomsSmtSeqcvc4bpl.902:16|
 :skolemid |25|
)))
(assert (forall ((x@@1 |T@#0|) ) (!  (=> true (= (|$42_TestAxioms_spec_id'#0'| x@@1) x@@1))
 :qid |axiomsSmtSeqcvc4bpl.902:110|
 :skolemid |26|
)))
(assert (forall ((x@@2 Int) ) (! (let (($$res ($42_TestAxioms_spec_incr x@@2)))
(|$IsValid'num'| $$res))
 :qid |axiomsSmtSeqcvc4bpl.906:15|
 :skolemid |27|
)))
(assert (forall ((x@@3 Int) ) (! (let (($$res@@0 (|$42_TestAxioms_spec_id'u64'| x@@3)))
(|$IsValid'u64'| $$res@@0))
 :qid |axiomsSmtSeqcvc4bpl.912:15|
 :skolemid |28|
)))
(assert (forall ((x@@4 |T@#0|) ) (! true
 :qid |axiomsSmtSeqcvc4bpl.918:15|
 :skolemid |29|
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |axiomsSmtSeqcvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |axiomsSmtSeqcvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |axiomsSmtSeqcvc4bpl.245:54|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () |T@#0|)
(push 1)
(set-info :boogie-vc-id $42_TestAxioms_id_T$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 9593) (let ((anon0$1_correct  (=> (= _$t0 _$t0) (=> (and (= _$t0 _$t0) (= (ControlFlow 0 9158) (- 0 9647))) (= _$t0 (|$42_TestAxioms_spec_id'#0'| _$t0))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 9593) 9158) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAxioms_id_u64$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 9672) (let ((anon0$1_correct@@0  (=> (and (and (|$IsValid'u64'| _$t0@@0) (= _$t0@@0 _$t0@@0)) (and (= _$t0@@0 _$t0@@0) (= (ControlFlow 0 9266) (- 0 9726)))) (= _$t0@@0 (|$42_TestAxioms_spec_id'u64'| _$t0@@0)))))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 9672) 9266) anon0$1_correct@@0)))
anon0_correct@@0)))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun _$t0@@1 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestAxioms_incr$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 9743) (let ((anon4_Else_correct  (=> (not $abort_flag@0) (=> (and (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@2) (= (ControlFlow 0 9525) (- 0 9926))) (= inline$$AddU64$0$dst@2 ($42_TestAxioms_spec_incr _$t0@@1))))))
(let ((anon4_Then_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 9491) 9543) anon4_Then_correct) (=> (= (ControlFlow 0 9491) 9525) anon4_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ _$t0@@1 1) $MAX_U64) (= (ControlFlow 0 9489) 9491)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ _$t0@@1 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ _$t0@@1 1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 9437) 9543) anon4_Then_correct) (=> (= (ControlFlow 0 9437) 9525) anon4_Else_correct))))))
(let ((anon0$1_correct@@1  (=> (|$IsValid'u64'| _$t0@@1) (=> (and (= _$t0@@1 _$t0@@1) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 9497) 9489) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 9497) 9437) inline$$AddU64$0$anon3_Else_correct))))))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 9743) 9497) anon0$1_correct@@1)))
anon0_correct@@1))))))))
))
(check-sat)
(pop 1)
; Valid
