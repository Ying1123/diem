(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7163 0)) ((($Mutation_7163 (|l#$Mutation_7163| T@$Location) (|p#$Mutation_7163| (Seq Int)) (|v#$Mutation_7163| (Seq Int)) ) ) ))
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
(declare-sort |T@#0| 0)
(declare-fun |$1_BCS_serialize'#0'| (|T@#0|) (Seq Int))
(declare-fun |$1_BCS_serialize'address'| (Int) (Seq Int))
(declare-fun $serialized_address_len () Int)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |addressserializationconstantsizeandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |addressserializationconstantsizeandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |addressserializationconstantsizeandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |addressserializationconstantsizeandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |addressserializationconstantsizeandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |addressserializationconstantsizeandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |addressserializationconstantsizeandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |addressserializationconstantsizeandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |addressserializationconstantsizeandybpl.590:13|
 :skolemid |15|
))))
 :qid |addressserializationconstantsizeandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |addressserializationconstantsizeandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |addressserializationconstantsizeandybpl.603:17|
 :skolemid |18|
)))))
 :qid |addressserializationconstantsizeandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |addressserializationconstantsizeandybpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |addressserializationconstantsizeandybpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |addressserializationconstantsizeandybpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |addressserializationconstantsizeandybpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@1 |T@#0|) (v2@@1 |T@#0|) ) (! (= (= v1@@1 v2@@1) (= (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1)))
 :qid |addressserializationconstantsizeandybpl.869:15|
 :skolemid |24|
 :pattern ( (|$1_BCS_serialize'#0'| v1@@1) (|$1_BCS_serialize'#0'| v2@@1))
)))
(assert (forall ((v@@6 |T@#0|) ) (! (let ((r@@0 (|$1_BCS_serialize'#0'| v@@6)))
 (and (|$IsValid'vec'u8''| r@@0) (> (seq.len r@@0) 0)))
 :qid |addressserializationconstantsizeandybpl.874:15|
 :skolemid |25|
 :pattern ( (|$1_BCS_serialize'#0'| v@@6))
)))
(assert (forall ((v1@@2 Int) (v2@@2 Int) ) (! (= (= v1@@2 v2@@2) (= (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2)))
 :qid |addressserializationconstantsizeandybpl.896:15|
 :skolemid |26|
 :pattern ( (|$1_BCS_serialize'address'| v1@@2) (|$1_BCS_serialize'address'| v2@@2))
)))
(assert (forall ((v@@7 Int) ) (! (let ((r@@1 (|$1_BCS_serialize'address'| v@@7)))
 (and (|$IsValid'vec'u8''| r@@1) (> (seq.len r@@1) 0)))
 :qid |addressserializationconstantsizeandybpl.901:15|
 :skolemid |27|
 :pattern ( (|$1_BCS_serialize'address'| v@@7))
)))
(assert (forall ((v@@8 Int) ) (! (let ((r@@2 (|$1_BCS_serialize'address'| v@@8)))
(= (seq.len r@@2) $serialized_address_len))
 :qid |addressserializationconstantsizeandybpl.915:15|
 :skolemid |28|
 :pattern ( (|$1_BCS_serialize'address'| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) ) (! (let ((r@@3 (ReverseVec_3283 v@@9)))
 (and (= (seq.len r@@3) (seq.len v@@9)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@3))) (= (seq.nth r@@3 i@@3) (seq.nth v@@9 (- (- (seq.len v@@9) i@@3) 1))))
 :qid |addressserializationconstantsizeandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@3 i@@3))
))))
 :qid |addressserializationconstantsizeandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@9))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |addressserializationconstantsizeandybpl.245:54|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun call1formal@res@0 () (Seq Int))
