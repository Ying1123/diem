(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@$0_B_T 0)) ((($0_B_T (|$x#$0_B_T| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_B_T| 0)
(declare-datatypes ((T@$Memory_11257 0)) ((($Memory_11257 (|domain#$Memory_11257| |T@[Int]Bool|) (|contents#$Memory_11257| |T@[Int]$0_B_T|) ) ) ))
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_10212 0)) ((($Memory_10212 (|domain#$Memory_10212| |T@[Int]Bool|) (|contents#$Memory_10212| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12508 0)) ((($Mutation_12508 (|l#$Mutation_12508| T@$Location) (|p#$Mutation_12508| (Seq Int)) (|v#$Mutation_12508| T@$0_B_T) ) ) ))
(declare-datatypes ((T@$Mutation_10245 0)) ((($Mutation_10245 (|l#$Mutation_10245| T@$Location) (|p#$Mutation_10245| (Seq Int)) (|v#$Mutation_10245| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8573 0)) ((($Mutation_8573 (|l#$Mutation_8573| T@$Location) (|p#$Mutation_8573| (Seq Int)) (|v#$Mutation_8573| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$0_B_T'| (T@$0_B_T) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ModifiesTestz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ModifiesTestz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ModifiesTestz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ModifiesTestz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ModifiesTestz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ModifiesTestz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ModifiesTestz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ModifiesTestz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |ModifiesTestz3bpl.590:13|
 :skolemid |15|
))))
 :qid |ModifiesTestz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |ModifiesTestz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |ModifiesTestz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |ModifiesTestz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |ModifiesTestz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |ModifiesTestz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ModifiesTestz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ModifiesTestz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s) (|$IsValid'u64'| (|$x#$0_A_S| s)))
 :qid |ModifiesTestz3bpl.901:27|
 :skolemid |24|
 :pattern ( (|$IsValid'$0_A_S'| s))
)))
(assert (forall ((s@@0 T@$0_B_T) ) (! (= (|$IsValid'$0_B_T'| s@@0) (|$IsValid'u64'| (|$x#$0_B_T| s@@0)))
 :qid |ModifiesTestz3bpl.1122:27|
 :skolemid |27|
 :pattern ( (|$IsValid'$0_B_T'| s@@0))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |ModifiesTestz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |ModifiesTestz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |ModifiesTestz3bpl.245:54|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'$0_A_S'@0| () T@$0_A_S)
(declare-fun $t2@1 () T@$Mutation_10245)
(declare-fun $t5@0 () T@$Mutation_3430)
(declare-fun $t5@1 () T@$Mutation_3430)
(declare-fun $t2@2 () T@$Mutation_10245)
(declare-fun $0_A_S_$memory@0 () T@$Memory_10212)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $0_A_S_$memory () T@$Memory_10212)
(declare-fun |Store__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int T@$0_A_S) |T@[Int]$0_A_S|)
(declare-fun |Select__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int) T@$0_A_S)
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?x2 T@$0_A_S)) (! (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$0_A_S)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$0_A_S_| ?x0 ?y1))) :weight 0)))
(declare-fun _$t0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $t2 () T@$Mutation_10245)
(declare-fun $t2@0 () T@$Mutation_10245)
(declare-fun $abort_code@0 () Int)
(declare-fun $0_A_S_$modifies () |T@[Int]Bool|)
(declare-fun $t1 () T@$Mutation_10245)
(declare-fun $t5 () T@$Mutation_3430)
(push 1)
(set-info :boogie-vc-id $0_A_mutate_at$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 15274) (let ((anon8_Else_correct  (=> (and (and (and (not $abort_flag@0) (= |$temp_0'$0_A_S'@0| (|v#$Mutation_10245| $t2@1))) (and (= |$temp_0'$0_A_S'@0| |$temp_0'$0_A_S'@0|) (|$IsValid'u64'| 2))) (and (and (= $t5@0 ($Mutation_3430 (|l#$Mutation_10245| $t2@1) (seq.++ (|p#$Mutation_10245| $t2@1) (seq.unit 0)) (|$x#$0_A_S| (|v#$Mutation_10245| $t2@1)))) (= $t5@1 ($Mutation_3430 (|l#$Mutation_3430| $t5@0) (|p#$Mutation_3430| $t5@0) 2))) (and (= $t2@2 ($Mutation_10245 (|l#$Mutation_10245| $t2@1) (|p#$Mutation_10245| $t2@1) ($0_A_S (|v#$Mutation_3430| $t5@1)))) (= $0_A_S_$memory@0 ($Memory_10212 (|Store__T@[Int]Bool_| (|domain#$Memory_10212| $0_A_S_$memory) (|a#$Global| (|l#$Mutation_10245| $t2@2)) true) (|Store__T@[Int]$0_A_S_| (|contents#$Memory_10212| $0_A_S_$memory) (|a#$Global| (|l#$Mutation_10245| $t2@2)) (|v#$Mutation_10245| $t2@2))))))) (and (=> (= (ControlFlow 0 13478) (- 0 15585)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_10212| $0_A_S_$memory) _$t0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_10212| $0_A_S_$memory) _$t0))) (=> (= (ControlFlow 0 13478) (- 0 15596)) (= (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10212| $0_A_S_$memory@0) _$t0)) 2)))))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 13506) (- 0 15483))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_10212| $0_A_S_$memory) _$t0))))))
(let ((anon7_Then$1_correct  (=> (= $t2@1 $t2) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 13558) 13506) anon8_Then_correct) (=> (= (ControlFlow 0 13558) 13478) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_10212| $0_A_S_$memory) _$t0)) (= (ControlFlow 0 13556) 13558)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10212| $0_A_S_$memory) _$t0) (=> (and (and (= $t2@0 ($Mutation_10245 ($Global _$t0) (as seq.empty (Seq Int)) (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10212| $0_A_S_$memory) _$t0))) (= $t2@1 $t2@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 13380) 13506) anon8_Then_correct) (=> (= (ControlFlow 0 13380) 13478) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10212| $0_A_S_$memory) $a_0)))
(|$IsValid'$0_A_S'| $rsc))
 :qid |ModifiesTestz3bpl.937:20|
 :skolemid |25|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10212| $0_A_S_$memory) $a_0))
))) (and (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0) (= _$t0 _$t0))) (and (=> (= (ControlFlow 0 13358) (- 0 15396)) (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0) (and (=> (= (ControlFlow 0 13358) 13556) anon7_Then_correct) (=> (= (ControlFlow 0 13358) 13380) anon7_Else_correct)))))))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_10245| $t1)) 0) (= (seq.len (|p#$Mutation_10245| $t2)) 0)) (and (= (seq.len (|p#$Mutation_3430| $t5)) 0) (= (ControlFlow 0 13302) 13358))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 15274) 13302) anon0_correct)))
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
(declare-datatypes ((T@$0_B_T 0)) ((($0_B_T (|$x#$0_B_T| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_B_T| 0)
(declare-datatypes ((T@$Memory_11257 0)) ((($Memory_11257 (|domain#$Memory_11257| |T@[Int]Bool|) (|contents#$Memory_11257| |T@[Int]$0_B_T|) ) ) ))
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_10212 0)) ((($Memory_10212 (|domain#$Memory_10212| |T@[Int]Bool|) (|contents#$Memory_10212| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12508 0)) ((($Mutation_12508 (|l#$Mutation_12508| T@$Location) (|p#$Mutation_12508| (Seq Int)) (|v#$Mutation_12508| T@$0_B_T) ) ) ))
(declare-datatypes ((T@$Mutation_10245 0)) ((($Mutation_10245 (|l#$Mutation_10245| T@$Location) (|p#$Mutation_10245| (Seq Int)) (|v#$Mutation_10245| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8573 0)) ((($Mutation_8573 (|l#$Mutation_8573| T@$Location) (|p#$Mutation_8573| (Seq Int)) (|v#$Mutation_8573| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$0_B_T'| (T@$0_B_T) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ModifiesTestz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ModifiesTestz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ModifiesTestz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ModifiesTestz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ModifiesTestz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ModifiesTestz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ModifiesTestz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ModifiesTestz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |ModifiesTestz3bpl.590:13|
 :skolemid |15|
))))
 :qid |ModifiesTestz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |ModifiesTestz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |ModifiesTestz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |ModifiesTestz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |ModifiesTestz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |ModifiesTestz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ModifiesTestz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ModifiesTestz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s) (|$IsValid'u64'| (|$x#$0_A_S| s)))
 :qid |ModifiesTestz3bpl.901:27|
 :skolemid |24|
 :pattern ( (|$IsValid'$0_A_S'| s))
)))
(assert (forall ((s@@0 T@$0_B_T) ) (! (= (|$IsValid'$0_B_T'| s@@0) (|$IsValid'u64'| (|$x#$0_B_T| s@@0)))
 :qid |ModifiesTestz3bpl.1122:27|
 :skolemid |27|
 :pattern ( (|$IsValid'$0_B_T'| s@@0))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |ModifiesTestz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |ModifiesTestz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |ModifiesTestz3bpl.245:54|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $t2@1 () T@$0_A_S)
(declare-fun $t4@0 () Int)
(declare-fun $0_A_S_$memory () T@$Memory_10212)
(declare-fun _$t0 () Int)
(declare-fun |Select__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int) T@$0_A_S)
(declare-fun $abort_code@1 () Int)
(declare-fun $t2 () T@$0_A_S)
(declare-fun $t2@0 () T@$0_A_S)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $0_A_read_at$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 15633) (let ((anon8_Else_correct  (=> (and (and (not $abort_flag@0) (= $t2@1 $t2@1)) (and (= $t4@0 (|$x#$0_A_S| $t2@1)) (= $t4@0 $t4@0))) (and (=> (= (ControlFlow 0 13766) (- 0 15838)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_10212| $0_A_S_$memory) _$t0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_10212| $0_A_S_$memory) _$t0))) (=> (= (ControlFlow 0 13766) (- 0 15849)) (= $t4@0 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10212| $0_A_S_$memory) _$t0)))))))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 13794) (- 0 15796))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_10212| $0_A_S_$memory) _$t0))))))
(let ((anon7_Then$1_correct  (=> (= $t2@1 $t2) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 13846) 13794) anon8_Then_correct) (=> (= (ControlFlow 0 13846) 13766) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_10212| $0_A_S_$memory) _$t0)) (= (ControlFlow 0 13844) 13846)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10212| $0_A_S_$memory) _$t0) (=> (and (and (= $t2@0 (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10212| $0_A_S_$memory) _$t0)) (= $t2@1 $t2@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 13710) 13794) anon8_Then_correct) (=> (= (ControlFlow 0 13710) 13766) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10212| $0_A_S_$memory) $a_0)))
(|$IsValid'$0_A_S'| $rsc))
 :qid |ModifiesTestz3bpl.1048:20|
 :skolemid |26|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10212| $0_A_S_$memory) $a_0))
)) (= _$t0 _$t0)) (and (=> (= (ControlFlow 0 13696) 13844) anon7_Then_correct) (=> (= (ControlFlow 0 13696) 13710) anon7_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 15633) 13696) anon0$1_correct)))
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
(declare-datatypes ((T@$0_B_T 0)) ((($0_B_T (|$x#$0_B_T| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_B_T| 0)
(declare-datatypes ((T@$Memory_11257 0)) ((($Memory_11257 (|domain#$Memory_11257| |T@[Int]Bool|) (|contents#$Memory_11257| |T@[Int]$0_B_T|) ) ) ))
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_10212 0)) ((($Memory_10212 (|domain#$Memory_10212| |T@[Int]Bool|) (|contents#$Memory_10212| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12508 0)) ((($Mutation_12508 (|l#$Mutation_12508| T@$Location) (|p#$Mutation_12508| (Seq Int)) (|v#$Mutation_12508| T@$0_B_T) ) ) ))
(declare-datatypes ((T@$Mutation_10245 0)) ((($Mutation_10245 (|l#$Mutation_10245| T@$Location) (|p#$Mutation_10245| (Seq Int)) (|v#$Mutation_10245| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8573 0)) ((($Mutation_8573 (|l#$Mutation_8573| T@$Location) (|p#$Mutation_8573| (Seq Int)) (|v#$Mutation_8573| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$0_B_T'| (T@$0_B_T) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ModifiesTestz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ModifiesTestz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ModifiesTestz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ModifiesTestz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ModifiesTestz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ModifiesTestz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ModifiesTestz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ModifiesTestz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |ModifiesTestz3bpl.590:13|
 :skolemid |15|
))))
 :qid |ModifiesTestz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |ModifiesTestz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |ModifiesTestz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |ModifiesTestz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |ModifiesTestz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |ModifiesTestz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ModifiesTestz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ModifiesTestz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s) (|$IsValid'u64'| (|$x#$0_A_S| s)))
 :qid |ModifiesTestz3bpl.901:27|
 :skolemid |24|
 :pattern ( (|$IsValid'$0_A_S'| s))
)))
(assert (forall ((s@@0 T@$0_B_T) ) (! (= (|$IsValid'$0_B_T'| s@@0) (|$IsValid'u64'| (|$x#$0_B_T| s@@0)))
 :qid |ModifiesTestz3bpl.1122:27|
 :skolemid |27|
 :pattern ( (|$IsValid'$0_B_T'| s@@0))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |ModifiesTestz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |ModifiesTestz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |ModifiesTestz3bpl.245:54|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $t1@1 () T@$0_B_T)
(declare-fun $t1 () T@$0_B_T)
(declare-fun $abort_code@1 () Int)
(declare-fun $0_B_T_$memory () T@$Memory_11257)
(declare-fun _$t0 () Int)
(declare-fun $t1@0 () T@$0_B_T)
(declare-fun |Select__T@[Int]$0_B_T_| (|T@[Int]$0_B_T| Int) T@$0_B_T)
(declare-fun $0_B_T_$memory@0 () T@$Memory_11257)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@0 () Int)
(declare-fun $0_B_T_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $0_B_move_from_test$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 15870) (let ((anon8_Else_correct  (=> (not $abort_flag@0) (=> (and (= $t1@1 $t1@1) (= (ControlFlow 0 14035) (- 0 16082))) (= (|$x#$0_B_T| $t1@1) 2)))))
(let ((anon8_Then_correct true))
(let ((anon7_Then$1_correct  (=> (= $t1@1 $t1) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 14105) 14053) anon8_Then_correct) (=> (= (ControlFlow 0 14105) 14035) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_11257| $0_B_T_$memory) _$t0)) (= (ControlFlow 0 14103) 14105)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_11257| $0_B_T_$memory) _$t0) (= $t1@0 (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11257| $0_B_T_$memory) _$t0))) (=> (and (and (= $0_B_T_$memory@0 ($Memory_11257 (|Store__T@[Int]Bool_| (|domain#$Memory_11257| $0_B_T_$memory) _$t0 false) (|contents#$Memory_11257| $0_B_T_$memory))) (= $t1@1 $t1@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 14007) 14053) anon8_Then_correct) (=> (= (ControlFlow 0 14007) 14035) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11257| $0_B_T_$memory) $a_0)))
(|$IsValid'$0_B_T'| $rsc))
 :qid |ModifiesTestz3bpl.1151:20|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11257| $0_B_T_$memory) $a_0))
)) (= (|$x#$0_B_T| (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11257| $0_B_T_$memory) _$t0)) 2)) (and (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t0) (= _$t0 _$t0))) (and (=> (= (ControlFlow 0 13987) (- 0 15975)) (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t0) (and (=> (= (ControlFlow 0 13987) 14103) anon7_Then_correct) (=> (= (ControlFlow 0 13987) 14007) anon7_Else_correct))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 15870) 13987) anon0$1_correct)))
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
(declare-datatypes ((T@$0_B_T 0)) ((($0_B_T (|$x#$0_B_T| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_B_T| 0)
(declare-datatypes ((T@$Memory_11257 0)) ((($Memory_11257 (|domain#$Memory_11257| |T@[Int]Bool|) (|contents#$Memory_11257| |T@[Int]$0_B_T|) ) ) ))
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_10212 0)) ((($Memory_10212 (|domain#$Memory_10212| |T@[Int]Bool|) (|contents#$Memory_10212| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12508 0)) ((($Mutation_12508 (|l#$Mutation_12508| T@$Location) (|p#$Mutation_12508| (Seq Int)) (|v#$Mutation_12508| T@$0_B_T) ) ) ))
(declare-datatypes ((T@$Mutation_10245 0)) ((($Mutation_10245 (|l#$Mutation_10245| T@$Location) (|p#$Mutation_10245| (Seq Int)) (|v#$Mutation_10245| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8573 0)) ((($Mutation_8573 (|l#$Mutation_8573| T@$Location) (|p#$Mutation_8573| (Seq Int)) (|v#$Mutation_8573| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$0_B_T'| (T@$0_B_T) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ModifiesTestz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ModifiesTestz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ModifiesTestz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ModifiesTestz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ModifiesTestz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ModifiesTestz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ModifiesTestz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ModifiesTestz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |ModifiesTestz3bpl.590:13|
 :skolemid |15|
))))
 :qid |ModifiesTestz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |ModifiesTestz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |ModifiesTestz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |ModifiesTestz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |ModifiesTestz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |ModifiesTestz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ModifiesTestz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ModifiesTestz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s) (|$IsValid'u64'| (|$x#$0_A_S| s)))
 :qid |ModifiesTestz3bpl.901:27|
 :skolemid |24|
 :pattern ( (|$IsValid'$0_A_S'| s))
)))
(assert (forall ((s@@0 T@$0_B_T) ) (! (= (|$IsValid'$0_B_T'| s@@0) (|$IsValid'u64'| (|$x#$0_B_T| s@@0)))
 :qid |ModifiesTestz3bpl.1122:27|
 :skolemid |27|
 :pattern ( (|$IsValid'$0_B_T'| s@@0))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |ModifiesTestz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |ModifiesTestz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |ModifiesTestz3bpl.245:54|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |Select__T@[Int]$0_B_T_| (|T@[Int]$0_B_T| Int) T@$0_B_T)
(declare-fun $0_B_T_$memory@1 () T@$Memory_11257)
(declare-fun _$t0 () Int)
(declare-fun $0_B_T_$memory () T@$Memory_11257)
(declare-fun $abort_code@1 () Int)
(declare-fun $0_B_T_$memory@0 () T@$Memory_11257)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$0_B_T_| (|T@[Int]$0_B_T| Int T@$0_B_T) |T@[Int]$0_B_T|)
(assert (forall ( ( ?x0 |T@[Int]$0_B_T|) ( ?x1 Int) ( ?x2 T@$0_B_T)) (! (= (|Select__T@[Int]$0_B_T_| (|Store__T@[Int]$0_B_T_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$0_B_T|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$0_B_T)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$0_B_T_| (|Store__T@[Int]$0_B_T_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$0_B_T_| ?x0 ?y1))) :weight 0)))
(declare-fun $t2@0 () T@$0_B_T)
(declare-fun $abort_code@0 () Int)
(declare-fun $0_B_T_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $0_B_move_to_test$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16099) (let ((anon8_Else_correct  (=> (and (not $abort_flag@0) (= (ControlFlow 0 14291) (- 0 16299))) (= (|$x#$0_B_T| (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11257| $0_B_T_$memory@1) _$t0)) 2))))
(let ((anon8_Then_correct true))
(let ((anon7_Then$1_correct  (=> (= $0_B_T_$memory@1 $0_B_T_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 14359) 14309) anon8_Then_correct) (=> (= (ControlFlow 0 14359) 14291) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_11257| $0_B_T_$memory) _$t0) (= (ControlFlow 0 14357) 14359)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_11257| $0_B_T_$memory) _$t0)) (=> (and (and (= $0_B_T_$memory@0 ($Memory_11257 (|Store__T@[Int]Bool_| (|domain#$Memory_11257| $0_B_T_$memory) _$t0 true) (|Store__T@[Int]$0_B_T_| (|contents#$Memory_11257| $0_B_T_$memory) _$t0 $t2@0))) (= $0_B_T_$memory@1 $0_B_T_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 14265) 14309) anon8_Then_correct) (=> (= (ControlFlow 0 14265) 14291) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11257| $0_B_T_$memory) $a_0)))
(|$IsValid'$0_B_T'| $rsc))
 :qid |ModifiesTestz3bpl.1233:20|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11257| $0_B_T_$memory) $a_0))
))) (=> (and (and (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t0) (= _$t0 _$t0)) (and (|$IsValid'u64'| 2) (= $t2@0 ($0_B_T 2)))) (and (=> (= (ControlFlow 0 14247) (- 0 16207)) (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t0) (and (=> (= (ControlFlow 0 14247) 14357) anon7_Then_correct) (=> (= (ControlFlow 0 14247) 14265) anon7_Else_correct))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 16099) 14247) anon0$1_correct)))
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
(declare-datatypes ((T@$0_B_T 0)) ((($0_B_T (|$x#$0_B_T| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_B_T| 0)
(declare-datatypes ((T@$Memory_11257 0)) ((($Memory_11257 (|domain#$Memory_11257| |T@[Int]Bool|) (|contents#$Memory_11257| |T@[Int]$0_B_T|) ) ) ))
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_10212 0)) ((($Memory_10212 (|domain#$Memory_10212| |T@[Int]Bool|) (|contents#$Memory_10212| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12508 0)) ((($Mutation_12508 (|l#$Mutation_12508| T@$Location) (|p#$Mutation_12508| (Seq Int)) (|v#$Mutation_12508| T@$0_B_T) ) ) ))
(declare-datatypes ((T@$Mutation_10245 0)) ((($Mutation_10245 (|l#$Mutation_10245| T@$Location) (|p#$Mutation_10245| (Seq Int)) (|v#$Mutation_10245| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8573 0)) ((($Mutation_8573 (|l#$Mutation_8573| T@$Location) (|p#$Mutation_8573| (Seq Int)) (|v#$Mutation_8573| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$0_B_T'| (T@$0_B_T) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ModifiesTestz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ModifiesTestz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ModifiesTestz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ModifiesTestz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ModifiesTestz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ModifiesTestz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ModifiesTestz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ModifiesTestz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |ModifiesTestz3bpl.590:13|
 :skolemid |15|
))))
 :qid |ModifiesTestz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |ModifiesTestz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |ModifiesTestz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |ModifiesTestz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |ModifiesTestz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |ModifiesTestz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ModifiesTestz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ModifiesTestz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s) (|$IsValid'u64'| (|$x#$0_A_S| s)))
 :qid |ModifiesTestz3bpl.901:27|
 :skolemid |24|
 :pattern ( (|$IsValid'$0_A_S'| s))
)))
(assert (forall ((s@@0 T@$0_B_T) ) (! (= (|$IsValid'$0_B_T'| s@@0) (|$IsValid'u64'| (|$x#$0_B_T| s@@0)))
 :qid |ModifiesTestz3bpl.1122:27|
 :skolemid |27|
 :pattern ( (|$IsValid'$0_B_T'| s@@0))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |ModifiesTestz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |ModifiesTestz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |ModifiesTestz3bpl.245:54|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun |Select__T@[Int]$0_B_T_| (|T@[Int]$0_B_T| Int) T@$0_B_T)
(declare-fun $0_B_T_$memory@2 () T@$Memory_11257)
(declare-fun _$t1 () Int)
(declare-fun |Select__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int) T@$0_A_S)
(declare-fun $0_A_S_$memory@2 () T@$Memory_10212)
(declare-fun $0_A_S_$memory () T@$Memory_10212)
(declare-fun _$t0 () Int)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun $0_B_T_$memory@1 () T@$Memory_11257)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $0_B_T_$memory () T@$Memory_11257)
(declare-fun $0_B_T_$memory@0 () T@$Memory_11257)
(declare-fun |Store__T@[Int]$0_B_T_| (|T@[Int]$0_B_T| Int T@$0_B_T) |T@[Int]$0_B_T|)
(assert (forall ( ( ?x0 |T@[Int]$0_B_T|) ( ?x1 Int) ( ?x2 T@$0_B_T)) (! (= (|Select__T@[Int]$0_B_T_| (|Store__T@[Int]$0_B_T_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$0_B_T|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$0_B_T)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$0_B_T_| (|Store__T@[Int]$0_B_T_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$0_B_T_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$0_B_T'@0| () T@$0_B_T)
(declare-fun $t10@0 () Bool)
(declare-fun $t9 () Bool)
(declare-fun $t8 () Int)
(declare-fun $t4 () Int)
(declare-fun $0_B_T_$modifies () |T@[Int]Bool|)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $0_A_S_$memory@1 () T@$Memory_10212)
(declare-fun $0_A_S_$memory@0 () T@$Memory_10212)
(declare-fun |Store__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int T@$0_A_S) |T@[Int]$0_A_S|)
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?x2 T@$0_A_S)) (! (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$0_A_S)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$0_A_S_| ?x0 ?y1))) :weight 0)))
(declare-fun |$temp_0'$0_A_S'@0| () T@$0_A_S)
(declare-fun $t7 () Bool)
(declare-fun $t5 () Bool)
(declare-fun $0_A_S_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $0_B_mutate_S_test$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16320) (let ((anon14_correct  (=> (= (|$x#$0_B_T| (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11257| $0_B_T_$memory@2) _$t1)) 2) (and (=> (= (ControlFlow 0 14760) (- 0 16738)) (= (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10212| $0_A_S_$memory@2) _$t1) (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10212| $0_A_S_$memory) _$t1))) (=> (= (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10212| $0_A_S_$memory@2) _$t1) (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10212| $0_A_S_$memory) _$t1)) (and (=> (= (ControlFlow 0 14760) (- 0 16751)) (= (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10212| $0_A_S_$memory@2) _$t0)) 2)) (=> (= (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10212| $0_A_S_$memory@2) _$t0)) 2) (=> (= (ControlFlow 0 14760) (- 0 16764)) (= (|$x#$0_B_T| (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11257| $0_B_T_$memory@2) _$t1)) 2)))))))))
(let ((anon21_Else_correct  (=> (and (and (not |$temp_0'bool'@1|) (= $0_B_T_$memory@1 ($Memory_11257 (|Store__T@[Int]Bool_| (|domain#$Memory_11257| $0_B_T_$memory) _$t1 false) (|contents#$Memory_11257| $0_B_T_$memory)))) (and (= $0_B_T_$memory@2 $0_B_T_$memory@1) (= (ControlFlow 0 14700) 14760))) anon14_correct)))
(let ((anon21_Then_correct  (=> (and (and |$temp_0'bool'@1| (= $0_B_T_$memory@0 ($Memory_11257 (|Store__T@[Int]Bool_| (|domain#$Memory_11257| $0_B_T_$memory) _$t1 true) (|Store__T@[Int]$0_B_T_| (|contents#$Memory_11257| $0_B_T_$memory) _$t1 |$temp_0'$0_B_T'@0|)))) (and (= $0_B_T_$memory@2 $0_B_T_$memory@0) (= (ControlFlow 0 14772) 14760))) anon14_correct)))
(let ((anon20_Else_correct  (=> (not $t10@0) (and (=> (= (ControlFlow 0 14688) 14772) anon21_Then_correct) (=> (= (ControlFlow 0 14688) 14700) anon21_Else_correct)))))
(let ((anon20_Then_correct true))
(let ((anon19_Else_correct  (=> (and (and (not $t9) (|$IsValid'u64'| $t8)) (and (= $t8 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10212| $0_A_S_$memory@2) _$t1))) (= $t8 $t8))) (and (=> (= (ControlFlow 0 14682) (- 0 16646)) (= $t4 $t8)) (=> (= $t4 $t8) (and (=> (= (ControlFlow 0 14682) (- 0 16655)) (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t1)) (=> (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t1) (and (=> (= (ControlFlow 0 14682) 14784) anon20_Then_correct) (=> (= (ControlFlow 0 14682) 14688) anon20_Else_correct)))))))))
(let ((anon19_Then_correct true))
(let ((anon7_correct  (=> (and (= (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10212| $0_A_S_$memory@2) _$t0)) 2) (= $t9  (not (|Select__T@[Int]Bool_| (|domain#$Memory_10212| $0_A_S_$memory@2) _$t1)))) (and (=> (= (ControlFlow 0 14634) 14802) anon19_Then_correct) (=> (= (ControlFlow 0 14634) 14682) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= $0_A_S_$memory@1 ($Memory_10212 (|Store__T@[Int]Bool_| (|domain#$Memory_10212| $0_A_S_$memory) _$t0 false) (|contents#$Memory_10212| $0_A_S_$memory)))) (and (= $0_A_S_$memory@2 $0_A_S_$memory@1) (= (ControlFlow 0 14606) 14634))) anon7_correct)))
(let ((anon18_Then_correct  (=> (and (and |$temp_0'bool'@0| (= $0_A_S_$memory@0 ($Memory_10212 (|Store__T@[Int]Bool_| (|domain#$Memory_10212| $0_A_S_$memory) _$t0 true) (|Store__T@[Int]$0_A_S_| (|contents#$Memory_10212| $0_A_S_$memory) _$t0 |$temp_0'$0_A_S'@0|)))) (and (= $0_A_S_$memory@2 $0_A_S_$memory@0) (= (ControlFlow 0 14814) 14634))) anon7_correct)))
(let ((anon17_Else_correct  (=> (not $t7) (and (=> (= (ControlFlow 0 14594) 14814) anon18_Then_correct) (=> (= (ControlFlow 0 14594) 14606) anon18_Else_correct)))))
(let ((anon17_Then_correct true))
(let ((anon16_Else_correct  (=> (and (and (not $t5) (|$IsValid'u64'| $t4)) (and (= $t4 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10212| $0_A_S_$memory) _$t1))) (= $t4 $t4))) (and (=> (= (ControlFlow 0 14588) (- 0 16509)) (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0) (=> (= $t7  (not (|Select__T@[Int]Bool_| (|domain#$Memory_10212| $0_A_S_$memory) _$t0))) (and (=> (= (ControlFlow 0 14588) 14826) anon17_Then_correct) (=> (= (ControlFlow 0 14588) 14594) anon17_Else_correct))))))))
(let ((anon16_Then_correct true))
(let ((anon0$1_correct  (=> (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (=> (and (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10212| $0_A_S_$memory) $a_0)))
(|$IsValid'$0_A_S'| $rsc))
 :qid |ModifiesTestz3bpl.1330:20|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10212| $0_A_S_$memory) $a_0))
)) (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11257| $0_B_T_$memory) $a_0@@0)))
(|$IsValid'$0_B_T'| $rsc@@0))
 :qid |ModifiesTestz3bpl.1334:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11257| $0_B_T_$memory) $a_0@@0))
))) (and (not (= _$t0 _$t1)) (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0))) (and (and (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t1) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= $t5  (not (|Select__T@[Int]Bool_| (|domain#$Memory_10212| $0_A_S_$memory) _$t1)))))) (and (=> (= (ControlFlow 0 14540) 14838) anon16_Then_correct) (=> (= (ControlFlow 0 14540) 14588) anon16_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 16320) 14540) anon0$1_correct)))
anon0_correct)))))))))))))))))
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
(declare-datatypes ((T@$0_B_T 0)) ((($0_B_T (|$x#$0_B_T| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_B_T| 0)
(declare-datatypes ((T@$Memory_11257 0)) ((($Memory_11257 (|domain#$Memory_11257| |T@[Int]Bool|) (|contents#$Memory_11257| |T@[Int]$0_B_T|) ) ) ))
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_10212 0)) ((($Memory_10212 (|domain#$Memory_10212| |T@[Int]Bool|) (|contents#$Memory_10212| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12508 0)) ((($Mutation_12508 (|l#$Mutation_12508| T@$Location) (|p#$Mutation_12508| (Seq Int)) (|v#$Mutation_12508| T@$0_B_T) ) ) ))
(declare-datatypes ((T@$Mutation_10245 0)) ((($Mutation_10245 (|l#$Mutation_10245| T@$Location) (|p#$Mutation_10245| (Seq Int)) (|v#$Mutation_10245| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8573 0)) ((($Mutation_8573 (|l#$Mutation_8573| T@$Location) (|p#$Mutation_8573| (Seq Int)) (|v#$Mutation_8573| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$0_B_T'| (T@$0_B_T) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ModifiesTestz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ModifiesTestz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ModifiesTestz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ModifiesTestz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ModifiesTestz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ModifiesTestz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ModifiesTestz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ModifiesTestz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |ModifiesTestz3bpl.590:13|
 :skolemid |15|
))))
 :qid |ModifiesTestz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |ModifiesTestz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |ModifiesTestz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |ModifiesTestz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |ModifiesTestz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |ModifiesTestz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ModifiesTestz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ModifiesTestz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s) (|$IsValid'u64'| (|$x#$0_A_S| s)))
 :qid |ModifiesTestz3bpl.901:27|
 :skolemid |24|
 :pattern ( (|$IsValid'$0_A_S'| s))
)))
(assert (forall ((s@@0 T@$0_B_T) ) (! (= (|$IsValid'$0_B_T'| s@@0) (|$IsValid'u64'| (|$x#$0_B_T| s@@0)))
 :qid |ModifiesTestz3bpl.1122:27|
 :skolemid |27|
 :pattern ( (|$IsValid'$0_B_T'| s@@0))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |ModifiesTestz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |ModifiesTestz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |ModifiesTestz3bpl.245:54|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'$0_B_T'@0| () T@$0_B_T)
(declare-fun $t2@1 () T@$Mutation_12508)
(declare-fun $t5@0 () T@$Mutation_3430)
(declare-fun $t5@1 () T@$Mutation_3430)
(declare-fun $t2@2 () T@$Mutation_12508)
(declare-fun $0_B_T_$memory@0 () T@$Memory_11257)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $0_B_T_$memory () T@$Memory_11257)
(declare-fun |Store__T@[Int]$0_B_T_| (|T@[Int]$0_B_T| Int T@$0_B_T) |T@[Int]$0_B_T|)
(declare-fun |Select__T@[Int]$0_B_T_| (|T@[Int]$0_B_T| Int) T@$0_B_T)
(assert (forall ( ( ?x0 |T@[Int]$0_B_T|) ( ?x1 Int) ( ?x2 T@$0_B_T)) (! (= (|Select__T@[Int]$0_B_T_| (|Store__T@[Int]$0_B_T_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$0_B_T|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$0_B_T)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$0_B_T_| (|Store__T@[Int]$0_B_T_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$0_B_T_| ?x0 ?y1))) :weight 0)))
(declare-fun _$t0 () Int)
(declare-fun $t2 () T@$Mutation_12508)
(declare-fun $abort_code@1 () Int)
(declare-fun $t2@0 () T@$Mutation_12508)
(declare-fun $abort_code@0 () Int)
(declare-fun $0_B_T_$modifies () |T@[Int]Bool|)
(declare-fun $t1 () T@$Mutation_12508)
(declare-fun $t5 () T@$Mutation_3430)
(push 1)
(set-info :boogie-vc-id $0_B_mutate_at_test$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16788) (let ((anon8_Else_correct  (=> (not $abort_flag@0) (=> (and (and (and (= |$temp_0'$0_B_T'@0| (|v#$Mutation_12508| $t2@1)) (= |$temp_0'$0_B_T'@0| |$temp_0'$0_B_T'@0|)) (and (|$IsValid'u64'| 2) (= $t5@0 ($Mutation_3430 (|l#$Mutation_12508| $t2@1) (seq.++ (|p#$Mutation_12508| $t2@1) (seq.unit 0)) (|$x#$0_B_T| (|v#$Mutation_12508| $t2@1)))))) (and (and (= $t5@1 ($Mutation_3430 (|l#$Mutation_3430| $t5@0) (|p#$Mutation_3430| $t5@0) 2)) (= $t2@2 ($Mutation_12508 (|l#$Mutation_12508| $t2@1) (|p#$Mutation_12508| $t2@1) ($0_B_T (|v#$Mutation_3430| $t5@1))))) (and (= $0_B_T_$memory@0 ($Memory_11257 (|Store__T@[Int]Bool_| (|domain#$Memory_11257| $0_B_T_$memory) (|a#$Global| (|l#$Mutation_12508| $t2@2)) true) (|Store__T@[Int]$0_B_T_| (|contents#$Memory_11257| $0_B_T_$memory) (|a#$Global| (|l#$Mutation_12508| $t2@2)) (|v#$Mutation_12508| $t2@2)))) (= (ControlFlow 0 15114) (- 0 17085))))) (= (|$x#$0_B_T| (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11257| $0_B_T_$memory@0) _$t0)) 2)))))
(let ((anon8_Then_correct true))
(let ((anon7_Then$1_correct  (=> (= $t2@1 $t2) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 15184) 15132) anon8_Then_correct) (=> (= (ControlFlow 0 15184) 15114) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_11257| $0_B_T_$memory) _$t0)) (= (ControlFlow 0 15182) 15184)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_11257| $0_B_T_$memory) _$t0) (=> (and (and (= $t2@0 ($Mutation_12508 ($Global _$t0) (as seq.empty (Seq Int)) (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11257| $0_B_T_$memory) _$t0))) (= $t2@1 $t2@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 15028) 15132) anon8_Then_correct) (=> (= (ControlFlow 0 15028) 15114) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11257| $0_B_T_$memory) $a_0)))
(|$IsValid'$0_B_T'| $rsc))
 :qid |ModifiesTestz3bpl.1582:20|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11257| $0_B_T_$memory) $a_0))
))) (and (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t0) (= _$t0 _$t0))) (and (=> (= (ControlFlow 0 15006) (- 0 16905)) (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t0) (and (=> (= (ControlFlow 0 15006) 15182) anon7_Then_correct) (=> (= (ControlFlow 0 15006) 15028) anon7_Else_correct)))))))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_12508| $t1)) 0) (= (seq.len (|p#$Mutation_12508| $t2)) 0)) (and (= (seq.len (|p#$Mutation_3430| $t5)) 0) (= (ControlFlow 0 14952) 15006))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 16788) 14952) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(pop 1)
; Valid
