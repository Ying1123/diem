(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@$42_TestStrongEdges_S 0)) ((($42_TestStrongEdges_S (|$x#$42_TestStrongEdges_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestStrongEdges_S| 0)
(declare-datatypes ((T@$Memory_12178 0)) ((($Memory_12178 (|domain#$Memory_12178| |T@[Int]Bool|) (|contents#$Memory_12178| |T@[Int]$42_TestStrongEdges_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12211 0)) ((($Mutation_12211 (|l#$Mutation_12211| T@$Location) (|p#$Mutation_12211| (Seq Int)) (|v#$Mutation_12211| T@$42_TestStrongEdges_S) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9361 0)) ((($Mutation_9361 (|l#$Mutation_9361| T@$Location) (|p#$Mutation_9361| (Seq Int)) (|v#$Mutation_9361| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestStrongEdges_S'| (T@$42_TestStrongEdges_S) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |strongedgesSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |strongedgesSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |strongedgesSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |strongedgesSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |strongedgesSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |strongedgesSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |strongedgesSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |strongedgesSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u64'| (seq.nth v@@4 i@@0)))
 :qid |strongedgesSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |strongedgesSmtSeqz3bpl.588:29|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |strongedgesSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |strongedgesSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |strongedgesSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |strongedgesSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |strongedgesSmtSeqz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |strongedgesSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |strongedgesSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |strongedgesSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |strongedgesSmtSeqz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |strongedgesSmtSeqz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |strongedgesSmtSeqz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |strongedgesSmtSeqz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestStrongEdges_S) ) (! (= (|$IsValid'$42_TestStrongEdges_S'| s) (|$IsValid'u64'| (|$x#$42_TestStrongEdges_S| s)))
 :qid |strongedgesSmtSeqz3bpl.1081:42|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestStrongEdges_S'| s))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |strongedgesSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |strongedgesSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@8))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |strongedgesSmtSeqz3bpl.245:54|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'$42_TestStrongEdges_S'@0| () T@$42_TestStrongEdges_S)
(declare-fun $t2@1 () T@$Mutation_12211)
(declare-fun $t5@0 () T@$Mutation_3430)
(declare-fun $t5@1 () T@$Mutation_3430)
(declare-fun $t2@2 () T@$Mutation_12211)
(declare-fun $42_TestStrongEdges_S_$memory@0 () T@$Memory_12178)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $42_TestStrongEdges_S_$memory () T@$Memory_12178)
(declare-fun |Store__T@[Int]$42_TestStrongEdges_S_| (|T@[Int]$42_TestStrongEdges_S| Int T@$42_TestStrongEdges_S) |T@[Int]$42_TestStrongEdges_S|)
(declare-fun |Select__T@[Int]$42_TestStrongEdges_S_| (|T@[Int]$42_TestStrongEdges_S| Int) T@$42_TestStrongEdges_S)
(assert (forall ( ( ?x0 |T@[Int]$42_TestStrongEdges_S|) ( ?x1 Int) ( ?x2 T@$42_TestStrongEdges_S)) (! (= (|Select__T@[Int]$42_TestStrongEdges_S_| (|Store__T@[Int]$42_TestStrongEdges_S_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestStrongEdges_S|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$42_TestStrongEdges_S)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestStrongEdges_S_| (|Store__T@[Int]$42_TestStrongEdges_S_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestStrongEdges_S_| ?x0 ?y1))) :weight 0)))
(declare-fun _$t0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $t2 () T@$Mutation_12211)
(declare-fun $t2@0 () T@$Mutation_12211)
(declare-fun $abort_code@0 () Int)
(declare-fun $42_TestStrongEdges_S_$modifies () |T@[Int]Bool|)
(declare-fun $t1 () T@$Mutation_12211)
(declare-fun $t5 () T@$Mutation_3430)
(push 1)
(set-info :boogie-vc-id $42_TestStrongEdges_glob_and_field_edges$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16240) (let ((anon8_Else_correct  (=> (and (and (and (not $abort_flag@0) (= |$temp_0'$42_TestStrongEdges_S'@0| (|v#$Mutation_12211| $t2@1))) (and (= |$temp_0'$42_TestStrongEdges_S'@0| |$temp_0'$42_TestStrongEdges_S'@0|) (|$IsValid'u64'| 2))) (and (and (= $t5@0 ($Mutation_3430 (|l#$Mutation_12211| $t2@1) (seq.++ (|p#$Mutation_12211| $t2@1) (seq.unit 0)) (|$x#$42_TestStrongEdges_S| (|v#$Mutation_12211| $t2@1)))) (= $t5@1 ($Mutation_3430 (|l#$Mutation_3430| $t5@0) (|p#$Mutation_3430| $t5@0) 2))) (and (= $t2@2 ($Mutation_12211 (|l#$Mutation_12211| $t2@1) (|p#$Mutation_12211| $t2@1) ($42_TestStrongEdges_S (|v#$Mutation_3430| $t5@1)))) (= $42_TestStrongEdges_S_$memory@0 ($Memory_12178 (|Store__T@[Int]Bool_| (|domain#$Memory_12178| $42_TestStrongEdges_S_$memory) (|a#$Global| (|l#$Mutation_12211| $t2@2)) true) (|Store__T@[Int]$42_TestStrongEdges_S_| (|contents#$Memory_12178| $42_TestStrongEdges_S_$memory) (|a#$Global| (|l#$Mutation_12211| $t2@2)) (|v#$Mutation_12211| $t2@2))))))) (and (=> (= (ControlFlow 0 14703) (- 0 16551)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_12178| $42_TestStrongEdges_S_$memory) _$t0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_12178| $42_TestStrongEdges_S_$memory) _$t0))) (=> (= (ControlFlow 0 14703) (- 0 16562)) (= (|$x#$42_TestStrongEdges_S| (|Select__T@[Int]$42_TestStrongEdges_S_| (|contents#$Memory_12178| $42_TestStrongEdges_S_$memory@0) _$t0)) 2)))))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 14731) (- 0 16449))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_12178| $42_TestStrongEdges_S_$memory) _$t0))))))
(let ((anon7_Then$1_correct  (=> (= $t2@1 $t2) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 14783) 14731) anon8_Then_correct) (=> (= (ControlFlow 0 14783) 14703) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_12178| $42_TestStrongEdges_S_$memory) _$t0)) (= (ControlFlow 0 14781) 14783)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_12178| $42_TestStrongEdges_S_$memory) _$t0) (=> (and (and (= $t2@0 ($Mutation_12211 ($Global _$t0) (as seq.empty (Seq Int)) (|Select__T@[Int]$42_TestStrongEdges_S_| (|contents#$Memory_12178| $42_TestStrongEdges_S_$memory) _$t0))) (= $t2@1 $t2@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 14605) 14731) anon8_Then_correct) (=> (= (ControlFlow 0 14605) 14703) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestStrongEdges_S_| (|contents#$Memory_12178| $42_TestStrongEdges_S_$memory) $a_0)))
(|$IsValid'$42_TestStrongEdges_S'| $rsc))
 :qid |strongedgesSmtSeqz3bpl.1117:20|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]$42_TestStrongEdges_S_| (|contents#$Memory_12178| $42_TestStrongEdges_S_$memory) $a_0))
))) (and (|Select__T@[Int]Bool_| $42_TestStrongEdges_S_$modifies _$t0) (= _$t0 _$t0))) (and (=> (= (ControlFlow 0 14583) (- 0 16362)) (|Select__T@[Int]Bool_| $42_TestStrongEdges_S_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $42_TestStrongEdges_S_$modifies _$t0) (and (=> (= (ControlFlow 0 14583) 14781) anon7_Then_correct) (=> (= (ControlFlow 0 14583) 14605) anon7_Else_correct)))))))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_12211| $t1)) 0) (= (seq.len (|p#$Mutation_12211| $t2)) 0)) (and (= (seq.len (|p#$Mutation_3430| $t5)) 0) (= (ControlFlow 0 14527) 14583))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 16240) 14527) anon0_correct)))
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
(declare-datatypes ((T@$42_TestStrongEdges_S 0)) ((($42_TestStrongEdges_S (|$x#$42_TestStrongEdges_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestStrongEdges_S| 0)
(declare-datatypes ((T@$Memory_12178 0)) ((($Memory_12178 (|domain#$Memory_12178| |T@[Int]Bool|) (|contents#$Memory_12178| |T@[Int]$42_TestStrongEdges_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12211 0)) ((($Mutation_12211 (|l#$Mutation_12211| T@$Location) (|p#$Mutation_12211| (Seq Int)) (|v#$Mutation_12211| T@$42_TestStrongEdges_S) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9361 0)) ((($Mutation_9361 (|l#$Mutation_9361| T@$Location) (|p#$Mutation_9361| (Seq Int)) (|v#$Mutation_9361| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestStrongEdges_S'| (T@$42_TestStrongEdges_S) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |strongedgesSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |strongedgesSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |strongedgesSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |strongedgesSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |strongedgesSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |strongedgesSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |strongedgesSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |strongedgesSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u64'| (seq.nth v@@4 i@@0)))
 :qid |strongedgesSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |strongedgesSmtSeqz3bpl.588:29|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |strongedgesSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |strongedgesSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |strongedgesSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |strongedgesSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |strongedgesSmtSeqz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |strongedgesSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |strongedgesSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |strongedgesSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |strongedgesSmtSeqz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |strongedgesSmtSeqz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |strongedgesSmtSeqz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |strongedgesSmtSeqz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestStrongEdges_S) ) (! (= (|$IsValid'$42_TestStrongEdges_S'| s) (|$IsValid'u64'| (|$x#$42_TestStrongEdges_S| s)))
 :qid |strongedgesSmtSeqz3bpl.1081:42|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestStrongEdges_S'| s))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |strongedgesSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |strongedgesSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@8))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |strongedgesSmtSeqz3bpl.245:54|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'$42_TestStrongEdges_S'@0| () T@$42_TestStrongEdges_S)
(declare-fun $t2@1 () T@$Mutation_12211)
(declare-fun $t5@0 () T@$Mutation_3430)
(declare-fun $t5@1 () T@$Mutation_3430)
(declare-fun $t2@2 () T@$Mutation_12211)
(declare-fun $42_TestStrongEdges_S_$memory@0 () T@$Memory_12178)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $42_TestStrongEdges_S_$memory () T@$Memory_12178)
(declare-fun |Store__T@[Int]$42_TestStrongEdges_S_| (|T@[Int]$42_TestStrongEdges_S| Int T@$42_TestStrongEdges_S) |T@[Int]$42_TestStrongEdges_S|)
(declare-fun |Select__T@[Int]$42_TestStrongEdges_S_| (|T@[Int]$42_TestStrongEdges_S| Int) T@$42_TestStrongEdges_S)
(assert (forall ( ( ?x0 |T@[Int]$42_TestStrongEdges_S|) ( ?x1 Int) ( ?x2 T@$42_TestStrongEdges_S)) (! (= (|Select__T@[Int]$42_TestStrongEdges_S_| (|Store__T@[Int]$42_TestStrongEdges_S_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestStrongEdges_S|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$42_TestStrongEdges_S)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestStrongEdges_S_| (|Store__T@[Int]$42_TestStrongEdges_S_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestStrongEdges_S_| ?x0 ?y1))) :weight 0)))
(declare-fun _$t0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $t2 () T@$Mutation_12211)
(declare-fun $t2@0 () T@$Mutation_12211)
(declare-fun $abort_code@0 () Int)
(declare-fun $42_TestStrongEdges_S_$modifies () |T@[Int]Bool|)
(declare-fun $t1 () T@$Mutation_12211)
(declare-fun $t5 () T@$Mutation_3430)
(push 1)
(set-info :boogie-vc-id $42_TestStrongEdges_glob_and_field_edges_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16595) (let ((anon8_Else_correct  (=> (and (and (and (not $abort_flag@0) (= |$temp_0'$42_TestStrongEdges_S'@0| (|v#$Mutation_12211| $t2@1))) (and (= |$temp_0'$42_TestStrongEdges_S'@0| |$temp_0'$42_TestStrongEdges_S'@0|) (|$IsValid'u64'| 2))) (and (and (= $t5@0 ($Mutation_3430 (|l#$Mutation_12211| $t2@1) (seq.++ (|p#$Mutation_12211| $t2@1) (seq.unit 0)) (|$x#$42_TestStrongEdges_S| (|v#$Mutation_12211| $t2@1)))) (= $t5@1 ($Mutation_3430 (|l#$Mutation_3430| $t5@0) (|p#$Mutation_3430| $t5@0) 2))) (and (= $t2@2 ($Mutation_12211 (|l#$Mutation_12211| $t2@1) (|p#$Mutation_12211| $t2@1) ($42_TestStrongEdges_S (|v#$Mutation_3430| $t5@1)))) (= $42_TestStrongEdges_S_$memory@0 ($Memory_12178 (|Store__T@[Int]Bool_| (|domain#$Memory_12178| $42_TestStrongEdges_S_$memory) (|a#$Global| (|l#$Mutation_12211| $t2@2)) true) (|Store__T@[Int]$42_TestStrongEdges_S_| (|contents#$Memory_12178| $42_TestStrongEdges_S_$memory) (|a#$Global| (|l#$Mutation_12211| $t2@2)) (|v#$Mutation_12211| $t2@2))))))) (and (=> (= (ControlFlow 0 15073) (- 0 16906)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_12178| $42_TestStrongEdges_S_$memory) _$t0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_12178| $42_TestStrongEdges_S_$memory) _$t0))) (=> (= (ControlFlow 0 15073) (- 0 16917)) (= (|$x#$42_TestStrongEdges_S| (|Select__T@[Int]$42_TestStrongEdges_S_| (|contents#$Memory_12178| $42_TestStrongEdges_S_$memory@0) _$t0)) 3)))))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 15101) (- 0 16804))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_12178| $42_TestStrongEdges_S_$memory) _$t0))))))
(let ((anon7_Then$1_correct  (=> (= $t2@1 $t2) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 15153) 15101) anon8_Then_correct) (=> (= (ControlFlow 0 15153) 15073) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_12178| $42_TestStrongEdges_S_$memory) _$t0)) (= (ControlFlow 0 15151) 15153)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_12178| $42_TestStrongEdges_S_$memory) _$t0) (=> (and (and (= $t2@0 ($Mutation_12211 ($Global _$t0) (as seq.empty (Seq Int)) (|Select__T@[Int]$42_TestStrongEdges_S_| (|contents#$Memory_12178| $42_TestStrongEdges_S_$memory) _$t0))) (= $t2@1 $t2@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 14975) 15101) anon8_Then_correct) (=> (= (ControlFlow 0 14975) 15073) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestStrongEdges_S_| (|contents#$Memory_12178| $42_TestStrongEdges_S_$memory) $a_0)))
(|$IsValid'$42_TestStrongEdges_S'| $rsc))
 :qid |strongedgesSmtSeqz3bpl.1232:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]$42_TestStrongEdges_S_| (|contents#$Memory_12178| $42_TestStrongEdges_S_$memory) $a_0))
))) (and (|Select__T@[Int]Bool_| $42_TestStrongEdges_S_$modifies _$t0) (= _$t0 _$t0))) (and (=> (= (ControlFlow 0 14953) (- 0 16717)) (|Select__T@[Int]Bool_| $42_TestStrongEdges_S_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $42_TestStrongEdges_S_$modifies _$t0) (and (=> (= (ControlFlow 0 14953) 15151) anon7_Then_correct) (=> (= (ControlFlow 0 14953) 14975) anon7_Else_correct)))))))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_12211| $t1)) 0) (= (seq.len (|p#$Mutation_12211| $t2)) 0)) (and (= (seq.len (|p#$Mutation_3430| $t5)) 0) (= (ControlFlow 0 14897) 14953))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 16595) 14897) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 16595)))
(get-value ((ControlFlow 0 14897)))
(get-value ((ControlFlow 0 14953)))
(get-value ((ControlFlow 0 14975)))
(get-value ((ControlFlow 0 15073)))
(assert (not (= (ControlFlow 0 15073) (- 16917))))
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
(declare-datatypes ((T@$42_TestStrongEdges_S 0)) ((($42_TestStrongEdges_S (|$x#$42_TestStrongEdges_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestStrongEdges_S| 0)
(declare-datatypes ((T@$Memory_12178 0)) ((($Memory_12178 (|domain#$Memory_12178| |T@[Int]Bool|) (|contents#$Memory_12178| |T@[Int]$42_TestStrongEdges_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12211 0)) ((($Mutation_12211 (|l#$Mutation_12211| T@$Location) (|p#$Mutation_12211| (Seq Int)) (|v#$Mutation_12211| T@$42_TestStrongEdges_S) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9361 0)) ((($Mutation_9361 (|l#$Mutation_9361| T@$Location) (|p#$Mutation_9361| (Seq Int)) (|v#$Mutation_9361| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestStrongEdges_S'| (T@$42_TestStrongEdges_S) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |strongedgesSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |strongedgesSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |strongedgesSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |strongedgesSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |strongedgesSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |strongedgesSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |strongedgesSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |strongedgesSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u64'| (seq.nth v@@4 i@@0)))
 :qid |strongedgesSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |strongedgesSmtSeqz3bpl.588:29|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |strongedgesSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |strongedgesSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |strongedgesSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |strongedgesSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |strongedgesSmtSeqz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |strongedgesSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |strongedgesSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |strongedgesSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |strongedgesSmtSeqz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |strongedgesSmtSeqz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |strongedgesSmtSeqz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |strongedgesSmtSeqz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestStrongEdges_S) ) (! (= (|$IsValid'$42_TestStrongEdges_S'| s) (|$IsValid'u64'| (|$x#$42_TestStrongEdges_S| s)))
 :qid |strongedgesSmtSeqz3bpl.1081:42|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestStrongEdges_S'| s))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |strongedgesSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |strongedgesSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@8))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |strongedgesSmtSeqz3bpl.245:54|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t3@0 () T@$Mutation_3430)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun $t3@1 () T@$Mutation_3430)
(declare-fun $t0@0 () Int)
(declare-fun $t1 () T@$Mutation_3430)
(declare-fun $t3 () T@$Mutation_3430)
(push 1)
(set-info :boogie-vc-id $42_TestStrongEdges_loc__edge_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16930) (let ((anon0$1_correct  (=> (|$IsValid'u64'| 5) (=> (and (and (and (= 5 5) (= $t3@0 ($Mutation_3430 ($Local 0) (as seq.empty (Seq Int)) 5))) (and (= |$temp_0'u64'@0| (|v#$Mutation_3430| $t3@0)) (= |$temp_0'u64'@0| |$temp_0'u64'@0|))) (and (and (|$IsValid'u64'| 6) (= $t3@1 ($Mutation_3430 (|l#$Mutation_3430| $t3@0) (|p#$Mutation_3430| $t3@0) 6))) (and (= $t0@0 (|v#$Mutation_3430| $t3@1)) (= (ControlFlow 0 15327) (- 0 17054))))) (= $t0@0 5)))))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_3430| $t1)) 0) (=> (and (= (seq.len (|p#$Mutation_3430| $t3)) 0) (= (ControlFlow 0 15259) 15327)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 16930) 15259) anon0_correct)))
PreconditionGeneratedEntry_correct))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 16930)))
(get-value ((ControlFlow 0 15259)))
(get-value ((ControlFlow 0 15327)))
(assert (not (= (ControlFlow 0 15327) (- 17054))))
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
(declare-datatypes ((T@$42_TestStrongEdges_S 0)) ((($42_TestStrongEdges_S (|$x#$42_TestStrongEdges_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestStrongEdges_S| 0)
(declare-datatypes ((T@$Memory_12178 0)) ((($Memory_12178 (|domain#$Memory_12178| |T@[Int]Bool|) (|contents#$Memory_12178| |T@[Int]$42_TestStrongEdges_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12211 0)) ((($Mutation_12211 (|l#$Mutation_12211| T@$Location) (|p#$Mutation_12211| (Seq Int)) (|v#$Mutation_12211| T@$42_TestStrongEdges_S) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9361 0)) ((($Mutation_9361 (|l#$Mutation_9361| T@$Location) (|p#$Mutation_9361| (Seq Int)) (|v#$Mutation_9361| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestStrongEdges_S'| (T@$42_TestStrongEdges_S) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |strongedgesSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |strongedgesSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |strongedgesSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |strongedgesSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |strongedgesSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |strongedgesSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |strongedgesSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |strongedgesSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u64'| (seq.nth v@@4 i@@0)))
 :qid |strongedgesSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |strongedgesSmtSeqz3bpl.588:29|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |strongedgesSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |strongedgesSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |strongedgesSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |strongedgesSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |strongedgesSmtSeqz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |strongedgesSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |strongedgesSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |strongedgesSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |strongedgesSmtSeqz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |strongedgesSmtSeqz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |strongedgesSmtSeqz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |strongedgesSmtSeqz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestStrongEdges_S) ) (! (= (|$IsValid'$42_TestStrongEdges_S'| s) (|$IsValid'u64'| (|$x#$42_TestStrongEdges_S| s)))
 :qid |strongedgesSmtSeqz3bpl.1081:42|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestStrongEdges_S'| s))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |strongedgesSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |strongedgesSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@8))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |strongedgesSmtSeqz3bpl.245:54|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t3@0 () T@$Mutation_3430)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun $t3@1 () T@$Mutation_3430)
(declare-fun $t0@0 () Int)
(declare-fun $t1 () T@$Mutation_3430)
(declare-fun $t3 () T@$Mutation_3430)
(push 1)
(set-info :boogie-vc-id $42_TestStrongEdges_loc_edge$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 17065) (let ((anon0$1_correct  (=> (|$IsValid'u64'| 5) (=> (and (and (and (= 5 5) (= $t3@0 ($Mutation_3430 ($Local 0) (as seq.empty (Seq Int)) 5))) (and (= |$temp_0'u64'@0| (|v#$Mutation_3430| $t3@0)) (= |$temp_0'u64'@0| |$temp_0'u64'@0|))) (and (and (|$IsValid'u64'| 6) (= $t3@1 ($Mutation_3430 (|l#$Mutation_3430| $t3@0) (|p#$Mutation_3430| $t3@0) 6))) (and (= $t0@0 (|v#$Mutation_3430| $t3@1)) (= (ControlFlow 0 15468) (- 0 17189))))) (= $t0@0 6)))))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_3430| $t1)) 0) (=> (and (= (seq.len (|p#$Mutation_3430| $t3)) 0) (= (ControlFlow 0 15400) 15468)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 17065) 15400) anon0_correct)))
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
(declare-datatypes ((T@$42_TestStrongEdges_S 0)) ((($42_TestStrongEdges_S (|$x#$42_TestStrongEdges_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestStrongEdges_S| 0)
(declare-datatypes ((T@$Memory_12178 0)) ((($Memory_12178 (|domain#$Memory_12178| |T@[Int]Bool|) (|contents#$Memory_12178| |T@[Int]$42_TestStrongEdges_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12211 0)) ((($Mutation_12211 (|l#$Mutation_12211| T@$Location) (|p#$Mutation_12211| (Seq Int)) (|v#$Mutation_12211| T@$42_TestStrongEdges_S) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9361 0)) ((($Mutation_9361 (|l#$Mutation_9361| T@$Location) (|p#$Mutation_9361| (Seq Int)) (|v#$Mutation_9361| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$42_TestStrongEdges_S'| (T@$42_TestStrongEdges_S) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |strongedgesSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |strongedgesSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |strongedgesSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |strongedgesSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |strongedgesSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |strongedgesSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |strongedgesSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |strongedgesSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u64'| (seq.nth v@@4 i@@0)))
 :qid |strongedgesSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |strongedgesSmtSeqz3bpl.588:29|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |strongedgesSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |strongedgesSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |strongedgesSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |strongedgesSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |strongedgesSmtSeqz3bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |strongedgesSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |strongedgesSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |strongedgesSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |strongedgesSmtSeqz3bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |strongedgesSmtSeqz3bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |strongedgesSmtSeqz3bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |strongedgesSmtSeqz3bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestStrongEdges_S) ) (! (= (|$IsValid'$42_TestStrongEdges_S'| s) (|$IsValid'u64'| (|$x#$42_TestStrongEdges_S| s)))
 :qid |strongedgesSmtSeqz3bpl.1081:42|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestStrongEdges_S'| s))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |strongedgesSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |strongedgesSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@8))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |strongedgesSmtSeqz3bpl.245:54|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t4@0 () (Seq Int))
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $t11@0 () T@$Mutation_3430)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@2| () T@$Mutation_3430)
(declare-fun $t0@0 () T@$Mutation_9361)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$m'@1| () T@$Mutation_9361)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@2| () Int)
(declare-fun |$temp_0'vec'u64''@2| () (Seq Int))
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@0| () T@$Mutation_3430)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$m'@0| () T@$Mutation_9361)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@1| () T@$Mutation_3430)
(declare-fun _$t0 () T@$Mutation_9361)
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@0| () Int)
(declare-fun $t5@0 () (Seq Int))
(declare-fun |inline$$1_Vector_borrow'u64'$0$dst@1| () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun |$temp_0'vec'u64''@0| () (Seq Int))
(declare-fun |$temp_0'vec'u64''@1| () (Seq Int))
(declare-fun $t1 () T@$Mutation_9361)
(declare-fun $t11 () T@$Mutation_3430)
(push 1)
(set-info :boogie-vc-id $42_TestStrongEdges_vec_edge$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 17207) (let ((L2_correct  (=> (= (ControlFlow 0 16096) (- 0 17732)) (= (seq.len $t4@0) 0))))
(let ((anon7_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 16080) 16096)) L2_correct))))
(let ((anon6_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 16110) 16096)) L2_correct))))
(let ((anon7_Else_correct  (=> (and (not $abort_flag@1) (= $t11@0 ($Mutation_3430 (|l#$Mutation_3430| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) (|p#$Mutation_3430| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) 7))) (=> (and (and (= $t0@0 ($Mutation_9361 (|l#$Mutation_9361| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (|p#$Mutation_9361| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (seq.++ (seq.extract (|v#$Mutation_9361| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) 0 (- (seq.nth (|p#$Mutation_3430| $t11@0) (seq.len (|p#$Mutation_9361| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|))) 0)) (seq.unit (|v#$Mutation_3430| $t11@0)) (seq.extract (|v#$Mutation_9361| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|) (+ (seq.nth (|p#$Mutation_3430| $t11@0) (seq.len (|p#$Mutation_9361| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|))) 1) (- (seq.len (|v#$Mutation_9361| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|)) (+ (seq.nth (|p#$Mutation_3430| $t11@0) (seq.len (|p#$Mutation_9361| |inline$$1_Vector_borrow_mut'u64'$0$m'@1|))) 1)))))) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@2|)) (and (= |$temp_0'vec'u64''@2| (|v#$Mutation_9361| $t0@0)) (= |$temp_0'vec'u64''@2| |$temp_0'vec'u64''@2|))) (and (=> (= (ControlFlow 0 16066) (- 0 17685)) (not (= (seq.len $t4@0) 0))) (=> (not (= (seq.len $t4@0) 0)) (and (=> (= (ControlFlow 0 16066) (- 0 17697)) (= (seq.nth (|v#$Mutation_9361| $t0@0) 0) 7)) (=> (= (seq.nth (|v#$Mutation_9361| $t0@0) 0) 7) (=> (= (ControlFlow 0 16066) (- 0 17711)) (= (seq.nth (|v#$Mutation_9361| $t0@0) 1) (seq.nth $t4@0 1)))))))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|  (=> (and (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= $abort_flag@1 true)) (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@0|) (= |inline$$1_Vector_borrow_mut'u64'$0$m'@1| |inline$$1_Vector_borrow_mut'u64'$0$m'@0|))) (and (=> (= (ControlFlow 0 15950) 16080) anon7_Then_correct) (=> (= (ControlFlow 0 15950) 16066) anon7_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|  (=> (and (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_borrow_mut'u64'$0$v@1|)))) (= (ControlFlow 0 15948) 15950)) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|  (=> (and (and (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_borrow_mut'u64'$0$v@1|))) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@1| ($Mutation_3430 (|l#$Mutation_9361| _$t0) (seq.++ (|p#$Mutation_9361| _$t0) (seq.unit 0)) (seq.nth |inline$$1_Vector_borrow_mut'u64'$0$v@1| 0)))) (and (and (= $abort_code@2 $abort_code@1) (= $abort_flag@1 $abort_flag@0)) (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@1|) (= |inline$$1_Vector_borrow_mut'u64'$0$m'@1| _$t0)))) (and (=> (= (ControlFlow 0 15898) 16080) anon7_Then_correct) (=> (= (ControlFlow 0 15898) 16066) anon7_Else_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$0$v@1| (|v#$Mutation_9361| _$t0)) (and (=> (= (ControlFlow 0 15868) 15948) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 15868) 15898) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|)))))
(let ((anon6_Else_correct  (=> (not $abort_flag@0) (=> (and (and (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@2|) (|$IsValid'u64'| 7)) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 15958) 15868))) |inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@0|)) (and (=> (= (ControlFlow 0 15734) 16110) anon6_Then_correct) (=> (= (ControlFlow 0 15734) 15958) anon6_Else_correct))))))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|  (=> (and (not (and (>= 0 0) (< 0 (seq.len $t5@0)))) (= (ControlFlow 0 15732) 15734)) |inline$$1_Vector_borrow'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|  (=> (and (>= 0 0) (< 0 (seq.len $t5@0))) (=> (and (and (= |inline$$1_Vector_borrow'u64'$0$dst@1| (seq.nth $t5@0 0)) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow'u64'$0$dst@2| |inline$$1_Vector_borrow'u64'$0$dst@1|))) (and (=> (= (ControlFlow 0 15682) 16110) anon6_Then_correct) (=> (= (ControlFlow 0 15682) 15958) anon6_Else_correct))))))
(let ((anon0$1_correct  (=> (= (|l#$Mutation_9361| _$t0) ($Param 0)) (=> (and (and (and (|$IsValid'vec'u64''| (|v#$Mutation_9361| _$t0)) (= $t4@0 (|v#$Mutation_9361| _$t0))) (and (= |$temp_0'vec'u64''@0| (|v#$Mutation_9361| _$t0)) (= |$temp_0'vec'u64''@0| |$temp_0'vec'u64''@0|))) (and (and (= |$temp_0'vec'u64''@1| (|v#$Mutation_9361| _$t0)) (= |$temp_0'vec'u64''@1| |$temp_0'vec'u64''@1|)) (and (= $t5@0 (|v#$Mutation_9361| _$t0)) (|$IsValid'u64'| 0)))) (and (=> (= (ControlFlow 0 15740) 15732) |inline$$1_Vector_borrow'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 15740) 15682) |inline$$1_Vector_borrow'u64'$0$anon3_Else_correct|))))))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_9361| $t1)) 0) (=> (and (= (seq.len (|p#$Mutation_3430| $t11)) 0) (= (ControlFlow 0 15543) 15740)) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 17207) 15543) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 17207)))
(get-value ((ControlFlow 0 15543)))
(get-value ((ControlFlow 0 15740)))
(get-value ((ControlFlow 0 15682)))
(get-value ((ControlFlow 0 15958)))
(get-value ((ControlFlow 0 15868)))
(get-value ((ControlFlow 0 15898)))
(get-value ((ControlFlow 0 16066)))
(assert (not (= (ControlFlow 0 16066) (- 17711))))
(check-sat)
(pop 1)
; Invalid
