(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@$42_TestLet_R 0)) ((($42_TestLet_R (|$x#$42_TestLet_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestLet_R| 0)
(declare-datatypes ((T@$Memory_11208 0)) ((($Memory_11208 (|domain#$Memory_11208| |T@[Int]Bool|) (|contents#$Memory_11208| |T@[Int]$42_TestLet_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9622 0)) ((($Mutation_9622 (|l#$Mutation_9622| T@$Location) (|p#$Mutation_9622| (Seq Int)) (|v#$Mutation_9622| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestLet_R'| (T@$42_TestLet_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |letz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |letz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |letz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |letz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |letz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |letz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |letz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |letz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |letz3bpl.590:13|
 :skolemid |15|
))))
 :qid |letz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |letz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |letz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |letz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |letz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |letz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |letz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |letz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestLet_R) ) (! (= (|$IsValid'$42_TestLet_R'| s) (|$IsValid'u64'| (|$x#$42_TestLet_R| s)))
 :qid |letz3bpl.906:34|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestLet_R'| s))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |letz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |letz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |letz3bpl.245:54|
 :skolemid |26|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t2@0 () Bool)
(declare-fun $42_TestLet_R_$memory () T@$Memory_11208)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(declare-fun $t3@0 () Bool)
(declare-fun $t5@0 () Bool)
(declare-fun |Select__T@[Int]$42_TestLet_R_| (|T@[Int]$42_TestLet_R| Int) T@$42_TestLet_R)
(push 1)
(set-info :boogie-vc-id $42_TestLet_local_let_with_memory_access$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 19387) (let ((L3_correct  (=> (and (= $t2@0 $t2@0) (= (ControlFlow 0 14719) (- 0 19541))) (= $t2@0 (let ((e@@0  (or (|Select__T@[Int]Bool_| (|domain#$Memory_11208| $42_TestLet_R_$memory) _$t0) (|Select__T@[Int]Bool_| (|domain#$Memory_11208| $42_TestLet_R_$memory) _$t1))))
 (or (and e@@0 e@@0) e@@0))))))
(let ((anon3_Else_correct  (=> (not $t3@0) (=> (and (and (= $t5@0 (|Select__T@[Int]Bool_| (|domain#$Memory_11208| $42_TestLet_R_$memory) _$t1)) (= $t5@0 $t5@0)) (and (= $t2@0 $t5@0) (= (ControlFlow 0 14693) 14719))) L3_correct))))
(let ((anon3_Then_correct  (=> (and (and $t3@0 (= true true)) (and (= $t2@0 true) (= (ControlFlow 0 14737) 14719))) L3_correct)))
(let ((anon0$1_correct  (=> (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (=> (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestLet_R_| (|contents#$Memory_11208| $42_TestLet_R_$memory) $a_0)))
(|$IsValid'$42_TestLet_R'| $rsc))
 :qid |letz3bpl.941:20|
 :skolemid |25|
 :pattern ( (|Select__T@[Int]$42_TestLet_R_| (|contents#$Memory_11208| $42_TestLet_R_$memory) $a_0))
)) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= $t3@0 (|Select__T@[Int]Bool_| (|domain#$Memory_11208| $42_TestLet_R_$memory) _$t0)))) (and (=> (= (ControlFlow 0 14673) 14737) anon3_Then_correct) (=> (= (ControlFlow 0 14673) 14693) anon3_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 19387) 14673) anon0$1_correct)))
anon0_correct))))))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@$42_TestLet_R 0)) ((($42_TestLet_R (|$x#$42_TestLet_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestLet_R| 0)
(declare-datatypes ((T@$Memory_11208 0)) ((($Memory_11208 (|domain#$Memory_11208| |T@[Int]Bool|) (|contents#$Memory_11208| |T@[Int]$42_TestLet_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9622 0)) ((($Mutation_9622 (|l#$Mutation_9622| T@$Location) (|p#$Mutation_9622| (Seq Int)) (|v#$Mutation_9622| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestLet_R'| (T@$42_TestLet_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |letz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |letz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |letz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |letz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |letz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |letz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |letz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |letz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |letz3bpl.590:13|
 :skolemid |15|
))))
 :qid |letz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |letz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |letz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |letz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |letz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |letz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |letz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |letz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestLet_R) ) (! (= (|$IsValid'$42_TestLet_R'| s) (|$IsValid'u64'| (|$x#$42_TestLet_R| s)))
 :qid |letz3bpl.906:34|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestLet_R'| s))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |letz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |letz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |letz3bpl.245:54|
 :skolemid |26|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun inline$$AddU64$1$dst@2 () Int)
(declare-fun inline$$AddU64$2$dst@2 () Int)
(declare-fun $t3 () Int)
(declare-fun $abort_code@3 () Int)
(declare-fun inline$$AddU64$2$dst@0 () Int)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(declare-fun inline$$AddU64$2$dst@1 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun inline$$AddU64$1$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun inline$$AddU64$1$dst@1 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun $t2 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestLet_spec_let$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 19577) (let ((anon10_Else_correct  (=> (not $abort_flag@2) (=> (and (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@2) (= inline$$AddU64$2$dst@2 inline$$AddU64$2$dst@2)) (and (=> (= (ControlFlow 0 15379) (- 0 20023)) (= inline$$AddU64$1$dst@2 $t3)) (=> (= inline$$AddU64$1$dst@2 $t3) (=> (= (ControlFlow 0 15379) (- 0 20031)) (= inline$$AddU64$2$dst@2 (- inline$$AddU64$1$dst@2 1)))))))))
(let ((anon10_Then_correct true))
(let ((inline$$AddU64$2$anon3_Then$1_correct  (=> (= $abort_flag@2 true) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= inline$$AddU64$2$dst@2 inline$$AddU64$2$dst@0)) (and (=> (= (ControlFlow 0 15327) 15393) anon10_Then_correct) (=> (= (ControlFlow 0 15327) 15379) anon10_Else_correct))))))
(let ((inline$$AddU64$2$anon3_Then_correct  (=> (and (> (+ _$t0 _$t1) $MAX_U64) (= (ControlFlow 0 15325) 15327)) inline$$AddU64$2$anon3_Then$1_correct)))
(let ((inline$$AddU64$2$anon3_Else_correct  (=> (>= $MAX_U64 (+ _$t0 _$t1)) (=> (and (and (= inline$$AddU64$2$dst@1 (+ _$t0 _$t1)) (= $abort_flag@2 $abort_flag@1)) (and (= $abort_code@3 $abort_code@2) (= inline$$AddU64$2$dst@2 inline$$AddU64$2$dst@1))) (and (=> (= (ControlFlow 0 15273) 15393) anon10_Then_correct) (=> (= (ControlFlow 0 15273) 15379) anon10_Else_correct))))))
(let ((anon9_Else_correct  (=> (not $abort_flag@1) (and (=> (= (ControlFlow 0 15333) 15325) inline$$AddU64$2$anon3_Then_correct) (=> (= (ControlFlow 0 15333) 15273) inline$$AddU64$2$anon3_Else_correct)))))
(let ((anon9_Then_correct true))
(let ((inline$$AddU64$1$anon3_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@0)) (and (=> (= (ControlFlow 0 15166) 15413) anon9_Then_correct) (=> (= (ControlFlow 0 15166) 15333) anon9_Else_correct))))))
(let ((inline$$AddU64$1$anon3_Then_correct  (=> (and (> (+ inline$$AddU64$0$dst@2 _$t1) $MAX_U64) (= (ControlFlow 0 15164) 15166)) inline$$AddU64$1$anon3_Then$1_correct)))
(let ((inline$$AddU64$1$anon3_Else_correct  (=> (>= $MAX_U64 (+ inline$$AddU64$0$dst@2 _$t1)) (=> (and (and (= inline$$AddU64$1$dst@1 (+ inline$$AddU64$0$dst@2 _$t1)) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@1))) (and (=> (= (ControlFlow 0 15112) 15413) anon9_Then_correct) (=> (= (ControlFlow 0 15112) 15333) anon9_Else_correct))))))
(let ((anon8_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 15172) 15164) inline$$AddU64$1$anon3_Then_correct) (=> (= (ControlFlow 0 15172) 15112) inline$$AddU64$1$anon3_Else_correct)))))
(let ((anon8_Then_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 15005) 15427) anon8_Then_correct) (=> (= (ControlFlow 0 15005) 15172) anon8_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ _$t0 1) $MAX_U64) (= (ControlFlow 0 15003) 15005)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ _$t0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ _$t0 1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 14951) 15427) anon8_Then_correct) (=> (= (ControlFlow 0 14951) 15172) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'u64'| _$t0) (=> (and (|$IsValid'u64'| _$t1) (= $t2 (+ _$t0 1))) (=> (and (and (= $t3 (+ $t2 _$t1)) (= _$t0 _$t0)) (and (= _$t1 _$t1) (|$IsValid'u64'| 1))) (and (=> (= (ControlFlow 0 15011) 15003) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 15011) 14951) inline$$AddU64$0$anon3_Else_correct)))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 19577) 15011) anon0$1_correct)))
anon0_correct))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@$42_TestLet_R 0)) ((($42_TestLet_R (|$x#$42_TestLet_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestLet_R| 0)
(declare-datatypes ((T@$Memory_11208 0)) ((($Memory_11208 (|domain#$Memory_11208| |T@[Int]Bool|) (|contents#$Memory_11208| |T@[Int]$42_TestLet_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9622 0)) ((($Mutation_9622 (|l#$Mutation_9622| T@$Location) (|p#$Mutation_9622| (Seq Int)) (|v#$Mutation_9622| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestLet_R'| (T@$42_TestLet_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |letz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |letz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |letz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |letz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |letz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |letz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |letz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |letz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |letz3bpl.590:13|
 :skolemid |15|
))))
 :qid |letz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |letz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |letz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |letz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |letz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |letz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |letz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |letz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestLet_R) ) (! (= (|$IsValid'$42_TestLet_R'| s) (|$IsValid'u64'| (|$x#$42_TestLet_R| s)))
 :qid |letz3bpl.906:34|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestLet_R'| s))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |letz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |letz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |letz3bpl.245:54|
 :skolemid |26|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t3 () Int)
(declare-fun $t4 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t1@0 () T@$Mutation_3430)
(declare-fun _$t1 () T@$Mutation_3430)
(declare-fun inline$$MulU64$0$dst@2 () Int)
(declare-fun |$temp_0'u64'@2| () Int)
(declare-fun $t0@0 () T@$Mutation_3430)
(declare-fun |$temp_0'u64'@3| () Int)
(declare-fun $t15 () Int)
(declare-fun $t5@0 () Int)
(declare-fun inline$$MulU64$0$dst@0 () Int)
(declare-fun $t6@0 () Int)
(declare-fun $t13@0 () Int)
(declare-fun inline$$MulU64$0$dst@1 () Int)
(declare-fun _$t0 () T@$Mutation_3430)
(declare-fun inline$$Div$0$dst@2 () Int)
(declare-fun inline$$Div$0$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun inline$$Div$0$dst@1 () Int)
(declare-fun $t7@0 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t8@0 () Int)
(declare-fun $t9@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun |$temp_0'u64'@1| () Int)
(push 1)
(set-info :boogie-vc-id $42_TestLet_spec_let_with_abort$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 20060) (let ((L2_correct  (=> (= (ControlFlow 0 16230) (- 0 20742)) (or (or (= $t3 0) (> $t3 18446744073709551615)) (> $t4 18446744073709551615)))))
(let ((anon10_Then_correct  (=> $abort_flag@2 (=> (and (= $abort_code@3 $abort_code@3) (= (ControlFlow 0 16200) 16230)) L2_correct))))
(let ((anon9_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 16244) 16230)) L2_correct))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 16258) 16230)) L2_correct))))
(let ((anon10_Else_correct  (=> (not $abort_flag@2) (=> (and (= $t1@0 ($Mutation_3430 (|l#$Mutation_3430| _$t1) (|p#$Mutation_3430| _$t1) inline$$MulU64$0$dst@2)) (= |$temp_0'u64'@2| (|v#$Mutation_3430| $t0@0))) (=> (and (and (= |$temp_0'u64'@2| |$temp_0'u64'@2|) (= |$temp_0'u64'@3| (|v#$Mutation_3430| $t1@0))) (and (= |$temp_0'u64'@3| |$temp_0'u64'@3|) (= $t15 (div $t5@0 $t3)))) (and (=> (= (ControlFlow 0 16186) (- 0 20677)) (not (= $t3 0))) (=> (not (= $t3 0)) (and (=> (= (ControlFlow 0 16186) (- 0 20688)) (not (> $t3 18446744073709551615))) (=> (not (> $t3 18446744073709551615)) (and (=> (= (ControlFlow 0 16186) (- 0 20699)) (not (> $t4 18446744073709551615))) (=> (not (> $t4 18446744073709551615)) (and (=> (= (ControlFlow 0 16186) (- 0 20710)) (= (|v#$Mutation_3430| $t0@0) (- (+ $t15 $t3) $t3))) (=> (= (|v#$Mutation_3430| $t0@0) (- (+ $t15 $t3) $t3)) (=> (= (ControlFlow 0 16186) (- 0 20728)) (= (|v#$Mutation_3430| $t1@0) $t4)))))))))))))))
(let ((inline$$MulU64$0$anon3_Then$1_correct  (=> (= $abort_flag@2 true) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= inline$$MulU64$0$dst@2 inline$$MulU64$0$dst@0)) (and (=> (= (ControlFlow 0 16070) 16200) anon10_Then_correct) (=> (= (ControlFlow 0 16070) 16186) anon10_Else_correct))))))
(let ((inline$$MulU64$0$anon3_Then_correct  (=> (and (> (* $t6@0 $t13@0) $MAX_U64) (= (ControlFlow 0 16068) 16070)) inline$$MulU64$0$anon3_Then$1_correct)))
(let ((inline$$MulU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (* $t6@0 $t13@0)) (=> (and (and (= inline$$MulU64$0$dst@1 (* $t6@0 $t13@0)) (= $abort_flag@2 $abort_flag@1)) (and (= $abort_code@3 $abort_code@2) (= inline$$MulU64$0$dst@2 inline$$MulU64$0$dst@1))) (and (=> (= (ControlFlow 0 16016) 16200) anon10_Then_correct) (=> (= (ControlFlow 0 16016) 16186) anon10_Else_correct))))))
(let ((anon9_Else_correct  (=> (not $abort_flag@1) (=> (and (= $t0@0 ($Mutation_3430 (|l#$Mutation_3430| _$t0) (|p#$Mutation_3430| _$t0) inline$$Div$0$dst@2)) (= $t13@0 (|v#$Mutation_3430| _$t1))) (and (=> (= (ControlFlow 0 16076) 16068) inline$$MulU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 16076) 16016) inline$$MulU64$0$anon3_Else_correct))))))
(let ((inline$$Div$0$anon3_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= inline$$Div$0$dst@2 inline$$Div$0$dst@0)) (and (=> (= (ControlFlow 0 15897) 16244) anon9_Then_correct) (=> (= (ControlFlow 0 15897) 16076) anon9_Else_correct))))))
(let ((inline$$Div$0$anon3_Then_correct  (=> (and (= inline$$AddU64$0$dst@2 0) (= (ControlFlow 0 15895) 15897)) inline$$Div$0$anon3_Then$1_correct)))
(let ((inline$$Div$0$anon3_Else_correct  (=> (not (= inline$$AddU64$0$dst@2 0)) (=> (and (and (= inline$$Div$0$dst@1 (div $t7@0 inline$$AddU64$0$dst@2)) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$Div$0$dst@2 inline$$Div$0$dst@1))) (and (=> (= (ControlFlow 0 15847) 16244) anon9_Then_correct) (=> (= (ControlFlow 0 15847) 16076) anon9_Else_correct))))))
(let ((anon8_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 15903) 15895) inline$$Div$0$anon3_Then_correct) (=> (= (ControlFlow 0 15903) 15847) inline$$Div$0$anon3_Else_correct)))))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 15750) 16258) anon8_Then_correct) (=> (= (ControlFlow 0 15750) 15903) anon8_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t8@0 $t9@0) $MAX_U64) (= (ControlFlow 0 15748) 15750)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t8@0 $t9@0)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t8@0 $t9@0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 15696) 16258) anon8_Then_correct) (=> (= (ControlFlow 0 15696) 15903) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (and (and (= (|l#$Mutation_3430| _$t0) ($Param 0)) (= (|l#$Mutation_3430| _$t1) ($Param 1))) (and (|$IsValid'u64'| (|v#$Mutation_3430| _$t0)) (|$IsValid'u64'| (|v#$Mutation_3430| _$t1)))) (and (and (= $t3 (+ (|v#$Mutation_3430| _$t0) (|v#$Mutation_3430| _$t1))) (= $t4 (* (|v#$Mutation_3430| _$t0) (|v#$Mutation_3430| _$t1)))) (and (= $t5@0 (|v#$Mutation_3430| _$t0)) (= |$temp_0'u64'@0| (|v#$Mutation_3430| _$t0))))) (and (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (= |$temp_0'u64'@1| (|v#$Mutation_3430| _$t1))) (and (= |$temp_0'u64'@1| |$temp_0'u64'@1|) (= $t6@0 (|v#$Mutation_3430| _$t0)))) (and (and (= $t6@0 $t6@0) (= $t7@0 (|v#$Mutation_3430| _$t0))) (and (= $t8@0 (|v#$Mutation_3430| _$t0)) (= $t9@0 (|v#$Mutation_3430| _$t1)))))) (and (=> (= (ControlFlow 0 15756) 15748) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 15756) 15696) inline$$AddU64$0$anon3_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 20060) 15756) anon0$1_correct)))
anon0_correct)))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@$42_TestLet_R 0)) ((($42_TestLet_R (|$x#$42_TestLet_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestLet_R| 0)
(declare-datatypes ((T@$Memory_11208 0)) ((($Memory_11208 (|domain#$Memory_11208| |T@[Int]Bool|) (|contents#$Memory_11208| |T@[Int]$42_TestLet_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9622 0)) ((($Mutation_9622 (|l#$Mutation_9622| T@$Location) (|p#$Mutation_9622| (Seq Int)) (|v#$Mutation_9622| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestLet_R'| (T@$42_TestLet_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |letz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |letz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |letz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |letz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |letz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |letz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |letz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |letz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |letz3bpl.590:13|
 :skolemid |15|
))))
 :qid |letz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |letz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |letz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |letz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |letz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |letz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |letz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |letz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestLet_R) ) (! (= (|$IsValid'$42_TestLet_R'| s) (|$IsValid'u64'| (|$x#$42_TestLet_R| s)))
 :qid |letz3bpl.906:34|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestLet_R'| s))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |letz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |letz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |letz3bpl.245:54|
 :skolemid |26|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t3 () Int)
(declare-fun $t4 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t1@0 () T@$Mutation_3430)
(declare-fun _$t1 () T@$Mutation_3430)
(declare-fun inline$$MulU64$0$dst@2 () Int)
(declare-fun |$temp_0'u64'@2| () Int)
(declare-fun $t0@0 () T@$Mutation_3430)
(declare-fun |$temp_0'u64'@3| () Int)
(declare-fun $t15 () Int)
(declare-fun $t5@0 () Int)
(declare-fun inline$$MulU64$0$dst@0 () Int)
(declare-fun $t6@0 () Int)
(declare-fun $t13@0 () Int)
(declare-fun inline$$MulU64$0$dst@1 () Int)
(declare-fun _$t0 () T@$Mutation_3430)
(declare-fun inline$$Div$0$dst@2 () Int)
(declare-fun inline$$Div$0$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun inline$$Div$0$dst@1 () Int)
(declare-fun $t7@0 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t8@0 () Int)
(declare-fun $t9@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun |$temp_0'u64'@1| () Int)
(push 1)
(set-info :boogie-vc-id $42_TestLet_spec_let_with_abort_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 20781) (let ((L2_correct  (=> (= (ControlFlow 0 17095) (- 0 21457)) (or (or (not (= $t3 0)) (>= $t3 18446744073709551615)) (>= $t4 18446744073709551615)))))
(let ((anon10_Then_correct  (=> $abort_flag@2 (=> (and (= $abort_code@3 $abort_code@3) (= (ControlFlow 0 17063) 17095)) L2_correct))))
(let ((anon9_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 17109) 17095)) L2_correct))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 17123) 17095)) L2_correct))))
(let ((anon10_Else_correct  (=> (not $abort_flag@2) (=> (and (= $t1@0 ($Mutation_3430 (|l#$Mutation_3430| _$t1) (|p#$Mutation_3430| _$t1) inline$$MulU64$0$dst@2)) (= |$temp_0'u64'@2| (|v#$Mutation_3430| $t0@0))) (=> (and (and (= |$temp_0'u64'@2| |$temp_0'u64'@2|) (= |$temp_0'u64'@3| (|v#$Mutation_3430| $t1@0))) (and (= |$temp_0'u64'@3| |$temp_0'u64'@3|) (= $t15 (div $t5@0 $t3)))) (and (=> (= (ControlFlow 0 17049) (- 0 21398)) (not (not (= $t3 0)))) (=> (not (not (= $t3 0))) (and (=> (= (ControlFlow 0 17049) (- 0 21411)) (not (>= $t3 18446744073709551615))) (=> (not (>= $t3 18446744073709551615)) (and (=> (= (ControlFlow 0 17049) (- 0 21422)) (not (>= $t4 18446744073709551615))) (=> (not (>= $t4 18446744073709551615)) (and (=> (= (ControlFlow 0 17049) (- 0 21433)) (= (|v#$Mutation_3430| $t0@0) $t15)) (=> (= (|v#$Mutation_3430| $t0@0) $t15) (=> (= (ControlFlow 0 17049) (- 0 21443)) (= (|v#$Mutation_3430| $t1@0) $t4)))))))))))))))
(let ((inline$$MulU64$0$anon3_Then$1_correct  (=> (= $abort_flag@2 true) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= inline$$MulU64$0$dst@2 inline$$MulU64$0$dst@0)) (and (=> (= (ControlFlow 0 16939) 17063) anon10_Then_correct) (=> (= (ControlFlow 0 16939) 17049) anon10_Else_correct))))))
(let ((inline$$MulU64$0$anon3_Then_correct  (=> (and (> (* $t6@0 $t13@0) $MAX_U64) (= (ControlFlow 0 16937) 16939)) inline$$MulU64$0$anon3_Then$1_correct)))
(let ((inline$$MulU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (* $t6@0 $t13@0)) (=> (and (and (= inline$$MulU64$0$dst@1 (* $t6@0 $t13@0)) (= $abort_flag@2 $abort_flag@1)) (and (= $abort_code@3 $abort_code@2) (= inline$$MulU64$0$dst@2 inline$$MulU64$0$dst@1))) (and (=> (= (ControlFlow 0 16885) 17063) anon10_Then_correct) (=> (= (ControlFlow 0 16885) 17049) anon10_Else_correct))))))
(let ((anon9_Else_correct  (=> (not $abort_flag@1) (=> (and (= $t0@0 ($Mutation_3430 (|l#$Mutation_3430| _$t0) (|p#$Mutation_3430| _$t0) inline$$Div$0$dst@2)) (= $t13@0 (|v#$Mutation_3430| _$t1))) (and (=> (= (ControlFlow 0 16945) 16937) inline$$MulU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 16945) 16885) inline$$MulU64$0$anon3_Else_correct))))))
(let ((inline$$Div$0$anon3_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= inline$$Div$0$dst@2 inline$$Div$0$dst@0)) (and (=> (= (ControlFlow 0 16766) 17109) anon9_Then_correct) (=> (= (ControlFlow 0 16766) 16945) anon9_Else_correct))))))
(let ((inline$$Div$0$anon3_Then_correct  (=> (and (= inline$$AddU64$0$dst@2 0) (= (ControlFlow 0 16764) 16766)) inline$$Div$0$anon3_Then$1_correct)))
(let ((inline$$Div$0$anon3_Else_correct  (=> (not (= inline$$AddU64$0$dst@2 0)) (=> (and (and (= inline$$Div$0$dst@1 (div $t7@0 inline$$AddU64$0$dst@2)) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$Div$0$dst@2 inline$$Div$0$dst@1))) (and (=> (= (ControlFlow 0 16716) 17109) anon9_Then_correct) (=> (= (ControlFlow 0 16716) 16945) anon9_Else_correct))))))
(let ((anon8_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 16772) 16764) inline$$Div$0$anon3_Then_correct) (=> (= (ControlFlow 0 16772) 16716) inline$$Div$0$anon3_Else_correct)))))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 16619) 17123) anon8_Then_correct) (=> (= (ControlFlow 0 16619) 16772) anon8_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t8@0 $t9@0) $MAX_U64) (= (ControlFlow 0 16617) 16619)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t8@0 $t9@0)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t8@0 $t9@0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 16565) 17123) anon8_Then_correct) (=> (= (ControlFlow 0 16565) 16772) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (and (and (= (|l#$Mutation_3430| _$t0) ($Param 0)) (= (|l#$Mutation_3430| _$t1) ($Param 1))) (and (|$IsValid'u64'| (|v#$Mutation_3430| _$t0)) (|$IsValid'u64'| (|v#$Mutation_3430| _$t1)))) (and (and (= $t3 (+ (|v#$Mutation_3430| _$t0) (|v#$Mutation_3430| _$t1))) (= $t4 (* (|v#$Mutation_3430| _$t0) (|v#$Mutation_3430| _$t1)))) (and (= $t5@0 (|v#$Mutation_3430| _$t0)) (= |$temp_0'u64'@0| (|v#$Mutation_3430| _$t0))))) (and (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (= |$temp_0'u64'@1| (|v#$Mutation_3430| _$t1))) (and (= |$temp_0'u64'@1| |$temp_0'u64'@1|) (= $t6@0 (|v#$Mutation_3430| _$t0)))) (and (and (= $t6@0 $t6@0) (= $t7@0 (|v#$Mutation_3430| _$t0))) (and (= $t8@0 (|v#$Mutation_3430| _$t0)) (= $t9@0 (|v#$Mutation_3430| _$t1)))))) (and (=> (= (ControlFlow 0 16625) 16617) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 16625) 16565) inline$$AddU64$0$anon3_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 20781) 16625) anon0$1_correct)))
anon0_correct)))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 20781)))
(get-value ((ControlFlow 0 16625)))
(get-value ((ControlFlow 0 16565)))
(get-value ((ControlFlow 0 16772)))
(get-value ((ControlFlow 0 16716)))
(get-value ((ControlFlow 0 16945)))
(get-value ((ControlFlow 0 16885)))
(get-value ((ControlFlow 0 17049)))
(assert (not (= (ControlFlow 0 17049) (- 21398))))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 20781)))
(get-value ((ControlFlow 0 16625)))
(get-value ((ControlFlow 0 16565)))
(get-value ((ControlFlow 0 16772)))
(get-value ((ControlFlow 0 16764)))
(get-value ((ControlFlow 0 16766)))
(get-value ((ControlFlow 0 17109)))
(get-value ((ControlFlow 0 17095)))
(assert (not (= (ControlFlow 0 17095) (- 21457))))
(check-sat)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@$42_TestLet_R 0)) ((($42_TestLet_R (|$x#$42_TestLet_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestLet_R| 0)
(declare-datatypes ((T@$Memory_11208 0)) ((($Memory_11208 (|domain#$Memory_11208| |T@[Int]Bool|) (|contents#$Memory_11208| |T@[Int]$42_TestLet_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9622 0)) ((($Mutation_9622 (|l#$Mutation_9622| T@$Location) (|p#$Mutation_9622| (Seq Int)) (|v#$Mutation_9622| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestLet_R'| (T@$42_TestLet_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |letz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |letz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |letz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |letz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |letz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |letz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |letz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |letz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |letz3bpl.590:13|
 :skolemid |15|
))))
 :qid |letz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |letz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |letz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |letz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |letz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |letz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |letz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |letz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestLet_R) ) (! (= (|$IsValid'$42_TestLet_R'| s) (|$IsValid'u64'| (|$x#$42_TestLet_R| s)))
 :qid |letz3bpl.906:34|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestLet_R'| s))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |letz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |letz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |letz3bpl.245:54|
 :skolemid |26|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t8 () Bool)
(declare-fun $t0@0 () T@$Mutation_3430)
(declare-fun _$t0 () T@$Mutation_3430)
(declare-fun |$temp_0'u64'@2| () Int)
(declare-fun $t1@0 () T@$Mutation_3430)
(declare-fun _$t1 () T@$Mutation_3430)
(declare-fun |$temp_0'u64'@3| () Int)
(declare-fun $t10 () Int)
(declare-fun $t7@0 () Int)
(declare-fun $t5 () Int)
(declare-fun $t6 () Int)
(declare-fun |$temp_0'u64'@4| () Int)
(declare-fun |$temp_0'u64'@5| () Int)
(declare-fun $t11 () Int)
(declare-fun $t4@0 () Int)
(declare-fun $t2 () Int)
(declare-fun $t3 () Int)
(declare-fun $t9 () Int)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun |$temp_0'u64'@1| () Int)
(push 1)
(set-info :boogie-vc-id $42_TestLet_spec_let_with_abort_opaque_caller$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 21498) (let ((anon5_Else_correct  (=> (not $t8) (=> (and (= $t0@0 ($Mutation_3430 (|l#$Mutation_3430| _$t0) (|p#$Mutation_3430| _$t0) |$temp_0'u64'@2|)) (|$IsValid'u64'| (|v#$Mutation_3430| $t0@0))) (=> (and (and (= $t1@0 ($Mutation_3430 (|l#$Mutation_3430| _$t1) (|p#$Mutation_3430| _$t1) |$temp_0'u64'@3|)) (|$IsValid'u64'| (|v#$Mutation_3430| $t1@0))) (and (|$IsValid'u64'| (|v#$Mutation_3430| $t0@0)) (|$IsValid'u64'| (|v#$Mutation_3430| $t1@0)))) (=> (and (and (and (= $t10 (div $t7@0 $t5)) (= (|v#$Mutation_3430| $t0@0) (- (+ $t10 $t5) $t5))) (and (= (|v#$Mutation_3430| $t1@0) $t6) (= |$temp_0'u64'@4| (|v#$Mutation_3430| $t0@0)))) (and (and (= |$temp_0'u64'@4| |$temp_0'u64'@4|) (= |$temp_0'u64'@5| (|v#$Mutation_3430| $t1@0))) (and (= |$temp_0'u64'@5| |$temp_0'u64'@5|) (= $t11 (div $t4@0 $t2))))) (and (=> (= (ControlFlow 0 17553) (- 0 21899)) (not (= $t2 0))) (=> (not (= $t2 0)) (and (=> (= (ControlFlow 0 17553) (- 0 21910)) (not (> $t2 18446744073709551615))) (=> (not (> $t2 18446744073709551615)) (and (=> (= (ControlFlow 0 17553) (- 0 21921)) (not (> $t3 18446744073709551615))) (=> (not (> $t3 18446744073709551615)) (and (=> (= (ControlFlow 0 17553) (- 0 21932)) (= (|v#$Mutation_3430| $t0@0) (- (+ $t11 $t2) $t2))) (=> (= (|v#$Mutation_3430| $t0@0) (- (+ $t11 $t2) $t2)) (=> (= (ControlFlow 0 17553) (- 0 21950)) (= (|v#$Mutation_3430| $t1@0) $t3))))))))))))))))
(let ((anon5_Then_correct  (=> $t8 (=> (and (= $t9 $t9) (= (ControlFlow 0 17593) (- 0 21738))) (or (or (= $t2 0) (> $t2 18446744073709551615)) (> $t3 18446744073709551615))))))
(let ((anon0$1_correct  (=> (= (|l#$Mutation_3430| _$t0) ($Param 0)) (=> (and (= (|l#$Mutation_3430| _$t1) ($Param 1)) (|$IsValid'u64'| (|v#$Mutation_3430| _$t0))) (=> (and (and (|$IsValid'u64'| (|v#$Mutation_3430| _$t1)) (= $t2 (+ (|v#$Mutation_3430| _$t0) (|v#$Mutation_3430| _$t1)))) (and (= $t3 (* (|v#$Mutation_3430| _$t0) (|v#$Mutation_3430| _$t1))) (= $t4@0 (|v#$Mutation_3430| _$t0)))) (=> (and (and (and (= |$temp_0'u64'@0| (|v#$Mutation_3430| _$t0)) (= |$temp_0'u64'@0| |$temp_0'u64'@0|)) (and (= |$temp_0'u64'@1| (|v#$Mutation_3430| _$t1)) (= |$temp_0'u64'@1| |$temp_0'u64'@1|))) (and (and (= $t5 (+ (|v#$Mutation_3430| _$t0) (|v#$Mutation_3430| _$t1))) (= $t6 (* (|v#$Mutation_3430| _$t0) (|v#$Mutation_3430| _$t1)))) (and (= $t7@0 (|v#$Mutation_3430| _$t0)) (= $t8  (or (or (= $t5 0) (> $t5 18446744073709551615)) (> $t6 18446744073709551615)))))) (and (=> (= (ControlFlow 0 17377) 17593) anon5_Then_correct) (=> (= (ControlFlow 0 17377) 17553) anon5_Else_correct))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 21498) 17377) anon0$1_correct)))
anon0_correct)))))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@$42_TestLet_R 0)) ((($42_TestLet_R (|$x#$42_TestLet_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestLet_R| 0)
(declare-datatypes ((T@$Memory_11208 0)) ((($Memory_11208 (|domain#$Memory_11208| |T@[Int]Bool|) (|contents#$Memory_11208| |T@[Int]$42_TestLet_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9622 0)) ((($Mutation_9622 (|l#$Mutation_9622| T@$Location) (|p#$Mutation_9622| (Seq Int)) (|v#$Mutation_9622| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestLet_R'| (T@$42_TestLet_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |letz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |letz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |letz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |letz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |letz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |letz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |letz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |letz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |letz3bpl.590:13|
 :skolemid |15|
))))
 :qid |letz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |letz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |letz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |letz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |letz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |letz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |letz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |letz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestLet_R) ) (! (= (|$IsValid'$42_TestLet_R'| s) (|$IsValid'u64'| (|$x#$42_TestLet_R| s)))
 :qid |letz3bpl.906:34|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestLet_R'| s))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |letz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |letz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |letz3bpl.245:54|
 :skolemid |26|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $t1@0 () T@$Mutation_3430)
(declare-fun _$t1 () T@$Mutation_3430)
(declare-fun inline$$AddU64$2$dst@2 () Int)
(declare-fun |$temp_0'u64'@2| () Int)
(declare-fun $t0@0 () T@$Mutation_3430)
(declare-fun |$temp_0'u64'@3| () Int)
(declare-fun $t13 () Int)
(declare-fun $t2@0 () Int)
(declare-fun $t3@0 () Int)
(declare-fun $t14 () Int)
(declare-fun $abort_code@3 () Int)
(declare-fun inline$$AddU64$2$dst@0 () Int)
(declare-fun $t10@0 () Int)
(declare-fun $t11@0 () Int)
(declare-fun inline$$AddU64$2$dst@1 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun _$t0 () T@$Mutation_3430)
(declare-fun inline$$AddU64$1$dst@2 () Int)
(declare-fun inline$$AddU64$1$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun $t8@0 () Int)
(declare-fun inline$$AddU64$1$dst@1 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t4@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun |$temp_0'u64'@1| () Int)
(push 1)
(set-info :boogie-vc-id $42_TestLet_spec_let_with_old$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 21972) (let ((anon10_Else_correct  (=> (and (and (and (not $abort_flag@2) (= $t1@0 ($Mutation_3430 (|l#$Mutation_3430| _$t1) (|p#$Mutation_3430| _$t1) inline$$AddU64$2$dst@2))) (and (= |$temp_0'u64'@2| (|v#$Mutation_3430| $t0@0)) (= |$temp_0'u64'@2| |$temp_0'u64'@2|))) (and (and (= |$temp_0'u64'@3| (|v#$Mutation_3430| $t1@0)) (= |$temp_0'u64'@3| |$temp_0'u64'@3|)) (and (= $t13 (+ (+ $t2@0 1) $t3@0)) (= $t14 (+ (|v#$Mutation_3430| $t0@0) $t3@0))))) (and (=> (= (ControlFlow 0 18354) (- 0 22578)) (= (|v#$Mutation_3430| $t0@0) $t13)) (=> (= (|v#$Mutation_3430| $t0@0) $t13) (=> (= (ControlFlow 0 18354) (- 0 22588)) (= (|v#$Mutation_3430| $t1@0) $t14)))))))
(let ((anon10_Then_correct true))
(let ((inline$$AddU64$2$anon3_Then$1_correct  (=> (= $abort_flag@2 true) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= inline$$AddU64$2$dst@2 inline$$AddU64$2$dst@0)) (and (=> (= (ControlFlow 0 18258) 18368) anon10_Then_correct) (=> (= (ControlFlow 0 18258) 18354) anon10_Else_correct))))))
(let ((inline$$AddU64$2$anon3_Then_correct  (=> (and (> (+ $t10@0 $t11@0) $MAX_U64) (= (ControlFlow 0 18256) 18258)) inline$$AddU64$2$anon3_Then$1_correct)))
(let ((inline$$AddU64$2$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t10@0 $t11@0)) (=> (and (and (= inline$$AddU64$2$dst@1 (+ $t10@0 $t11@0)) (= $abort_flag@2 $abort_flag@1)) (and (= $abort_code@3 $abort_code@2) (= inline$$AddU64$2$dst@2 inline$$AddU64$2$dst@1))) (and (=> (= (ControlFlow 0 18204) 18368) anon10_Then_correct) (=> (= (ControlFlow 0 18204) 18354) anon10_Else_correct))))))
(let ((anon9_Else_correct  (=> (and (and (not $abort_flag@1) (= $t0@0 ($Mutation_3430 (|l#$Mutation_3430| _$t0) (|p#$Mutation_3430| _$t0) inline$$AddU64$1$dst@2))) (and (= $t10@0 (|v#$Mutation_3430| $t0@0)) (= $t11@0 (|v#$Mutation_3430| _$t1)))) (and (=> (= (ControlFlow 0 18264) 18256) inline$$AddU64$2$anon3_Then_correct) (=> (= (ControlFlow 0 18264) 18204) inline$$AddU64$2$anon3_Else_correct)))))
(let ((anon9_Then_correct true))
(let ((inline$$AddU64$1$anon3_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@0)) (and (=> (= (ControlFlow 0 18081) 18388) anon9_Then_correct) (=> (= (ControlFlow 0 18081) 18264) anon9_Else_correct))))))
(let ((inline$$AddU64$1$anon3_Then_correct  (=> (and (> (+ inline$$AddU64$0$dst@2 $t8@0) $MAX_U64) (= (ControlFlow 0 18079) 18081)) inline$$AddU64$1$anon3_Then$1_correct)))
(let ((inline$$AddU64$1$anon3_Else_correct  (=> (>= $MAX_U64 (+ inline$$AddU64$0$dst@2 $t8@0)) (=> (and (and (= inline$$AddU64$1$dst@1 (+ inline$$AddU64$0$dst@2 $t8@0)) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$AddU64$1$dst@2 inline$$AddU64$1$dst@1))) (and (=> (= (ControlFlow 0 18027) 18388) anon9_Then_correct) (=> (= (ControlFlow 0 18027) 18264) anon9_Else_correct))))))
(let ((anon8_Else_correct  (=> (and (not $abort_flag@0) (= $t8@0 (|v#$Mutation_3430| _$t1))) (and (=> (= (ControlFlow 0 18087) 18079) inline$$AddU64$1$anon3_Then_correct) (=> (= (ControlFlow 0 18087) 18027) inline$$AddU64$1$anon3_Else_correct)))))
(let ((anon8_Then_correct true))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 17916) 18402) anon8_Then_correct) (=> (= (ControlFlow 0 17916) 18087) anon8_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t4@0 1) $MAX_U64) (= (ControlFlow 0 17914) 17916)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t4@0 1)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t4@0 1)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 17862) 18402) anon8_Then_correct) (=> (= (ControlFlow 0 17862) 18087) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (= (|l#$Mutation_3430| _$t0) ($Param 0)) (= (|l#$Mutation_3430| _$t1) ($Param 1))) (and (|$IsValid'u64'| (|v#$Mutation_3430| _$t0)) (|$IsValid'u64'| (|v#$Mutation_3430| _$t1)))) (=> (and (and (and (= $t2@0 (|v#$Mutation_3430| _$t0)) (= $t3@0 (|v#$Mutation_3430| _$t1))) (and (= |$temp_0'u64'@0| (|v#$Mutation_3430| _$t0)) (= |$temp_0'u64'@0| |$temp_0'u64'@0|))) (and (and (= |$temp_0'u64'@1| (|v#$Mutation_3430| _$t1)) (= |$temp_0'u64'@1| |$temp_0'u64'@1|)) (and (= $t4@0 (|v#$Mutation_3430| _$t0)) (|$IsValid'u64'| 1)))) (and (=> (= (ControlFlow 0 17922) 17914) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 17922) 17862) inline$$AddU64$0$anon3_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 21972) 17922) anon0$1_correct)))
anon0_correct))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@$42_TestLet_R 0)) ((($42_TestLet_R (|$x#$42_TestLet_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestLet_R| 0)
(declare-datatypes ((T@$Memory_11208 0)) ((($Memory_11208 (|domain#$Memory_11208| |T@[Int]Bool|) (|contents#$Memory_11208| |T@[Int]$42_TestLet_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9622 0)) ((($Mutation_9622 (|l#$Mutation_9622| T@$Location) (|p#$Mutation_9622| (Seq Int)) (|v#$Mutation_9622| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestLet_R'| (T@$42_TestLet_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |letz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |letz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |letz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |letz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |letz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |letz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |letz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |letz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |letz3bpl.590:13|
 :skolemid |15|
))))
 :qid |letz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |letz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |letz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |letz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |letz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |letz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |letz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |letz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestLet_R) ) (! (= (|$IsValid'$42_TestLet_R'| s) (|$IsValid'u64'| (|$x#$42_TestLet_R| s)))
 :qid |letz3bpl.906:34|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestLet_R'| s))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |letz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |letz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |letz3bpl.245:54|
 :skolemid |26|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t3 () Int)
(declare-fun $t4 () Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t1@0 () T@$Mutation_3430)
(declare-fun _$t1 () T@$Mutation_3430)
(declare-fun inline$$MulU64$0$dst@2 () Int)
(declare-fun |$temp_0'u64'@2| () Int)
(declare-fun $t0@0 () T@$Mutation_3430)
(declare-fun |$temp_0'u64'@3| () Int)
(declare-fun $t15 () Int)
(declare-fun $t5@0 () Int)
(declare-fun $t16 () Int)
(declare-fun $t17 () Int)
(declare-fun $t18 () Int)
(declare-fun $t19 () Int)
(declare-fun inline$$MulU64$0$dst@0 () Int)
(declare-fun $t6@0 () Int)
(declare-fun $t13@0 () Int)
(declare-fun inline$$MulU64$0$dst@1 () Int)
(declare-fun _$t0 () T@$Mutation_3430)
(declare-fun inline$$Div$0$dst@2 () Int)
(declare-fun inline$$Div$0$dst@0 () Int)
(declare-fun inline$$AddU64$0$dst@2 () Int)
(declare-fun inline$$Div$0$dst@1 () Int)
(declare-fun $t7@0 () Int)
(declare-fun inline$$AddU64$0$dst@0 () Int)
(declare-fun $t8@0 () Int)
(declare-fun $t9@0 () Int)
(declare-fun inline$$AddU64$0$dst@1 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun |$temp_0'u64'@1| () Int)
(push 1)
(set-info :boogie-vc-id $42_TestLet_spec_let_with_schema$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 22616) (let ((L2_correct  (=> (= (ControlFlow 0 19270) (- 0 23331)) (or (or (= $t3 0) (> $t3 18446744073709551615)) (> $t4 18446744073709551615)))))
(let ((anon10_Then_correct  (=> $abort_flag@2 (=> (and (= $abort_code@3 $abort_code@3) (= (ControlFlow 0 19240) 19270)) L2_correct))))
(let ((anon9_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 19284) 19270)) L2_correct))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 19298) 19270)) L2_correct))))
(let ((anon10_Else_correct  (=> (not $abort_flag@2) (=> (and (= $t1@0 ($Mutation_3430 (|l#$Mutation_3430| _$t1) (|p#$Mutation_3430| _$t1) inline$$MulU64$0$dst@2)) (= |$temp_0'u64'@2| (|v#$Mutation_3430| $t0@0))) (=> (and (and (and (= |$temp_0'u64'@2| |$temp_0'u64'@2|) (= |$temp_0'u64'@3| (|v#$Mutation_3430| $t1@0))) (and (= |$temp_0'u64'@3| |$temp_0'u64'@3|) (= $t15 (div $t5@0 $t3)))) (and (and (= $t16 (- (+ $t15 $t3) $t3)) (= $t17 (|v#$Mutation_3430| $t0@0))) (and (= $t18 $t4) (= $t19 (|v#$Mutation_3430| $t1@0))))) (and (=> (= (ControlFlow 0 19226) (- 0 23279)) (not (= $t3 0))) (=> (not (= $t3 0)) (and (=> (= (ControlFlow 0 19226) (- 0 23290)) (not (> $t3 18446744073709551615))) (=> (not (> $t3 18446744073709551615)) (and (=> (= (ControlFlow 0 19226) (- 0 23301)) (not (> $t4 18446744073709551615))) (=> (not (> $t4 18446744073709551615)) (and (=> (= (ControlFlow 0 19226) (- 0 23312)) (= $t16 $t17)) (=> (= $t16 $t17) (=> (= (ControlFlow 0 19226) (- 0 23318)) (= $t18 $t19)))))))))))))))
(let ((inline$$MulU64$0$anon3_Then$1_correct  (=> (= $abort_flag@2 true) (=> (and (= $abort_code@3 $EXEC_FAILURE_CODE) (= inline$$MulU64$0$dst@2 inline$$MulU64$0$dst@0)) (and (=> (= (ControlFlow 0 19080) 19240) anon10_Then_correct) (=> (= (ControlFlow 0 19080) 19226) anon10_Else_correct))))))
(let ((inline$$MulU64$0$anon3_Then_correct  (=> (and (> (* $t6@0 $t13@0) $MAX_U64) (= (ControlFlow 0 19078) 19080)) inline$$MulU64$0$anon3_Then$1_correct)))
(let ((inline$$MulU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (* $t6@0 $t13@0)) (=> (and (and (= inline$$MulU64$0$dst@1 (* $t6@0 $t13@0)) (= $abort_flag@2 $abort_flag@1)) (and (= $abort_code@3 $abort_code@2) (= inline$$MulU64$0$dst@2 inline$$MulU64$0$dst@1))) (and (=> (= (ControlFlow 0 19026) 19240) anon10_Then_correct) (=> (= (ControlFlow 0 19026) 19226) anon10_Else_correct))))))
(let ((anon9_Else_correct  (=> (not $abort_flag@1) (=> (and (= $t0@0 ($Mutation_3430 (|l#$Mutation_3430| _$t0) (|p#$Mutation_3430| _$t0) inline$$Div$0$dst@2)) (= $t13@0 (|v#$Mutation_3430| _$t1))) (and (=> (= (ControlFlow 0 19086) 19078) inline$$MulU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 19086) 19026) inline$$MulU64$0$anon3_Else_correct))))))
(let ((inline$$Div$0$anon3_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@1 true) (= inline$$Div$0$dst@2 inline$$Div$0$dst@0)) (and (=> (= (ControlFlow 0 18907) 19284) anon9_Then_correct) (=> (= (ControlFlow 0 18907) 19086) anon9_Else_correct))))))
(let ((inline$$Div$0$anon3_Then_correct  (=> (and (= inline$$AddU64$0$dst@2 0) (= (ControlFlow 0 18905) 18907)) inline$$Div$0$anon3_Then$1_correct)))
(let ((inline$$Div$0$anon3_Else_correct  (=> (not (= inline$$AddU64$0$dst@2 0)) (=> (and (and (= inline$$Div$0$dst@1 (div $t7@0 inline$$AddU64$0$dst@2)) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@1 $abort_flag@0) (= inline$$Div$0$dst@2 inline$$Div$0$dst@1))) (and (=> (= (ControlFlow 0 18857) 19284) anon9_Then_correct) (=> (= (ControlFlow 0 18857) 19086) anon9_Else_correct))))))
(let ((anon8_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 18913) 18905) inline$$Div$0$anon3_Then_correct) (=> (= (ControlFlow 0 18913) 18857) inline$$Div$0$anon3_Else_correct)))))
(let ((inline$$AddU64$0$anon3_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@0)) (and (=> (= (ControlFlow 0 18760) 19298) anon8_Then_correct) (=> (= (ControlFlow 0 18760) 18913) anon8_Else_correct))))))
(let ((inline$$AddU64$0$anon3_Then_correct  (=> (and (> (+ $t8@0 $t9@0) $MAX_U64) (= (ControlFlow 0 18758) 18760)) inline$$AddU64$0$anon3_Then$1_correct)))
(let ((inline$$AddU64$0$anon3_Else_correct  (=> (>= $MAX_U64 (+ $t8@0 $t9@0)) (=> (and (and (= inline$$AddU64$0$dst@1 (+ $t8@0 $t9@0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$AddU64$0$dst@2 inline$$AddU64$0$dst@1))) (and (=> (= (ControlFlow 0 18706) 19298) anon8_Then_correct) (=> (= (ControlFlow 0 18706) 18913) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (and (and (= (|l#$Mutation_3430| _$t0) ($Param 0)) (= (|l#$Mutation_3430| _$t1) ($Param 1))) (and (|$IsValid'u64'| (|v#$Mutation_3430| _$t0)) (|$IsValid'u64'| (|v#$Mutation_3430| _$t1)))) (and (and (= $t3 (+ (|v#$Mutation_3430| _$t0) (|v#$Mutation_3430| _$t1))) (= $t4 (* (|v#$Mutation_3430| _$t0) (|v#$Mutation_3430| _$t1)))) (and (= $t5@0 (|v#$Mutation_3430| _$t0)) (= |$temp_0'u64'@0| (|v#$Mutation_3430| _$t0))))) (and (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (= |$temp_0'u64'@1| (|v#$Mutation_3430| _$t1))) (and (= |$temp_0'u64'@1| |$temp_0'u64'@1|) (= $t6@0 (|v#$Mutation_3430| _$t0)))) (and (and (= $t6@0 $t6@0) (= $t7@0 (|v#$Mutation_3430| _$t0))) (and (= $t8@0 (|v#$Mutation_3430| _$t0)) (= $t9@0 (|v#$Mutation_3430| _$t1)))))) (and (=> (= (ControlFlow 0 18766) 18758) inline$$AddU64$0$anon3_Then_correct) (=> (= (ControlFlow 0 18766) 18706) inline$$AddU64$0$anon3_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 22616) 18766) anon0$1_correct)))
anon0_correct)))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
