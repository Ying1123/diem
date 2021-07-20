(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@$42_TestModule_R 0)) ((($42_TestModule_R (|$value#$42_TestModule_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestModule_R| 0)
(declare-datatypes ((T@$Memory_8768 0)) ((($Memory_8768 (|domain#$Memory_8768| |T@[Int]Bool|) (|contents#$Memory_8768| |T@[Int]$42_TestModule_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7086 0)) ((($Mutation_7086 (|l#$Mutation_7086| T@$Location) (|p#$Mutation_7086| (Seq Int)) (|v#$Mutation_7086| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestModule_R'| (T@$42_TestModule_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |modulelevelspecSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |modulelevelspecSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |modulelevelspecSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |modulelevelspecSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |modulelevelspecSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |modulelevelspecSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |modulelevelspecSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |modulelevelspecSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |modulelevelspecSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |modulelevelspecSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |modulelevelspecSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |modulelevelspecSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |modulelevelspecSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |modulelevelspecSmtSeqz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |modulelevelspecSmtSeqz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |modulelevelspecSmtSeqz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |modulelevelspecSmtSeqz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestModule_R) ) (! (= (|$IsValid'$42_TestModule_R'| s) (|$IsValid'u64'| (|$value#$42_TestModule_R| s)))
 :qid |modulelevelspecSmtSeqz3bpl.901:37|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestModule_R'| s))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |modulelevelspecSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |modulelevelspecSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |modulelevelspecSmtSeqz3bpl.245:54|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $42_TestModule_R_$memory@1 () T@$Memory_8768)
(declare-fun |Select__T@[Int]$42_TestModule_R_| (|T@[Int]$42_TestModule_R| Int) T@$42_TestModule_R)
(declare-fun $t2 () Int)
(declare-fun _$t1 () Int)
(declare-fun $42_TestModule_R_$memory () T@$Memory_8768)
(declare-fun $abort_code@1 () Int)
(declare-fun _$t0 () Int)
(declare-fun $42_TestModule_R_$memory@0 () T@$Memory_8768)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$42_TestModule_R_| (|T@[Int]$42_TestModule_R| Int T@$42_TestModule_R) |T@[Int]$42_TestModule_R|)
(assert (forall ( ( ?x0 |T@[Int]$42_TestModule_R|) ( ?x1 Int) ( ?x2 T@$42_TestModule_R)) (! (= (|Select__T@[Int]$42_TestModule_R_| (|Store__T@[Int]$42_TestModule_R_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestModule_R|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$42_TestModule_R)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestModule_R_| (|Store__T@[Int]$42_TestModule_R_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestModule_R_| ?x0 ?y1))) :weight 0)))
(declare-fun $t3@0 () T@$42_TestModule_R)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestModule_store$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 10411) (let ((anon8_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 9957) (- 0 10645)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_8768| $42_TestModule_R_$memory@1) addr) (> (|$value#$42_TestModule_R| (|Select__T@[Int]$42_TestModule_R_| (|contents#$Memory_8768| $42_TestModule_R_$memory@1) addr)) 0)))
 :qid |modulelevelspecSmtSeqz3bpl.978:15|
 :skolemid |27|
))) (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_8768| $42_TestModule_R_$memory@1) addr@@0) (> (|$value#$42_TestModule_R| (|Select__T@[Int]$42_TestModule_R_| (|contents#$Memory_8768| $42_TestModule_R_$memory@1) addr@@0)) 0)))
 :qid |modulelevelspecSmtSeqz3bpl.978:15|
 :skolemid |27|
)) (and (=> (= (ControlFlow 0 9957) (- 0 10678)) (|Select__T@[Int]Bool_| (|domain#$Memory_8768| $42_TestModule_R_$memory@1) $t2)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_8768| $42_TestModule_R_$memory@1) $t2) (=> (= (ControlFlow 0 9957) (- 0 10686)) (= (|$value#$42_TestModule_R| (|Select__T@[Int]$42_TestModule_R_| (|contents#$Memory_8768| $42_TestModule_R_$memory@1) $t2)) _$t1)))))))))
(let ((anon8_Then_correct true))
(let ((anon7_Then$1_correct  (=> (= $42_TestModule_R_$memory@1 $42_TestModule_R_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 10025) 9975) anon8_Then_correct) (=> (= (ControlFlow 0 10025) 9957) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_8768| $42_TestModule_R_$memory) _$t0) (= (ControlFlow 0 10023) 10025)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_8768| $42_TestModule_R_$memory) _$t0)) (=> (and (and (= $42_TestModule_R_$memory@0 ($Memory_8768 (|Store__T@[Int]Bool_| (|domain#$Memory_8768| $42_TestModule_R_$memory) _$t0 true) (|Store__T@[Int]$42_TestModule_R_| (|contents#$Memory_8768| $42_TestModule_R_$memory) _$t0 $t3@0))) (= $42_TestModule_R_$memory@1 $42_TestModule_R_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 9894) 9975) anon8_Then_correct) (=> (= (ControlFlow 0 9894) 9957) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_8768| $42_TestModule_R_$memory) addr@@1) (> (|$value#$42_TestModule_R| (|Select__T@[Int]$42_TestModule_R_| (|contents#$Memory_8768| $42_TestModule_R_$memory) addr@@1)) 0)))
 :qid |modulelevelspecSmtSeqz3bpl.930:20|
 :skolemid |25|
)) (=> (and (and (and (|$IsValid'address'| _$t0) (|$IsValid'u64'| _$t1)) (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestModule_R_| (|contents#$Memory_8768| $42_TestModule_R_$memory) $a_0)))
(|$IsValid'$42_TestModule_R'| $rsc))
 :qid |modulelevelspecSmtSeqz3bpl.939:20|
 :skolemid |26|
 :pattern ( (|Select__T@[Int]$42_TestModule_R_| (|contents#$Memory_8768| $42_TestModule_R_$memory) $a_0))
)) (= $t2 _$t0))) (and (and (> _$t1 0) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= $t3@0 ($42_TestModule_R _$t1))))) (and (=> (= (ControlFlow 0 9876) 10023) anon7_Then_correct) (=> (= (ControlFlow 0 9876) 9894) anon7_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 10411) 9876) anon0$1_correct)))
anon0_correct))))))))
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
(declare-datatypes ((T@$42_TestModule_R 0)) ((($42_TestModule_R (|$value#$42_TestModule_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestModule_R| 0)
(declare-datatypes ((T@$Memory_8768 0)) ((($Memory_8768 (|domain#$Memory_8768| |T@[Int]Bool|) (|contents#$Memory_8768| |T@[Int]$42_TestModule_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7086 0)) ((($Mutation_7086 (|l#$Mutation_7086| T@$Location) (|p#$Mutation_7086| (Seq Int)) (|v#$Mutation_7086| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestModule_R'| (T@$42_TestModule_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |modulelevelspecSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |modulelevelspecSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |modulelevelspecSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |modulelevelspecSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |modulelevelspecSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |modulelevelspecSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |modulelevelspecSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |modulelevelspecSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |modulelevelspecSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |modulelevelspecSmtSeqz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |modulelevelspecSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |modulelevelspecSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |modulelevelspecSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |modulelevelspecSmtSeqz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |modulelevelspecSmtSeqz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |modulelevelspecSmtSeqz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |modulelevelspecSmtSeqz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestModule_R) ) (! (= (|$IsValid'$42_TestModule_R'| s) (|$IsValid'u64'| (|$value#$42_TestModule_R| s)))
 :qid |modulelevelspecSmtSeqz3bpl.901:37|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestModule_R'| s))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |modulelevelspecSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |modulelevelspecSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |modulelevelspecSmtSeqz3bpl.245:54|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $42_TestModule_R_$memory@1 () T@$Memory_8768)
(declare-fun |Select__T@[Int]$42_TestModule_R_| (|T@[Int]$42_TestModule_R| Int) T@$42_TestModule_R)
(declare-fun $t2 () Int)
(declare-fun _$t1 () Int)
(declare-fun $42_TestModule_R_$memory () T@$Memory_8768)
(declare-fun $abort_code@1 () Int)
(declare-fun _$t0 () Int)
(declare-fun $42_TestModule_R_$memory@0 () T@$Memory_8768)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$42_TestModule_R_| (|T@[Int]$42_TestModule_R| Int T@$42_TestModule_R) |T@[Int]$42_TestModule_R|)
(assert (forall ( ( ?x0 |T@[Int]$42_TestModule_R|) ( ?x1 Int) ( ?x2 T@$42_TestModule_R)) (! (= (|Select__T@[Int]$42_TestModule_R_| (|Store__T@[Int]$42_TestModule_R_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestModule_R|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$42_TestModule_R)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestModule_R_| (|Store__T@[Int]$42_TestModule_R_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestModule_R_| ?x0 ?y1))) :weight 0)))
(declare-fun $t3@0 () T@$42_TestModule_R)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestModule_store_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 10719) (let ((anon8_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 10272) (- 0 10945)) (forall ((addr Int) ) (!  (=> (|$IsValid'address'| addr) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_8768| $42_TestModule_R_$memory@1) addr) (> (|$value#$42_TestModule_R| (|Select__T@[Int]$42_TestModule_R_| (|contents#$Memory_8768| $42_TestModule_R_$memory@1) addr)) 0)))
 :qid |modulelevelspecSmtSeqz3bpl.1073:15|
 :skolemid |30|
))) (=> (forall ((addr@@0 Int) ) (!  (=> (|$IsValid'address'| addr@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_8768| $42_TestModule_R_$memory@1) addr@@0) (> (|$value#$42_TestModule_R| (|Select__T@[Int]$42_TestModule_R_| (|contents#$Memory_8768| $42_TestModule_R_$memory@1) addr@@0)) 0)))
 :qid |modulelevelspecSmtSeqz3bpl.1073:15|
 :skolemid |30|
)) (and (=> (= (ControlFlow 0 10272) (- 0 10978)) (|Select__T@[Int]Bool_| (|domain#$Memory_8768| $42_TestModule_R_$memory@1) $t2)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_8768| $42_TestModule_R_$memory@1) $t2) (=> (= (ControlFlow 0 10272) (- 0 10986)) (= (|$value#$42_TestModule_R| (|Select__T@[Int]$42_TestModule_R_| (|contents#$Memory_8768| $42_TestModule_R_$memory@1) $t2)) _$t1)))))))))
(let ((anon8_Then_correct true))
(let ((anon7_Then$1_correct  (=> (= $42_TestModule_R_$memory@1 $42_TestModule_R_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 10340) 10290) anon8_Then_correct) (=> (= (ControlFlow 0 10340) 10272) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_8768| $42_TestModule_R_$memory) _$t0) (= (ControlFlow 0 10338) 10340)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_8768| $42_TestModule_R_$memory) _$t0)) (=> (and (and (= $42_TestModule_R_$memory@0 ($Memory_8768 (|Store__T@[Int]Bool_| (|domain#$Memory_8768| $42_TestModule_R_$memory) _$t0 true) (|Store__T@[Int]$42_TestModule_R_| (|contents#$Memory_8768| $42_TestModule_R_$memory) _$t0 $t3@0))) (= $42_TestModule_R_$memory@1 $42_TestModule_R_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 10209) 10290) anon8_Then_correct) (=> (= (ControlFlow 0 10209) 10272) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (and (forall ((addr@@1 Int) ) (!  (=> (|$IsValid'address'| addr@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_8768| $42_TestModule_R_$memory) addr@@1) (> (|$value#$42_TestModule_R| (|Select__T@[Int]$42_TestModule_R_| (|contents#$Memory_8768| $42_TestModule_R_$memory) addr@@1)) 0)))
 :qid |modulelevelspecSmtSeqz3bpl.1029:20|
 :skolemid |28|
)) (|$IsValid'address'| _$t0)) (and (|$IsValid'u64'| _$t1) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestModule_R_| (|contents#$Memory_8768| $42_TestModule_R_$memory) $a_0)))
(|$IsValid'$42_TestModule_R'| $rsc))
 :qid |modulelevelspecSmtSeqz3bpl.1038:20|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]$42_TestModule_R_| (|contents#$Memory_8768| $42_TestModule_R_$memory) $a_0))
)))) (and (and (= $t2 _$t0) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= $t3@0 ($42_TestModule_R _$t1))))) (and (=> (= (ControlFlow 0 10191) 10338) anon7_Then_correct) (=> (= (ControlFlow 0 10191) 10209) anon7_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 10719) 10191) anon0$1_correct)))
anon0_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 10719)))
(get-value ((ControlFlow 0 10191)))
(get-value ((ControlFlow 0 10209)))
(get-value ((ControlFlow 0 10272)))
(assert (not (= (ControlFlow 0 10272) (- 10945))))
(check-sat)
(pop 1)
; Invalid
