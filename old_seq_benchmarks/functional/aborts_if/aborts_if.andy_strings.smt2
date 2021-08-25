(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-logic ALL)
; done setting options


(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7052 0)) ((($Mutation_7052 (|l#$Mutation_7052| T@$Location) (|p#$Mutation_7052| (Seq Int)) (|v#$Mutation_7052| (Seq Int)) ) ) ))
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
 :qid |abortsifandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |abortsifandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |abortsifandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |abortsifandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |abortsifandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |abortsifandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |abortsifandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |abortsifandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |abortsifandybpl.590:13|
 :skolemid |15|
))))
 :qid |abortsifandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |abortsifandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |abortsifandybpl.603:17|
 :skolemid |18|
)))))
 :qid |abortsifandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |abortsifandybpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |abortsifandybpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |abortsifandybpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |abortsifandybpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |abortsifandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |abortsifandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |abortsifandybpl.245:54|
 :skolemid |24|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun call1formal@res@0 () (Seq Int))
(declare-fun call1formal@res@0@@0 () (Seq Int))
(declare-fun _$t1 () (Seq Int))
(declare-fun _$t0 () (Seq Int))
(push 1)
(set-info :boogie-vc-id $42_TestHash_hash_test1$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 9931) (let ((anon7_Else_correct  (=> (and (and (not false) (= call1formal@res@0 call1formal@res@0)) (and (= call1formal@res@0@@0 call1formal@res@0@@0) (= call1formal@res@0 call1formal@res@0))) (and (=> (= (ControlFlow 0 9565) (- 0 10171)) (not false)) (=> (not false) (=> (= (ControlFlow 0 9565) (- 0 10178)) (=> (> (seq.len call1formal@res@0@@0) 0) (< (seq.nth call1formal@res@0@@0 0) $MAX_U8))))))))
(let ((anon7_Then_correct true))
(let ((anon6_Else_correct  (=> (not false) (=> (and (and (= call1formal@res@0@@0 call1formal@res@0@@0) (= call1formal@res@0 ($1_Hash_sha2 _$t1))) (and (|$IsValid'vec'u8''| call1formal@res@0) (= (seq.len call1formal@res@0) 32))) (and (=> (= (ControlFlow 0 9505) 9579) anon7_Then_correct) (=> (= (ControlFlow 0 9505) 9565) anon7_Else_correct))))))
(let ((anon6_Then_correct true))
(let ((anon0$1_correct  (=> (|$IsValid'vec'u8''| _$t0) (=> (and (|$IsValid'vec'u8''| _$t1) (= _$t0 _$t0)) (=> (and (and (= _$t1 _$t1) (= call1formal@res@0@@0 ($1_Hash_sha2 _$t0))) (and (|$IsValid'vec'u8''| call1formal@res@0@@0) (= (seq.len call1formal@res@0@@0) 32))) (and (=> (= (ControlFlow 0 9491) 9603) anon6_Then_correct) (=> (= (ControlFlow 0 9491) 9505) anon6_Else_correct)))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 9931) 9491) anon0$1_correct)))
anon0_correct)))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 9931)))
(get-value ((ControlFlow 0 9491)))
(get-value ((ControlFlow 0 9505)))
(get-value ((ControlFlow 0 9565)))
(assert (not (= (ControlFlow 0 9565) (- 10178))))
(check-sat)
(pop 1)
; Invalid
(declare-fun call1formal@res@0@@1 () (Seq Int))
(declare-fun call1formal@res@0@@2 () (Seq Int))
(declare-fun _$t1@@0 () (Seq Int))
(declare-fun _$t0@@0 () (Seq Int))
(push 1)
(set-info :boogie-vc-id $42_TestHash_hash_test2$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 10236) (let ((anon7_Else_correct@@0  (=> (and (and (not false) (= call1formal@res@0@@1 call1formal@res@0@@1)) (and (= call1formal@res@0@@2 call1formal@res@0@@2) (= call1formal@res@0@@1 call1formal@res@0@@1))) (and (=> (= (ControlFlow 0 9799) (- 0 10476)) (not false)) (=> (not false) (=> (= (ControlFlow 0 9799) (- 0 10483)) (=> (> (seq.len call1formal@res@0@@2) 0) (< (seq.nth call1formal@res@0@@2 0) $MAX_U8))))))))
(let ((anon7_Then_correct@@0 true))
(let ((anon6_Else_correct@@0  (=> (not false) (=> (and (and (= call1formal@res@0@@2 call1formal@res@0@@2) (= call1formal@res@0@@1 ($1_Hash_sha3 _$t1@@0))) (and (|$IsValid'vec'u8''| call1formal@res@0@@1) (= (seq.len call1formal@res@0@@1) 32))) (and (=> (= (ControlFlow 0 9739) 9813) anon7_Then_correct@@0) (=> (= (ControlFlow 0 9739) 9799) anon7_Else_correct@@0))))))
(let ((anon6_Then_correct@@0 true))
(let ((anon0$1_correct@@0  (=> (|$IsValid'vec'u8''| _$t0@@0) (=> (and (|$IsValid'vec'u8''| _$t1@@0) (= _$t0@@0 _$t0@@0)) (=> (and (and (= _$t1@@0 _$t1@@0) (= call1formal@res@0@@2 ($1_Hash_sha3 _$t0@@0))) (and (|$IsValid'vec'u8''| call1formal@res@0@@2) (= (seq.len call1formal@res@0@@2) 32))) (and (=> (= (ControlFlow 0 9725) 9837) anon6_Then_correct@@0) (=> (= (ControlFlow 0 9725) 9739) anon6_Else_correct@@0)))))))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 10236) 9725) anon0$1_correct@@0)))
anon0_correct@@0)))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 10236)))
(get-value ((ControlFlow 0 9725)))
(get-value ((ControlFlow 0 9739)))
(get-value ((ControlFlow 0 9799)))
(assert (not (= (ControlFlow 0 9799) (- 10483))))
(check-sat)
(pop 1)
; Invalid
