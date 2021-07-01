(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@$42_TestInvariants_T 0)) ((($42_TestInvariants_T (|$x#$42_TestInvariants_T| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_S 0)) ((($42_TestInvariants_S (|$y#$42_TestInvariants_S| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_R 0)) ((($42_TestInvariants_R (|$x#$42_TestInvariants_R| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14960 0)) ((($Mutation_14960 (|l#$Mutation_14960| T@$Location) (|p#$Mutation_14960| (Seq Int)) (|v#$Mutation_14960| T@$42_TestInvariants_S) ) ) ))
(declare-datatypes ((T@$Mutation_14919 0)) ((($Mutation_14919 (|l#$Mutation_14919| T@$Location) (|p#$Mutation_14919| (Seq Int)) (|v#$Mutation_14919| T@$42_TestInvariants_T) ) ) ))
(declare-datatypes ((T@$Mutation_12247 0)) ((($Mutation_12247 (|l#$Mutation_12247| T@$Location) (|p#$Mutation_12247| (Seq Int)) (|v#$Mutation_12247| T@$42_TestInvariants_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10425 0)) ((($Mutation_10425 (|l#$Mutation_10425| T@$Location) (|p#$Mutation_10425| (Seq Int)) (|v#$Mutation_10425| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestInvariants_R'| (T@$42_TestInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestInvariants_S'| (T@$42_TestInvariants_S) Bool)
(declare-fun |$IsValid'$42_TestInvariants_T'| (T@$42_TestInvariants_T) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |invariantsz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |invariantsz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |invariantsz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |invariantsz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |invariantsz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |invariantsz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |invariantsz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |invariantsz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |invariantsz3bpl.590:13|
 :skolemid |15|
))))
 :qid |invariantsz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |invariantsz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |invariantsz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |invariantsz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |invariantsz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |invariantsz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |invariantsz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |invariantsz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestInvariants_R) ) (! (= (|$IsValid'$42_TestInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestInvariants_R| s)))
 :qid |invariantsz3bpl.906:41|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestInvariants_S) ) (! (= (|$IsValid'$42_TestInvariants_S'| s@@0) (|$IsValid'u64'| (|$y#$42_TestInvariants_S| s@@0)))
 :qid |invariantsz3bpl.919:41|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestInvariants_S'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestInvariants_T) ) (! (= (|$IsValid'$42_TestInvariants_T'| s@@1) (|$IsValid'u64'| (|$x#$42_TestInvariants_T| s@@1)))
 :qid |invariantsz3bpl.932:41|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestInvariants_T'| s@@1))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |invariantsz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |invariantsz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |invariantsz3bpl.245:54|
 :skolemid |27|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () T@$42_TestInvariants_R)
(push 1)
(set-info :boogie-vc-id $42_TestInvariants_invalid_R_pack$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 20480) (let ((anon0$1_correct  (=> (and (|$IsValid'u64'| 1) (= $t1@0 ($42_TestInvariants_R 1))) (and (=> (= (ControlFlow 0 17293) (- 0 20526)) (> (|$x#$42_TestInvariants_R| $t1@0) 1)) (=> (> (|$x#$42_TestInvariants_R| $t1@0) 1) (=> (and (= $t1@0 $t1@0) (= (ControlFlow 0 17293) (- 0 20545))) (= (|$x#$42_TestInvariants_R| $t1@0) 1)))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 20480) 17293) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 20480)))
(get-value ((ControlFlow 0 17293)))
(assert (not (= (ControlFlow 0 17293) (- 20526))))
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
(declare-datatypes ((T@$42_TestInvariants_T 0)) ((($42_TestInvariants_T (|$x#$42_TestInvariants_T| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_S 0)) ((($42_TestInvariants_S (|$y#$42_TestInvariants_S| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_R 0)) ((($42_TestInvariants_R (|$x#$42_TestInvariants_R| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14960 0)) ((($Mutation_14960 (|l#$Mutation_14960| T@$Location) (|p#$Mutation_14960| (Seq Int)) (|v#$Mutation_14960| T@$42_TestInvariants_S) ) ) ))
(declare-datatypes ((T@$Mutation_14919 0)) ((($Mutation_14919 (|l#$Mutation_14919| T@$Location) (|p#$Mutation_14919| (Seq Int)) (|v#$Mutation_14919| T@$42_TestInvariants_T) ) ) ))
(declare-datatypes ((T@$Mutation_12247 0)) ((($Mutation_12247 (|l#$Mutation_12247| T@$Location) (|p#$Mutation_12247| (Seq Int)) (|v#$Mutation_12247| T@$42_TestInvariants_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10425 0)) ((($Mutation_10425 (|l#$Mutation_10425| T@$Location) (|p#$Mutation_10425| (Seq Int)) (|v#$Mutation_10425| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestInvariants_R'| (T@$42_TestInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestInvariants_S'| (T@$42_TestInvariants_S) Bool)
(declare-fun |$IsValid'$42_TestInvariants_T'| (T@$42_TestInvariants_T) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |invariantsz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |invariantsz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |invariantsz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |invariantsz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |invariantsz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |invariantsz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |invariantsz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |invariantsz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |invariantsz3bpl.590:13|
 :skolemid |15|
))))
 :qid |invariantsz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |invariantsz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |invariantsz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |invariantsz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |invariantsz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |invariantsz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |invariantsz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |invariantsz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestInvariants_R) ) (! (= (|$IsValid'$42_TestInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestInvariants_R| s)))
 :qid |invariantsz3bpl.906:41|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestInvariants_S) ) (! (= (|$IsValid'$42_TestInvariants_S'| s@@0) (|$IsValid'u64'| (|$y#$42_TestInvariants_S| s@@0)))
 :qid |invariantsz3bpl.919:41|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestInvariants_S'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestInvariants_T) ) (! (= (|$IsValid'$42_TestInvariants_T'| s@@1) (|$IsValid'u64'| (|$x#$42_TestInvariants_T| s@@1)))
 :qid |invariantsz3bpl.932:41|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestInvariants_T'| s@@1))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |invariantsz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |invariantsz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |invariantsz3bpl.245:54|
 :skolemid |27|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () T@$42_TestInvariants_R)
(declare-fun $t3@0 () T@$Mutation_12247)
(declare-fun |$temp_0'$42_TestInvariants_R'@0| () T@$42_TestInvariants_R)
(declare-fun $t5@0 () T@$42_TestInvariants_R)
(declare-fun $t3@1 () T@$Mutation_12247)
(declare-fun $t1@1 () T@$42_TestInvariants_R)
(declare-fun $t0 () T@$Mutation_12247)
(declare-fun $t3 () T@$Mutation_12247)
(push 1)
(set-info :boogie-vc-id $42_TestInvariants_invalid_R_update$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 20576) (let ((anon0$1_correct  (=> (and (|$IsValid'u64'| 3) (= $t1@0 ($42_TestInvariants_R 3))) (and (=> (= (ControlFlow 0 17487) (- 0 20648)) (> (|$x#$42_TestInvariants_R| $t1@0) 1)) (=> (> (|$x#$42_TestInvariants_R| $t1@0) 1) (=> (and (= $t1@0 $t1@0) (= $t3@0 ($Mutation_12247 ($Local 1) (as seq.empty (Seq Int)) $t1@0))) (=> (and (and (= |$temp_0'$42_TestInvariants_R'@0| (|v#$Mutation_12247| $t3@0)) (= |$temp_0'$42_TestInvariants_R'@0| |$temp_0'$42_TestInvariants_R'@0|)) (and (|$IsValid'u64'| 4) (= $t5@0 ($42_TestInvariants_R 4)))) (and (=> (= (ControlFlow 0 17487) (- 0 20714)) (> (|$x#$42_TestInvariants_R| $t5@0) 1)) (=> (> (|$x#$42_TestInvariants_R| $t5@0) 1) (=> (= $t3@1 ($Mutation_12247 (|l#$Mutation_12247| $t3@0) (|p#$Mutation_12247| $t3@0) $t5@0)) (and (=> (= (ControlFlow 0 17487) (- 0 20735)) (> (|$x#$42_TestInvariants_R| (|v#$Mutation_12247| $t3@1)) 1)) (=> (> (|$x#$42_TestInvariants_R| (|v#$Mutation_12247| $t3@1)) 1) (=> (= $t1@1 (|v#$Mutation_12247| $t3@1)) (=> (and (= $t1@1 $t1@1) (= (ControlFlow 0 17487) (- 0 20770))) (= (|$x#$42_TestInvariants_R| $t1@1) 4)))))))))))))))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_12247| $t0)) 0) (=> (and (= (seq.len (|p#$Mutation_12247| $t3)) 0) (= (ControlFlow 0 17367) 17487)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 20576) 17367) anon0_correct)))
PreconditionGeneratedEntry_correct))))
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
(declare-datatypes ((T@$42_TestInvariants_T 0)) ((($42_TestInvariants_T (|$x#$42_TestInvariants_T| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_S 0)) ((($42_TestInvariants_S (|$y#$42_TestInvariants_S| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_R 0)) ((($42_TestInvariants_R (|$x#$42_TestInvariants_R| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14960 0)) ((($Mutation_14960 (|l#$Mutation_14960| T@$Location) (|p#$Mutation_14960| (Seq Int)) (|v#$Mutation_14960| T@$42_TestInvariants_S) ) ) ))
(declare-datatypes ((T@$Mutation_14919 0)) ((($Mutation_14919 (|l#$Mutation_14919| T@$Location) (|p#$Mutation_14919| (Seq Int)) (|v#$Mutation_14919| T@$42_TestInvariants_T) ) ) ))
(declare-datatypes ((T@$Mutation_12247 0)) ((($Mutation_12247 (|l#$Mutation_12247| T@$Location) (|p#$Mutation_12247| (Seq Int)) (|v#$Mutation_12247| T@$42_TestInvariants_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10425 0)) ((($Mutation_10425 (|l#$Mutation_10425| T@$Location) (|p#$Mutation_10425| (Seq Int)) (|v#$Mutation_10425| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestInvariants_R'| (T@$42_TestInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestInvariants_S'| (T@$42_TestInvariants_S) Bool)
(declare-fun |$IsValid'$42_TestInvariants_T'| (T@$42_TestInvariants_T) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |invariantsz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |invariantsz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |invariantsz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |invariantsz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |invariantsz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |invariantsz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |invariantsz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |invariantsz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |invariantsz3bpl.590:13|
 :skolemid |15|
))))
 :qid |invariantsz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |invariantsz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |invariantsz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |invariantsz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |invariantsz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |invariantsz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |invariantsz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |invariantsz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestInvariants_R) ) (! (= (|$IsValid'$42_TestInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestInvariants_R| s)))
 :qid |invariantsz3bpl.906:41|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestInvariants_S) ) (! (= (|$IsValid'$42_TestInvariants_S'| s@@0) (|$IsValid'u64'| (|$y#$42_TestInvariants_S| s@@0)))
 :qid |invariantsz3bpl.919:41|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestInvariants_S'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestInvariants_T) ) (! (= (|$IsValid'$42_TestInvariants_T'| s@@1) (|$IsValid'u64'| (|$x#$42_TestInvariants_T| s@@1)))
 :qid |invariantsz3bpl.932:41|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestInvariants_T'| s@@1))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |invariantsz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |invariantsz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |invariantsz3bpl.245:54|
 :skolemid |27|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t9@0 () T@$42_TestInvariants_R)
(declare-fun $t1@1 () T@$Mutation_12247)
(declare-fun $t1@0 () T@$Mutation_12247)
(declare-fun $t10@0 () T@$42_TestInvariants_R)
(declare-fun $t2@1 () T@$42_TestInvariants_R)
(declare-fun _$t0 () Bool)
(declare-fun $t7@0 () T@$Mutation_12247)
(declare-fun $t3@0 () T@$42_TestInvariants_R)
(declare-fun |$temp_0'$42_TestInvariants_R'@1| () T@$42_TestInvariants_R)
(declare-fun $t6@0 () T@$Mutation_12247)
(declare-fun $t2@0 () T@$42_TestInvariants_R)
(declare-fun |$temp_0'$42_TestInvariants_R'@0| () T@$42_TestInvariants_R)
(declare-fun $t1 () T@$Mutation_12247)
(declare-fun $t6 () T@$Mutation_12247)
(declare-fun $t7 () T@$Mutation_12247)
(push 1)
(set-info :boogie-vc-id $42_TestInvariants_invalid_R_update_branching$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 20784) (let ((L3_correct  (=> (and (|$IsValid'u64'| 4) (= $t9@0 ($42_TestInvariants_R 4))) (and (=> (= (ControlFlow 0 17786) (- 0 21064)) (> (|$x#$42_TestInvariants_R| $t9@0) 1)) (=> (> (|$x#$42_TestInvariants_R| $t9@0) 1) (=> (and (= $t1@1 ($Mutation_12247 (|l#$Mutation_12247| $t1@0) (|p#$Mutation_12247| $t1@0) $t9@0)) (= $t10@0 (|v#$Mutation_12247| $t1@1))) (and (=> (= (ControlFlow 0 17786) (- 0 21097)) (> (|$x#$42_TestInvariants_R| (|v#$Mutation_12247| $t1@1)) 1)) (=> (> (|$x#$42_TestInvariants_R| (|v#$Mutation_12247| $t1@1)) 1) (=> (and (= $t2@1 (|v#$Mutation_12247| $t1@1)) (= (ControlFlow 0 17786) (- 0 21119))) (> (|$x#$42_TestInvariants_R| (|v#$Mutation_12247| $t1@1)) 1))))))))))
(let ((anon5_Else_correct  (=> (and (not _$t0) (= $t7@0 ($Mutation_12247 ($Local 3) (as seq.empty (Seq Int)) $t3@0))) (and (=> (= (ControlFlow 0 17710) (- 0 21010)) (> (|$x#$42_TestInvariants_R| (|v#$Mutation_12247| $t7@0)) 1)) (=> (> (|$x#$42_TestInvariants_R| (|v#$Mutation_12247| $t7@0)) 1) (=> (and (and (= |$temp_0'$42_TestInvariants_R'@1| (|v#$Mutation_12247| $t7@0)) (= |$temp_0'$42_TestInvariants_R'@1| |$temp_0'$42_TestInvariants_R'@1|)) (and (= $t1@0 $t7@0) (= (ControlFlow 0 17710) 17786))) L3_correct))))))
(let ((anon5_Then_correct  (=> (and _$t0 (= $t6@0 ($Mutation_12247 ($Local 2) (as seq.empty (Seq Int)) $t2@0))) (and (=> (= (ControlFlow 0 17824) (- 0 20963)) (> (|$x#$42_TestInvariants_R| (|v#$Mutation_12247| $t6@0)) 1)) (=> (> (|$x#$42_TestInvariants_R| (|v#$Mutation_12247| $t6@0)) 1) (=> (and (and (= |$temp_0'$42_TestInvariants_R'@0| (|v#$Mutation_12247| $t6@0)) (= |$temp_0'$42_TestInvariants_R'@0| |$temp_0'$42_TestInvariants_R'@0|)) (and (= $t1@0 $t6@0) (= (ControlFlow 0 17824) 17786))) L3_correct))))))
(let ((anon0$1_correct  (=> (= _$t0 _$t0) (=> (and (|$IsValid'u64'| 5) (= $t2@0 ($42_TestInvariants_R 5))) (and (=> (= (ControlFlow 0 17668) (- 0 20892)) (> (|$x#$42_TestInvariants_R| $t2@0) 1)) (=> (> (|$x#$42_TestInvariants_R| $t2@0) 1) (=> (= $t2@0 $t2@0) (=> (and (|$IsValid'u64'| 3) (= $t3@0 ($42_TestInvariants_R 3))) (and (=> (= (ControlFlow 0 17668) (- 0 20926)) (> (|$x#$42_TestInvariants_R| $t3@0) 1)) (=> (> (|$x#$42_TestInvariants_R| $t3@0) 1) (=> (= $t3@0 $t3@0) (and (=> (= (ControlFlow 0 17668) 17824) anon5_Then_correct) (=> (= (ControlFlow 0 17668) 17710) anon5_Else_correct)))))))))))))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_12247| $t1)) 0) (= (seq.len (|p#$Mutation_12247| $t6)) 0)) (and (= (seq.len (|p#$Mutation_12247| $t7)) 0) (= (ControlFlow 0 17596) 17668))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 20784) 17596) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
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
(declare-datatypes ((T@$42_TestInvariants_T 0)) ((($42_TestInvariants_T (|$x#$42_TestInvariants_T| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_S 0)) ((($42_TestInvariants_S (|$y#$42_TestInvariants_S| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_R 0)) ((($42_TestInvariants_R (|$x#$42_TestInvariants_R| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14960 0)) ((($Mutation_14960 (|l#$Mutation_14960| T@$Location) (|p#$Mutation_14960| (Seq Int)) (|v#$Mutation_14960| T@$42_TestInvariants_S) ) ) ))
(declare-datatypes ((T@$Mutation_14919 0)) ((($Mutation_14919 (|l#$Mutation_14919| T@$Location) (|p#$Mutation_14919| (Seq Int)) (|v#$Mutation_14919| T@$42_TestInvariants_T) ) ) ))
(declare-datatypes ((T@$Mutation_12247 0)) ((($Mutation_12247 (|l#$Mutation_12247| T@$Location) (|p#$Mutation_12247| (Seq Int)) (|v#$Mutation_12247| T@$42_TestInvariants_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10425 0)) ((($Mutation_10425 (|l#$Mutation_10425| T@$Location) (|p#$Mutation_10425| (Seq Int)) (|v#$Mutation_10425| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestInvariants_R'| (T@$42_TestInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestInvariants_S'| (T@$42_TestInvariants_S) Bool)
(declare-fun |$IsValid'$42_TestInvariants_T'| (T@$42_TestInvariants_T) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |invariantsz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |invariantsz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |invariantsz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |invariantsz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |invariantsz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |invariantsz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |invariantsz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |invariantsz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |invariantsz3bpl.590:13|
 :skolemid |15|
))))
 :qid |invariantsz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |invariantsz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |invariantsz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |invariantsz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |invariantsz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |invariantsz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |invariantsz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |invariantsz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestInvariants_R) ) (! (= (|$IsValid'$42_TestInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestInvariants_R| s)))
 :qid |invariantsz3bpl.906:41|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestInvariants_S) ) (! (= (|$IsValid'$42_TestInvariants_S'| s@@0) (|$IsValid'u64'| (|$y#$42_TestInvariants_S| s@@0)))
 :qid |invariantsz3bpl.919:41|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestInvariants_S'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestInvariants_T) ) (! (= (|$IsValid'$42_TestInvariants_T'| s@@1) (|$IsValid'u64'| (|$x#$42_TestInvariants_T| s@@1)))
 :qid |invariantsz3bpl.932:41|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestInvariants_T'| s@@1))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |invariantsz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |invariantsz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |invariantsz3bpl.245:54|
 :skolemid |27|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t2@1 () T@$Mutation_12247)
(declare-fun $t2@0 () T@$Mutation_12247)
(declare-fun inline$$42_TestInvariants_update_helper$0$$t0@1 () T@$Mutation_3430)
(declare-fun |inline$$42_TestInvariants_update_helper$0$$temp_0'u64'@1| () Int)
(declare-fun $t3@0 () T@$Mutation_3430)
(declare-fun |inline$$42_TestInvariants_update_helper$0$$temp_0'u64'@2| () Int)
(declare-fun $t0@0 () T@$42_TestInvariants_R)
(declare-fun $t2 () T@$Mutation_12247)
(declare-fun $t3 () T@$Mutation_3430)
(push 1)
(set-info :boogie-vc-id $42_TestInvariants_invalid_R_update_indirectly$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 21156) (let ((anon3_Else_correct  (=> (not false) (=> (and (= $t2@1 ($Mutation_12247 (|l#$Mutation_12247| $t2@0) (|p#$Mutation_12247| $t2@0) ($42_TestInvariants_R (|v#$Mutation_3430| inline$$42_TestInvariants_update_helper$0$$t0@1)))) (= (ControlFlow 0 18191) (- 0 21405))) (> (|$x#$42_TestInvariants_R| (|v#$Mutation_12247| $t2@1)) 1)))))
(let ((anon3_Then_correct true))
(let ((inline$$42_TestInvariants_update_helper$0$anon0_correct  (=> (and (= |inline$$42_TestInvariants_update_helper$0$$temp_0'u64'@1| (|v#$Mutation_3430| $t3@0)) (= |inline$$42_TestInvariants_update_helper$0$$temp_0'u64'@1| |inline$$42_TestInvariants_update_helper$0$$temp_0'u64'@1|)) (=> (and (and (|$IsValid'u64'| 4) (= inline$$42_TestInvariants_update_helper$0$$t0@1 ($Mutation_3430 (|l#$Mutation_3430| $t3@0) (|p#$Mutation_3430| $t3@0) 4))) (and (= |inline$$42_TestInvariants_update_helper$0$$temp_0'u64'@2| (|v#$Mutation_3430| inline$$42_TestInvariants_update_helper$0$$t0@1)) (= |inline$$42_TestInvariants_update_helper$0$$temp_0'u64'@2| |inline$$42_TestInvariants_update_helper$0$$temp_0'u64'@2|))) (and (=> (= (ControlFlow 0 18133) 18209) anon3_Then_correct) (=> (= (ControlFlow 0 18133) 18191) anon3_Else_correct))))))
(let ((anon0$1_correct  (=> (and (|$IsValid'u64'| 3) (= $t0@0 ($42_TestInvariants_R 3))) (and (=> (= (ControlFlow 0 18139) (- 0 21246)) (> (|$x#$42_TestInvariants_R| $t0@0) 1)) (=> (> (|$x#$42_TestInvariants_R| $t0@0) 1) (=> (and (and (= $t0@0 $t0@0) (= $t2@0 ($Mutation_12247 ($Local 0) (as seq.empty (Seq Int)) $t0@0))) (and (= $t3@0 ($Mutation_3430 (|l#$Mutation_12247| $t2@0) (seq.++ (|p#$Mutation_12247| $t2@0) (seq.unit 0)) (|$x#$42_TestInvariants_R| (|v#$Mutation_12247| $t2@0)))) (= (ControlFlow 0 18139) 18133))) inline$$42_TestInvariants_update_helper$0$anon0_correct))))))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_12247| $t2)) 0) (=> (and (= (seq.len (|p#$Mutation_3430| $t3)) 0) (= (ControlFlow 0 17948) 18139)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 21156) 17948) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
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
(declare-datatypes ((T@$42_TestInvariants_T 0)) ((($42_TestInvariants_T (|$x#$42_TestInvariants_T| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_S 0)) ((($42_TestInvariants_S (|$y#$42_TestInvariants_S| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_R 0)) ((($42_TestInvariants_R (|$x#$42_TestInvariants_R| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14960 0)) ((($Mutation_14960 (|l#$Mutation_14960| T@$Location) (|p#$Mutation_14960| (Seq Int)) (|v#$Mutation_14960| T@$42_TestInvariants_S) ) ) ))
(declare-datatypes ((T@$Mutation_14919 0)) ((($Mutation_14919 (|l#$Mutation_14919| T@$Location) (|p#$Mutation_14919| (Seq Int)) (|v#$Mutation_14919| T@$42_TestInvariants_T) ) ) ))
(declare-datatypes ((T@$Mutation_12247 0)) ((($Mutation_12247 (|l#$Mutation_12247| T@$Location) (|p#$Mutation_12247| (Seq Int)) (|v#$Mutation_12247| T@$42_TestInvariants_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10425 0)) ((($Mutation_10425 (|l#$Mutation_10425| T@$Location) (|p#$Mutation_10425| (Seq Int)) (|v#$Mutation_10425| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestInvariants_R'| (T@$42_TestInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestInvariants_S'| (T@$42_TestInvariants_S) Bool)
(declare-fun |$IsValid'$42_TestInvariants_T'| (T@$42_TestInvariants_T) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |invariantsz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |invariantsz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |invariantsz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |invariantsz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |invariantsz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |invariantsz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |invariantsz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |invariantsz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |invariantsz3bpl.590:13|
 :skolemid |15|
))))
 :qid |invariantsz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |invariantsz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |invariantsz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |invariantsz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |invariantsz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |invariantsz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |invariantsz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |invariantsz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestInvariants_R) ) (! (= (|$IsValid'$42_TestInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestInvariants_R| s)))
 :qid |invariantsz3bpl.906:41|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestInvariants_S) ) (! (= (|$IsValid'$42_TestInvariants_S'| s@@0) (|$IsValid'u64'| (|$y#$42_TestInvariants_S| s@@0)))
 :qid |invariantsz3bpl.919:41|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestInvariants_S'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestInvariants_T) ) (! (= (|$IsValid'$42_TestInvariants_T'| s@@1) (|$IsValid'u64'| (|$x#$42_TestInvariants_T| s@@1)))
 :qid |invariantsz3bpl.932:41|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestInvariants_T'| s@@1))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |invariantsz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |invariantsz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |invariantsz3bpl.245:54|
 :skolemid |27|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () T@$42_TestInvariants_R)
(declare-fun $t3@0 () T@$Mutation_12247)
(declare-fun $t4@0 () T@$Mutation_3430)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun $t4@1 () T@$Mutation_3430)
(declare-fun $t3@1 () T@$Mutation_12247)
(declare-fun $t1@1 () T@$42_TestInvariants_R)
(declare-fun $t0 () T@$Mutation_3430)
(declare-fun $t3 () T@$Mutation_12247)
(declare-fun $t4 () T@$Mutation_3430)
(push 1)
(set-info :boogie-vc-id $42_TestInvariants_invalid_R_update_ref$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 21444) (let ((anon0$1_correct  (=> (and (|$IsValid'u64'| 3) (= $t1@0 ($42_TestInvariants_R 3))) (and (=> (= (ControlFlow 0 18459) (- 0 21524)) (> (|$x#$42_TestInvariants_R| $t1@0) 1)) (=> (> (|$x#$42_TestInvariants_R| $t1@0) 1) (=> (and (and (and (= $t1@0 $t1@0) (= $t3@0 ($Mutation_12247 ($Local 1) (as seq.empty (Seq Int)) $t1@0))) (and (= $t4@0 ($Mutation_3430 (|l#$Mutation_12247| $t3@0) (seq.++ (|p#$Mutation_12247| $t3@0) (seq.unit 0)) (|$x#$42_TestInvariants_R| (|v#$Mutation_12247| $t3@0)))) (= |$temp_0'u64'@0| (|v#$Mutation_3430| $t4@0)))) (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (|$IsValid'u64'| 4)) (and (= $t4@1 ($Mutation_3430 (|l#$Mutation_3430| $t4@0) (|p#$Mutation_3430| $t4@0) 4)) (= $t3@1 ($Mutation_12247 (|l#$Mutation_12247| $t3@0) (|p#$Mutation_12247| $t3@0) ($42_TestInvariants_R (|v#$Mutation_3430| $t4@1))))))) (and (=> (= (ControlFlow 0 18459) (- 0 21624)) (> (|$x#$42_TestInvariants_R| (|v#$Mutation_12247| $t3@1)) 1)) (=> (> (|$x#$42_TestInvariants_R| (|v#$Mutation_12247| $t3@1)) 1) (=> (= $t1@1 (|v#$Mutation_12247| $t3@1)) (=> (and (= $t1@1 $t1@1) (= (ControlFlow 0 18459) (- 0 21659))) (= (|$x#$42_TestInvariants_R| $t1@1) 4)))))))))))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_3430| $t0)) 0) (= (seq.len (|p#$Mutation_12247| $t3)) 0)) (and (= (seq.len (|p#$Mutation_3430| $t4)) 0) (= (ControlFlow 0 18327) 18459))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 21444) 18327) anon0_correct)))
PreconditionGeneratedEntry_correct))))
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
(declare-datatypes ((T@$42_TestInvariants_T 0)) ((($42_TestInvariants_T (|$x#$42_TestInvariants_T| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_S 0)) ((($42_TestInvariants_S (|$y#$42_TestInvariants_S| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_R 0)) ((($42_TestInvariants_R (|$x#$42_TestInvariants_R| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14960 0)) ((($Mutation_14960 (|l#$Mutation_14960| T@$Location) (|p#$Mutation_14960| (Seq Int)) (|v#$Mutation_14960| T@$42_TestInvariants_S) ) ) ))
(declare-datatypes ((T@$Mutation_14919 0)) ((($Mutation_14919 (|l#$Mutation_14919| T@$Location) (|p#$Mutation_14919| (Seq Int)) (|v#$Mutation_14919| T@$42_TestInvariants_T) ) ) ))
(declare-datatypes ((T@$Mutation_12247 0)) ((($Mutation_12247 (|l#$Mutation_12247| T@$Location) (|p#$Mutation_12247| (Seq Int)) (|v#$Mutation_12247| T@$42_TestInvariants_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10425 0)) ((($Mutation_10425 (|l#$Mutation_10425| T@$Location) (|p#$Mutation_10425| (Seq Int)) (|v#$Mutation_10425| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestInvariants_R'| (T@$42_TestInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestInvariants_S'| (T@$42_TestInvariants_S) Bool)
(declare-fun |$IsValid'$42_TestInvariants_T'| (T@$42_TestInvariants_T) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |invariantsz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |invariantsz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |invariantsz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |invariantsz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |invariantsz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |invariantsz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |invariantsz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |invariantsz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |invariantsz3bpl.590:13|
 :skolemid |15|
))))
 :qid |invariantsz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |invariantsz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |invariantsz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |invariantsz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |invariantsz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |invariantsz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |invariantsz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |invariantsz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestInvariants_R) ) (! (= (|$IsValid'$42_TestInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestInvariants_R| s)))
 :qid |invariantsz3bpl.906:41|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestInvariants_S) ) (! (= (|$IsValid'$42_TestInvariants_S'| s@@0) (|$IsValid'u64'| (|$y#$42_TestInvariants_S| s@@0)))
 :qid |invariantsz3bpl.919:41|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestInvariants_S'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestInvariants_T) ) (! (= (|$IsValid'$42_TestInvariants_T'| s@@1) (|$IsValid'u64'| (|$x#$42_TestInvariants_T| s@@1)))
 :qid |invariantsz3bpl.932:41|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestInvariants_T'| s@@1))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |invariantsz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |invariantsz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |invariantsz3bpl.245:54|
 :skolemid |27|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@0 () T@$42_TestInvariants_R)
(declare-fun $t4@0 () T@$Mutation_12247)
(declare-fun |$temp_0'$42_TestInvariants_R'@0| () T@$42_TestInvariants_R)
(declare-fun $t5@0 () T@$Mutation_3430)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun $t5@1 () T@$Mutation_3430)
(declare-fun $t4@1 () T@$Mutation_12247)
(declare-fun $t0@1 () T@$42_TestInvariants_R)
(declare-fun $t7@0 () T@$Mutation_12247)
(declare-fun |$temp_0'$42_TestInvariants_R'@1| () T@$42_TestInvariants_R)
(declare-fun $t8@0 () T@$Mutation_3430)
(declare-fun |$temp_0'u64'@1| () Int)
(declare-fun $t8@1 () T@$Mutation_3430)
(declare-fun $t7@1 () T@$Mutation_12247)
(declare-fun $t1 () T@$Mutation_12247)
(declare-fun $t2 () T@$Mutation_3430)
(declare-fun $t4 () T@$Mutation_12247)
(declare-fun $t5 () T@$Mutation_3430)
(declare-fun $t7 () T@$Mutation_12247)
(declare-fun $t8 () T@$Mutation_3430)
(push 1)
(set-info :boogie-vc-id $42_TestInvariants_lifetime_invalid_R$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 21672) (let ((anon0$1_correct  (=> (and (|$IsValid'u64'| 3) (= $t0@0 ($42_TestInvariants_R 3))) (and (=> (= (ControlFlow 0 18808) (- 0 21788)) (> (|$x#$42_TestInvariants_R| $t0@0) 1)) (=> (> (|$x#$42_TestInvariants_R| $t0@0) 1) (=> (and (= $t0@0 $t0@0) (= $t4@0 ($Mutation_12247 ($Local 0) (as seq.empty (Seq Int)) $t0@0))) (=> (and (and (and (= |$temp_0'$42_TestInvariants_R'@0| (|v#$Mutation_12247| $t4@0)) (= |$temp_0'$42_TestInvariants_R'@0| |$temp_0'$42_TestInvariants_R'@0|)) (and (= $t5@0 ($Mutation_3430 (|l#$Mutation_12247| $t4@0) (seq.++ (|p#$Mutation_12247| $t4@0) (seq.unit 0)) (|$x#$42_TestInvariants_R| (|v#$Mutation_12247| $t4@0)))) (= |$temp_0'u64'@0| (|v#$Mutation_3430| $t5@0)))) (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (|$IsValid'u64'| 0)) (and (= $t5@1 ($Mutation_3430 (|l#$Mutation_3430| $t5@0) (|p#$Mutation_3430| $t5@0) 0)) (= $t4@1 ($Mutation_12247 (|l#$Mutation_12247| $t4@0) (|p#$Mutation_12247| $t4@0) ($42_TestInvariants_R (|v#$Mutation_3430| $t5@1))))))) (and (=> (= (ControlFlow 0 18808) (- 0 21905)) (> (|$x#$42_TestInvariants_R| (|v#$Mutation_12247| $t4@1)) 1)) (=> (> (|$x#$42_TestInvariants_R| (|v#$Mutation_12247| $t4@1)) 1) (=> (= $t0@1 (|v#$Mutation_12247| $t4@1)) (=> (and (= $t7@0 ($Mutation_12247 ($Local 0) (as seq.empty (Seq Int)) $t0@1)) (= |$temp_0'$42_TestInvariants_R'@1| (|v#$Mutation_12247| $t7@0))) (=> (and (and (and (= |$temp_0'$42_TestInvariants_R'@1| |$temp_0'$42_TestInvariants_R'@1|) (= $t8@0 ($Mutation_3430 (|l#$Mutation_12247| $t7@0) (seq.++ (|p#$Mutation_12247| $t7@0) (seq.unit 0)) (|$x#$42_TestInvariants_R| (|v#$Mutation_12247| $t7@0))))) (and (= |$temp_0'u64'@1| (|v#$Mutation_3430| $t8@0)) (= |$temp_0'u64'@1| |$temp_0'u64'@1|))) (and (and (|$IsValid'u64'| 2) (= $t8@1 ($Mutation_3430 (|l#$Mutation_3430| $t8@0) (|p#$Mutation_3430| $t8@0) 2))) (and (= $t7@1 ($Mutation_12247 (|l#$Mutation_12247| $t7@0) (|p#$Mutation_12247| $t7@0) ($42_TestInvariants_R (|v#$Mutation_3430| $t8@1)))) (= (ControlFlow 0 18808) (- 0 22028))))) (> (|$x#$42_TestInvariants_R| (|v#$Mutation_12247| $t7@1)) 1)))))))))))))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_12247| $t1)) 0) (=> (and (= (seq.len (|p#$Mutation_3430| $t2)) 0) (= (seq.len (|p#$Mutation_12247| $t4)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_3430| $t5)) 0) (= (seq.len (|p#$Mutation_12247| $t7)) 0)) (and (= (seq.len (|p#$Mutation_3430| $t8)) 0) (= (ControlFlow 0 18584) 18808))) anon0$1_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 21672) 18584) anon0_correct)))
PreconditionGeneratedEntry_correct))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 21672)))
(get-value ((ControlFlow 0 18584)))
(get-value ((ControlFlow 0 18808)))
(assert (not (= (ControlFlow 0 18808) (- 21905))))
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
(declare-datatypes ((T@$42_TestInvariants_T 0)) ((($42_TestInvariants_T (|$x#$42_TestInvariants_T| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_S 0)) ((($42_TestInvariants_S (|$y#$42_TestInvariants_S| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_R 0)) ((($42_TestInvariants_R (|$x#$42_TestInvariants_R| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14960 0)) ((($Mutation_14960 (|l#$Mutation_14960| T@$Location) (|p#$Mutation_14960| (Seq Int)) (|v#$Mutation_14960| T@$42_TestInvariants_S) ) ) ))
(declare-datatypes ((T@$Mutation_14919 0)) ((($Mutation_14919 (|l#$Mutation_14919| T@$Location) (|p#$Mutation_14919| (Seq Int)) (|v#$Mutation_14919| T@$42_TestInvariants_T) ) ) ))
(declare-datatypes ((T@$Mutation_12247 0)) ((($Mutation_12247 (|l#$Mutation_12247| T@$Location) (|p#$Mutation_12247| (Seq Int)) (|v#$Mutation_12247| T@$42_TestInvariants_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10425 0)) ((($Mutation_10425 (|l#$Mutation_10425| T@$Location) (|p#$Mutation_10425| (Seq Int)) (|v#$Mutation_10425| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestInvariants_R'| (T@$42_TestInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestInvariants_S'| (T@$42_TestInvariants_S) Bool)
(declare-fun |$IsValid'$42_TestInvariants_T'| (T@$42_TestInvariants_T) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |invariantsz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |invariantsz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |invariantsz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |invariantsz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |invariantsz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |invariantsz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |invariantsz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |invariantsz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |invariantsz3bpl.590:13|
 :skolemid |15|
))))
 :qid |invariantsz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |invariantsz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |invariantsz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |invariantsz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |invariantsz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |invariantsz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |invariantsz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |invariantsz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestInvariants_R) ) (! (= (|$IsValid'$42_TestInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestInvariants_R| s)))
 :qid |invariantsz3bpl.906:41|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestInvariants_S) ) (! (= (|$IsValid'$42_TestInvariants_S'| s@@0) (|$IsValid'u64'| (|$y#$42_TestInvariants_S| s@@0)))
 :qid |invariantsz3bpl.919:41|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestInvariants_S'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestInvariants_T) ) (! (= (|$IsValid'$42_TestInvariants_T'| s@@1) (|$IsValid'u64'| (|$x#$42_TestInvariants_T| s@@1)))
 :qid |invariantsz3bpl.932:41|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestInvariants_T'| s@@1))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |invariantsz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |invariantsz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |invariantsz3bpl.245:54|
 :skolemid |27|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@0 () T@$42_TestInvariants_R)
(declare-fun $t4@0 () T@$Mutation_12247)
(declare-fun |$temp_0'$42_TestInvariants_R'@0| () T@$42_TestInvariants_R)
(declare-fun $t5@0 () T@$Mutation_3430)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun $t5@1 () T@$Mutation_3430)
(declare-fun $t5@2 () T@$Mutation_3430)
(declare-fun $t4@1 () T@$Mutation_12247)
(declare-fun $t0@1 () T@$42_TestInvariants_R)
(declare-fun $t8@0 () T@$Mutation_12247)
(declare-fun |$temp_0'$42_TestInvariants_R'@1| () T@$42_TestInvariants_R)
(declare-fun $t9@0 () T@$Mutation_3430)
(declare-fun |$temp_0'u64'@1| () Int)
(declare-fun $t9@1 () T@$Mutation_3430)
(declare-fun $t8@1 () T@$Mutation_12247)
(declare-fun $t1 () T@$Mutation_12247)
(declare-fun $t2 () T@$Mutation_3430)
(declare-fun $t4 () T@$Mutation_12247)
(declare-fun $t5 () T@$Mutation_3430)
(declare-fun $t8 () T@$Mutation_12247)
(declare-fun $t9 () T@$Mutation_3430)
(push 1)
(set-info :boogie-vc-id $42_TestInvariants_lifetime_invalid_R_2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 22066) (let ((anon0$1_correct  (=> (and (|$IsValid'u64'| 4) (= $t0@0 ($42_TestInvariants_R 4))) (and (=> (= (ControlFlow 0 19202) (- 0 22186)) (> (|$x#$42_TestInvariants_R| $t0@0) 1)) (=> (> (|$x#$42_TestInvariants_R| $t0@0) 1) (=> (and (and (= $t0@0 $t0@0) (= $t4@0 ($Mutation_12247 ($Local 0) (as seq.empty (Seq Int)) $t0@0))) (and (= |$temp_0'$42_TestInvariants_R'@0| (|v#$Mutation_12247| $t4@0)) (= |$temp_0'$42_TestInvariants_R'@0| |$temp_0'$42_TestInvariants_R'@0|))) (=> (and (and (and (= $t5@0 ($Mutation_3430 (|l#$Mutation_12247| $t4@0) (seq.++ (|p#$Mutation_12247| $t4@0) (seq.unit 0)) (|$x#$42_TestInvariants_R| (|v#$Mutation_12247| $t4@0)))) (= |$temp_0'u64'@0| (|v#$Mutation_3430| $t5@0))) (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (|$IsValid'u64'| 0))) (and (and (= $t5@1 ($Mutation_3430 (|l#$Mutation_3430| $t5@0) (|p#$Mutation_3430| $t5@0) 0)) (|$IsValid'u64'| 2)) (and (= $t5@2 ($Mutation_3430 (|l#$Mutation_3430| $t5@1) (|p#$Mutation_3430| $t5@1) 2)) (= $t4@1 ($Mutation_12247 (|l#$Mutation_12247| $t4@0) (|p#$Mutation_12247| $t4@0) ($42_TestInvariants_R (|v#$Mutation_3430| $t5@2))))))) (and (=> (= (ControlFlow 0 19202) (- 0 22322)) (> (|$x#$42_TestInvariants_R| (|v#$Mutation_12247| $t4@1)) 1)) (=> (> (|$x#$42_TestInvariants_R| (|v#$Mutation_12247| $t4@1)) 1) (=> (= $t0@1 (|v#$Mutation_12247| $t4@1)) (=> (and (= $t8@0 ($Mutation_12247 ($Local 0) (as seq.empty (Seq Int)) $t0@1)) (= |$temp_0'$42_TestInvariants_R'@1| (|v#$Mutation_12247| $t8@0))) (=> (and (and (and (= |$temp_0'$42_TestInvariants_R'@1| |$temp_0'$42_TestInvariants_R'@1|) (= $t9@0 ($Mutation_3430 (|l#$Mutation_12247| $t8@0) (seq.++ (|p#$Mutation_12247| $t8@0) (seq.unit 0)) (|$x#$42_TestInvariants_R| (|v#$Mutation_12247| $t8@0))))) (and (= |$temp_0'u64'@1| (|v#$Mutation_3430| $t9@0)) (= |$temp_0'u64'@1| |$temp_0'u64'@1|))) (and (and (|$IsValid'u64'| 3) (= $t9@1 ($Mutation_3430 (|l#$Mutation_3430| $t9@0) (|p#$Mutation_3430| $t9@0) 3))) (and (= $t8@1 ($Mutation_12247 (|l#$Mutation_12247| $t8@0) (|p#$Mutation_12247| $t8@0) ($42_TestInvariants_R (|v#$Mutation_3430| $t9@1)))) (= (ControlFlow 0 19202) (- 0 22445))))) (> (|$x#$42_TestInvariants_R| (|v#$Mutation_12247| $t8@1)) 1)))))))))))))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_12247| $t1)) 0) (=> (and (= (seq.len (|p#$Mutation_3430| $t2)) 0) (= (seq.len (|p#$Mutation_12247| $t4)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_3430| $t5)) 0) (= (seq.len (|p#$Mutation_12247| $t8)) 0)) (and (= (seq.len (|p#$Mutation_3430| $t9)) 0) (= (ControlFlow 0 18964) 19202))) anon0$1_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 22066) 18964) anon0_correct)))
PreconditionGeneratedEntry_correct))))
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
(declare-datatypes ((T@$42_TestInvariants_T 0)) ((($42_TestInvariants_T (|$x#$42_TestInvariants_T| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_S 0)) ((($42_TestInvariants_S (|$y#$42_TestInvariants_S| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_R 0)) ((($42_TestInvariants_R (|$x#$42_TestInvariants_R| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14960 0)) ((($Mutation_14960 (|l#$Mutation_14960| T@$Location) (|p#$Mutation_14960| (Seq Int)) (|v#$Mutation_14960| T@$42_TestInvariants_S) ) ) ))
(declare-datatypes ((T@$Mutation_14919 0)) ((($Mutation_14919 (|l#$Mutation_14919| T@$Location) (|p#$Mutation_14919| (Seq Int)) (|v#$Mutation_14919| T@$42_TestInvariants_T) ) ) ))
(declare-datatypes ((T@$Mutation_12247 0)) ((($Mutation_12247 (|l#$Mutation_12247| T@$Location) (|p#$Mutation_12247| (Seq Int)) (|v#$Mutation_12247| T@$42_TestInvariants_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10425 0)) ((($Mutation_10425 (|l#$Mutation_10425| T@$Location) (|p#$Mutation_10425| (Seq Int)) (|v#$Mutation_10425| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestInvariants_R'| (T@$42_TestInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestInvariants_S'| (T@$42_TestInvariants_S) Bool)
(declare-fun |$IsValid'$42_TestInvariants_T'| (T@$42_TestInvariants_T) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |invariantsz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |invariantsz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |invariantsz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |invariantsz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |invariantsz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |invariantsz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |invariantsz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |invariantsz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |invariantsz3bpl.590:13|
 :skolemid |15|
))))
 :qid |invariantsz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |invariantsz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |invariantsz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |invariantsz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |invariantsz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |invariantsz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |invariantsz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |invariantsz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestInvariants_R) ) (! (= (|$IsValid'$42_TestInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestInvariants_R| s)))
 :qid |invariantsz3bpl.906:41|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestInvariants_S) ) (! (= (|$IsValid'$42_TestInvariants_S'| s@@0) (|$IsValid'u64'| (|$y#$42_TestInvariants_S| s@@0)))
 :qid |invariantsz3bpl.919:41|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestInvariants_S'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestInvariants_T) ) (! (= (|$IsValid'$42_TestInvariants_T'| s@@1) (|$IsValid'u64'| (|$x#$42_TestInvariants_T| s@@1)))
 :qid |invariantsz3bpl.932:41|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestInvariants_T'| s@@1))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |invariantsz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |invariantsz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |invariantsz3bpl.245:54|
 :skolemid |27|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t9@4 () T@$Mutation_14919)
(declare-fun $t1@2 () T@$42_TestInvariants_T)
(declare-fun $t10@4 () T@$Mutation_14960)
(declare-fun $t3@2 () T@$42_TestInvariants_S)
(declare-fun $t1@3 () T@$42_TestInvariants_T)
(declare-fun $t3@3 () T@$42_TestInvariants_S)
(declare-fun $t15@0 () Bool)
(declare-fun $t10@0 () T@$Mutation_14960)
(declare-fun $t10@3 () T@$Mutation_14960)
(declare-fun $t5@1 () T@$Mutation_3430)
(declare-fun $t14@0 () Bool)
(declare-fun $t9@0 () T@$Mutation_14919)
(declare-fun $t9@3 () T@$Mutation_14919)
(declare-fun _$t0 () Bool)
(declare-fun $t5@0 () T@$Mutation_3430)
(declare-fun $t9@2 () T@$Mutation_14919)
(declare-fun $t1@1 () T@$42_TestInvariants_T)
(declare-fun $t10@2 () T@$Mutation_14960)
(declare-fun $t3@1 () T@$42_TestInvariants_S)
(declare-fun $t18@0 () Bool)
(declare-fun $t10@1 () T@$Mutation_14960)
(declare-fun $t5@2 () T@$Mutation_3430)
(declare-fun $t17@0 () Bool)
(declare-fun $t9@1 () T@$Mutation_14919)
(declare-fun |$temp_0'u64'@2| () Int)
(declare-fun $t12@0 () T@$Mutation_3430)
(declare-fun |$temp_0'u64'@1| () Int)
(declare-fun $t11@0 () T@$Mutation_3430)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun $t1@0 () T@$42_TestInvariants_T)
(declare-fun $t3@0 () T@$42_TestInvariants_S)
(declare-fun |$temp_0'$42_TestInvariants_T'@0| () T@$42_TestInvariants_T)
(declare-fun |$temp_0'$42_TestInvariants_S'@0| () T@$42_TestInvariants_S)
(declare-fun $t2 () T@$Mutation_14919)
(declare-fun $t4 () T@$Mutation_14960)
(declare-fun $t5 () T@$Mutation_3430)
(declare-fun $t6 () T@$Mutation_3430)
(declare-fun $t9 () T@$Mutation_14919)
(declare-fun $t10 () T@$Mutation_14960)
(declare-fun $t11 () T@$Mutation_3430)
(declare-fun $t12 () T@$Mutation_3430)
(push 1)
(set-info :boogie-vc-id $42_TestInvariants_lifetime_invalid_S_branching$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 22485) (let ((L7_correct true))
(let ((L11_correct  (and (=> (= (ControlFlow 0 19784) (- 0 23159)) (> (|$x#$42_TestInvariants_T| (|v#$Mutation_14919| $t9@4)) 1)) (=> (> (|$x#$42_TestInvariants_T| (|v#$Mutation_14919| $t9@4)) 1) (=> (= $t1@2 (|v#$Mutation_14919| $t9@4)) (and (=> (= (ControlFlow 0 19784) (- 0 23183)) (> (|$y#$42_TestInvariants_S| (|v#$Mutation_14960| $t10@4)) 1)) (=> (> (|$y#$42_TestInvariants_S| (|v#$Mutation_14960| $t10@4)) 1) (=> (and (and (= $t3@2 (|v#$Mutation_14960| $t10@4)) (= $t1@3 $t1@2)) (and (= $t3@3 $t3@2) (= (ControlFlow 0 19784) 19664))) L7_correct))))))))
(let ((anon19_Else_correct  (=> (not $t15@0) (=> (and (= $t10@4 $t10@0) (= (ControlFlow 0 19746) 19784)) L11_correct))))
(let ((anon19_Then_correct  (=> (and (and $t15@0 (= $t10@3 ($Mutation_14960 (|l#$Mutation_14960| $t10@0) (|p#$Mutation_14960| $t10@0) ($42_TestInvariants_S (|v#$Mutation_3430| $t5@1))))) (and (= $t10@4 $t10@3) (= (ControlFlow 0 19802) 19784))) L11_correct)))
(let ((L9_correct  (=> (= $t15@0  (and (= (|l#$Mutation_14960| $t10@0) (|l#$Mutation_3430| $t5@1)) (let ((pp (|p#$Mutation_14960| $t10@0)))
(let ((cp (|p#$Mutation_3430| $t5@1)))
(let ((pl (seq.len pp)))
(let ((cl (seq.len cp)))
 (and (and (= cl (+ pl 1)) (forall ((i@@5 Int) ) (!  (=> (and (>= i@@5 0) (< i@@5 pl)) (= (seq.nth pp i@@5) (seq.nth cp i@@5)))
 :qid |invariantsz3bpl.272:14|
 :skolemid |10|
))) (or (= 0 (- 0 1)) (= 0 (seq.nth cp pl)))))))))) (and (=> (= (ControlFlow 0 19740) 19802) anon19_Then_correct) (=> (= (ControlFlow 0 19740) 19746) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (not $t14@0) (=> (and (= $t9@4 $t9@0) (= (ControlFlow 0 19730) 19740)) L9_correct))))
(let ((anon18_Then_correct  (=> (and (and $t14@0 (= $t9@3 ($Mutation_14919 (|l#$Mutation_14919| $t9@0) (|p#$Mutation_14919| $t9@0) ($42_TestInvariants_T (|v#$Mutation_3430| $t5@1))))) (and (= $t9@4 $t9@3) (= (ControlFlow 0 19820) 19740))) L9_correct)))
(let ((anon17_Then_correct  (=> (and (and _$t0 (|$IsValid'u64'| 2)) (and (= $t5@1 ($Mutation_3430 (|l#$Mutation_3430| $t5@0) (|p#$Mutation_3430| $t5@0) 2)) (= $t14@0  (and (= (|l#$Mutation_14919| $t9@0) (|l#$Mutation_3430| $t5@1)) (let ((pp@@0 (|p#$Mutation_14919| $t9@0)))
(let ((cp@@0 (|p#$Mutation_3430| $t5@1)))
(let ((pl@@0 (seq.len pp@@0)))
(let ((cl@@0 (seq.len cp@@0)))
 (and (and (= cl@@0 (+ pl@@0 1)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 pl@@0)) (= (seq.nth pp@@0 i@@6) (seq.nth cp@@0 i@@6)))
 :qid |invariantsz3bpl.272:14|
 :skolemid |10|
))) (or (= 0 (- 0 1)) (= 0 (seq.nth cp@@0 pl@@0)))))))))))) (and (=> (= (ControlFlow 0 19724) 19820) anon18_Then_correct) (=> (= (ControlFlow 0 19724) 19730) anon18_Else_correct)))))
(let ((L15_correct  (and (=> (= (ControlFlow 0 19640) (- 0 23036)) (> (|$x#$42_TestInvariants_T| (|v#$Mutation_14919| $t9@2)) 1)) (=> (> (|$x#$42_TestInvariants_T| (|v#$Mutation_14919| $t9@2)) 1) (=> (= $t1@1 (|v#$Mutation_14919| $t9@2)) (and (=> (= (ControlFlow 0 19640) (- 0 23060)) (> (|$y#$42_TestInvariants_S| (|v#$Mutation_14960| $t10@2)) 1)) (=> (> (|$y#$42_TestInvariants_S| (|v#$Mutation_14960| $t10@2)) 1) (=> (and (and (= $t3@1 (|v#$Mutation_14960| $t10@2)) (= $t1@3 $t1@1)) (and (= $t3@3 $t3@1) (= (ControlFlow 0 19640) 19664))) L7_correct))))))))
(let ((anon21_Else_correct  (=> (not $t18@0) (=> (and (= $t10@2 $t10@0) (= (ControlFlow 0 19600) 19640)) L15_correct))))
(let ((anon21_Then_correct  (=> (and (and $t18@0 (= $t10@1 ($Mutation_14960 (|l#$Mutation_14960| $t10@0) (|p#$Mutation_14960| $t10@0) ($42_TestInvariants_S (|v#$Mutation_3430| $t5@2))))) (and (= $t10@2 $t10@1) (= (ControlFlow 0 19682) 19640))) L15_correct)))
(let ((L13_correct  (=> (= $t18@0  (and (= (|l#$Mutation_14960| $t10@0) (|l#$Mutation_3430| $t5@2)) (let ((pp@@1 (|p#$Mutation_14960| $t10@0)))
(let ((cp@@1 (|p#$Mutation_3430| $t5@2)))
(let ((pl@@1 (seq.len pp@@1)))
(let ((cl@@1 (seq.len cp@@1)))
 (and (and (= cl@@1 (+ pl@@1 1)) (forall ((i@@7 Int) ) (!  (=> (and (>= i@@7 0) (< i@@7 pl@@1)) (= (seq.nth pp@@1 i@@7) (seq.nth cp@@1 i@@7)))
 :qid |invariantsz3bpl.272:14|
 :skolemid |10|
))) (or (= 0 (- 0 1)) (= 0 (seq.nth cp@@1 pl@@1)))))))))) (and (=> (= (ControlFlow 0 19594) 19682) anon21_Then_correct) (=> (= (ControlFlow 0 19594) 19600) anon21_Else_correct)))))
(let ((anon20_Else_correct  (=> (not $t17@0) (=> (and (= $t9@2 $t9@0) (= (ControlFlow 0 19584) 19594)) L13_correct))))
(let ((anon20_Then_correct  (=> (and (and $t17@0 (= $t9@1 ($Mutation_14919 (|l#$Mutation_14919| $t9@0) (|p#$Mutation_14919| $t9@0) ($42_TestInvariants_T (|v#$Mutation_3430| $t5@2))))) (and (= $t9@2 $t9@1) (= (ControlFlow 0 19700) 19594))) L13_correct)))
(let ((anon17_Else_correct  (=> (and (and (not _$t0) (|$IsValid'u64'| 0)) (and (= $t5@2 ($Mutation_3430 (|l#$Mutation_3430| $t5@0) (|p#$Mutation_3430| $t5@0) 0)) (= $t17@0  (and (= (|l#$Mutation_14919| $t9@0) (|l#$Mutation_3430| $t5@2)) (let ((pp@@2 (|p#$Mutation_14919| $t9@0)))
(let ((cp@@2 (|p#$Mutation_3430| $t5@2)))
(let ((pl@@2 (seq.len pp@@2)))
(let ((cl@@2 (seq.len cp@@2)))
 (and (and (= cl@@2 (+ pl@@2 1)) (forall ((i@@8 Int) ) (!  (=> (and (>= i@@8 0) (< i@@8 pl@@2)) (= (seq.nth pp@@2 i@@8) (seq.nth cp@@2 i@@8)))
 :qid |invariantsz3bpl.272:14|
 :skolemid |10|
))) (or (= 0 (- 0 1)) (= 0 (seq.nth cp@@2 pl@@2)))))))))))) (and (=> (= (ControlFlow 0 19578) 19700) anon20_Then_correct) (=> (= (ControlFlow 0 19578) 19584) anon20_Else_correct)))))
(let ((L3_correct  (=> (and (= |$temp_0'u64'@2| (|v#$Mutation_3430| $t5@0)) (= |$temp_0'u64'@2| |$temp_0'u64'@2|)) (and (=> (= (ControlFlow 0 19552) 19724) anon17_Then_correct) (=> (= (ControlFlow 0 19552) 19578) anon17_Else_correct)))))
(let ((anon16_Else_correct  (=> (not _$t0) (and (=> (= (ControlFlow 0 19538) (- 0 22831)) (> (|$x#$42_TestInvariants_T| (|v#$Mutation_14919| $t9@0)) 1)) (=> (> (|$x#$42_TestInvariants_T| (|v#$Mutation_14919| $t9@0)) 1) (=> (= $t12@0 ($Mutation_3430 (|l#$Mutation_14960| $t10@0) (seq.++ (|p#$Mutation_14960| $t10@0) (seq.unit 0)) (|$y#$42_TestInvariants_S| (|v#$Mutation_14960| $t10@0)))) (=> (and (and (= |$temp_0'u64'@1| (|v#$Mutation_3430| $t12@0)) (= |$temp_0'u64'@1| |$temp_0'u64'@1|)) (and (= $t5@0 $t12@0) (= (ControlFlow 0 19538) 19552))) L3_correct)))))))
(let ((anon16_Then_correct  (=> _$t0 (and (=> (= (ControlFlow 0 19862) (- 0 22781)) (> (|$y#$42_TestInvariants_S| (|v#$Mutation_14960| $t10@0)) 1)) (=> (> (|$y#$42_TestInvariants_S| (|v#$Mutation_14960| $t10@0)) 1) (=> (= $t11@0 ($Mutation_3430 (|l#$Mutation_14919| $t9@0) (seq.++ (|p#$Mutation_14919| $t9@0) (seq.unit 0)) (|$x#$42_TestInvariants_T| (|v#$Mutation_14919| $t9@0)))) (=> (and (and (= |$temp_0'u64'@0| (|v#$Mutation_3430| $t11@0)) (= |$temp_0'u64'@0| |$temp_0'u64'@0|)) (and (= $t5@0 $t11@0) (= (ControlFlow 0 19862) 19552))) L3_correct)))))))
(let ((anon0$1_correct  (=> (= _$t0 _$t0) (=> (and (|$IsValid'u64'| 3) (= $t1@0 ($42_TestInvariants_T 3))) (and (=> (= (ControlFlow 0 19494) (- 0 22659)) (> (|$x#$42_TestInvariants_T| $t1@0) 1)) (=> (> (|$x#$42_TestInvariants_T| $t1@0) 1) (=> (= $t1@0 $t1@0) (=> (and (|$IsValid'u64'| 4) (= $t3@0 ($42_TestInvariants_S 4))) (and (=> (= (ControlFlow 0 19494) (- 0 22695)) (> (|$y#$42_TestInvariants_S| $t3@0) 1)) (=> (> (|$y#$42_TestInvariants_S| $t3@0) 1) (=> (= $t3@0 $t3@0) (=> (and (= $t9@0 ($Mutation_14919 ($Local 1) (as seq.empty (Seq Int)) $t1@0)) (= |$temp_0'$42_TestInvariants_T'@0| (|v#$Mutation_14919| $t9@0))) (=> (and (and (= |$temp_0'$42_TestInvariants_T'@0| |$temp_0'$42_TestInvariants_T'@0|) (= $t10@0 ($Mutation_14960 ($Local 3) (as seq.empty (Seq Int)) $t3@0))) (and (= |$temp_0'$42_TestInvariants_S'@0| (|v#$Mutation_14960| $t10@0)) (= |$temp_0'$42_TestInvariants_S'@0| |$temp_0'$42_TestInvariants_S'@0|))) (and (=> (= (ControlFlow 0 19494) 19862) anon16_Then_correct) (=> (= (ControlFlow 0 19494) 19538) anon16_Else_correct)))))))))))))))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_14919| $t2)) 0) (=> (and (and (and (= (seq.len (|p#$Mutation_14960| $t4)) 0) (= (seq.len (|p#$Mutation_3430| $t5)) 0)) (and (= (seq.len (|p#$Mutation_3430| $t6)) 0) (= (seq.len (|p#$Mutation_14919| $t9)) 0))) (and (and (= (seq.len (|p#$Mutation_14960| $t10)) 0) (= (seq.len (|p#$Mutation_3430| $t11)) 0)) (and (= (seq.len (|p#$Mutation_3430| $t12)) 0) (= (ControlFlow 0 19374) 19494)))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 22485) 19374) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 22485)))
(get-value ((ControlFlow 0 19374)))
(get-value ((ControlFlow 0 19494)))
(get-value ((ControlFlow 0 19538)))
(get-value ((ControlFlow 0 19552)))
(get-value ((ControlFlow 0 19578)))
(get-value ((ControlFlow 0 19584)))
(get-value ((ControlFlow 0 19594)))
(get-value ((ControlFlow 0 19682)))
(get-value ((ControlFlow 0 19640)))
(assert (not (= (ControlFlow 0 19640) (- 23060))))
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
(declare-datatypes ((T@$42_TestInvariants_T 0)) ((($42_TestInvariants_T (|$x#$42_TestInvariants_T| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_S 0)) ((($42_TestInvariants_S (|$y#$42_TestInvariants_S| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_R 0)) ((($42_TestInvariants_R (|$x#$42_TestInvariants_R| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14960 0)) ((($Mutation_14960 (|l#$Mutation_14960| T@$Location) (|p#$Mutation_14960| (Seq Int)) (|v#$Mutation_14960| T@$42_TestInvariants_S) ) ) ))
(declare-datatypes ((T@$Mutation_14919 0)) ((($Mutation_14919 (|l#$Mutation_14919| T@$Location) (|p#$Mutation_14919| (Seq Int)) (|v#$Mutation_14919| T@$42_TestInvariants_T) ) ) ))
(declare-datatypes ((T@$Mutation_12247 0)) ((($Mutation_12247 (|l#$Mutation_12247| T@$Location) (|p#$Mutation_12247| (Seq Int)) (|v#$Mutation_12247| T@$42_TestInvariants_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10425 0)) ((($Mutation_10425 (|l#$Mutation_10425| T@$Location) (|p#$Mutation_10425| (Seq Int)) (|v#$Mutation_10425| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestInvariants_R'| (T@$42_TestInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestInvariants_S'| (T@$42_TestInvariants_S) Bool)
(declare-fun |$IsValid'$42_TestInvariants_T'| (T@$42_TestInvariants_T) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |invariantsz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |invariantsz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |invariantsz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |invariantsz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |invariantsz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |invariantsz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |invariantsz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |invariantsz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |invariantsz3bpl.590:13|
 :skolemid |15|
))))
 :qid |invariantsz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |invariantsz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |invariantsz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |invariantsz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |invariantsz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |invariantsz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |invariantsz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |invariantsz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestInvariants_R) ) (! (= (|$IsValid'$42_TestInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestInvariants_R| s)))
 :qid |invariantsz3bpl.906:41|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestInvariants_S) ) (! (= (|$IsValid'$42_TestInvariants_S'| s@@0) (|$IsValid'u64'| (|$y#$42_TestInvariants_S| s@@0)))
 :qid |invariantsz3bpl.919:41|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestInvariants_S'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestInvariants_T) ) (! (= (|$IsValid'$42_TestInvariants_T'| s@@1) (|$IsValid'u64'| (|$x#$42_TestInvariants_T| s@@1)))
 :qid |invariantsz3bpl.932:41|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestInvariants_T'| s@@1))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |invariantsz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |invariantsz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |invariantsz3bpl.245:54|
 :skolemid |27|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $42_TestInvariants_update_helper$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 23248) true)
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
(declare-datatypes ((T@$42_TestInvariants_T 0)) ((($42_TestInvariants_T (|$x#$42_TestInvariants_T| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_S 0)) ((($42_TestInvariants_S (|$y#$42_TestInvariants_S| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_R 0)) ((($42_TestInvariants_R (|$x#$42_TestInvariants_R| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14960 0)) ((($Mutation_14960 (|l#$Mutation_14960| T@$Location) (|p#$Mutation_14960| (Seq Int)) (|v#$Mutation_14960| T@$42_TestInvariants_S) ) ) ))
(declare-datatypes ((T@$Mutation_14919 0)) ((($Mutation_14919 (|l#$Mutation_14919| T@$Location) (|p#$Mutation_14919| (Seq Int)) (|v#$Mutation_14919| T@$42_TestInvariants_T) ) ) ))
(declare-datatypes ((T@$Mutation_12247 0)) ((($Mutation_12247 (|l#$Mutation_12247| T@$Location) (|p#$Mutation_12247| (Seq Int)) (|v#$Mutation_12247| T@$42_TestInvariants_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10425 0)) ((($Mutation_10425 (|l#$Mutation_10425| T@$Location) (|p#$Mutation_10425| (Seq Int)) (|v#$Mutation_10425| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestInvariants_R'| (T@$42_TestInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestInvariants_S'| (T@$42_TestInvariants_S) Bool)
(declare-fun |$IsValid'$42_TestInvariants_T'| (T@$42_TestInvariants_T) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |invariantsz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |invariantsz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |invariantsz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |invariantsz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |invariantsz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |invariantsz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |invariantsz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |invariantsz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |invariantsz3bpl.590:13|
 :skolemid |15|
))))
 :qid |invariantsz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |invariantsz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |invariantsz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |invariantsz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |invariantsz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |invariantsz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |invariantsz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |invariantsz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestInvariants_R) ) (! (= (|$IsValid'$42_TestInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestInvariants_R| s)))
 :qid |invariantsz3bpl.906:41|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestInvariants_S) ) (! (= (|$IsValid'$42_TestInvariants_S'| s@@0) (|$IsValid'u64'| (|$y#$42_TestInvariants_S| s@@0)))
 :qid |invariantsz3bpl.919:41|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestInvariants_S'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestInvariants_T) ) (! (= (|$IsValid'$42_TestInvariants_T'| s@@1) (|$IsValid'u64'| (|$x#$42_TestInvariants_T| s@@1)))
 :qid |invariantsz3bpl.932:41|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestInvariants_T'| s@@1))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |invariantsz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |invariantsz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |invariantsz3bpl.245:54|
 :skolemid |27|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () T@$42_TestInvariants_R)
(push 1)
(set-info :boogie-vc-id $42_TestInvariants_valid_R_pack$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 23355) (let ((anon0$1_correct  (=> (and (|$IsValid'u64'| 2) (= $t1@0 ($42_TestInvariants_R 2))) (and (=> (= (ControlFlow 0 20200) (- 0 23401)) (> (|$x#$42_TestInvariants_R| $t1@0) 1)) (=> (> (|$x#$42_TestInvariants_R| $t1@0) 1) (=> (and (= $t1@0 $t1@0) (= (ControlFlow 0 20200) (- 0 23420))) (= (|$x#$42_TestInvariants_R| $t1@0) 2)))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 23355) 20200) anon0$1_correct)))
anon0_correct)))
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
(declare-datatypes ((T@$42_TestInvariants_T 0)) ((($42_TestInvariants_T (|$x#$42_TestInvariants_T| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_S 0)) ((($42_TestInvariants_S (|$y#$42_TestInvariants_S| Int) ) ) ))
(declare-datatypes ((T@$42_TestInvariants_R 0)) ((($42_TestInvariants_R (|$x#$42_TestInvariants_R| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14960 0)) ((($Mutation_14960 (|l#$Mutation_14960| T@$Location) (|p#$Mutation_14960| (Seq Int)) (|v#$Mutation_14960| T@$42_TestInvariants_S) ) ) ))
(declare-datatypes ((T@$Mutation_14919 0)) ((($Mutation_14919 (|l#$Mutation_14919| T@$Location) (|p#$Mutation_14919| (Seq Int)) (|v#$Mutation_14919| T@$42_TestInvariants_T) ) ) ))
(declare-datatypes ((T@$Mutation_12247 0)) ((($Mutation_12247 (|l#$Mutation_12247| T@$Location) (|p#$Mutation_12247| (Seq Int)) (|v#$Mutation_12247| T@$42_TestInvariants_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10425 0)) ((($Mutation_10425 (|l#$Mutation_10425| T@$Location) (|p#$Mutation_10425| (Seq Int)) (|v#$Mutation_10425| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestInvariants_R'| (T@$42_TestInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestInvariants_S'| (T@$42_TestInvariants_S) Bool)
(declare-fun |$IsValid'$42_TestInvariants_T'| (T@$42_TestInvariants_T) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |invariantsz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |invariantsz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |invariantsz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |invariantsz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |invariantsz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |invariantsz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |invariantsz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |invariantsz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |invariantsz3bpl.590:13|
 :skolemid |15|
))))
 :qid |invariantsz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |invariantsz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |invariantsz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |invariantsz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |invariantsz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |invariantsz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |invariantsz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |invariantsz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestInvariants_R) ) (! (= (|$IsValid'$42_TestInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestInvariants_R| s)))
 :qid |invariantsz3bpl.906:41|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestInvariants_S) ) (! (= (|$IsValid'$42_TestInvariants_S'| s@@0) (|$IsValid'u64'| (|$y#$42_TestInvariants_S| s@@0)))
 :qid |invariantsz3bpl.919:41|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestInvariants_S'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestInvariants_T) ) (! (= (|$IsValid'$42_TestInvariants_T'| s@@1) (|$IsValid'u64'| (|$x#$42_TestInvariants_T| s@@1)))
 :qid |invariantsz3bpl.932:41|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestInvariants_T'| s@@1))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |invariantsz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |invariantsz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |invariantsz3bpl.245:54|
 :skolemid |27|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () T@$42_TestInvariants_R)
(declare-fun $t3@0 () T@$Mutation_12247)
(declare-fun |$temp_0'$42_TestInvariants_R'@0| () T@$42_TestInvariants_R)
(declare-fun $t5@0 () T@$42_TestInvariants_R)
(declare-fun $t3@1 () T@$Mutation_12247)
(declare-fun $t1@1 () T@$42_TestInvariants_R)
(declare-fun $t0 () T@$Mutation_12247)
(declare-fun $t3 () T@$Mutation_12247)
(push 1)
(set-info :boogie-vc-id $42_TestInvariants_valid_R_update$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 23433) (let ((anon0$1_correct  (=> (and (|$IsValid'u64'| 3) (= $t1@0 ($42_TestInvariants_R 3))) (and (=> (= (ControlFlow 0 20394) (- 0 23505)) (> (|$x#$42_TestInvariants_R| $t1@0) 1)) (=> (> (|$x#$42_TestInvariants_R| $t1@0) 1) (=> (and (= $t1@0 $t1@0) (= $t3@0 ($Mutation_12247 ($Local 1) (as seq.empty (Seq Int)) $t1@0))) (=> (and (and (= |$temp_0'$42_TestInvariants_R'@0| (|v#$Mutation_12247| $t3@0)) (= |$temp_0'$42_TestInvariants_R'@0| |$temp_0'$42_TestInvariants_R'@0|)) (and (|$IsValid'u64'| 2) (= $t5@0 ($42_TestInvariants_R 2)))) (and (=> (= (ControlFlow 0 20394) (- 0 23571)) (> (|$x#$42_TestInvariants_R| $t5@0) 1)) (=> (> (|$x#$42_TestInvariants_R| $t5@0) 1) (=> (= $t3@1 ($Mutation_12247 (|l#$Mutation_12247| $t3@0) (|p#$Mutation_12247| $t3@0) $t5@0)) (and (=> (= (ControlFlow 0 20394) (- 0 23592)) (> (|$x#$42_TestInvariants_R| (|v#$Mutation_12247| $t3@1)) 1)) (=> (> (|$x#$42_TestInvariants_R| (|v#$Mutation_12247| $t3@1)) 1) (=> (= $t1@1 (|v#$Mutation_12247| $t3@1)) (=> (and (= $t1@1 $t1@1) (= (ControlFlow 0 20394) (- 0 23627))) (= (|$x#$42_TestInvariants_R| $t1@1) 2)))))))))))))))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_12247| $t0)) 0) (=> (and (= (seq.len (|p#$Mutation_12247| $t3)) 0) (= (ControlFlow 0 20274) 20394)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 23433) 20274) anon0_correct)))
PreconditionGeneratedEntry_correct))))
))
(check-sat)
(pop 1)
; Valid
