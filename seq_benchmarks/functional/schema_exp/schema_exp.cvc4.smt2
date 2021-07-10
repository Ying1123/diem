(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7099 0)) ((($Mutation_7099 (|l#$Mutation_7099| T@$Location) (|p#$Mutation_7099| (Seq Int)) (|v#$Mutation_7099| (Seq Int)) ) ) ))
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
 :qid |schemaexpcvc4bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |schemaexpcvc4bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |schemaexpcvc4bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |schemaexpcvc4bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |schemaexpcvc4bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |schemaexpcvc4bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |schemaexpcvc4bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |schemaexpcvc4bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |schemaexpcvc4bpl.590:13|
 :skolemid |15|
))))
 :qid |schemaexpcvc4bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |schemaexpcvc4bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |schemaexpcvc4bpl.603:17|
 :skolemid |18|
)))))
 :qid |schemaexpcvc4bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |schemaexpcvc4bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |schemaexpcvc4bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |schemaexpcvc4bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |schemaexpcvc4bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |schemaexpcvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |schemaexpcvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |schemaexpcvc4bpl.245:54|
 :skolemid |24|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun inline$$Not$0$dst@1 () Bool)
(declare-fun _$t0 () Bool)
(push 1)
(set-info :boogie-vc-id $42_TestSchemaExp_bar_incorrect$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 10709) (let ((anon4_Else_correct  (=> (and (not inline$$Not$0$dst@1) (= (ControlFlow 0 9567) (- 0 10812))) (not (and _$t0 false)))))
(let ((anon4_Then_correct  (=> (and (and inline$$Not$0$dst@1 (|$IsValid'u64'| 1)) (and (= 1 1) (= (ControlFlow 0 9597) (- 0 10793)))) (and _$t0 false))))
(let ((inline$$Not$0$anon0_correct  (=> (= inline$$Not$0$dst@1  (not _$t0)) (and (=> (= (ControlFlow 0 9541) 9597) anon4_Then_correct) (=> (= (ControlFlow 0 9541) 9567) anon4_Else_correct)))))
(let ((anon0$1_correct  (=> (and (= _$t0 _$t0) (= (ControlFlow 0 9547) 9541)) inline$$Not$0$anon0_correct)))
(let ((anon0_correct  (=> (= (ControlFlow 0 10709) 9547) anon0$1_correct)))
anon0_correct))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 10709)))
(get-value ((ControlFlow 0 9547)))
(get-value ((ControlFlow 0 9541)))
(get-value ((ControlFlow 0 9597)))
(assert (not (= (ControlFlow 0 9597) (- 10793))))
(check-sat)
(pop 1)
; Invalid
(declare-fun $t1@0 () Int)
(declare-fun _$t0@@0 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun inline$$AddU64$1$dst@2 () Int)
(declare-fun $abort_code@2 () Int)
(declare-fun inline$$AddU64$1$dst@0 () Int)
(declare-fun inline$$AddU64$1$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Gt$0$dst@1 () Bool)
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestSchemaExp_baz$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 10840) (let ((anon9_Then_correct true))
(let ((L3_correct  (=> (= $t1@0 $t1@0) (and (=> (= (ControlFlow 0 9958) (- 0 11210)) (=> (> _$t0@@0 10) (= $t1@0 (+ _$t0@@0 2)))) (=> (=> (> _$t0@@0 10) (= $t1@0 (+ _$t0@@0 2))) (=> (= (ControlFlow 0 9958) (- 0 11228)) (=> (not (> _$t0@@0 10)) (= $t1@0 (+ _$t0@@0 1)))))))))
(let ((anon9_Else_correct  (=> (and (and (not $abort_flag@1) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@2)) (and (= $t1@0 inline$$AddU64$1$dst@2) (= (ControlFlow 0 10157) 9958))) L3_correct)))
(let ((inline$$AddU64$1$anon3_Then$1_correct  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@0)) (and (=> (= (ControlFlow 0 10135) 10171) anon9_Then_correct) (=> (= (ControlFlow 0 10135) 10157) anon9_Else_correct))))))
(let ((inline$$AddU64$1$anon3_Then_correct  (=> (and (> (+ _$t0@@0 2) $MAX_U64) (= (ControlFlow 0 10133) 10135)) inline$$AddU64$1$anon3_Then$1_correct)))
(let ((inline$$AddU64$1$anon3_Else_correct  (=> (>= $MAX_U64 (+ _$t0@@0 2)) (=> (and (and (= inline$$AddU64$1$dst@1 (+ _$t0@@0 2)) (= $abort_flag@1 false)) (and (= $abort_code@2 $abort_code@0) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@1))) (and (=> (= (ControlFlow 0 10081) 10171) anon9_Then_correct) (=> (= (ControlFlow 0 10081) 10157) anon9_Else_correct))))))
(let ((anon8_Then_correct  (=> (and inline$$Gt$0$dst@1 (|$IsValid'u64'| 2)) (and (=> (= (ControlFlow 0 10141) 10133) inline$$AddU64$1$anon3_Then_correct) (=> (= (ControlFlow 0 10141) 10081) inline$$AddU64$1$anon3_Else_correct)))))
(let ((anon10_Else_correct  (=> (and (and (not $abort_flag@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@2)) (and (= $t1@0 inline$$AddU64$0$dst@2) (= (ControlFlow 0 9904) 9958))) L3_correct)))
(let ((anon10_Then_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 9882) 9972) anon10_Then_correct) (=> (= (ControlFlow 0 9882) 9904) anon10_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ _$t0@@0 1) $MAX_U64) (= (ControlFlow 0 9880) 9882)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ _$t0@@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ _$t0@@0 1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 9828) 9972) anon10_Then_correct) (=> (= (ControlFlow 0 9828) 9904) anon10_Else_correct))))))
(let ((anon8_Else_correct  (=> (and (not inline$$Gt$0$dst@1) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 9888) 9880) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 9888) 9828) inline$$AddU64$0$anon3_Else_correct)))))
(let ((inline$$Gt$0$anon0_correct  (=> (= inline$$Gt$0$dst@1 (> _$t0@@0 10)) (and (=> (= (ControlFlow 0 9715) 10141) anon8_Then_correct) (=> (= (ControlFlow 0 9715) 9888) anon8_Else_correct)))))
(let ((anon0$1_correct@@0  (=> (and (and (|$IsValid'u64'| _$t0@@0) (= _$t0@@0 _$t0@@0)) (and (|$IsValid'u64'| 10) (= (ControlFlow 0 9721) 9715))) inline$$Gt$0$anon0_correct)))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 10840) 9721) anon0$1_correct@@0)))
anon0_correct@@0)))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun inline$$AddU64$0$dst@2@@0 () Int)
(declare-fun _$t0@@1 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun inline$$AddU64$0$dst@0@@0 () Int)
(declare-fun inline$$AddU64$0$dst@1@@0 () Int)
(declare-fun $abort_code@0@@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestSchemaExp_baz_incorrect$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 11256) (let ((anon4_Else_correct@@0  (=> (and (not $abort_flag@0@@0) (= inline$$AddU64$0$dst@2@@0 inline$$AddU64$0$dst@2@@0)) (and (=> (= (ControlFlow 0 10460) (- 0 11439)) (=> (> _$t0@@1 10) (= inline$$AddU64$0$dst@2@@0 (+ _$t0@@1 2)))) (=> (=> (> _$t0@@1 10) (= inline$$AddU64$0$dst@2@@0 (+ _$t0@@1 2))) (=> (= (ControlFlow 0 10460) (- 0 11457)) (=> (<= _$t0@@1 10) (= inline$$AddU64$0$dst@2@@0 (+ _$t0@@1 1)))))))))
(let ((anon4_Then_correct@@0 true))
(let ((inline$$AddU64$0$anon3_Then$1_correct@@0  (=> (= $abort_flag@0@@0 true) (=> (and (= $abort_code@1@@0 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2@@0 inline$$AddU64$0$dst@0@@0)) (and (=> (= (ControlFlow 0 10396) 10478) anon4_Then_correct@@0) (=> (= (ControlFlow 0 10396) 10460) anon4_Else_correct@@0))))))
(let ((inline$$AddU64$0$anon3_Then_correct@@0  (=> (and (> (+ _$t0@@1 1) $MAX_U64) (= (ControlFlow 0 10394) 10396)) inline$$AddU64$0$anon3_Then$1_correct@@0)))
(let ((inline$$AddU64$0$anon3_Else_correct@@0  (=> (>= $MAX_U64 (+ _$t0@@1 1)) (=> (and (and (= inline$$AddU64$0$dst@1@@0 (+ _$t0@@1 1)) (= $abort_flag@0@@0 false)) (and (= $abort_code@1@@0 $abort_code@0@@0) (= inline$$AddU64$0$dst@2@@0 inline$$AddU64$0$dst@1@@0))) (and (=> (= (ControlFlow 0 10342) 10478) anon4_Then_correct@@0) (=> (= (ControlFlow 0 10342) 10460) anon4_Else_correct@@0))))))
(let ((anon0$1_correct@@1  (=> (|$IsValid'u64'| _$t0@@1) (=> (and (= _$t0@@1 _$t0@@1) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 10402) 10394) inline$$AddU64$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 10402) 10342) inline$$AddU64$0$anon3_Else_correct@@0))))))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 11256) 10402) anon0$1_correct@@1)))
anon0_correct@@1))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 11256)))
(get-value ((ControlFlow 0 10402)))
(get-value ((ControlFlow 0 10342)))
(get-value ((ControlFlow 0 10460)))
(assert (not (= (ControlFlow 0 10460) (- 11439))))
(check-sat)
(pop 1)
; Invalid
(declare-fun inline$$Not$0$dst@1@@0 () Bool)
(declare-fun _$t0@@2 () Bool)
(push 1)
(set-info :boogie-vc-id $42_TestSchemaExp_foo$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 11482) (let ((anon4_Else_correct@@1  (=> (not inline$$Not$0$dst@1@@0) (and (=> (= (ControlFlow 0 10616) (- 0 11594)) (not (and _$t0@@2 false))) (=> (not (and _$t0@@2 false)) (=> (= (ControlFlow 0 10616) (- 0 11604)) (not (and (not _$t0@@2) true))))))))
(let ((anon4_Then_correct@@1  (=> (and (and inline$$Not$0$dst@1@@0 (|$IsValid'u64'| 1)) (and (= 1 1) (= (ControlFlow 0 10656) (- 0 11566)))) (or (and _$t0@@2 false) (and (not _$t0@@2) true)))))
(let ((inline$$Not$0$anon0_correct@@0  (=> (= inline$$Not$0$dst@1@@0  (not _$t0@@2)) (and (=> (= (ControlFlow 0 10578) 10656) anon4_Then_correct@@1) (=> (= (ControlFlow 0 10578) 10616) anon4_Else_correct@@1)))))
(let ((anon0$1_correct@@2  (=> (and (= _$t0@@2 _$t0@@2) (= (ControlFlow 0 10584) 10578)) inline$$Not$0$anon0_correct@@0)))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 11482) 10584) anon0$1_correct@@2)))
anon0_correct@@2))))))
))
(check-sat)
(pop 1)
; Valid
