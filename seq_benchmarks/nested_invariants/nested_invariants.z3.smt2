(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@$42_TestNestedInvariants_Nested 0)) ((($42_TestNestedInvariants_Nested (|$x#$42_TestNestedInvariants_Nested| Int) ) ) ))
(declare-datatypes ((T@$42_TestNestedInvariants_Outer 0)) ((($42_TestNestedInvariants_Outer (|$y#$42_TestNestedInvariants_Outer| Int) (|$n#$42_TestNestedInvariants_Outer| T@$42_TestNestedInvariants_Nested) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9941 0)) ((($Mutation_9941 (|l#$Mutation_9941| T@$Location) (|p#$Mutation_9941| (Seq Int)) (|v#$Mutation_9941| T@$42_TestNestedInvariants_Nested) ) ) ))
(declare-datatypes ((T@$Mutation_9894 0)) ((($Mutation_9894 (|l#$Mutation_9894| T@$Location) (|p#$Mutation_9894| (Seq Int)) (|v#$Mutation_9894| T@$42_TestNestedInvariants_Outer) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8166 0)) ((($Mutation_8166 (|l#$Mutation_8166| T@$Location) (|p#$Mutation_8166| (Seq Int)) (|v#$Mutation_8166| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestNestedInvariants_Nested'| (T@$42_TestNestedInvariants_Nested) Bool)
(declare-fun |$IsValid'$42_TestNestedInvariants_Outer'| (T@$42_TestNestedInvariants_Outer) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |nestedinvariantsz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |nestedinvariantsz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |nestedinvariantsz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |nestedinvariantsz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |nestedinvariantsz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |nestedinvariantsz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |nestedinvariantsz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |nestedinvariantsz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |nestedinvariantsz3bpl.590:13|
 :skolemid |15|
))))
 :qid |nestedinvariantsz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |nestedinvariantsz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |nestedinvariantsz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |nestedinvariantsz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |nestedinvariantsz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |nestedinvariantsz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |nestedinvariantsz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |nestedinvariantsz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestNestedInvariants_Nested) ) (! (= (|$IsValid'$42_TestNestedInvariants_Nested'| s) (|$IsValid'u64'| (|$x#$42_TestNestedInvariants_Nested| s)))
 :qid |nestedinvariantsz3bpl.901:52|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestNestedInvariants_Nested'| s))
)))
(assert (forall ((s@@0 T@$42_TestNestedInvariants_Outer) ) (! (= (|$IsValid'$42_TestNestedInvariants_Outer'| s@@0)  (and (|$IsValid'u64'| (|$y#$42_TestNestedInvariants_Outer| s@@0)) (|$IsValid'$42_TestNestedInvariants_Nested'| (|$n#$42_TestNestedInvariants_Outer| s@@0))))
 :qid |nestedinvariantsz3bpl.917:51|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestNestedInvariants_Outer'| s@@0))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |nestedinvariantsz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |nestedinvariantsz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |nestedinvariantsz3bpl.245:54|
 :skolemid |26|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t4@0 () T@$42_TestNestedInvariants_Nested)
(declare-fun $t0@0 () T@$42_TestNestedInvariants_Outer)
(declare-fun $t5@0 () T@$Mutation_9894)
(declare-fun |$temp_0'$42_TestNestedInvariants_Outer'@0| () T@$42_TestNestedInvariants_Outer)
(declare-fun $t7@0 () T@$Mutation_3430)
(declare-fun $t7@1 () T@$Mutation_3430)
(declare-fun $t5@1 () T@$Mutation_9894)
(declare-fun $t9@0 () T@$Mutation_9941)
(declare-fun $t10@0 () T@$Mutation_3430)
(declare-fun $t10@1 () T@$Mutation_3430)
(declare-fun $t9@1 () T@$Mutation_9941)
(declare-fun $t5@2 () T@$Mutation_9894)
(declare-fun $t1 () T@$Mutation_9894)
(declare-fun $t5 () T@$Mutation_9894)
(declare-fun $t7 () T@$Mutation_3430)
(declare-fun $t9 () T@$Mutation_9941)
(declare-fun $t10 () T@$Mutation_3430)
(push 1)
(set-info :boogie-vc-id $42_TestNestedInvariants_mutate$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 13710) (let ((anon0$1_correct  (=> (|$IsValid'u64'| 3) (=> (and (|$IsValid'u64'| 2) (= $t4@0 ($42_TestNestedInvariants_Nested 2))) (and (=> (= (ControlFlow 0 12547) (- 0 13820)) (> (|$x#$42_TestNestedInvariants_Nested| $t4@0) 0)) (=> (> (|$x#$42_TestNestedInvariants_Nested| $t4@0) 0) (=> (= $t0@0 ($42_TestNestedInvariants_Outer 3 $t4@0)) (and (=> (= (ControlFlow 0 12547) (- 0 13843)) (< (|$y#$42_TestNestedInvariants_Outer| $t0@0) 4)) (=> (< (|$y#$42_TestNestedInvariants_Outer| $t0@0) 4) (and (=> (= (ControlFlow 0 12547) (- 0 13853)) (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| $t0@0)) (|$y#$42_TestNestedInvariants_Outer| $t0@0))) (=> (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| $t0@0)) (|$y#$42_TestNestedInvariants_Outer| $t0@0)) (=> (and (= $t0@0 $t0@0) (= $t5@0 ($Mutation_9894 ($Local 0) (as seq.empty (Seq Int)) $t0@0))) (=> (and (and (= |$temp_0'$42_TestNestedInvariants_Outer'@0| (|v#$Mutation_9894| $t5@0)) (= |$temp_0'$42_TestNestedInvariants_Outer'@0| |$temp_0'$42_TestNestedInvariants_Outer'@0|)) (and (|$IsValid'u64'| 2) (= $t7@0 ($Mutation_3430 (|l#$Mutation_9894| $t5@0) (seq.++ (|p#$Mutation_9894| $t5@0) (seq.unit 0)) (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@0)))))) (=> (and (and (and (= $t7@1 ($Mutation_3430 (|l#$Mutation_3430| $t7@0) (|p#$Mutation_3430| $t7@0) 2)) (= $t5@1 ($Mutation_9894 (|l#$Mutation_9894| $t5@0) (|p#$Mutation_9894| $t5@0) ($42_TestNestedInvariants_Outer (|v#$Mutation_3430| $t7@1) (|$n#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@0)))))) (and (|$IsValid'u64'| 1) (= $t9@0 ($Mutation_9941 (|l#$Mutation_9894| $t5@1) (seq.++ (|p#$Mutation_9894| $t5@1) (seq.unit 1)) (|$n#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@1)))))) (and (and (= $t10@0 ($Mutation_3430 (|l#$Mutation_9941| $t9@0) (seq.++ (|p#$Mutation_9941| $t9@0) (seq.unit 0)) (|$x#$42_TestNestedInvariants_Nested| (|v#$Mutation_9941| $t9@0)))) (= $t10@1 ($Mutation_3430 (|l#$Mutation_3430| $t10@0) (|p#$Mutation_3430| $t10@0) 1))) (and (= $t9@1 ($Mutation_9941 (|l#$Mutation_9941| $t9@0) (|p#$Mutation_9941| $t9@0) ($42_TestNestedInvariants_Nested (|v#$Mutation_3430| $t10@1)))) (= $t5@2 ($Mutation_9894 (|l#$Mutation_9894| $t5@1) (|p#$Mutation_9894| $t5@1) ($42_TestNestedInvariants_Outer (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@1)) (|v#$Mutation_9941| $t9@1))))))) (and (=> (= (ControlFlow 0 12547) (- 0 14043)) (< (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@2)) 4)) (=> (< (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@2)) 4) (and (=> (= (ControlFlow 0 12547) (- 0 14055)) (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@2))) (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@2)))) (=> (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@2))) (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@2))) (=> (= (ControlFlow 0 12547) (- 0 14072)) (> (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@2))) 0))))))))))))))))))))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_9894| $t1)) 0) (= (seq.len (|p#$Mutation_9894| $t5)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_3430| $t7)) 0) (= (seq.len (|p#$Mutation_9941| $t9)) 0)) (and (= (seq.len (|p#$Mutation_3430| $t10)) 0) (= (ControlFlow 0 12297) 12547))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 13710) 12297) anon0_correct)))
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
(declare-datatypes ((T@$42_TestNestedInvariants_Nested 0)) ((($42_TestNestedInvariants_Nested (|$x#$42_TestNestedInvariants_Nested| Int) ) ) ))
(declare-datatypes ((T@$42_TestNestedInvariants_Outer 0)) ((($42_TestNestedInvariants_Outer (|$y#$42_TestNestedInvariants_Outer| Int) (|$n#$42_TestNestedInvariants_Outer| T@$42_TestNestedInvariants_Nested) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9941 0)) ((($Mutation_9941 (|l#$Mutation_9941| T@$Location) (|p#$Mutation_9941| (Seq Int)) (|v#$Mutation_9941| T@$42_TestNestedInvariants_Nested) ) ) ))
(declare-datatypes ((T@$Mutation_9894 0)) ((($Mutation_9894 (|l#$Mutation_9894| T@$Location) (|p#$Mutation_9894| (Seq Int)) (|v#$Mutation_9894| T@$42_TestNestedInvariants_Outer) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8166 0)) ((($Mutation_8166 (|l#$Mutation_8166| T@$Location) (|p#$Mutation_8166| (Seq Int)) (|v#$Mutation_8166| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestNestedInvariants_Nested'| (T@$42_TestNestedInvariants_Nested) Bool)
(declare-fun |$IsValid'$42_TestNestedInvariants_Outer'| (T@$42_TestNestedInvariants_Outer) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |nestedinvariantsz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |nestedinvariantsz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |nestedinvariantsz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |nestedinvariantsz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |nestedinvariantsz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |nestedinvariantsz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |nestedinvariantsz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |nestedinvariantsz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |nestedinvariantsz3bpl.590:13|
 :skolemid |15|
))))
 :qid |nestedinvariantsz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |nestedinvariantsz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |nestedinvariantsz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |nestedinvariantsz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |nestedinvariantsz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |nestedinvariantsz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |nestedinvariantsz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |nestedinvariantsz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestNestedInvariants_Nested) ) (! (= (|$IsValid'$42_TestNestedInvariants_Nested'| s) (|$IsValid'u64'| (|$x#$42_TestNestedInvariants_Nested| s)))
 :qid |nestedinvariantsz3bpl.901:52|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestNestedInvariants_Nested'| s))
)))
(assert (forall ((s@@0 T@$42_TestNestedInvariants_Outer) ) (! (= (|$IsValid'$42_TestNestedInvariants_Outer'| s@@0)  (and (|$IsValid'u64'| (|$y#$42_TestNestedInvariants_Outer| s@@0)) (|$IsValid'$42_TestNestedInvariants_Nested'| (|$n#$42_TestNestedInvariants_Outer| s@@0))))
 :qid |nestedinvariantsz3bpl.917:51|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestNestedInvariants_Outer'| s@@0))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |nestedinvariantsz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |nestedinvariantsz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |nestedinvariantsz3bpl.245:54|
 :skolemid |26|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t4@0 () T@$42_TestNestedInvariants_Nested)
(declare-fun $t0@0 () T@$42_TestNestedInvariants_Outer)
(declare-fun $t5@0 () T@$Mutation_9894)
(declare-fun |$temp_0'$42_TestNestedInvariants_Outer'@0| () T@$42_TestNestedInvariants_Outer)
(declare-fun $t7@0 () T@$Mutation_9941)
(declare-fun $t8@0 () T@$Mutation_3430)
(declare-fun $t8@1 () T@$Mutation_3430)
(declare-fun $t7@1 () T@$Mutation_9941)
(declare-fun $t5@1 () T@$Mutation_9894)
(declare-fun $t1 () T@$Mutation_9894)
(declare-fun $t5 () T@$Mutation_9894)
(declare-fun $t7 () T@$Mutation_9941)
(declare-fun $t8 () T@$Mutation_3430)
(push 1)
(set-info :boogie-vc-id $42_TestNestedInvariants_mutate_inner_data_invariant_invalid$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14117) (let ((anon0$1_correct  (=> (|$IsValid'u64'| 3) (=> (and (|$IsValid'u64'| 2) (= $t4@0 ($42_TestNestedInvariants_Nested 2))) (and (=> (= (ControlFlow 0 12894) (- 0 14213)) (> (|$x#$42_TestNestedInvariants_Nested| $t4@0) 0)) (=> (> (|$x#$42_TestNestedInvariants_Nested| $t4@0) 0) (=> (= $t0@0 ($42_TestNestedInvariants_Outer 3 $t4@0)) (and (=> (= (ControlFlow 0 12894) (- 0 14236)) (< (|$y#$42_TestNestedInvariants_Outer| $t0@0) 4)) (=> (< (|$y#$42_TestNestedInvariants_Outer| $t0@0) 4) (and (=> (= (ControlFlow 0 12894) (- 0 14246)) (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| $t0@0)) (|$y#$42_TestNestedInvariants_Outer| $t0@0))) (=> (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| $t0@0)) (|$y#$42_TestNestedInvariants_Outer| $t0@0)) (=> (and (= $t0@0 $t0@0) (= $t5@0 ($Mutation_9894 ($Local 0) (as seq.empty (Seq Int)) $t0@0))) (=> (and (and (and (= |$temp_0'$42_TestNestedInvariants_Outer'@0| (|v#$Mutation_9894| $t5@0)) (= |$temp_0'$42_TestNestedInvariants_Outer'@0| |$temp_0'$42_TestNestedInvariants_Outer'@0|)) (and (|$IsValid'u64'| 0) (= $t7@0 ($Mutation_9941 (|l#$Mutation_9894| $t5@0) (seq.++ (|p#$Mutation_9894| $t5@0) (seq.unit 1)) (|$n#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@0)))))) (and (and (= $t8@0 ($Mutation_3430 (|l#$Mutation_9941| $t7@0) (seq.++ (|p#$Mutation_9941| $t7@0) (seq.unit 0)) (|$x#$42_TestNestedInvariants_Nested| (|v#$Mutation_9941| $t7@0)))) (= $t8@1 ($Mutation_3430 (|l#$Mutation_3430| $t8@0) (|p#$Mutation_3430| $t8@0) 0))) (and (= $t7@1 ($Mutation_9941 (|l#$Mutation_9941| $t7@0) (|p#$Mutation_9941| $t7@0) ($42_TestNestedInvariants_Nested (|v#$Mutation_3430| $t8@1)))) (= $t5@1 ($Mutation_9894 (|l#$Mutation_9894| $t5@0) (|p#$Mutation_9894| $t5@0) ($42_TestNestedInvariants_Outer (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@0)) (|v#$Mutation_9941| $t7@1))))))) (and (=> (= (ControlFlow 0 12894) (- 0 14384)) (< (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@1)) 4)) (=> (< (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@1)) 4) (and (=> (= (ControlFlow 0 12894) (- 0 14396)) (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@1))) (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@1)))) (=> (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@1))) (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@1))) (=> (= (ControlFlow 0 12894) (- 0 14413)) (> (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@1))) 0)))))))))))))))))))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_9894| $t1)) 0) (=> (and (and (= (seq.len (|p#$Mutation_9894| $t5)) 0) (= (seq.len (|p#$Mutation_9941| $t7)) 0)) (and (= (seq.len (|p#$Mutation_3430| $t8)) 0) (= (ControlFlow 0 12684) 12894))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 14117) 12684) anon0_correct)))
PreconditionGeneratedEntry_correct))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 14117)))
(get-value ((ControlFlow 0 12684)))
(get-value ((ControlFlow 0 12894)))
(assert (not (= (ControlFlow 0 12894) (- 14413))))
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
(declare-datatypes ((T@$42_TestNestedInvariants_Nested 0)) ((($42_TestNestedInvariants_Nested (|$x#$42_TestNestedInvariants_Nested| Int) ) ) ))
(declare-datatypes ((T@$42_TestNestedInvariants_Outer 0)) ((($42_TestNestedInvariants_Outer (|$y#$42_TestNestedInvariants_Outer| Int) (|$n#$42_TestNestedInvariants_Outer| T@$42_TestNestedInvariants_Nested) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9941 0)) ((($Mutation_9941 (|l#$Mutation_9941| T@$Location) (|p#$Mutation_9941| (Seq Int)) (|v#$Mutation_9941| T@$42_TestNestedInvariants_Nested) ) ) ))
(declare-datatypes ((T@$Mutation_9894 0)) ((($Mutation_9894 (|l#$Mutation_9894| T@$Location) (|p#$Mutation_9894| (Seq Int)) (|v#$Mutation_9894| T@$42_TestNestedInvariants_Outer) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8166 0)) ((($Mutation_8166 (|l#$Mutation_8166| T@$Location) (|p#$Mutation_8166| (Seq Int)) (|v#$Mutation_8166| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestNestedInvariants_Nested'| (T@$42_TestNestedInvariants_Nested) Bool)
(declare-fun |$IsValid'$42_TestNestedInvariants_Outer'| (T@$42_TestNestedInvariants_Outer) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |nestedinvariantsz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |nestedinvariantsz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |nestedinvariantsz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |nestedinvariantsz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |nestedinvariantsz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |nestedinvariantsz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |nestedinvariantsz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |nestedinvariantsz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |nestedinvariantsz3bpl.590:13|
 :skolemid |15|
))))
 :qid |nestedinvariantsz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |nestedinvariantsz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |nestedinvariantsz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |nestedinvariantsz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |nestedinvariantsz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |nestedinvariantsz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |nestedinvariantsz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |nestedinvariantsz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestNestedInvariants_Nested) ) (! (= (|$IsValid'$42_TestNestedInvariants_Nested'| s) (|$IsValid'u64'| (|$x#$42_TestNestedInvariants_Nested| s)))
 :qid |nestedinvariantsz3bpl.901:52|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestNestedInvariants_Nested'| s))
)))
(assert (forall ((s@@0 T@$42_TestNestedInvariants_Outer) ) (! (= (|$IsValid'$42_TestNestedInvariants_Outer'| s@@0)  (and (|$IsValid'u64'| (|$y#$42_TestNestedInvariants_Outer| s@@0)) (|$IsValid'$42_TestNestedInvariants_Nested'| (|$n#$42_TestNestedInvariants_Outer| s@@0))))
 :qid |nestedinvariantsz3bpl.917:51|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestNestedInvariants_Outer'| s@@0))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |nestedinvariantsz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |nestedinvariantsz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |nestedinvariantsz3bpl.245:54|
 :skolemid |26|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t4@0 () T@$42_TestNestedInvariants_Nested)
(declare-fun $t0@0 () T@$42_TestNestedInvariants_Outer)
(declare-fun $t5@0 () T@$Mutation_9894)
(declare-fun |$temp_0'$42_TestNestedInvariants_Outer'@0| () T@$42_TestNestedInvariants_Outer)
(declare-fun $t7@0 () T@$Mutation_3430)
(declare-fun $t7@1 () T@$Mutation_3430)
(declare-fun $t5@1 () T@$Mutation_9894)
(declare-fun $t1 () T@$Mutation_9894)
(declare-fun $t5 () T@$Mutation_9894)
(declare-fun $t7 () T@$Mutation_3430)
(push 1)
(set-info :boogie-vc-id $42_TestNestedInvariants_mutate_outer_data_invariant_invalid$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14442) (let ((anon0$1_correct  (=> (|$IsValid'u64'| 3) (=> (and (|$IsValid'u64'| 2) (= $t4@0 ($42_TestNestedInvariants_Nested 2))) (and (=> (= (ControlFlow 0 13198) (- 0 14528)) (> (|$x#$42_TestNestedInvariants_Nested| $t4@0) 0)) (=> (> (|$x#$42_TestNestedInvariants_Nested| $t4@0) 0) (=> (= $t0@0 ($42_TestNestedInvariants_Outer 3 $t4@0)) (and (=> (= (ControlFlow 0 13198) (- 0 14551)) (< (|$y#$42_TestNestedInvariants_Outer| $t0@0) 4)) (=> (< (|$y#$42_TestNestedInvariants_Outer| $t0@0) 4) (and (=> (= (ControlFlow 0 13198) (- 0 14561)) (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| $t0@0)) (|$y#$42_TestNestedInvariants_Outer| $t0@0))) (=> (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| $t0@0)) (|$y#$42_TestNestedInvariants_Outer| $t0@0)) (=> (and (and (and (= $t0@0 $t0@0) (= $t5@0 ($Mutation_9894 ($Local 0) (as seq.empty (Seq Int)) $t0@0))) (and (= |$temp_0'$42_TestNestedInvariants_Outer'@0| (|v#$Mutation_9894| $t5@0)) (= |$temp_0'$42_TestNestedInvariants_Outer'@0| |$temp_0'$42_TestNestedInvariants_Outer'@0|))) (and (and (|$IsValid'u64'| 2) (= $t7@0 ($Mutation_3430 (|l#$Mutation_9894| $t5@0) (seq.++ (|p#$Mutation_9894| $t5@0) (seq.unit 0)) (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@0))))) (and (= $t7@1 ($Mutation_3430 (|l#$Mutation_3430| $t7@0) (|p#$Mutation_3430| $t7@0) 2)) (= $t5@1 ($Mutation_9894 (|l#$Mutation_9894| $t5@0) (|p#$Mutation_9894| $t5@0) ($42_TestNestedInvariants_Outer (|v#$Mutation_3430| $t7@1) (|$n#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@0)))))))) (and (=> (= (ControlFlow 0 13198) (- 0 14666)) (< (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@1)) 4)) (=> (< (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@1)) 4) (and (=> (= (ControlFlow 0 13198) (- 0 14678)) (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@1))) (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@1)))) (=> (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@1))) (|$y#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@1))) (=> (= (ControlFlow 0 13198) (- 0 14695)) (> (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| (|v#$Mutation_9894| $t5@1))) 0))))))))))))))))))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_9894| $t1)) 0) (= (seq.len (|p#$Mutation_9894| $t5)) 0)) (and (= (seq.len (|p#$Mutation_3430| $t7)) 0) (= (ControlFlow 0 13014) 13198))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 14442) 13014) anon0_correct)))
PreconditionGeneratedEntry_correct))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 14442)))
(get-value ((ControlFlow 0 13014)))
(get-value ((ControlFlow 0 13198)))
(assert (not (= (ControlFlow 0 13198) (- 14678))))
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
(declare-datatypes ((T@$42_TestNestedInvariants_Nested 0)) ((($42_TestNestedInvariants_Nested (|$x#$42_TestNestedInvariants_Nested| Int) ) ) ))
(declare-datatypes ((T@$42_TestNestedInvariants_Outer 0)) ((($42_TestNestedInvariants_Outer (|$y#$42_TestNestedInvariants_Outer| Int) (|$n#$42_TestNestedInvariants_Outer| T@$42_TestNestedInvariants_Nested) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9941 0)) ((($Mutation_9941 (|l#$Mutation_9941| T@$Location) (|p#$Mutation_9941| (Seq Int)) (|v#$Mutation_9941| T@$42_TestNestedInvariants_Nested) ) ) ))
(declare-datatypes ((T@$Mutation_9894 0)) ((($Mutation_9894 (|l#$Mutation_9894| T@$Location) (|p#$Mutation_9894| (Seq Int)) (|v#$Mutation_9894| T@$42_TestNestedInvariants_Outer) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8166 0)) ((($Mutation_8166 (|l#$Mutation_8166| T@$Location) (|p#$Mutation_8166| (Seq Int)) (|v#$Mutation_8166| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestNestedInvariants_Nested'| (T@$42_TestNestedInvariants_Nested) Bool)
(declare-fun |$IsValid'$42_TestNestedInvariants_Outer'| (T@$42_TestNestedInvariants_Outer) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |nestedinvariantsz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |nestedinvariantsz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |nestedinvariantsz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |nestedinvariantsz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |nestedinvariantsz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |nestedinvariantsz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |nestedinvariantsz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |nestedinvariantsz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |nestedinvariantsz3bpl.590:13|
 :skolemid |15|
))))
 :qid |nestedinvariantsz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |nestedinvariantsz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |nestedinvariantsz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |nestedinvariantsz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |nestedinvariantsz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |nestedinvariantsz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |nestedinvariantsz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |nestedinvariantsz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestNestedInvariants_Nested) ) (! (= (|$IsValid'$42_TestNestedInvariants_Nested'| s) (|$IsValid'u64'| (|$x#$42_TestNestedInvariants_Nested| s)))
 :qid |nestedinvariantsz3bpl.901:52|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestNestedInvariants_Nested'| s))
)))
(assert (forall ((s@@0 T@$42_TestNestedInvariants_Outer) ) (! (= (|$IsValid'$42_TestNestedInvariants_Outer'| s@@0)  (and (|$IsValid'u64'| (|$y#$42_TestNestedInvariants_Outer| s@@0)) (|$IsValid'$42_TestNestedInvariants_Nested'| (|$n#$42_TestNestedInvariants_Outer| s@@0))))
 :qid |nestedinvariantsz3bpl.917:51|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestNestedInvariants_Outer'| s@@0))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |nestedinvariantsz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |nestedinvariantsz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |nestedinvariantsz3bpl.245:54|
 :skolemid |26|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t2@0 () T@$42_TestNestedInvariants_Nested)
(declare-fun $t3@0 () T@$42_TestNestedInvariants_Outer)
(push 1)
(set-info :boogie-vc-id $42_TestNestedInvariants_new$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14725) (let ((anon0$1_correct  (=> (|$IsValid'u64'| 3) (=> (and (|$IsValid'u64'| 2) (= $t2@0 ($42_TestNestedInvariants_Nested 2))) (and (=> (= (ControlFlow 0 13365) (- 0 14781)) (> (|$x#$42_TestNestedInvariants_Nested| $t2@0) 0)) (=> (> (|$x#$42_TestNestedInvariants_Nested| $t2@0) 0) (=> (= $t3@0 ($42_TestNestedInvariants_Outer 3 $t2@0)) (and (=> (= (ControlFlow 0 13365) (- 0 14804)) (< (|$y#$42_TestNestedInvariants_Outer| $t3@0) 4)) (=> (< (|$y#$42_TestNestedInvariants_Outer| $t3@0) 4) (=> (= (ControlFlow 0 13365) (- 0 14814)) (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| $t3@0)) (|$y#$42_TestNestedInvariants_Outer| $t3@0))))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 14725) 13365) anon0$1_correct)))
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
(declare-datatypes ((T@$42_TestNestedInvariants_Nested 0)) ((($42_TestNestedInvariants_Nested (|$x#$42_TestNestedInvariants_Nested| Int) ) ) ))
(declare-datatypes ((T@$42_TestNestedInvariants_Outer 0)) ((($42_TestNestedInvariants_Outer (|$y#$42_TestNestedInvariants_Outer| Int) (|$n#$42_TestNestedInvariants_Outer| T@$42_TestNestedInvariants_Nested) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9941 0)) ((($Mutation_9941 (|l#$Mutation_9941| T@$Location) (|p#$Mutation_9941| (Seq Int)) (|v#$Mutation_9941| T@$42_TestNestedInvariants_Nested) ) ) ))
(declare-datatypes ((T@$Mutation_9894 0)) ((($Mutation_9894 (|l#$Mutation_9894| T@$Location) (|p#$Mutation_9894| (Seq Int)) (|v#$Mutation_9894| T@$42_TestNestedInvariants_Outer) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8166 0)) ((($Mutation_8166 (|l#$Mutation_8166| T@$Location) (|p#$Mutation_8166| (Seq Int)) (|v#$Mutation_8166| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestNestedInvariants_Nested'| (T@$42_TestNestedInvariants_Nested) Bool)
(declare-fun |$IsValid'$42_TestNestedInvariants_Outer'| (T@$42_TestNestedInvariants_Outer) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |nestedinvariantsz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |nestedinvariantsz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |nestedinvariantsz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |nestedinvariantsz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |nestedinvariantsz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |nestedinvariantsz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |nestedinvariantsz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |nestedinvariantsz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |nestedinvariantsz3bpl.590:13|
 :skolemid |15|
))))
 :qid |nestedinvariantsz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |nestedinvariantsz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |nestedinvariantsz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |nestedinvariantsz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |nestedinvariantsz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |nestedinvariantsz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |nestedinvariantsz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |nestedinvariantsz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestNestedInvariants_Nested) ) (! (= (|$IsValid'$42_TestNestedInvariants_Nested'| s) (|$IsValid'u64'| (|$x#$42_TestNestedInvariants_Nested| s)))
 :qid |nestedinvariantsz3bpl.901:52|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestNestedInvariants_Nested'| s))
)))
(assert (forall ((s@@0 T@$42_TestNestedInvariants_Outer) ) (! (= (|$IsValid'$42_TestNestedInvariants_Outer'| s@@0)  (and (|$IsValid'u64'| (|$y#$42_TestNestedInvariants_Outer| s@@0)) (|$IsValid'$42_TestNestedInvariants_Nested'| (|$n#$42_TestNestedInvariants_Outer| s@@0))))
 :qid |nestedinvariantsz3bpl.917:51|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestNestedInvariants_Outer'| s@@0))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |nestedinvariantsz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |nestedinvariantsz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |nestedinvariantsz3bpl.245:54|
 :skolemid |26|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t2@0 () T@$42_TestNestedInvariants_Nested)
(declare-fun $t3@0 () T@$42_TestNestedInvariants_Outer)
(push 1)
(set-info :boogie-vc-id $42_TestNestedInvariants_new_inner_data_invariant_invalid$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14841) (let ((anon0$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (|$IsValid'u64'| 0) (= $t2@0 ($42_TestNestedInvariants_Nested 0))) (and (=> (= (ControlFlow 0 13506) (- 0 14897)) (> (|$x#$42_TestNestedInvariants_Nested| $t2@0) 0)) (=> (> (|$x#$42_TestNestedInvariants_Nested| $t2@0) 0) (=> (= $t3@0 ($42_TestNestedInvariants_Outer 2 $t2@0)) (and (=> (= (ControlFlow 0 13506) (- 0 14920)) (< (|$y#$42_TestNestedInvariants_Outer| $t3@0) 4)) (=> (< (|$y#$42_TestNestedInvariants_Outer| $t3@0) 4) (=> (= (ControlFlow 0 13506) (- 0 14930)) (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| $t3@0)) (|$y#$42_TestNestedInvariants_Outer| $t3@0))))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 14841) 13506) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 14841)))
(get-value ((ControlFlow 0 13506)))
(assert (not (= (ControlFlow 0 13506) (- 14897))))
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
(declare-datatypes ((T@$42_TestNestedInvariants_Nested 0)) ((($42_TestNestedInvariants_Nested (|$x#$42_TestNestedInvariants_Nested| Int) ) ) ))
(declare-datatypes ((T@$42_TestNestedInvariants_Outer 0)) ((($42_TestNestedInvariants_Outer (|$y#$42_TestNestedInvariants_Outer| Int) (|$n#$42_TestNestedInvariants_Outer| T@$42_TestNestedInvariants_Nested) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9941 0)) ((($Mutation_9941 (|l#$Mutation_9941| T@$Location) (|p#$Mutation_9941| (Seq Int)) (|v#$Mutation_9941| T@$42_TestNestedInvariants_Nested) ) ) ))
(declare-datatypes ((T@$Mutation_9894 0)) ((($Mutation_9894 (|l#$Mutation_9894| T@$Location) (|p#$Mutation_9894| (Seq Int)) (|v#$Mutation_9894| T@$42_TestNestedInvariants_Outer) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8166 0)) ((($Mutation_8166 (|l#$Mutation_8166| T@$Location) (|p#$Mutation_8166| (Seq Int)) (|v#$Mutation_8166| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestNestedInvariants_Nested'| (T@$42_TestNestedInvariants_Nested) Bool)
(declare-fun |$IsValid'$42_TestNestedInvariants_Outer'| (T@$42_TestNestedInvariants_Outer) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |nestedinvariantsz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |nestedinvariantsz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |nestedinvariantsz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |nestedinvariantsz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |nestedinvariantsz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |nestedinvariantsz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |nestedinvariantsz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |nestedinvariantsz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |nestedinvariantsz3bpl.590:13|
 :skolemid |15|
))))
 :qid |nestedinvariantsz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |nestedinvariantsz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |nestedinvariantsz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |nestedinvariantsz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |nestedinvariantsz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |nestedinvariantsz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |nestedinvariantsz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |nestedinvariantsz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestNestedInvariants_Nested) ) (! (= (|$IsValid'$42_TestNestedInvariants_Nested'| s) (|$IsValid'u64'| (|$x#$42_TestNestedInvariants_Nested| s)))
 :qid |nestedinvariantsz3bpl.901:52|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestNestedInvariants_Nested'| s))
)))
(assert (forall ((s@@0 T@$42_TestNestedInvariants_Outer) ) (! (= (|$IsValid'$42_TestNestedInvariants_Outer'| s@@0)  (and (|$IsValid'u64'| (|$y#$42_TestNestedInvariants_Outer| s@@0)) (|$IsValid'$42_TestNestedInvariants_Nested'| (|$n#$42_TestNestedInvariants_Outer| s@@0))))
 :qid |nestedinvariantsz3bpl.917:51|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestNestedInvariants_Outer'| s@@0))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |nestedinvariantsz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |nestedinvariantsz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |nestedinvariantsz3bpl.245:54|
 :skolemid |26|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t2@0 () T@$42_TestNestedInvariants_Nested)
(declare-fun $t3@0 () T@$42_TestNestedInvariants_Outer)
(push 1)
(set-info :boogie-vc-id $42_TestNestedInvariants_new_outer_data_invariant_invalid$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14957) (let ((anon0$1_correct  (=> (|$IsValid'u64'| 2) (=> (and (|$IsValid'u64'| 2) (= $t2@0 ($42_TestNestedInvariants_Nested 2))) (and (=> (= (ControlFlow 0 13647) (- 0 15013)) (> (|$x#$42_TestNestedInvariants_Nested| $t2@0) 0)) (=> (> (|$x#$42_TestNestedInvariants_Nested| $t2@0) 0) (=> (= $t3@0 ($42_TestNestedInvariants_Outer 2 $t2@0)) (and (=> (= (ControlFlow 0 13647) (- 0 15036)) (< (|$y#$42_TestNestedInvariants_Outer| $t3@0) 4)) (=> (< (|$y#$42_TestNestedInvariants_Outer| $t3@0) 4) (=> (= (ControlFlow 0 13647) (- 0 15046)) (< (|$x#$42_TestNestedInvariants_Nested| (|$n#$42_TestNestedInvariants_Outer| $t3@0)) (|$y#$42_TestNestedInvariants_Outer| $t3@0))))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 14957) 13647) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 14957)))
(get-value ((ControlFlow 0 13647)))
(assert (not (= (ControlFlow 0 13647) (- 15046))))
(check-sat)
(pop 1)
; Invalid
