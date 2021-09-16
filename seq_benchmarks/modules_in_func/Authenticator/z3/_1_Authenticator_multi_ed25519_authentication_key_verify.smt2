(set-option :print-success false)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-datatypes ((T@$1_Authenticator_MultiEd25519PublicKey 0)) ((($1_Authenticator_MultiEd25519PublicKey (|$public_keys#$1_Authenticator_MultiEd25519PublicKey| (Seq (Seq Int))) (|$threshold#$1_Authenticator_MultiEd25519PublicKey| Int) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_4603 0)) ((($Mutation_4603 (|l#$Mutation_4603| T@$Location) (|p#$Mutation_4603| (Seq Int)) (|v#$Mutation_4603| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10791 0)) ((($Mutation_10791 (|l#$Mutation_10791| T@$Location) (|p#$Mutation_10791| (Seq Int)) (|v#$Mutation_10791| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_10045 0)) ((($Mutation_10045 (|l#$Mutation_10045| T@$Location) (|p#$Mutation_10045| (Seq Int)) (|v#$Mutation_10045| (Seq (Seq Int))) ) ) ))
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
(declare-fun |$IsValid'vec'vec'u8'''| ((Seq (Seq Int))) Bool)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'vec'u8''| ((Seq (Seq Int)) (Seq Int)) Int)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$1_BCS_serialize'u8'| (Int) (Seq Int))
(declare-fun |$IsValid'$1_Authenticator_MultiEd25519PublicKey'| (T@$1_Authenticator_MultiEd25519PublicKey) Bool)
(declare-fun ReverseVec_4456 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_7654 ((Seq (Seq Int))) (Seq (Seq Int)))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |Authenticatorbpl.165:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |Authenticatorbpl.169:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |Authenticatorbpl.173:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |Authenticatorbpl.177:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |Authenticatorbpl.181:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |Authenticatorbpl.191:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |Authenticatorbpl.457:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |Authenticatorbpl.466:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq (Seq Int))) ) (! (= (|$IsValid'vec'vec'u8'''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'vec'u8''| (seq.nth v@@4 i@@0)))
 :qid |Authenticatorbpl.595:13|
 :skolemid |15|
))))
 :qid |Authenticatorbpl.593:33|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'vec'u8'''| v@@4))
)))
(assert (forall ((v@@5 (Seq (Seq Int))) (e (Seq Int)) ) (! (let ((i@@1 (|$IndexOfVec'vec'u8''| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |Authenticatorbpl.600:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |Authenticatorbpl.608:17|
 :skolemid |18|
)))))
 :qid |Authenticatorbpl.604:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'vec'u8''| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |Authenticatorbpl.775:13|
 :skolemid |20|
))))
 :qid |Authenticatorbpl.773:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |Authenticatorbpl.780:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |Authenticatorbpl.788:17|
 :skolemid |23|
)))))
 :qid |Authenticatorbpl.784:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |Authenticatorbpl.961:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |Authenticatorbpl.977:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |Authenticatorbpl.1048:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |Authenticatorbpl.1051:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v1@@1 Int) (v2@@1 Int) ) (! (= (= v1@@1 v2@@1) (= (|$1_BCS_serialize'u8'| v1@@1) (|$1_BCS_serialize'u8'| v2@@1)))
 :qid |Authenticatorbpl.1078:15|
 :skolemid |29|
 :pattern ( (|$1_BCS_serialize'u8'| v1@@1) (|$1_BCS_serialize'u8'| v2@@1))
)))
(assert (forall ((v@@8 Int) ) (! (let ((r@@0 (|$1_BCS_serialize'u8'| v@@8)))
 (and (|$IsValid'vec'u8''| r@@0) (> (seq.len r@@0) 0)))
 :qid |Authenticatorbpl.1083:15|
 :skolemid |30|
 :pattern ( (|$1_BCS_serialize'u8'| v@@8))
)))
(assert (forall ((s T@$1_Authenticator_MultiEd25519PublicKey) ) (! (= (|$IsValid'$1_Authenticator_MultiEd25519PublicKey'| s)  (and (|$IsValid'vec'vec'u8'''| (|$public_keys#$1_Authenticator_MultiEd25519PublicKey| s)) (|$IsValid'u8'| (|$threshold#$1_Authenticator_MultiEd25519PublicKey| s))))
 :qid |Authenticatorbpl.1125:59|
 :skolemid |31|
 :pattern ( (|$IsValid'$1_Authenticator_MultiEd25519PublicKey'| s))
)))
(assert (forall ((v@@9 (Seq Int)) ) (! (let ((r@@1 (ReverseVec_4456 v@@9)))
 (and (= (seq.len r@@1) (seq.len v@@9)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@1))) (= (seq.nth r@@1 i@@6) (seq.nth v@@9 (- (- (seq.len v@@9) i@@6) 1))))
 :qid |Authenticatorbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@6))
))))
 :qid |Authenticatorbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4456 v@@9))
)))
(assert (forall ((v@@10 (Seq (Seq Int))) ) (! (let ((r@@2 (ReverseVec_7654 v@@10)))
 (and (= (seq.len r@@2) (seq.len v@@10)) (forall ((i@@7 Int) ) (!  (=> (and (>= i@@7 0) (< i@@7 (seq.len r@@2))) (= (seq.nth r@@2 i@@7) (seq.nth v@@10 (- (- (seq.len v@@10) i@@7) 1))))
 :qid |Authenticatorbpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@2 i@@7))
))))
 :qid |Authenticatorbpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_7654 v@@10))
)))
(assert (forall ((|l#0| Bool) (i@@8 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8) |l#0|)
 :qid |Authenticatorbpl.250:54|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@8))
)))
(declare-fun ControlFlow (Int Int) Int)
; Valid
; Valid
; Valid
(declare-fun call1formal@res@0 () (Seq Int))
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u8'$0$m'@1| () T@$Mutation_10791)
(declare-fun $t1@0 () T@$Mutation_10791)
(declare-fun _$t0 () (Seq Int))
(declare-fun $t1 () T@$Mutation_10791)
; Valid
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t9@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $t1@3 () (Seq Int))
(declare-fun |inline$$1_Vector_append'u8'$1$m'@1| () T@$Mutation_10791)
(declare-fun $t14@1 () T@$Mutation_10791)
(declare-fun |inline$$1_Vector_borrow'vec'u8''$0$dst@2| () (Seq Int))
(declare-fun $t1@0@@0 () (Seq Int))
(declare-fun |inline$$1_Vector_borrow'vec'u8''$0$dst@0| () (Seq Int))
(declare-fun $t6@0 () (Seq (Seq Int)))
(declare-fun |inline$$1_Vector_borrow'vec'u8''$0$dst@1| () (Seq Int))
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$Lt$0$dst@1 () Bool)
(declare-fun call1formal@res@0@@0 () (Seq Int))
(declare-fun $t1@2 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u8'$0$m'@1@@0| () T@$Mutation_10791)
(declare-fun $t18@0 () T@$Mutation_10791)
(declare-fun $t1@1 () (Seq Int))
(declare-fun |inline$$1_Vector_append'u8'$0$m'@1| () T@$Mutation_10791)
(declare-fun $t15@0 () T@$Mutation_10791)
(declare-fun call1formal@res@0@@1 () (Seq Int))
(declare-fun $t16@0 () Int)
(declare-fun _$t0@@0 () T@$1_Authenticator_MultiEd25519PublicKey)
(declare-fun |inline$$1_Vector_length'vec'u8''$0$l@1| () Int)
(declare-fun |inline$$1_Vector_empty'u8'$0$v@1| () (Seq Int))
(declare-fun $t11@0 () (Seq Int))
(declare-fun $t12@0 () Int)
(declare-fun $t13@0 () Int)
(declare-fun $t14@0 () T@$Mutation_10791)
(declare-fun $t14 () T@$Mutation_10791)
(declare-fun $t15 () T@$Mutation_10791)
(declare-fun $t18 () T@$Mutation_10791)
(push 1)
(set-info :boogie-vc-id $1_Authenticator_multi_ed25519_authentication_key$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 19049) (let ((L6_correct  (=> (= (ControlFlow 0 17454) (- 0 19948)) false)))
(let ((anon31_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 17929) 17454)) L6_correct))))
(let ((anon30_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 17943) 17454)) L6_correct))))
(let ((anon29_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 17957) 17454)) L6_correct))))
(let ((anon31_Else_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 17893) 17929) anon31_Then_correct) (=> (= (ControlFlow 0 17893) 17915) anon31_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t9@0 1) $MAX_U64) (= (ControlFlow 0 17891) 17893)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t9@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t9@0 1)) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 17839) 17929) anon31_Then_correct) (=> (= (ControlFlow 0 17839) 17915) anon31_Else_correct))))))
(let ((anon30_Else_correct  (=> (not $abort_flag@0) (=> (and (= $t1@3 (|v#$Mutation_10791| |inline$$1_Vector_append'u8'$1$m'@1|)) (|$IsValid'u64'| 1)) (and (=> (= (ControlFlow 0 17899) 17891) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 17899) 17839) inline$$AddU64$0$anon3_Else_correct))))))
(let ((|inline$$1_Vector_append'u8'$1$anon0_correct|  (=> (= |inline$$1_Vector_append'u8'$1$m'@1| ($Mutation_10791 (|l#$Mutation_10791| $t14@1) (|p#$Mutation_10791| $t14@1) (seq.++ (|v#$Mutation_10791| $t14@1) |inline$$1_Vector_borrow'vec'u8''$0$dst@2|))) (and (=> (= (ControlFlow 0 17720) 17943) anon30_Then_correct) (=> (= (ControlFlow 0 17720) 17899) anon30_Else_correct)))))
(let ((anon29_Else_correct  (=> (and (and (not $abort_flag@0) (= |inline$$1_Vector_borrow'vec'u8''$0$dst@2| |inline$$1_Vector_borrow'vec'u8''$0$dst@2|)) (and (= $t14@1 ($Mutation_10791 ($Local 1) (as seq.empty (Seq Int)) $t1@0@@0)) (= (ControlFlow 0 17726) 17720))) |inline$$1_Vector_append'u8'$1$anon0_correct|)))
(let ((|inline$$1_Vector_borrow'vec'u8''$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'vec'u8''$0$dst@2| |inline$$1_Vector_borrow'vec'u8''$0$dst@0|)) (and (=> (= (ControlFlow 0 17635) 17957) anon29_Then_correct) (=> (= (ControlFlow 0 17635) 17726) anon29_Else_correct))))))
(let ((|inline$$1_Vector_borrow'vec'u8''$0$anon3_Then_correct|  (=> (and (not (and (>= $t9@0 0) (< $t9@0 (seq.len $t6@0)))) (= (ControlFlow 0 17633) 17635)) |inline$$1_Vector_borrow'vec'u8''$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'vec'u8''$0$anon3_Else_correct|  (=> (and (>= $t9@0 0) (< $t9@0 (seq.len $t6@0))) (=> (and (and (= |inline$$1_Vector_borrow'vec'u8''$0$dst@1| (seq.nth $t6@0 $t9@0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow'vec'u8''$0$dst@2| |inline$$1_Vector_borrow'vec'u8''$0$dst@1|))) (and (=> (= (ControlFlow 0 17583) 17957) anon29_Then_correct) (=> (= (ControlFlow 0 17583) 17726) anon29_Else_correct))))))
(let ((anon28_Then_correct  (=> inline$$Lt$0$dst@1 (and (=> (= (ControlFlow 0 17641) 17633) |inline$$1_Vector_borrow'vec'u8''$0$anon3_Then_correct|) (=> (= (ControlFlow 0 17641) 17583) |inline$$1_Vector_borrow'vec'u8''$0$anon3_Else_correct|)))))
(let ((anon35_Else_correct  (=> (not false) (=> (and (= call1formal@res@0@@0 call1formal@res@0@@0) (= (ControlFlow 0 17430) (- 0 19686))) (not false)))))
(let ((anon35_Then_correct true))
(let ((anon34_Else_correct  (=> (not false) (=> (and (and (= $t1@2 (|v#$Mutation_10791| |inline$$1_Vector_push_back'u8'$0$m'@1@@0|)) (= call1formal@res@0@@0 ($1_Hash_sha3 $t1@2))) (and (|$IsValid'vec'u8''| call1formal@res@0@@0) (= (seq.len call1formal@res@0@@0) 32))) (and (=> (= (ControlFlow 0 17410) 17444) anon35_Then_correct) (=> (= (ControlFlow 0 17410) 17430) anon35_Else_correct))))))
(let ((anon34_Then_correct true))
(let ((|inline$$1_Vector_push_back'u8'$0$anon0_correct@@0|  (=> (= |inline$$1_Vector_push_back'u8'$0$m'@1@@0| ($Mutation_10791 (|l#$Mutation_10791| $t18@0) (|p#$Mutation_10791| $t18@0) (seq.++ (|v#$Mutation_10791| $t18@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 17388) 17468) anon34_Then_correct) (=> (= (ControlFlow 0 17388) 17410) anon34_Else_correct)))))
(let ((anon33_Else_correct  (=> (not false) (=> (and (and (= $t1@1 (|v#$Mutation_10791| |inline$$1_Vector_append'u8'$0$m'@1|)) (= $t18@0 ($Mutation_10791 ($Local 1) (as seq.empty (Seq Int)) $t1@1))) (and (|$IsValid'u8'| 1) (= (ControlFlow 0 17394) 17388))) |inline$$1_Vector_push_back'u8'$0$anon0_correct@@0|))))
(let ((anon33_Then_correct true))
(let ((|inline$$1_Vector_append'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_append'u8'$0$m'@1| ($Mutation_10791 (|l#$Mutation_10791| $t15@0) (|p#$Mutation_10791| $t15@0) (seq.++ (|v#$Mutation_10791| $t15@0) call1formal@res@0@@1))) (and (=> (= (ControlFlow 0 17301) 17482) anon33_Then_correct) (=> (= (ControlFlow 0 17301) 17394) anon33_Else_correct)))))
(let ((anon32_Else_correct  (=> (and (not false) (= (ControlFlow 0 17307) 17301)) |inline$$1_Vector_append'u8'$0$anon0_correct|)))
(let ((anon32_Then_correct true))
(let ((anon28_Else_correct  (=> (and (and (not inline$$Lt$0$dst@1) (= $t15@0 ($Mutation_10791 ($Local 1) (as seq.empty (Seq Int)) $t1@0@@0))) (and (= $t16@0 (|$threshold#$1_Authenticator_MultiEd25519PublicKey| _$t0@@0)) (= call1formal@res@0@@1 (|$1_BCS_serialize'u8'| $t16@0)))) (and (=> (= (ControlFlow 0 17244) 17496) anon32_Then_correct) (=> (= (ControlFlow 0 17244) 17307) anon32_Else_correct)))))
(let ((inline$$Lt$0$anon0_correct  (=> (= inline$$Lt$0$dst@1 (< $t9@0 |inline$$1_Vector_length'vec'u8''$0$l@1|)) (and (=> (= (ControlFlow 0 17216) 17641) anon28_Then_correct) (=> (= (ControlFlow 0 17216) 17244) anon28_Else_correct)))))
(let ((anon27_Else_correct  (=> (and (and (not false) (= |inline$$1_Vector_empty'u8'$0$v@1| |inline$$1_Vector_empty'u8'$0$v@1|)) (and (|$IsValid'u64'| 0) (= 0 0))) (=> (and (and (and (|$IsValid'vec'u8''| $t1@0@@0) (|$IsValid'u64'| $t9@0)) (and (|$IsValid'vec'u8''| $t11@0) (|$IsValid'u64'| $t12@0))) (and (and (|$IsValid'u64'| $t13@0) (|$IsValid'vec'u8''| (|v#$Mutation_10791| $t14@0))) (and (not false) (= (ControlFlow 0 17222) 17216)))) inline$$Lt$0$anon0_correct))))
(let ((anon27_Then_correct true))
(let ((|inline$$1_Vector_empty'u8'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u8'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 17106) 17971) anon27_Then_correct) (=> (= (ControlFlow 0 17106) 17222) anon27_Else_correct)))))
(let ((anon26_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_length'vec'u8''$0$l@1| |inline$$1_Vector_length'vec'u8''$0$l@1|) (= (ControlFlow 0 17112) 17106)) |inline$$1_Vector_empty'u8'$0$anon0_correct|))))
(let ((anon26_Then_correct true))
(let ((|inline$$1_Vector_length'vec'u8''$0$anon0_correct|  (=> (= |inline$$1_Vector_length'vec'u8''$0$l@1| (seq.len $t6@0)) (and (=> (= (ControlFlow 0 17064) 17985) anon26_Then_correct) (=> (= (ControlFlow 0 17064) 17112) anon26_Else_correct)))))
(let ((anon0$1_correct@@0  (=> (|$IsValid'$1_Authenticator_MultiEd25519PublicKey'| _$t0@@0) (=> (and (and (= _$t0@@0 _$t0@@0) (= $t6@0 (|$public_keys#$1_Authenticator_MultiEd25519PublicKey| _$t0@@0))) (and (= $t6@0 $t6@0) (= (ControlFlow 0 17070) 17064))) |inline$$1_Vector_length'vec'u8''$0$anon0_correct|))))
(let ((anon0_correct@@0  (=> (and (and (= (seq.len (|p#$Mutation_10791| $t14)) 0) (= (seq.len (|p#$Mutation_10791| $t15)) 0)) (and (= (seq.len (|p#$Mutation_10791| $t18)) 0) (= (ControlFlow 0 17006) 17070))) anon0$1_correct@@0)))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 19049) 17006) anon0_correct@@0)))
PreconditionGeneratedEntry_correct@@0)))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
