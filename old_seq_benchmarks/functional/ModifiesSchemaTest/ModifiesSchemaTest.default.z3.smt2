(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_9997 0)) ((($Memory_9997 (|domain#$Memory_9997| |T@[Int]Bool|) (|contents#$Memory_9997| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10030 0)) ((($Mutation_10030 (|l#$Mutation_10030| T@$Location) (|p#$Mutation_10030| T@Vec_2977) (|v#$Mutation_10030| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7903 0)) ((($Mutation_7903 (|l#$Mutation_7903| T@$Location) (|p#$Mutation_7903| T@Vec_2977) (|v#$Mutation_7903| T@Vec_2977) ) ) ))
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
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$0_A_S'| (T@$0_A_S) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ModifiesSchemaTestdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ModifiesSchemaTestdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ModifiesSchemaTestdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ModifiesSchemaTestdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ModifiesSchemaTestdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ModifiesSchemaTestdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ModifiesSchemaTestdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ModifiesSchemaTestdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |ModifiesSchemaTestdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |ModifiesSchemaTestdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |ModifiesSchemaTestdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |ModifiesSchemaTestdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |ModifiesSchemaTestdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |ModifiesSchemaTestdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |ModifiesSchemaTestdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |ModifiesSchemaTestdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |ModifiesSchemaTestdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ModifiesSchemaTestdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ModifiesSchemaTestdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s) (|$IsValid'u64'| (|$x#$0_A_S| s)))
 :qid |ModifiesSchemaTestdefaultz3bpl.932:27|
 :skolemid |28|
 :pattern ( (|$IsValid'$0_A_S'| s))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |ModifiesSchemaTestdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |ModifiesSchemaTestdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |ModifiesSchemaTestdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |ModifiesSchemaTestdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |ModifiesSchemaTestdefaultz3bpl.275:54|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |ModifiesSchemaTestdefaultz3bpl.73:19|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |ModifiesSchemaTestdefaultz3bpl.82:30|
 :skolemid |34|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |ModifiesSchemaTestdefaultz3bpl.63:20|
 :skolemid |35|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t2@1 () T@$Mutation_10030)
(declare-fun $t2 () T@$Mutation_10030)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $0_A_S_$memory () T@$Memory_9997)
(declare-fun _$t0 () Int)
(declare-fun $t2@0 () T@$Mutation_10030)
(declare-fun MapConstVec_3206 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_3206 () Int)
(declare-fun |Select__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int) T@$0_A_S)
(declare-fun $abort_code@0 () Int)
(declare-fun $0_A_S_$modifies () |T@[Int]Bool|)
(declare-fun $t1 () T@$Mutation_10030)
(declare-fun $t5 () T@$Mutation_3601)
(push 1)
(set-info :boogie-vc-id $0_A_mutate_at$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14281) (let ((anon7_Else_correct true))
(let ((anon7_Then_correct true))
(let ((anon6_Then$1_correct  (=> (= $t2@1 $t2) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 11874) 11822) anon7_Then_correct) (=> (= (ControlFlow 0 11874) 11804) anon7_Else_correct))))))
(let ((anon6_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_9997| $0_A_S_$memory) _$t0)) (= (ControlFlow 0 11872) 11874)) anon6_Then$1_correct)))
(let ((anon6_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_9997| $0_A_S_$memory) _$t0) (=> (and (and (= $t2@0 ($Mutation_10030 ($Global _$t0) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) (|Select__T@[Int]$0_A_S_| (|contents#$Memory_9997| $0_A_S_$memory) _$t0))) (= $t2@1 $t2@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 11732) 11822) anon7_Then_correct) (=> (= (ControlFlow 0 11732) 11804) anon7_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_A_S_| (|contents#$Memory_9997| $0_A_S_$memory) $a_0)))
(|$IsValid'$0_A_S'| $rsc))
 :qid |ModifiesSchemaTestdefaultz3bpl.1043:20|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_9997| $0_A_S_$memory) $a_0))
))) (and (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0) (= _$t0 _$t0))) (and (=> (= (ControlFlow 0 11710) (- 0 14398)) (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0) (and (=> (= (ControlFlow 0 11710) 11872) anon6_Then_correct) (=> (= (ControlFlow 0 11710) 11732) anon6_Else_correct)))))))
(let ((anon0_correct  (=> (and (and (= (|l#Vec_2977| (|p#$Mutation_10030| $t1)) 0) (= (|l#Vec_2977| (|p#$Mutation_10030| $t2)) 0)) (and (= (|l#Vec_2977| (|p#$Mutation_3601| $t5)) 0) (= (ControlFlow 0 11656) 11710))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 14281) 11656) anon0_correct)))
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
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_9997 0)) ((($Memory_9997 (|domain#$Memory_9997| |T@[Int]Bool|) (|contents#$Memory_9997| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10030 0)) ((($Mutation_10030 (|l#$Mutation_10030| T@$Location) (|p#$Mutation_10030| T@Vec_2977) (|v#$Mutation_10030| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7903 0)) ((($Mutation_7903 (|l#$Mutation_7903| T@$Location) (|p#$Mutation_7903| T@Vec_2977) (|v#$Mutation_7903| T@Vec_2977) ) ) ))
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
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$0_A_S'| (T@$0_A_S) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ModifiesSchemaTestdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ModifiesSchemaTestdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ModifiesSchemaTestdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ModifiesSchemaTestdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ModifiesSchemaTestdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ModifiesSchemaTestdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ModifiesSchemaTestdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ModifiesSchemaTestdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |ModifiesSchemaTestdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |ModifiesSchemaTestdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |ModifiesSchemaTestdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |ModifiesSchemaTestdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |ModifiesSchemaTestdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |ModifiesSchemaTestdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |ModifiesSchemaTestdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |ModifiesSchemaTestdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |ModifiesSchemaTestdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ModifiesSchemaTestdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ModifiesSchemaTestdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s) (|$IsValid'u64'| (|$x#$0_A_S| s)))
 :qid |ModifiesSchemaTestdefaultz3bpl.932:27|
 :skolemid |28|
 :pattern ( (|$IsValid'$0_A_S'| s))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |ModifiesSchemaTestdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |ModifiesSchemaTestdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |ModifiesSchemaTestdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |ModifiesSchemaTestdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |ModifiesSchemaTestdefaultz3bpl.275:54|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |ModifiesSchemaTestdefaultz3bpl.73:19|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |ModifiesSchemaTestdefaultz3bpl.82:30|
 :skolemid |34|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |ModifiesSchemaTestdefaultz3bpl.63:20|
 :skolemid |35|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |inline$$0_A_mutate_at$0$$temp_0'$0_A_S'@1| () T@$0_A_S)
(declare-fun inline$$0_A_mutate_at$0$$t2@2 () T@$Mutation_10030)
(declare-fun inline$$0_A_mutate_at$0$$t5@1 () T@$Mutation_3601)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$0_A_mutate_at$0$$t5@2 () T@$Mutation_3601)
(declare-fun inline$$0_A_mutate_at$0$$t2@3 () T@$Mutation_10030)
(declare-fun $0_A_S_$memory@0 () T@$Memory_9997)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $0_A_S_$memory () T@$Memory_9997)
(declare-fun |Store__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int T@$0_A_S) |T@[Int]$0_A_S|)
(declare-fun |Select__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int) T@$0_A_S)
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?x2 T@$0_A_S)) (! (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$0_A_S)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$0_A_S_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun inline$$0_A_mutate_at$0$$t2@0 () T@$Mutation_10030)
(declare-fun _$t0 () Int)
(declare-fun inline$$0_A_mutate_at$0$$t2@1 () T@$Mutation_10030)
(declare-fun MapConstVec_3206 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_3206 () Int)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$0_A_mutate_at$0$$t1@0 () T@$Mutation_10030)
(declare-fun inline$$0_A_mutate_at$0$$t5@0 () T@$Mutation_3601)
(declare-fun $0_A_S_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $0_A_mutate_at_wrapper1$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14599) (let ((anon3_Else_correct true))
(let ((anon3_Then_correct true))
(let ((inline$$0_A_mutate_at$0$anon7_Else_correct  (=> (not $abort_flag@0) (=> (and (and (and (= |inline$$0_A_mutate_at$0$$temp_0'$0_A_S'@1| (|v#$Mutation_10030| inline$$0_A_mutate_at$0$$t2@2)) (= |inline$$0_A_mutate_at$0$$temp_0'$0_A_S'@1| |inline$$0_A_mutate_at$0$$temp_0'$0_A_S'@1|)) (and (|$IsValid'u64'| 2) (= inline$$0_A_mutate_at$0$$t5@1 ($Mutation_3601 (|l#$Mutation_10030| inline$$0_A_mutate_at$0$$t2@2) (let ((l (|l#Vec_2977| (|p#$Mutation_10030| inline$$0_A_mutate_at$0$$t2@2))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_10030| inline$$0_A_mutate_at$0$$t2@2)) l 0) (+ l 1))) (|$x#$0_A_S| (|v#$Mutation_10030| inline$$0_A_mutate_at$0$$t2@2)))))) (and (and (= inline$$0_A_mutate_at$0$$t5@2 ($Mutation_3601 (|l#$Mutation_3601| inline$$0_A_mutate_at$0$$t5@1) (|p#$Mutation_3601| inline$$0_A_mutate_at$0$$t5@1) 2)) (= inline$$0_A_mutate_at$0$$t2@3 ($Mutation_10030 (|l#$Mutation_10030| inline$$0_A_mutate_at$0$$t2@2) (|p#$Mutation_10030| inline$$0_A_mutate_at$0$$t2@2) ($0_A_S (|v#$Mutation_3601| inline$$0_A_mutate_at$0$$t5@2))))) (and (= $0_A_S_$memory@0 ($Memory_9997 (|Store__T@[Int]Bool_| (|domain#$Memory_9997| $0_A_S_$memory) (|a#$Global| (|l#$Mutation_10030| inline$$0_A_mutate_at$0$$t2@3)) true) (|Store__T@[Int]$0_A_S_| (|contents#$Memory_9997| $0_A_S_$memory) (|a#$Global| (|l#$Mutation_10030| inline$$0_A_mutate_at$0$$t2@3)) (|v#$Mutation_10030| inline$$0_A_mutate_at$0$$t2@3)))) (= $abort_flag@1 $abort_flag@0)))) (and (=> (= (ControlFlow 0 12392) 12494) anon3_Then_correct) (=> (= (ControlFlow 0 12392) 12476) anon3_Else_correct))))))
(let ((inline$$0_A_mutate_at$0$anon7_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= $abort_flag@1 true)) (and (=> (= (ControlFlow 0 12410) 12494) anon3_Then_correct) (=> (= (ControlFlow 0 12410) 12476) anon3_Else_correct))))))
(let ((inline$$0_A_mutate_at$0$anon6_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$0_A_mutate_at$0$$t2@2 inline$$0_A_mutate_at$0$$t2@0)) (and (=> (= (ControlFlow 0 12462) 12410) inline$$0_A_mutate_at$0$anon7_Then_correct) (=> (= (ControlFlow 0 12462) 12392) inline$$0_A_mutate_at$0$anon7_Else_correct))))))
(let ((inline$$0_A_mutate_at$0$anon6_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_9997| $0_A_S_$memory) _$t0)) (= (ControlFlow 0 12460) 12462)) inline$$0_A_mutate_at$0$anon6_Then$1_correct)))
(let ((inline$$0_A_mutate_at$0$anon6_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_9997| $0_A_S_$memory) _$t0) (=> (and (and (= inline$$0_A_mutate_at$0$$t2@1 ($Mutation_10030 ($Global _$t0) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) (|Select__T@[Int]$0_A_S_| (|contents#$Memory_9997| $0_A_S_$memory) _$t0))) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$0_A_mutate_at$0$$t2@2 inline$$0_A_mutate_at$0$$t2@1))) (and (=> (= (ControlFlow 0 12320) 12410) inline$$0_A_mutate_at$0$anon7_Then_correct) (=> (= (ControlFlow 0 12320) 12392) inline$$0_A_mutate_at$0$anon7_Else_correct))))))
(let ((inline$$0_A_mutate_at$0$anon0_correct  (=> (and (and (= (|l#Vec_2977| (|p#$Mutation_10030| inline$$0_A_mutate_at$0$$t1@0)) 0) (= (|l#Vec_2977| (|p#$Mutation_10030| inline$$0_A_mutate_at$0$$t2@0)) 0)) (and (= (|l#Vec_2977| (|p#$Mutation_3601| inline$$0_A_mutate_at$0$$t5@0)) 0) (= _$t0 _$t0))) (and (=> (= (ControlFlow 0 12298) 12460) inline$$0_A_mutate_at$0$anon6_Then_correct) (=> (= (ControlFlow 0 12298) 12320) inline$$0_A_mutate_at$0$anon6_Else_correct)))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_A_S_| (|contents#$Memory_9997| $0_A_S_$memory) $a_0)))
(|$IsValid'$0_A_S'| $rsc))
 :qid |ModifiesSchemaTestdefaultz3bpl.1130:20|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_9997| $0_A_S_$memory) $a_0))
))) (and (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0) (= _$t0 _$t0))) (and (=> (= (ControlFlow 0 12466) (- 0 14714)) (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0) (=> (= (ControlFlow 0 12466) 12298) inline$$0_A_mutate_at$0$anon0_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 14599) 12466) anon0$1_correct)))
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
(declare-sort |T@[Int]Int| 0)
(declare-datatypes ((T@Vec_2977 0)) (((Vec_2977 (|v#Vec_2977| |T@[Int]Int|) (|l#Vec_2977| Int) ) ) ))
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_9997 0)) ((($Memory_9997 (|domain#$Memory_9997| |T@[Int]Bool|) (|contents#$Memory_9997| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_10030 0)) ((($Mutation_10030 (|l#$Mutation_10030| T@$Location) (|p#$Mutation_10030| T@Vec_2977) (|v#$Mutation_10030| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3601 0)) ((($Mutation_3601 (|l#$Mutation_3601| T@$Location) (|p#$Mutation_3601| T@Vec_2977) (|v#$Mutation_3601| Int) ) ) ))
(declare-datatypes ((T@$Mutation_7903 0)) ((($Mutation_7903 (|l#$Mutation_7903| T@$Location) (|p#$Mutation_7903| T@Vec_2977) (|v#$Mutation_7903| T@Vec_2977) ) ) ))
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
(declare-fun |$IsEqual'vec'u8''| (T@Vec_2977 T@Vec_2977) Bool)
(declare-fun InRangeVec_2977 (T@Vec_2977 Int) Bool)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun |$IsValid'vec'u8''| (T@Vec_2977) Bool)
(declare-fun |$IndexOfVec'u8'| (T@Vec_2977 Int) Int)
(declare-fun $1_Hash_sha2 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Hash_sha3 (T@Vec_2977) T@Vec_2977)
(declare-fun $1_Signature_$ed25519_validate_pubkey (T@Vec_2977) Bool)
(declare-fun $1_Signature_$ed25519_verify (T@Vec_2977 T@Vec_2977 T@Vec_2977) Bool)
(declare-fun |$IsValid'$0_A_S'| (T@$0_A_S) Bool)
(declare-fun IndexOfVec_2977 (T@Vec_2977 Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun |lambda#2| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(declare-fun |lambda#3| (Int Int |T@[Int]Int| Int Int Int) |T@[Int]Int|)
(declare-fun |lambda#4| (Int Int Int |T@[Int]Int| |T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ModifiesSchemaTestdefaultz3bpl.190:23|
 :skolemid |6|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ModifiesSchemaTestdefaultz3bpl.194:24|
 :skolemid |7|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ModifiesSchemaTestdefaultz3bpl.198:25|
 :skolemid |8|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ModifiesSchemaTestdefaultz3bpl.202:24|
 :skolemid |9|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ModifiesSchemaTestdefaultz3bpl.206:28|
 :skolemid |10|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ModifiesSchemaTestdefaultz3bpl.216:19|
 :skolemid |11|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ModifiesSchemaTestdefaultz3bpl.482:15|
 :skolemid |15|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ModifiesSchemaTestdefaultz3bpl.491:15|
 :skolemid |16|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v1 T@Vec_2977) (v2 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1 v2)  (and (= (|l#Vec_2977| v1) (|l#Vec_2977| v2)) (forall ((i@@0 Int) ) (!  (=> (InRangeVec_2977 v1 i@@0) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v1) i@@0) (|Select__T@[Int]Int_| (|v#Vec_2977| v2) i@@0)))
 :qid |ModifiesSchemaTestdefaultz3bpl.615:13|
 :skolemid |17|
))))
 :qid |ModifiesSchemaTestdefaultz3bpl.613:28|
 :skolemid |18|
 :pattern ( (|$IsEqual'vec'u8''| v1 v2))
)))
(assert (forall ((v@@4 T@Vec_2977) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (|l#Vec_2977| v@@4)) (forall ((i@@1 Int) ) (!  (=> (InRangeVec_2977 v@@4 i@@1) (|$IsValid'u8'| (|Select__T@[Int]Int_| (|v#Vec_2977| v@@4) i@@1)))
 :qid |ModifiesSchemaTestdefaultz3bpl.621:13|
 :skolemid |19|
))))
 :qid |ModifiesSchemaTestdefaultz3bpl.619:28|
 :skolemid |20|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 T@Vec_2977) (e Int) ) (! (let ((i@@2 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@3 Int) ) (!  (and (and (|$IsValid'u64'| i@@3) (InRangeVec_2977 v@@5 i@@3)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@3) e))
 :qid |ModifiesSchemaTestdefaultz3bpl.626:13|
 :skolemid |21|
))) (= i@@2 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@2) (InRangeVec_2977 v@@5 i@@2)) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) i@@2) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@2)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@5) j) e)))
 :qid |ModifiesSchemaTestdefaultz3bpl.634:17|
 :skolemid |22|
)))))
 :qid |ModifiesSchemaTestdefaultz3bpl.630:15|
 :skolemid |23|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1@@0 T@Vec_2977) (v2@@0 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@0 v2@@0) (|$IsEqual'vec'u8''| ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0)))
 :qid |ModifiesSchemaTestdefaultz3bpl.807:15|
 :skolemid |24|
 :pattern ( ($1_Hash_sha2 v1@@0) ($1_Hash_sha2 v2@@0))
)))
(assert (forall ((v1@@1 T@Vec_2977) (v2@@1 T@Vec_2977) ) (! (= (|$IsEqual'vec'u8''| v1@@1 v2@@1) (|$IsEqual'vec'u8''| ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1)))
 :qid |ModifiesSchemaTestdefaultz3bpl.823:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha3 v1@@1) ($1_Hash_sha3 v2@@1))
)))
(assert (forall ((k1 T@Vec_2977) (k2 T@Vec_2977) ) (!  (=> (|$IsEqual'vec'u8''| k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ModifiesSchemaTestdefaultz3bpl.870:15|
 :skolemid |26|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 T@Vec_2977) (s2 T@Vec_2977) (k1@@0 T@Vec_2977) (k2@@0 T@Vec_2977) (m1 T@Vec_2977) (m2 T@Vec_2977) ) (!  (=> (and (and (|$IsEqual'vec'u8''| s1 s2) (|$IsEqual'vec'u8''| k1@@0 k2@@0)) (|$IsEqual'vec'u8''| m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ModifiesSchemaTestdefaultz3bpl.873:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s) (|$IsValid'u64'| (|$x#$0_A_S| s)))
 :qid |ModifiesSchemaTestdefaultz3bpl.932:27|
 :skolemid |28|
 :pattern ( (|$IsValid'$0_A_S'| s))
)))
(assert (forall ((v@@6 T@Vec_2977) (i@@4 Int) ) (! (= (InRangeVec_2977 v@@6 i@@4)  (and (>= i@@4 0) (< i@@4 (|l#Vec_2977| v@@6))))
 :qid |ModifiesSchemaTestdefaultz3bpl.122:24|
 :skolemid |3|
 :pattern ( (InRangeVec_2977 v@@6 i@@4))
)))
(assert (forall ((v@@7 T@Vec_2977) (e@@0 Int) ) (! (let ((i@@5 (IndexOfVec_2977 v@@7 e@@0)))
(ite  (not (exists ((i@@6 Int) ) (!  (and (InRangeVec_2977 v@@7 i@@6) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@6) e@@0))
 :qid |ModifiesSchemaTestdefaultz3bpl.109:13|
 :skolemid |0|
))) (= i@@5 (- 0 1))  (and (and (InRangeVec_2977 v@@7 i@@5) (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) i@@5) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (>= j@@0 0) (< j@@0 i@@5)) (not (= (|Select__T@[Int]Int_| (|v#Vec_2977| v@@7) j@@0) e@@0)))
 :qid |ModifiesSchemaTestdefaultz3bpl.117:17|
 :skolemid |1|
)))))
 :qid |ModifiesSchemaTestdefaultz3bpl.113:32|
 :skolemid |2|
 :pattern ( (IndexOfVec_2977 v@@7 e@@0))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |ModifiesSchemaTestdefaultz3bpl.275:54|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(assert (forall ((|l#0@@0| Int) (|l#1| Int) (|l#2| Int) (|l#3| |T@[Int]Int|) (|l#4| |T@[Int]Int|) (|l#5| Int) (|l#6| Int) (i@@8 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8) (ite  (and (>= i@@8 |l#0@@0|) (< i@@8 |l#1|)) (ite (< i@@8 |l#2|) (|Select__T@[Int]Int_| |l#3| i@@8) (|Select__T@[Int]Int_| |l#4| (- i@@8 |l#5|))) |l#6|))
 :qid |ModifiesSchemaTestdefaultz3bpl.73:19|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#2| |l#0@@0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) i@@8))
)))
(assert (forall ((|l#0@@1| Int) (|l#1@@0| Int) (|l#2@@0| |T@[Int]Int|) (|l#3@@0| Int) (|l#4@@0| Int) (|l#5@@0| Int) (i@@9 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9) (ite  (and (<= |l#0@@1| i@@9) (< i@@9 |l#1@@0|)) (|Select__T@[Int]Int_| |l#2@@0| (- (- |l#3@@0| i@@9) |l#4@@0|)) |l#5@@0|))
 :qid |ModifiesSchemaTestdefaultz3bpl.82:30|
 :skolemid |34|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#3| |l#0@@1| |l#1@@0| |l#2@@0| |l#3@@0| |l#4@@0| |l#5@@0|) i@@9))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@1| Int) (|l#2@@1| Int) (|l#3@@1| |T@[Int]Int|) (|l#4@@1| |T@[Int]Int|) (|l#5@@1| Int) (|l#6@@0| Int) (j@@1 Int) ) (! (= (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1) (ite  (and (>= j@@1 |l#0@@2|) (< j@@1 |l#1@@1|)) (ite (< j@@1 |l#2@@1|) (|Select__T@[Int]Int_| |l#3@@1| j@@1) (|Select__T@[Int]Int_| |l#4@@1| (+ j@@1 |l#5@@1|))) |l#6@@0|))
 :qid |ModifiesSchemaTestdefaultz3bpl.63:20|
 :skolemid |35|
 :pattern ( (|Select__T@[Int]Int_| (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@1| |l#5@@1| |l#6@@0|) j@@1))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@2 () Bool)
(declare-fun |inline$$0_A_mutate_at$1$$temp_0'$0_A_S'@1| () T@$0_A_S)
(declare-fun inline$$0_A_mutate_at$1$$t2@2 () T@$Mutation_10030)
(declare-fun inline$$0_A_mutate_at$1$$t5@1 () T@$Mutation_3601)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun inline$$0_A_mutate_at$1$$t5@2 () T@$Mutation_3601)
(declare-fun inline$$0_A_mutate_at$1$$t2@3 () T@$Mutation_10030)
(declare-fun $0_A_S_$memory@2 () T@$Memory_9997)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $0_A_S_$memory@1 () T@$Memory_9997)
(declare-fun |Store__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int T@$0_A_S) |T@[Int]$0_A_S|)
(declare-fun |Select__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int) T@$0_A_S)
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?x2 T@$0_A_S)) (! (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$0_A_S)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$0_A_S_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_flag@3 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun inline$$0_A_mutate_at$1$$t2@0 () T@$Mutation_10030)
(declare-fun _$t1 () Int)
(declare-fun inline$$0_A_mutate_at$1$$t2@1 () T@$Mutation_10030)
(declare-fun MapConstVec_3206 (Int) |T@[Int]Int|)
(declare-fun DefaultVecElem_3206 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun inline$$0_A_mutate_at$1$$t1@0 () T@$Mutation_10030)
(declare-fun inline$$0_A_mutate_at$1$$t5@0 () T@$Mutation_3601)
(declare-fun $0_A_S_$modifies () |T@[Int]Bool|)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |inline$$0_A_mutate_at$0$$temp_0'$0_A_S'@1| () T@$0_A_S)
(declare-fun inline$$0_A_mutate_at$0$$t2@2 () T@$Mutation_10030)
(declare-fun inline$$0_A_mutate_at$0$$t5@1 () T@$Mutation_3601)
(declare-fun inline$$0_A_mutate_at$0$$t5@2 () T@$Mutation_3601)
(declare-fun inline$$0_A_mutate_at$0$$t2@3 () T@$Mutation_10030)
(declare-fun $0_A_S_$memory@0 () T@$Memory_9997)
(declare-fun $0_A_S_$memory () T@$Memory_9997)
(declare-fun inline$$0_A_mutate_at$0$$t2@0 () T@$Mutation_10030)
(declare-fun _$t0 () Int)
(declare-fun inline$$0_A_mutate_at$0$$t2@1 () T@$Mutation_10030)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$0_A_mutate_at$0$$t1@0 () T@$Mutation_10030)
(declare-fun inline$$0_A_mutate_at$0$$t5@0 () T@$Mutation_3601)
(push 1)
(set-info :boogie-vc-id $0_A_mutate_at_wrapper2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14988) (let ((anon6_Else_correct true))
(let ((anon6_Then_correct true))
(let ((inline$$0_A_mutate_at$1$anon7_Else_correct  (=> (not $abort_flag@2) (=> (and (and (and (= |inline$$0_A_mutate_at$1$$temp_0'$0_A_S'@1| (|v#$Mutation_10030| inline$$0_A_mutate_at$1$$t2@2)) (= |inline$$0_A_mutate_at$1$$temp_0'$0_A_S'@1| |inline$$0_A_mutate_at$1$$temp_0'$0_A_S'@1|)) (and (|$IsValid'u64'| 2) (= inline$$0_A_mutate_at$1$$t5@1 ($Mutation_3601 (|l#$Mutation_10030| inline$$0_A_mutate_at$1$$t2@2) (let ((l (|l#Vec_2977| (|p#$Mutation_10030| inline$$0_A_mutate_at$1$$t2@2))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_10030| inline$$0_A_mutate_at$1$$t2@2)) l 0) (+ l 1))) (|$x#$0_A_S| (|v#$Mutation_10030| inline$$0_A_mutate_at$1$$t2@2)))))) (and (and (= inline$$0_A_mutate_at$1$$t5@2 ($Mutation_3601 (|l#$Mutation_3601| inline$$0_A_mutate_at$1$$t5@1) (|p#$Mutation_3601| inline$$0_A_mutate_at$1$$t5@1) 2)) (= inline$$0_A_mutate_at$1$$t2@3 ($Mutation_10030 (|l#$Mutation_10030| inline$$0_A_mutate_at$1$$t2@2) (|p#$Mutation_10030| inline$$0_A_mutate_at$1$$t2@2) ($0_A_S (|v#$Mutation_3601| inline$$0_A_mutate_at$1$$t5@2))))) (and (= $0_A_S_$memory@2 ($Memory_9997 (|Store__T@[Int]Bool_| (|domain#$Memory_9997| $0_A_S_$memory@1) (|a#$Global| (|l#$Mutation_10030| inline$$0_A_mutate_at$1$$t2@3)) true) (|Store__T@[Int]$0_A_S_| (|contents#$Memory_9997| $0_A_S_$memory@1) (|a#$Global| (|l#$Mutation_10030| inline$$0_A_mutate_at$1$$t2@3)) (|v#$Mutation_10030| inline$$0_A_mutate_at$1$$t2@3)))) (= $abort_flag@3 $abort_flag@2)))) (and (=> (= (ControlFlow 0 13495) 13593) anon6_Then_correct) (=> (= (ControlFlow 0 13495) 13579) anon6_Else_correct))))))
(let ((inline$$0_A_mutate_at$1$anon7_Then_correct  (=> $abort_flag@2 (=> (and (= $abort_code@2 $abort_code@2) (= $abort_flag@3 true)) (and (=> (= (ControlFlow 0 13513) 13593) anon6_Then_correct) (=> (= (ControlFlow 0 13513) 13579) anon6_Else_correct))))))
(let ((inline$$0_A_mutate_at$1$anon6_Then$1_correct  (=> (= $abort_code@2 $EXEC_FAILURE_CODE) (=> (and (= $abort_flag@2 true) (= inline$$0_A_mutate_at$1$$t2@2 inline$$0_A_mutate_at$1$$t2@0)) (and (=> (= (ControlFlow 0 13565) 13513) inline$$0_A_mutate_at$1$anon7_Then_correct) (=> (= (ControlFlow 0 13565) 13495) inline$$0_A_mutate_at$1$anon7_Else_correct))))))
(let ((inline$$0_A_mutate_at$1$anon6_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_9997| $0_A_S_$memory@1) _$t1)) (= (ControlFlow 0 13563) 13565)) inline$$0_A_mutate_at$1$anon6_Then$1_correct)))
(let ((inline$$0_A_mutate_at$1$anon6_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_9997| $0_A_S_$memory@1) _$t1) (=> (and (and (= inline$$0_A_mutate_at$1$$t2@1 ($Mutation_10030 ($Global _$t1) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) (|Select__T@[Int]$0_A_S_| (|contents#$Memory_9997| $0_A_S_$memory@1) _$t1))) (= $abort_code@2 $abort_code@1)) (and (= $abort_flag@2 $abort_flag@1) (= inline$$0_A_mutate_at$1$$t2@2 inline$$0_A_mutate_at$1$$t2@1))) (and (=> (= (ControlFlow 0 13423) 13513) inline$$0_A_mutate_at$1$anon7_Then_correct) (=> (= (ControlFlow 0 13423) 13495) inline$$0_A_mutate_at$1$anon7_Else_correct))))))
(let ((inline$$0_A_mutate_at$1$anon0_correct  (=> (and (and (= (|l#Vec_2977| (|p#$Mutation_10030| inline$$0_A_mutate_at$1$$t1@0)) 0) (= (|l#Vec_2977| (|p#$Mutation_10030| inline$$0_A_mutate_at$1$$t2@0)) 0)) (and (= (|l#Vec_2977| (|p#$Mutation_3601| inline$$0_A_mutate_at$1$$t5@0)) 0) (= _$t1 _$t1))) (and (=> (= (ControlFlow 0 13401) 13563) inline$$0_A_mutate_at$1$anon6_Then_correct) (=> (= (ControlFlow 0 13401) 13423) inline$$0_A_mutate_at$1$anon6_Else_correct)))))
(let ((anon5_Else_correct  (=> (not $abort_flag@1) (and (=> (= (ControlFlow 0 13569) (- 0 15426)) (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t1)) (=> (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t1) (=> (= (ControlFlow 0 13569) 13401) inline$$0_A_mutate_at$1$anon0_correct))))))
(let ((anon5_Then_correct true))
(let ((inline$$0_A_mutate_at$0$anon7_Else_correct  (=> (and (not $abort_flag@0) (= |inline$$0_A_mutate_at$0$$temp_0'$0_A_S'@1| (|v#$Mutation_10030| inline$$0_A_mutate_at$0$$t2@2))) (=> (and (and (and (= |inline$$0_A_mutate_at$0$$temp_0'$0_A_S'@1| |inline$$0_A_mutate_at$0$$temp_0'$0_A_S'@1|) (|$IsValid'u64'| 2)) (and (= inline$$0_A_mutate_at$0$$t5@1 ($Mutation_3601 (|l#$Mutation_10030| inline$$0_A_mutate_at$0$$t2@2) (let ((l@@0 (|l#Vec_2977| (|p#$Mutation_10030| inline$$0_A_mutate_at$0$$t2@2))))
(Vec_2977 (|Store__T@[Int]Int_| (|v#Vec_2977| (|p#$Mutation_10030| inline$$0_A_mutate_at$0$$t2@2)) l@@0 0) (+ l@@0 1))) (|$x#$0_A_S| (|v#$Mutation_10030| inline$$0_A_mutate_at$0$$t2@2)))) (= inline$$0_A_mutate_at$0$$t5@2 ($Mutation_3601 (|l#$Mutation_3601| inline$$0_A_mutate_at$0$$t5@1) (|p#$Mutation_3601| inline$$0_A_mutate_at$0$$t5@1) 2)))) (and (and (= inline$$0_A_mutate_at$0$$t2@3 ($Mutation_10030 (|l#$Mutation_10030| inline$$0_A_mutate_at$0$$t2@2) (|p#$Mutation_10030| inline$$0_A_mutate_at$0$$t2@2) ($0_A_S (|v#$Mutation_3601| inline$$0_A_mutate_at$0$$t5@2)))) (= $0_A_S_$memory@0 ($Memory_9997 (|Store__T@[Int]Bool_| (|domain#$Memory_9997| $0_A_S_$memory) (|a#$Global| (|l#$Mutation_10030| inline$$0_A_mutate_at$0$$t2@3)) true) (|Store__T@[Int]$0_A_S_| (|contents#$Memory_9997| $0_A_S_$memory) (|a#$Global| (|l#$Mutation_10030| inline$$0_A_mutate_at$0$$t2@3)) (|v#$Mutation_10030| inline$$0_A_mutate_at$0$$t2@3))))) (and (= $0_A_S_$memory@1 $0_A_S_$memory@0) (= $abort_flag@1 $abort_flag@0)))) (and (=> (= (ControlFlow 0 13031) 13613) anon5_Then_correct) (=> (= (ControlFlow 0 13031) 13569) anon5_Else_correct))))))
(let ((inline$$0_A_mutate_at$0$anon7_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= $0_A_S_$memory@1 $0_A_S_$memory) (= $abort_flag@1 true))) (and (=> (= (ControlFlow 0 13049) 13613) anon5_Then_correct) (=> (= (ControlFlow 0 13049) 13569) anon5_Else_correct)))))
(let ((inline$$0_A_mutate_at$0$anon6_Then$1_correct  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= inline$$0_A_mutate_at$0$$t2@2 inline$$0_A_mutate_at$0$$t2@0)) (and (=> (= (ControlFlow 0 13101) 13049) inline$$0_A_mutate_at$0$anon7_Then_correct) (=> (= (ControlFlow 0 13101) 13031) inline$$0_A_mutate_at$0$anon7_Else_correct))))))
(let ((inline$$0_A_mutate_at$0$anon6_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_9997| $0_A_S_$memory) _$t0)) (= (ControlFlow 0 13099) 13101)) inline$$0_A_mutate_at$0$anon6_Then$1_correct)))
(let ((inline$$0_A_mutate_at$0$anon6_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_9997| $0_A_S_$memory) _$t0) (=> (and (and (= inline$$0_A_mutate_at$0$$t2@1 ($Mutation_10030 ($Global _$t0) (Vec_2977 (MapConstVec_3206 DefaultVecElem_3206) 0) (|Select__T@[Int]$0_A_S_| (|contents#$Memory_9997| $0_A_S_$memory) _$t0))) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= inline$$0_A_mutate_at$0$$t2@2 inline$$0_A_mutate_at$0$$t2@1))) (and (=> (= (ControlFlow 0 12959) 13049) inline$$0_A_mutate_at$0$anon7_Then_correct) (=> (= (ControlFlow 0 12959) 13031) inline$$0_A_mutate_at$0$anon7_Else_correct))))))
(let ((inline$$0_A_mutate_at$0$anon0_correct  (=> (and (and (= (|l#Vec_2977| (|p#$Mutation_10030| inline$$0_A_mutate_at$0$$t1@0)) 0) (= (|l#Vec_2977| (|p#$Mutation_10030| inline$$0_A_mutate_at$0$$t2@0)) 0)) (and (= (|l#Vec_2977| (|p#$Mutation_3601| inline$$0_A_mutate_at$0$$t5@0)) 0) (= _$t0 _$t0))) (and (=> (= (ControlFlow 0 12937) 13099) inline$$0_A_mutate_at$0$anon6_Then_correct) (=> (= (ControlFlow 0 12937) 12959) inline$$0_A_mutate_at$0$anon6_Else_correct)))))
(let ((anon0$1_correct  (=> (and (|$IsValid'address'| _$t0) (|$IsValid'address'| _$t1)) (=> (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_A_S_| (|contents#$Memory_9997| $0_A_S_$memory) $a_0)))
(|$IsValid'$0_A_S'| $rsc))
 :qid |ModifiesSchemaTestdefaultz3bpl.1196:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_9997| $0_A_S_$memory) $a_0))
)) (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0)) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (=> (= (ControlFlow 0 13105) (- 0 15156)) (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0) (=> (= (ControlFlow 0 13105) 12937) inline$$0_A_mutate_at$0$anon0_correct)))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 14988) 13105) anon0$1_correct)))
anon0_correct)))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 14988)))
(get-value ((ControlFlow 0 13105)))
(get-value ((ControlFlow 0 12937)))
(get-value ((ControlFlow 0 12959)))
(get-value ((ControlFlow 0 13031)))
(get-value ((ControlFlow 0 13569)))
(assert (not (= (ControlFlow 0 13569) (- 15426))))
(check-sat)
(pop 1)
; Invalid