(declare-fun call1formal@res@0@@0 () (Seq Int))
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(push 1)
(set-info :boogie-vc-id $42_AddressSerialization_serialized_addresses_same_len$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 10140) (let ((anon7_Else_correct  (=> (not false) (=> (and (= call1formal@res@0 call1formal@res@0) (= call1formal@res@0@@0 call1formal@res@0@@0)) (and (=> (= (ControlFlow 0 9824) (- 0 10324)) (= (seq.len (|$1_BCS_serialize'address'| _$t0)) (seq.len (|$1_BCS_serialize'address'| _$t1)))) (=> (= (seq.len (|$1_BCS_serialize'address'| _$t0)) (seq.len (|$1_BCS_serialize'address'| _$t1))) (=> (= (ControlFlow 0 9824) (- 0 10339)) (= (seq.len call1formal@res@0) (seq.len call1formal@res@0@@0)))))))))
(let ((anon7_Then_correct true))
(let ((anon6_Else_correct  (=> (and (not false) (= call1formal@res@0@@0 (|$1_BCS_serialize'address'| _$t1))) (and (=> (= (ControlFlow 0 9772) 9838) anon7_Then_correct) (=> (= (ControlFlow 0 9772) 9824) anon7_Else_correct)))))
(let ((anon6_Then_correct true))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (and (|$IsValid'address'| _$t1) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= call1formal@res@0 (|$1_BCS_serialize'address'| _$t0)))) (and (=> (= (ControlFlow 0 9766) 9858) anon6_Then_correct) (=> (= (ControlFlow 0 9766) 9772) anon6_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 10140) 9766) anon0$1_correct)))
anon0_correct)))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun call1formal@res@0@@1 () (Seq Int))
(declare-fun call1formal@res@0@@2 () (Seq Int))
(declare-fun _$t0@@0 () |T@#0|)
(declare-fun _$t1@@0 () |T@#0|)
(push 1)
(set-info :boogie-vc-id $42_AddressSerialization_serialized_move_values_diff_len_incorrect$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 10381) (let ((anon7_Else_correct@@0  (=> (not false) (=> (and (= call1formal@res@0@@1 call1formal@res@0@@1) (= call1formal@res@0@@2 call1formal@res@0@@2)) (and (=> (= (ControlFlow 0 10016) (- 0 10565)) (= (seq.len (|$1_BCS_serialize'#0'| _$t0@@0)) (seq.len (|$1_BCS_serialize'#0'| _$t1@@0)))) (=> (= (seq.len (|$1_BCS_serialize'#0'| _$t0@@0)) (seq.len (|$1_BCS_serialize'#0'| _$t1@@0))) (=> (= (ControlFlow 0 10016) (- 0 10580)) (= (seq.len call1formal@res@0@@1) (seq.len call1formal@res@0@@2)))))))))
(let ((anon7_Then_correct@@0 true))
(let ((anon6_Else_correct@@0  (=> (and (not false) (= call1formal@res@0@@2 (|$1_BCS_serialize'#0'| _$t1@@0))) (and (=> (= (ControlFlow 0 9964) 10030) anon7_Then_correct@@0) (=> (= (ControlFlow 0 9964) 10016) anon7_Else_correct@@0)))))
(let ((anon6_Then_correct@@0 true))
(let ((anon0$1_correct@@0  (=> (= _$t0@@0 _$t0@@0) (=> (and (= _$t1@@0 _$t1@@0) (= call1formal@res@0@@1 (|$1_BCS_serialize'#0'| _$t0@@0))) (and (=> (= (ControlFlow 0 9958) 10050) anon6_Then_correct@@0) (=> (= (ControlFlow 0 9958) 9964) anon6_Else_correct@@0))))))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 10381) 9958) anon0$1_correct@@0)))
anon0_correct@@0)))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 10381)))
(get-value ((ControlFlow 0 9958)))
(get-value ((ControlFlow 0 9964)))
(get-value ((ControlFlow 0 10016)))
(assert (not (= (ControlFlow 0 10016) (- 10565))))
(check-sat)
(pop 1)
; Invalid
