(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_9127 0)) ((($Memory_9127 (|domain#$Memory_9127| |T@[Int]Bool|) (|contents#$Memory_9127| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9160 0)) ((($Mutation_9160 (|l#$Mutation_9160| T@$Location) (|p#$Mutation_9160| (Seq Int)) (|v#$Mutation_9160| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7445 0)) ((($Mutation_7445 (|l#$Mutation_7445| T@$Location) (|p#$Mutation_7445| (Seq Int)) (|v#$Mutation_7445| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$0_A_S'| (T@$0_A_S) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ModifiesSchemaTestSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s) (|$IsValid'u64'| (|$x#$0_A_S| s)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.901:27|
 :skolemid |24|
 :pattern ( (|$IsValid'$0_A_S'| s))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |ModifiesSchemaTestSmtSeqz3bpl.245:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t2@1 () T@$Mutation_9160)
(declare-fun $t2 () T@$Mutation_9160)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $0_A_S_$memory () T@$Memory_9127)
(declare-fun _$t0 () Int)
(declare-fun $t2@0 () T@$Mutation_9160)
(declare-fun |Select__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int) T@$0_A_S)
(declare-fun $abort_code@0 () Int)
(declare-fun $0_A_S_$modifies () |T@[Int]Bool|)
(declare-fun $t1 () T@$Mutation_9160)
(declare-fun $t5 () T@$Mutation_3430)
(push 1)
(set-info :boogie-vc-id $0_A_mutate_at$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 12806) (let ((anon7_Else_correct true))
(let ((anon7_Then_correct true))
(let ((anon6_Then$1_correct  (=> (= $t2@1 $t2) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 10934) 10882) anon7_Then_correct) (=> (= (ControlFlow 0 10934) 10864) anon7_Else_correct))))))
(let ((anon6_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_9127| $0_A_S_$memory) _$t0)) (= (ControlFlow 0 10932) 10934)) anon6_Then$1_correct)))
(let ((anon6_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_9127| $0_A_S_$memory) _$t0) (=> (and (and (= $t2@0 ($Mutation_9160 ($Global _$t0) (as seq.empty (Seq Int)) (|Select__T@[Int]$0_A_S_| (|contents#$Memory_9127| $0_A_S_$memory) _$t0))) (= $t2@1 $t2@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 10792) 10882) anon7_Then_correct) (=> (= (ControlFlow 0 10792) 10864) anon7_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_A_S_| (|contents#$Memory_9127| $0_A_S_$memory) $a_0)))
(|$IsValid'$0_A_S'| $rsc))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.1012:20|
 :skolemid |25|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_9127| $0_A_S_$memory) $a_0))
))) (and (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0) (= _$t0 _$t0))) (and (=> (= (ControlFlow 0 10770) (- 0 12923)) (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0) (and (=> (= (ControlFlow 0 10770) 10932) anon6_Then_correct) (=> (= (ControlFlow 0 10770) 10792) anon6_Else_correct)))))))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_9160| $t1)) 0) (= (seq.len (|p#$Mutation_9160| $t2)) 0)) (and (= (seq.len (|p#$Mutation_3430| $t5)) 0) (= (ControlFlow 0 10716) 10770))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 12806) 10716) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
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
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_9127 0)) ((($Memory_9127 (|domain#$Memory_9127| |T@[Int]Bool|) (|contents#$Memory_9127| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9160 0)) ((($Mutation_9160 (|l#$Mutation_9160| T@$Location) (|p#$Mutation_9160| (Seq Int)) (|v#$Mutation_9160| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7445 0)) ((($Mutation_7445 (|l#$Mutation_7445| T@$Location) (|p#$Mutation_7445| (Seq Int)) (|v#$Mutation_7445| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$0_A_S'| (T@$0_A_S) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ModifiesSchemaTestSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s) (|$IsValid'u64'| (|$x#$0_A_S| s)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.901:27|
 :skolemid |24|
 :pattern ( (|$IsValid'$0_A_S'| s))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |ModifiesSchemaTestSmtSeqz3bpl.245:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |inline$$0_A_mutate_at$0$$temp_0'$0_A_S'@1| () T@$0_A_S)
(declare-fun inline$$0_A_mutate_at$0$$t2@2 () T@$Mutation_9160)
(declare-fun inline$$0_A_mutate_at$0$$t5@1 () T@$Mutation_3430)
(declare-fun inline$$0_A_mutate_at$0$$t5@2 () T@$Mutation_3430)
(declare-fun inline$$0_A_mutate_at$0$$t2@3 () T@$Mutation_9160)
(declare-fun $0_A_S_$memory@0 () T@$Memory_9127)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $0_A_S_$memory () T@$Memory_9127)
(declare-fun |Store__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int T@$0_A_S) |T@[Int]$0_A_S|)
(declare-fun |Select__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int) T@$0_A_S)
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?x2 T@$0_A_S)) (! (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$0_A_S)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$0_A_S_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$0_A_mutate_at$0$$t2@0 () T@$Mutation_9160)
(declare-fun _$t0 () Int)
(declare-fun inline$$0_A_mutate_at$0$$t2@1 () T@$Mutation_9160)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$0_A_mutate_at$0$$t1@0 () T@$Mutation_9160)
(declare-fun inline$$0_A_mutate_at$0$$t5@0 () T@$Mutation_3430)
(declare-fun $0_A_S_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $0_A_mutate_at_wrapper1$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 13123) (let ((anon3_Else_correct true))
(let ((anon3_Then_correct true))
(let ((inline$$0_A_mutate_at$0$anon7_Else_correct  (=> (not $abort_flag@0) (=> (and (and (and (= |inline$$0_A_mutate_at$0$$temp_0'$0_A_S'@1| (|v#$Mutation_9160| inline$$0_A_mutate_at$0$$t2@2)) (= |inline$$0_A_mutate_at$0$$temp_0'$0_A_S'@1| |inline$$0_A_mutate_at$0$$temp_0'$0_A_S'@1|)) (and (|$IsValid'u64'| 2) (= inline$$0_A_mutate_at$0$$t5@1 ($Mutation_3430 (|l#$Mutation_9160| inline$$0_A_mutate_at$0$$t2@2) (seq.++ (|p#$Mutation_9160| inline$$0_A_mutate_at$0$$t2@2) (seq.unit 0)) (|$x#$0_A_S| (|v#$Mutation_9160| inline$$0_A_mutate_at$0$$t2@2)))))) (and (and (= inline$$0_A_mutate_at$0$$t5@2 ($Mutation_3430 (|l#$Mutation_3430| inline$$0_A_mutate_at$0$$t5@1) (|p#$Mutation_3430| inline$$0_A_mutate_at$0$$t5@1) 2)) (= inline$$0_A_mutate_at$0$$t2@3 ($Mutation_9160 (|l#$Mutation_9160| inline$$0_A_mutate_at$0$$t2@2) (|p#$Mutation_9160| inline$$0_A_mutate_at$0$$t2@2) ($0_A_S (|v#$Mutation_3430| inline$$0_A_mutate_at$0$$t5@2))))) (and (= $0_A_S_$memory@0 ($Memory_9127 (|Store__T@[Int]Bool_| (|domain#$Memory_9127| $0_A_S_$memory) (|a#$Global| (|l#$Mutation_9160| inline$$0_A_mutate_at$0$$t2@3)) true) (|Store__T@[Int]$0_A_S_| (|contents#$Memory_9127| $0_A_S_$memory) (|a#$Global| (|l#$Mutation_9160| inline$$0_A_mutate_at$0$$t2@3)) (|v#$Mutation_9160| inline$$0_A_mutate_at$0$$t2@3)))) (= $abort_flag@1 $abort_flag@0)))) (and (=> (= (ControlFlow 0 11452) 11554) anon3_Then_correct) (=> (= (ControlFlow 0 11452) 11536) anon3_Else_correct))))))
(let ((inline$$0_A_mutate_at$0$anon7_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= $abort_flag@1 true)) (and (=> (= (ControlFlow 0 11470) 11554) anon3_Then_correct) (=> (= (ControlFlow 0 11470) 11536) anon3_Else_correct))))))
(let ((inline$$0_A_mutate_at$0$anon6_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$0_A_mutate_at$0$$t2@2 inline$$0_A_mutate_at$0$$t2@0)) (and (=> (= (ControlFlow 0 11522) 11470) inline$$0_A_mutate_at$0$anon7_Then_correct) (=> (= (ControlFlow 0 11522) 11452) inline$$0_A_mutate_at$0$anon7_Else_correct))))))
(let ((inline$$0_A_mutate_at$0$anon6_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_9127| $0_A_S_$memory) _$t0)) (= (ControlFlow 0 11520) 11522)) inline$$0_A_mutate_at$0$anon6_Then$1_correct)))
(let ((inline$$0_A_mutate_at$0$anon6_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_9127| $0_A_S_$memory) _$t0) (=> (and (and (= inline$$0_A_mutate_at$0$$t2@1 ($Mutation_9160 ($Global _$t0) (as seq.empty (Seq Int)) (|Select__T@[Int]$0_A_S_| (|contents#$Memory_9127| $0_A_S_$memory) _$t0))) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$0_A_mutate_at$0$$t2@2 inline$$0_A_mutate_at$0$$t2@1))) (and (=> (= (ControlFlow 0 11380) 11470) inline$$0_A_mutate_at$0$anon7_Then_correct) (=> (= (ControlFlow 0 11380) 11452) inline$$0_A_mutate_at$0$anon7_Else_correct))))))
(let ((inline$$0_A_mutate_at$0$anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_9160| inline$$0_A_mutate_at$0$$t1@0)) 0) (= (seq.len (|p#$Mutation_9160| inline$$0_A_mutate_at$0$$t2@0)) 0)) (and (= (seq.len (|p#$Mutation_3430| inline$$0_A_mutate_at$0$$t5@0)) 0) (= _$t0 _$t0))) (and (=> (= (ControlFlow 0 11358) 11520) inline$$0_A_mutate_at$0$anon6_Then_correct) (=> (= (ControlFlow 0 11358) 11380) inline$$0_A_mutate_at$0$anon6_Else_correct)))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_A_S_| (|contents#$Memory_9127| $0_A_S_$memory) $a_0)))
(|$IsValid'$0_A_S'| $rsc))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.1099:20|
 :skolemid |26|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_9127| $0_A_S_$memory) $a_0))
))) (and (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0) (= _$t0 _$t0))) (and (=> (= (ControlFlow 0 11526) (- 0 13238)) (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0) (=> (= (ControlFlow 0 11526) 11358) inline$$0_A_mutate_at$0$anon0_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 13123) 11526) anon0$1_correct)))
anon0_correct)))))))))))
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
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_9127 0)) ((($Memory_9127 (|domain#$Memory_9127| |T@[Int]Bool|) (|contents#$Memory_9127| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9160 0)) ((($Mutation_9160 (|l#$Mutation_9160| T@$Location) (|p#$Mutation_9160| (Seq Int)) (|v#$Mutation_9160| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7445 0)) ((($Mutation_7445 (|l#$Mutation_7445| T@$Location) (|p#$Mutation_7445| (Seq Int)) (|v#$Mutation_7445| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$0_A_S'| (T@$0_A_S) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ModifiesSchemaTestSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s) (|$IsValid'u64'| (|$x#$0_A_S| s)))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.901:27|
 :skolemid |24|
 :pattern ( (|$IsValid'$0_A_S'| s))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |ModifiesSchemaTestSmtSeqz3bpl.245:54|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun |inline$$0_A_mutate_at$1$$temp_0'$0_A_S'@1| () T@$0_A_S)
(declare-fun inline$$0_A_mutate_at$1$$t2@2 () T@$Mutation_9160)
(declare-fun inline$$0_A_mutate_at$1$$t5@1 () T@$Mutation_3430)
(declare-fun inline$$0_A_mutate_at$1$$t5@2 () T@$Mutation_3430)
(declare-fun inline$$0_A_mutate_at$1$$t2@3 () T@$Mutation_9160)
(declare-fun $0_A_S_$memory@2 () T@$Memory_9127)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $0_A_S_$memory@1 () T@$Memory_9127)
(declare-fun |Store__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int T@$0_A_S) |T@[Int]$0_A_S|)
(declare-fun |Select__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int) T@$0_A_S)
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?x2 T@$0_A_S)) (! (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$0_A_S)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$0_A_S_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun inline$$0_A_mutate_at$1$$t2@0 () T@$Mutation_9160)
(declare-fun _$t1 () Int)
(declare-fun inline$$0_A_mutate_at$1$$t2@1 () T@$Mutation_9160)
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun inline$$0_A_mutate_at$1$$t1@0 () T@$Mutation_9160)
(declare-fun inline$$0_A_mutate_at$1$$t5@0 () T@$Mutation_3430)
(declare-fun $0_A_S_$modifies () |T@[Int]Bool|)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |inline$$0_A_mutate_at$0$$temp_0'$0_A_S'@1| () T@$0_A_S)
(declare-fun inline$$0_A_mutate_at$0$$t2@2 () T@$Mutation_9160)
(declare-fun inline$$0_A_mutate_at$0$$t5@1 () T@$Mutation_3430)
(declare-fun inline$$0_A_mutate_at$0$$t5@2 () T@$Mutation_3430)
(declare-fun inline$$0_A_mutate_at$0$$t2@3 () T@$Mutation_9160)
(declare-fun $0_A_S_$memory@0 () T@$Memory_9127)
(declare-fun $0_A_S_$memory () T@$Memory_9127)
(declare-fun inline$$0_A_mutate_at$0$$t2@0 () T@$Mutation_9160)
(declare-fun _$t0 () Int)
(declare-fun inline$$0_A_mutate_at$0$$t2@1 () T@$Mutation_9160)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$0_A_mutate_at$0$$t1@0 () T@$Mutation_9160)
(declare-fun inline$$0_A_mutate_at$0$$t5@0 () T@$Mutation_3430)
(push 1)
(set-info :boogie-vc-id $0_A_mutate_at_wrapper2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 13512) (let ((anon6_Else_correct true))
(let ((anon6_Then_correct true))
(let ((inline$$0_A_mutate_at$1$anon7_Else_correct  (=> (not $abort_flag@2) (=> (and (and (and (= |inline$$0_A_mutate_at$1$$temp_0'$0_A_S'@1| (|v#$Mutation_9160| inline$$0_A_mutate_at$1$$t2@2)) (= |inline$$0_A_mutate_at$1$$temp_0'$0_A_S'@1| |inline$$0_A_mutate_at$1$$temp_0'$0_A_S'@1|)) (and (|$IsValid'u64'| 2) (= inline$$0_A_mutate_at$1$$t5@1 ($Mutation_3430 (|l#$Mutation_9160| inline$$0_A_mutate_at$1$$t2@2) (seq.++ (|p#$Mutation_9160| inline$$0_A_mutate_at$1$$t2@2) (seq.unit 0)) (|$x#$0_A_S| (|v#$Mutation_9160| inline$$0_A_mutate_at$1$$t2@2)))))) (and (and (= inline$$0_A_mutate_at$1$$t5@2 ($Mutation_3430 (|l#$Mutation_3430| inline$$0_A_mutate_at$1$$t5@1) (|p#$Mutation_3430| inline$$0_A_mutate_at$1$$t5@1) 2)) (= inline$$0_A_mutate_at$1$$t2@3 ($Mutation_9160 (|l#$Mutation_9160| inline$$0_A_mutate_at$1$$t2@2) (|p#$Mutation_9160| inline$$0_A_mutate_at$1$$t2@2) ($0_A_S (|v#$Mutation_3430| inline$$0_A_mutate_at$1$$t5@2))))) (and (= $0_A_S_$memory@2 ($Memory_9127 (|Store__T@[Int]Bool_| (|domain#$Memory_9127| $0_A_S_$memory@1) (|a#$Global| (|l#$Mutation_9160| inline$$0_A_mutate_at$1$$t2@3)) true) (|Store__T@[Int]$0_A_S_| (|contents#$Memory_9127| $0_A_S_$memory@1) (|a#$Global| (|l#$Mutation_9160| inline$$0_A_mutate_at$1$$t2@3)) (|v#$Mutation_9160| inline$$0_A_mutate_at$1$$t2@3)))) (= $abort_flag@3 $abort_flag@2)))) (and (=> (= (ControlFlow 0 12555) 12653) anon6_Then_correct) (=> (= (ControlFlow 0 12555) 12639) anon6_Else_correct))))))
(let ((inline$$0_A_mutate_at$1$anon7_Then_correct  (=> $abort_flag@2 (=> (and (= $abort_code@2 $abort_code@2) (= $abort_flag@3 true)) (and (=> (= (ControlFlow 0 12573) 12653) anon6_Then_correct) (=> (= (ControlFlow 0 12573) 12639) anon6_Else_correct))))))
(let ((inline$$0_A_mutate_at$1$anon6_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@2 true) (= inline$$0_A_mutate_at$1$$t2@2 inline$$0_A_mutate_at$1$$t2@0)) (and (=> (= (ControlFlow 0 12625) 12573) inline$$0_A_mutate_at$1$anon7_Then_correct) (=> (= (ControlFlow 0 12625) 12555) inline$$0_A_mutate_at$1$anon7_Else_correct))))))
(let ((inline$$0_A_mutate_at$1$anon6_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_9127| $0_A_S_$memory@1) _$t1)) (= (ControlFlow 0 12623) 12625)) inline$$0_A_mutate_at$1$anon6_Then$1_correct)))
(let ((inline$$0_A_mutate_at$1$anon6_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_9127| $0_A_S_$memory@1) _$t1) (=> (and (and (= inline$$0_A_mutate_at$1$$t2@1 ($Mutation_9160 ($Global _$t1) (as seq.empty (Seq Int)) (|Select__T@[Int]$0_A_S_| (|contents#$Memory_9127| $0_A_S_$memory@1) _$t1))) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@2 $abort_flag@1) (= inline$$0_A_mutate_at$1$$t2@2 inline$$0_A_mutate_at$1$$t2@1))) (and (=> (= (ControlFlow 0 12483) 12573) inline$$0_A_mutate_at$1$anon7_Then_correct) (=> (= (ControlFlow 0 12483) 12555) inline$$0_A_mutate_at$1$anon7_Else_correct))))))
(let ((inline$$0_A_mutate_at$1$anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_9160| inline$$0_A_mutate_at$1$$t1@0)) 0) (= (seq.len (|p#$Mutation_9160| inline$$0_A_mutate_at$1$$t2@0)) 0)) (and (= (seq.len (|p#$Mutation_3430| inline$$0_A_mutate_at$1$$t5@0)) 0) (= _$t1 _$t1))) (and (=> (= (ControlFlow 0 12461) 12623) inline$$0_A_mutate_at$1$anon6_Then_correct) (=> (= (ControlFlow 0 12461) 12483) inline$$0_A_mutate_at$1$anon6_Else_correct)))))
(let ((anon5_Else_correct  (=> (not $abort_flag@1) (and (=> (= (ControlFlow 0 12629) (- 0 13950)) (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t1)) (=> (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t1) (=> (= (ControlFlow 0 12629) 12461) inline$$0_A_mutate_at$1$anon0_correct))))))
(let ((anon5_Then_correct true))
(let ((inline$$0_A_mutate_at$0$anon7_Else_correct  (=> (and (not $abort_flag@0) (= |inline$$0_A_mutate_at$0$$temp_0'$0_A_S'@1| (|v#$Mutation_9160| inline$$0_A_mutate_at$0$$t2@2))) (=> (and (and (and (= |inline$$0_A_mutate_at$0$$temp_0'$0_A_S'@1| |inline$$0_A_mutate_at$0$$temp_0'$0_A_S'@1|) (|$IsValid'u64'| 2)) (and (= inline$$0_A_mutate_at$0$$t5@1 ($Mutation_3430 (|l#$Mutation_9160| inline$$0_A_mutate_at$0$$t2@2) (seq.++ (|p#$Mutation_9160| inline$$0_A_mutate_at$0$$t2@2) (seq.unit 0)) (|$x#$0_A_S| (|v#$Mutation_9160| inline$$0_A_mutate_at$0$$t2@2)))) (= inline$$0_A_mutate_at$0$$t5@2 ($Mutation_3430 (|l#$Mutation_3430| inline$$0_A_mutate_at$0$$t5@1) (|p#$Mutation_3430| inline$$0_A_mutate_at$0$$t5@1) 2)))) (and (and (= inline$$0_A_mutate_at$0$$t2@3 ($Mutation_9160 (|l#$Mutation_9160| inline$$0_A_mutate_at$0$$t2@2) (|p#$Mutation_9160| inline$$0_A_mutate_at$0$$t2@2) ($0_A_S (|v#$Mutation_3430| inline$$0_A_mutate_at$0$$t5@2)))) (= $0_A_S_$memory@0 ($Memory_9127 (|Store__T@[Int]Bool_| (|domain#$Memory_9127| $0_A_S_$memory) (|a#$Global| (|l#$Mutation_9160| inline$$0_A_mutate_at$0$$t2@3)) true) (|Store__T@[Int]$0_A_S_| (|contents#$Memory_9127| $0_A_S_$memory) (|a#$Global| (|l#$Mutation_9160| inline$$0_A_mutate_at$0$$t2@3)) (|v#$Mutation_9160| inline$$0_A_mutate_at$0$$t2@3))))) (and (= $0_A_S_$memory@1 $0_A_S_$memory@0) (= $abort_flag@1 $abort_flag@0)))) (and (=> (= (ControlFlow 0 12091) 12673) anon5_Then_correct) (=> (= (ControlFlow 0 12091) 12629) anon5_Else_correct))))))
(let ((inline$$0_A_mutate_at$0$anon7_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $0_A_S_$memory@1 $0_A_S_$memory) (= $abort_flag@1 true))) (and (=> (= (ControlFlow 0 12109) 12673) anon5_Then_correct) (=> (= (ControlFlow 0 12109) 12629) anon5_Else_correct)))))
(let ((inline$$0_A_mutate_at$0$anon6_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$0_A_mutate_at$0$$t2@2 inline$$0_A_mutate_at$0$$t2@0)) (and (=> (= (ControlFlow 0 12161) 12109) inline$$0_A_mutate_at$0$anon7_Then_correct) (=> (= (ControlFlow 0 12161) 12091) inline$$0_A_mutate_at$0$anon7_Else_correct))))))
(let ((inline$$0_A_mutate_at$0$anon6_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_9127| $0_A_S_$memory) _$t0)) (= (ControlFlow 0 12159) 12161)) inline$$0_A_mutate_at$0$anon6_Then$1_correct)))
(let ((inline$$0_A_mutate_at$0$anon6_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_9127| $0_A_S_$memory) _$t0) (=> (and (and (= inline$$0_A_mutate_at$0$$t2@1 ($Mutation_9160 ($Global _$t0) (as seq.empty (Seq Int)) (|Select__T@[Int]$0_A_S_| (|contents#$Memory_9127| $0_A_S_$memory) _$t0))) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$0_A_mutate_at$0$$t2@2 inline$$0_A_mutate_at$0$$t2@1))) (and (=> (= (ControlFlow 0 12019) 12109) inline$$0_A_mutate_at$0$anon7_Then_correct) (=> (= (ControlFlow 0 12019) 12091) inline$$0_A_mutate_at$0$anon7_Else_correct))))))
(let ((inline$$0_A_mutate_at$0$anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_9160| inline$$0_A_mutate_at$0$$t1@0)) 0) (= (seq.len (|p#$Mutation_9160| inline$$0_A_mutate_at$0$$t2@0)) 0)) (and (= (seq.len (|p#$Mutation_3430| inline$$0_A_mutate_at$0$$t5@0)) 0) (= _$t0 _$t0))) (and (=> (= (ControlFlow 0 11997) 12159) inline$$0_A_mutate_at$0$anon6_Then_correct) (=> (= (ControlFlow 0 11997) 12019) inline$$0_A_mutate_at$0$anon6_Else_correct)))))
(let ((anon0$1_correct  (=> (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (=> (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_A_S_| (|contents#$Memory_9127| $0_A_S_$memory) $a_0)))
(|$IsValid'$0_A_S'| $rsc))
 :qid |ModifiesSchemaTestSmtSeqz3bpl.1165:20|
 :skolemid |27|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_9127| $0_A_S_$memory) $a_0))
)) (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0)) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (=> (= (ControlFlow 0 12165) (- 0 13680)) (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0) (=> (= (ControlFlow 0 12165) 11997) inline$$0_A_mutate_at$0$anon0_correct)))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 13512) 12165) anon0$1_correct)))
anon0_correct)))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 13512)))
(get-value ((ControlFlow 0 12165)))
(get-value ((ControlFlow 0 11997)))
(get-value ((ControlFlow 0 12019)))
(get-value ((ControlFlow 0 12091)))
(get-value ((ControlFlow 0 12629)))
(assert (not (= (ControlFlow 0 12629) (- 13950))))
(check-sat)
(pop 1)
; Invalid
