(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-logic ALL)
; done setting options


(declare-datatypes ((T@$42_TestDefines_R 0)) ((($42_TestDefines_R (|$x#$42_TestDefines_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestDefines_R| 0)
(declare-datatypes ((T@$Memory_9078 0)) ((($Memory_9078 (|domain#$Memory_9078| |T@[Int]Bool|) (|contents#$Memory_9078| |T@[Int]$42_TestDefines_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7423 0)) ((($Mutation_7423 (|l#$Mutation_7423| T@$Location) (|p#$Mutation_7423| (Seq Int)) (|v#$Mutation_7423| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestDefines_R'| (T@$42_TestDefines_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |definesandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |definesandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |definesandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |definesandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |definesandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |definesandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |definesandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |definesandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |definesandybpl.590:13|
 :skolemid |15|
))))
 :qid |definesandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |definesandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |definesandybpl.603:17|
 :skolemid |18|
)))))
 :qid |definesandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |definesandybpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |definesandybpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |definesandybpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |definesandybpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestDefines_R) ) (! (= (|$IsValid'$42_TestDefines_R'| s) (|$IsValid'u64'| (|$x#$42_TestDefines_R| s)))
 :qid |definesandybpl.926:38|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestDefines_R'| s))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |definesandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |definesandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |definesandybpl.245:54|
 :skolemid |26|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestDefines_add$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 11478) (let ((anon4_Else_correct  (=> (and (not $abort_flag@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@2)) (and (=> (= (ControlFlow 0 10436) (- 0 11675)) (not (not (and (>= (+ _$t0 _$t1) 0) (<= (+ _$t0 _$t1) 18446744073709551615))))) (=> (not (not (and (>= (+ _$t0 _$t1) 0) (<= (+ _$t0 _$t1) 18446744073709551615)))) (=> (= (ControlFlow 0 10436) (- 0 11692)) (= inline$$AddU64$0$dst@2 (+ _$t0 _$t1))))))))
(let ((anon4_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 10470) (- 0 11647))) (not (and (>= (+ _$t0 _$t1) 0) (<= (+ _$t0 _$t1) 18446744073709551615)))))))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 10384) 10470) anon4_Then_correct) (=> (= (ControlFlow 0 10384) 10436) anon4_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ _$t0 _$t1) $MAX_U64) (= (ControlFlow 0 10382) 10384)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ _$t0 _$t1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ _$t0 _$t1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 10330) 10470) anon4_Then_correct) (=> (= (ControlFlow 0 10330) 10436) anon4_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'u64'| _$t0) (|$IsValid'u64'| _$t1)) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (=> (= (ControlFlow 0 10390) 10382) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 10390) 10330) inline$$AddU64$0$anon3_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 11478) 10390) anon0$1_correct)))
anon0_correct))))))))
))
(check-sat)
(pop 1)
; Valid
(push 1)
(set-info :boogie-vc-id $42_TestDefines_add_as_spec_fun$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 11725) true)
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun inline$$AddU64$0$dst@2@@0 () Int)
(declare-fun _$t0@@0 () Int)
(declare-fun _$t1@@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun inline$$AddU64$0$dst@0@@0 () Int)
(declare-fun inline$$AddU64$0$dst@1@@0 () Int)
(declare-fun $abort_code@0@@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestDefines_add_fun$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 11913) (let ((anon4_Else_correct@@0  (=> (not $abort_flag@0@@0) (=> (and (= inline$$AddU64$0$dst@2@@0 inline$$AddU64$0$dst@2@@0) (= (ControlFlow 0 11000) (- 0 12095))) (= inline$$AddU64$0$dst@2@@0 (+ _$t0@@0 _$t1@@0))))))
(let ((anon4_Then_correct@@0 true))
(let ((inline$$AddU64$0$anon3_Then$1_correct@@0  (=> (= $abort_flag@0@@0 true) (=> (and (= $abort_code@1@@0 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2@@0 inline$$AddU64$0$dst@0@@0)) (and (=> (= (ControlFlow 0 10966) 11018) anon4_Then_correct@@0) (=> (= (ControlFlow 0 10966) 11000) anon4_Else_correct@@0))))))
(let ((inline$$AddU64$0$anon3_Then_correct@@0  (=> (and (> (+ _$t0@@0 _$t1@@0) $MAX_U64) (= (ControlFlow 0 10964) 10966)) inline$$AddU64$0$anon3_Then$1_correct@@0)))
(let ((inline$$AddU64$0$anon3_Else_correct@@0  (=> (>= $MAX_U64 (+ _$t0@@0 _$t1@@0)) (=> (and (and (= inline$$AddU64$0$dst@1@@0 (+ _$t0@@0 _$t1@@0)) (= $abort_flag@0@@0 false)) (and (= $abort_code@1@@0 $abort_code@0@@0) (= inline$$AddU64$0$dst@2@@0 inline$$AddU64$0$dst@1@@0))) (and (=> (= (ControlFlow 0 10912) 11018) anon4_Then_correct@@0) (=> (= (ControlFlow 0 10912) 11000) anon4_Else_correct@@0))))))
(let ((anon0$1_correct@@0  (=> (and (and (|$IsValid'u64'| _$t0@@0) (|$IsValid'u64'| _$t1@@0)) (and (= _$t0@@0 _$t0@@0) (= _$t1@@0 _$t1@@0))) (and (=> (= (ControlFlow 0 10972) 10964) inline$$AddU64$0$anon3_Then_correct@@0) (=> (= (ControlFlow 0 10972) 10912) inline$$AddU64$0$anon3_Else_correct@@0)))))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 11913) 10972) anon0$1_correct@@0)))
anon0_correct@@0))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $42_TestDefines_R_$memory () T@$Memory_9078)
(declare-fun _$t0@@1 () Int)
(declare-fun _$t1@@1 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $t6@1 () T@$42_TestDefines_R)
(declare-fun $t7@0 () Int)
(declare-fun $t4@1 () T@$42_TestDefines_R)
(declare-fun $t8@0 () Int)
(declare-fun $t9@0 () Bool)
(declare-fun |Select__T@[Int]$42_TestDefines_R_| (|T@[Int]$42_TestDefines_R| Int) T@$42_TestDefines_R)
(declare-fun $t6 () T@$42_TestDefines_R)
(declare-fun $t6@0 () T@$42_TestDefines_R)
(declare-fun $t4 () T@$42_TestDefines_R)
(declare-fun $t4@0 () T@$42_TestDefines_R)
(declare-fun $abort_code@0@@1 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestDefines_equal_R$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 12114) (let ((L2_correct  (=> (= (ControlFlow 0 11276) (- 0 12468)) (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_9078| $42_TestDefines_R_$memory) _$t0@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_9078| $42_TestDefines_R_$memory) _$t1@@1))))))
(let ((anon15_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 11258) 11276)) L2_correct))))
(let ((anon13_Then_correct  (=> $abort_flag@0@@1 (=> (and (= $abort_code@1@@1 $abort_code@1@@1) (= (ControlFlow 0 11342) 11276)) L2_correct))))
(let ((anon15_Else_correct  (=> (and (not $abort_flag@1) (= $t6@1 $t6@1)) (=> (and (and (= $t7@0 (|$x#$42_TestDefines_R| $t4@1)) (= $t8@0 (|$x#$42_TestDefines_R| $t6@1))) (and (= $t9@0 (= $t7@0 $t8@0)) (= $t9@0 $t9@0))) (and (=> (= (ControlFlow 0 11244) (- 0 12436)) (not (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_9078| $42_TestDefines_R_$memory) _$t0@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_9078| $42_TestDefines_R_$memory) _$t1@@1))))) (=> (not (not (and (|Select__T@[Int]Bool_| (|domain#$Memory_9078| $42_TestDefines_R_$memory) _$t0@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_9078| $42_TestDefines_R_$memory) _$t1@@1)))) (=> (= (ControlFlow 0 11244) (- 0 12448)) (= $t9@0 (= (|$x#$42_TestDefines_R| (|Select__T@[Int]$42_TestDefines_R_| (|contents#$Memory_9078| $42_TestDefines_R_$memory) _$t0@@1)) (|$x#$42_TestDefines_R| (|Select__T@[Int]$42_TestDefines_R_| (|contents#$Memory_9078| $42_TestDefines_R_$memory) _$t1@@1)))))))))))
(let ((anon14_Then$1_correct  (=> (= $t6@1 $t6) (=> (and (= $abort_flag@1 true) (= $abort_code@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 11328) 11258) anon15_Then_correct) (=> (= (ControlFlow 0 11328) 11244) anon15_Else_correct))))))
(let ((anon14_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_9078| $42_TestDefines_R_$memory) _$t1@@1)) (= (ControlFlow 0 11326) 11328)) anon14_Then$1_correct)))
(let ((anon14_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_9078| $42_TestDefines_R_$memory) _$t1@@1) (=> (and (and (= $t6@0 (|Select__T@[Int]$42_TestDefines_R_| (|contents#$Memory_9078| $42_TestDefines_R_$memory) _$t1@@1)) (= $t6@1 $t6@0)) (and (= $abort_flag@1 $abort_flag@0@@1) (= $abort_code@2 $abort_code@1@@1))) (and (=> (= (ControlFlow 0 11170) 11258) anon15_Then_correct) (=> (= (ControlFlow 0 11170) 11244) anon15_Else_correct))))))
(let ((anon13_Else_correct  (=> (and (not $abort_flag@0@@1) (= $t4@1 $t4@1)) (and (=> (= (ControlFlow 0 11156) 11326) anon14_Then_correct) (=> (= (ControlFlow 0 11156) 11170) anon14_Else_correct)))))
(let ((anon12_Then$1_correct  (=> (= $t4@1 $t4) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 11394) 11342) anon13_Then_correct) (=> (= (ControlFlow 0 11394) 11156) anon13_Else_correct))))))
(let ((anon12_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_9078| $42_TestDefines_R_$memory) _$t0@@1)) (= (ControlFlow 0 11392) 11394)) anon12_Then$1_correct)))
(let ((anon12_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_9078| $42_TestDefines_R_$memory) _$t0@@1) (=> (and (and (= $t4@0 (|Select__T@[Int]$42_TestDefines_R_| (|contents#$Memory_9078| $42_TestDefines_R_$memory) _$t0@@1)) (= $t4@1 $t4@0)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 11140) 11342) anon13_Then_correct) (=> (= (ControlFlow 0 11140) 11156) anon13_Else_correct))))))
(let ((anon0$1_correct@@1  (=> (|$IsValid'address'| _$t0@@1) (=> (and (and (|$IsValid'address'| _$t1@@1) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestDefines_R_| (|contents#$Memory_9078| $42_TestDefines_R_$memory) $a_0)))
(|$IsValid'$42_TestDefines_R'| $rsc))
 :qid |definesandybpl.1165:20|
 :skolemid |25|
 :pattern ( (|Select__T@[Int]$42_TestDefines_R_| (|contents#$Memory_9078| $42_TestDefines_R_$memory) $a_0))
))) (and (= _$t0@@1 _$t0@@1) (= _$t1@@1 _$t1@@1))) (and (=> (= (ControlFlow 0 11126) 11392) anon12_Then_correct) (=> (= (ControlFlow 0 11126) 11140) anon12_Else_correct))))))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 12114) 11126) anon0$1_correct@@1)))
anon0_correct@@1))))))))))))))
))
(check-sat)
(pop 1)
; Valid
