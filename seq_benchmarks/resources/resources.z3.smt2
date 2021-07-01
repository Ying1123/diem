(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_14209 0)) ((($Memory_14209 (|domain#$Memory_14209| |T@[Int]Bool|) (|contents#$Memory_14209| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14242 0)) ((($Mutation_14242 (|l#$Mutation_14242| T@$Location) (|p#$Mutation_14242| (Seq Int)) (|v#$Mutation_14242| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12257 0)) ((($Mutation_12257 (|l#$Mutation_12257| T@$Location) (|p#$Mutation_12257| (Seq Int)) (|v#$Mutation_12257| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |resourcesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |resourcesz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |resourcesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |resourcesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |resourcesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |resourcesz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |resourcesz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesz3bpl.904:40|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesz3bpl.921:40|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesz3bpl.938:40|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesz3bpl.952:44|
 :skolemid |27|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesz3bpl.965:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |resourcesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |resourcesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |resourcesz3bpl.245:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $42_TestResources_R_$memory () T@$Memory_14209)
(declare-fun _$t0 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun |$temp_0'$42_TestResources_R'@1| () T@$42_TestResources_R)
(declare-fun $t5@1 () T@$Mutation_14242)
(declare-fun $t5 () T@$Mutation_14242)
(declare-fun $t5@0 () T@$Mutation_14242)
(declare-fun |Select__T@[Int]$42_TestResources_R_| (|T@[Int]$42_TestResources_R| Int) T@$42_TestResources_R)
(declare-fun |$temp_0'$42_TestResources_R'@0| () T@$42_TestResources_R)
(declare-fun $t3@1 () T@$Mutation_14242)
(declare-fun $t3 () T@$Mutation_14242)
(declare-fun $t3@0 () T@$Mutation_14242)
(declare-fun $abort_code@0 () Int)
(declare-fun $t1 () T@$Mutation_14242)
(declare-fun $t2 () T@$Mutation_14242)
(push 1)
(set-info :boogie-vc-id $42_TestResources_borrow_global_mut_correct$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 25167) (let ((L2_correct  (=> (= (ControlFlow 0 20071) (- 0 25506)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0)))))
(let ((anon15_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 20055) 20071)) L2_correct))))
(let ((anon13_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 20137) 20071)) L2_correct))))
(let ((anon15_Else_correct  (=> (and (and (not $abort_flag@1) (= |$temp_0'$42_TestResources_R'@1| (|v#$Mutation_14242| $t5@1))) (and (= |$temp_0'$42_TestResources_R'@1| |$temp_0'$42_TestResources_R'@1|) (= (ControlFlow 0 20041) (- 0 25495)))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0))))))
(let ((anon14_Then$1_correct  (=> (= $t5@1 $t5) (=> (and (= $abort_flag@1 true) (= $abort_code@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 20123) 20055) anon15_Then_correct) (=> (= (ControlFlow 0 20123) 20041) anon15_Else_correct))))))
(let ((anon14_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0)) (= (ControlFlow 0 20121) 20123)) anon14_Then$1_correct)))
(let ((anon14_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0) (=> (and (and (= $t5@0 ($Mutation_14242 ($Global _$t0) (as seq.empty (Seq Int)) (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) _$t0))) (= $t5@1 $t5@0)) (and (= $abort_flag@1 $abort_flag@0) (= $abort_code@2 $abort_code@1))) (and (=> (= (ControlFlow 0 20007) 20055) anon15_Then_correct) (=> (= (ControlFlow 0 20007) 20041) anon15_Else_correct))))))
(let ((anon13_Else_correct  (=> (not $abort_flag@0) (=> (and (= |$temp_0'$42_TestResources_R'@0| (|v#$Mutation_14242| $t3@1)) (= |$temp_0'$42_TestResources_R'@0| |$temp_0'$42_TestResources_R'@0|)) (and (=> (= (ControlFlow 0 19985) 20121) anon14_Then_correct) (=> (= (ControlFlow 0 19985) 20007) anon14_Else_correct))))))
(let ((anon12_Then$1_correct  (=> (= $t3@1 $t3) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 20189) 20137) anon13_Then_correct) (=> (= (ControlFlow 0 20189) 19985) anon13_Else_correct))))))
(let ((anon12_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0)) (= (ControlFlow 0 20187) 20189)) anon12_Then$1_correct)))
(let ((anon12_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0) (=> (and (and (= $t3@0 ($Mutation_14242 ($Global _$t0) (as seq.empty (Seq Int)) (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) _$t0))) (= $t3@1 $t3@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 19963) 20137) anon13_Then_correct) (=> (= (ControlFlow 0 19963) 19985) anon13_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) $a_0)))
(|$IsValid'$42_TestResources_R'| $rsc))
 :qid |resourcesz3bpl.1001:20|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) $a_0))
)) (= _$t0 _$t0)) (and (=> (= (ControlFlow 0 19941) 20187) anon12_Then_correct) (=> (= (ControlFlow 0 19941) 19963) anon12_Else_correct))))))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_14242| $t1)) 0) (=> (and (and (= (seq.len (|p#$Mutation_14242| $t2)) 0) (= (seq.len (|p#$Mutation_14242| $t3)) 0)) (and (= (seq.len (|p#$Mutation_14242| $t5)) 0) (= (ControlFlow 0 19901) 19941))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 25167) 19901) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))
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
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_14209 0)) ((($Memory_14209 (|domain#$Memory_14209| |T@[Int]Bool|) (|contents#$Memory_14209| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14242 0)) ((($Mutation_14242 (|l#$Mutation_14242| T@$Location) (|p#$Mutation_14242| (Seq Int)) (|v#$Mutation_14242| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12257 0)) ((($Mutation_12257 (|l#$Mutation_12257| T@$Location) (|p#$Mutation_12257| (Seq Int)) (|v#$Mutation_12257| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |resourcesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |resourcesz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |resourcesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |resourcesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |resourcesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |resourcesz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |resourcesz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesz3bpl.904:40|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesz3bpl.921:40|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesz3bpl.938:40|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesz3bpl.952:44|
 :skolemid |27|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesz3bpl.965:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |resourcesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |resourcesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |resourcesz3bpl.245:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () T@$42_TestResources_Empty)
(push 1)
(set-info :boogie-vc-id $42_TestResources_create_empty$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 25541) (let ((anon0$1_correct  (=> (= $t1@0 ($42_TestResources_Empty false)) (=> (and (= $t1@0 $t1@0) (= (ControlFlow 0 20311) (- 0 25595))) (= $t1@0 ($42_TestResources_Empty false))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 25541) 20311) anon0$1_correct)))
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
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_14209 0)) ((($Memory_14209 (|domain#$Memory_14209| |T@[Int]Bool|) (|contents#$Memory_14209| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14242 0)) ((($Mutation_14242 (|l#$Mutation_14242| T@$Location) (|p#$Mutation_14242| (Seq Int)) (|v#$Mutation_14242| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12257 0)) ((($Mutation_12257 (|l#$Mutation_12257| T@$Location) (|p#$Mutation_12257| (Seq Int)) (|v#$Mutation_12257| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |resourcesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |resourcesz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |resourcesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |resourcesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |resourcesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |resourcesz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |resourcesz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesz3bpl.904:40|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesz3bpl.921:40|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesz3bpl.938:40|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesz3bpl.952:44|
 :skolemid |27|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesz3bpl.965:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |resourcesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |resourcesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |resourcesz3bpl.245:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $42_TestResources_R_$memory () T@$Memory_14209)
(declare-fun _$t0 () Int)
(declare-fun $42_TestResources_R_$memory@1 () T@$Memory_14209)
(declare-fun $abort_code@1 () Int)
(declare-fun $42_TestResources_R_$memory@0 () T@$Memory_14209)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$42_TestResources_R_| (|T@[Int]$42_TestResources_R| Int T@$42_TestResources_R) |T@[Int]$42_TestResources_R|)
(declare-fun |Select__T@[Int]$42_TestResources_R_| (|T@[Int]$42_TestResources_R| Int) T@$42_TestResources_R)
(assert (forall ( ( ?x0 |T@[Int]$42_TestResources_R|) ( ?x1 Int) ( ?x2 T@$42_TestResources_R)) (! (= (|Select__T@[Int]$42_TestResources_R_| (|Store__T@[Int]$42_TestResources_R_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestResources_R|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$42_TestResources_R)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestResources_R_| (|Store__T@[Int]$42_TestResources_R_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestResources_R_| ?x0 ?y1))) :weight 0)))
(declare-fun $t2@0 () T@$42_TestResources_R)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestResources_create_resource$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 25612) (let ((anon8_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 20474) (- 0 25808)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0)) (=> (= (ControlFlow 0 20474) (- 0 25819)) (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory@1) _$t0)))))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 20502) (- 0 25788))) (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0)))))
(let ((anon7_Then$1_correct  (=> (= $42_TestResources_R_$memory@1 $42_TestResources_R_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 20552) 20502) anon8_Then_correct) (=> (= (ControlFlow 0 20552) 20474) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0) (= (ControlFlow 0 20550) 20552)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0)) (=> (and (and (= $42_TestResources_R_$memory@0 ($Memory_14209 (|Store__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0 true) (|Store__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) _$t0 $t2@0))) (= $42_TestResources_R_$memory@1 $42_TestResources_R_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 20442) 20502) anon8_Then_correct) (=> (= (ControlFlow 0 20442) 20474) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) $a_0)))
(|$IsValid'$42_TestResources_R'| $rsc))
 :qid |resourcesz3bpl.1139:20|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) $a_0))
)) (= _$t0 _$t0)) (and (|$IsValid'u64'| 1) (= $t2@0 ($42_TestResources_R 1)))) (and (=> (= (ControlFlow 0 20424) 20550) anon7_Then_correct) (=> (= (ControlFlow 0 20424) 20442) anon7_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 25612) 20424) anon0$1_correct)))
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
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_14209 0)) ((($Memory_14209 (|domain#$Memory_14209| |T@[Int]Bool|) (|contents#$Memory_14209| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14242 0)) ((($Mutation_14242 (|l#$Mutation_14242| T@$Location) (|p#$Mutation_14242| (Seq Int)) (|v#$Mutation_14242| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12257 0)) ((($Mutation_12257 (|l#$Mutation_12257| T@$Location) (|p#$Mutation_12257| (Seq Int)) (|v#$Mutation_12257| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |resourcesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |resourcesz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |resourcesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |resourcesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |resourcesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |resourcesz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |resourcesz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesz3bpl.904:40|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesz3bpl.921:40|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesz3bpl.938:40|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesz3bpl.952:44|
 :skolemid |27|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesz3bpl.965:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |resourcesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |resourcesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |resourcesz3bpl.245:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $42_TestResources_R_$memory () T@$Memory_14209)
(declare-fun _$t0 () Int)
(declare-fun $42_TestResources_R_$memory@1 () T@$Memory_14209)
(declare-fun $abort_code@1 () Int)
(declare-fun $42_TestResources_R_$memory@0 () T@$Memory_14209)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$42_TestResources_R_| (|T@[Int]$42_TestResources_R| Int T@$42_TestResources_R) |T@[Int]$42_TestResources_R|)
(declare-fun |Select__T@[Int]$42_TestResources_R_| (|T@[Int]$42_TestResources_R| Int) T@$42_TestResources_R)
(assert (forall ( ( ?x0 |T@[Int]$42_TestResources_R|) ( ?x1 Int) ( ?x2 T@$42_TestResources_R)) (! (= (|Select__T@[Int]$42_TestResources_R_| (|Store__T@[Int]$42_TestResources_R_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestResources_R|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$42_TestResources_R)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestResources_R_| (|Store__T@[Int]$42_TestResources_R_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestResources_R_| ?x0 ?y1))) :weight 0)))
(declare-fun $t2@0 () T@$42_TestResources_R)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestResources_create_resource_at_signer$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 25833) (let ((anon8_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 20723) (- 0 26029)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0)) (=> (= (ControlFlow 0 20723) (- 0 26040)) (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory@1) _$t0)))))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 20751) (- 0 26009))) (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0)))))
(let ((anon7_Then$1_correct  (=> (= $42_TestResources_R_$memory@1 $42_TestResources_R_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 20801) 20751) anon8_Then_correct) (=> (= (ControlFlow 0 20801) 20723) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0) (= (ControlFlow 0 20799) 20801)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0)) (=> (and (and (= $42_TestResources_R_$memory@0 ($Memory_14209 (|Store__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0 true) (|Store__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) _$t0 $t2@0))) (= $42_TestResources_R_$memory@1 $42_TestResources_R_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 20691) 20751) anon8_Then_correct) (=> (= (ControlFlow 0 20691) 20723) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) $a_0)))
(|$IsValid'$42_TestResources_R'| $rsc))
 :qid |resourcesz3bpl.1223:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) $a_0))
)) (= _$t0 _$t0)) (and (|$IsValid'u64'| 1) (= $t2@0 ($42_TestResources_R 1)))) (and (=> (= (ControlFlow 0 20673) 20799) anon7_Then_correct) (=> (= (ControlFlow 0 20673) 20691) anon7_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 25833) 20673) anon0$1_correct)))
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
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_14209 0)) ((($Memory_14209 (|domain#$Memory_14209| |T@[Int]Bool|) (|contents#$Memory_14209| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14242 0)) ((($Mutation_14242 (|l#$Mutation_14242| T@$Location) (|p#$Mutation_14242| (Seq Int)) (|v#$Mutation_14242| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12257 0)) ((($Mutation_12257 (|l#$Mutation_12257| T@$Location) (|p#$Mutation_12257| (Seq Int)) (|v#$Mutation_12257| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |resourcesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |resourcesz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |resourcesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |resourcesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |resourcesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |resourcesz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |resourcesz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesz3bpl.904:40|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesz3bpl.921:40|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesz3bpl.938:40|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesz3bpl.952:44|
 :skolemid |27|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesz3bpl.965:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |resourcesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |resourcesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |resourcesz3bpl.245:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t2@0 () Bool)
(declare-fun $42_TestResources_R_$memory () T@$Memory_14209)
(declare-fun _$t0 () Int)
(declare-fun |Select__T@[Int]$42_TestResources_R_| (|T@[Int]$42_TestResources_R| Int) T@$42_TestResources_R)
(declare-fun $t1 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestResources_create_resource_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 26054) (let ((anon6_Else_correct  (=> (not $t2@0) (and (=> (= (ControlFlow 0 20960) (- 0 26188)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0))) (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0)) (=> (= (ControlFlow 0 20960) (- 0 26199)) (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0)))))))
(let ((anon6_Then_correct  (=> (and (and $t2@0 (|$IsValid'u64'| 1)) (and (= 1 1) (= (ControlFlow 0 20992) (- 0 26168)))) (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0))))
(let ((anon0$1_correct  (=> (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) $a_0)))
(|$IsValid'$42_TestResources_R'| $rsc))
 :qid |resourcesz3bpl.1307:20|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) $a_0))
))) (=> (and (and (= _$t0 _$t0) (|$IsValid'address'| $t1)) (and (= $t1 _$t0) (= $t2@0 (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) $t1)))) (and (=> (= (ControlFlow 0 20930) 20992) anon6_Then_correct) (=> (= (ControlFlow 0 20930) 20960) anon6_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 26054) 20930) anon0$1_correct)))
anon0_correct)))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 26054)))
(get-value ((ControlFlow 0 20930)))
(get-value ((ControlFlow 0 20960)))
(assert (not (= (ControlFlow 0 20960) (- 26199))))
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
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_14209 0)) ((($Memory_14209 (|domain#$Memory_14209| |T@[Int]Bool|) (|contents#$Memory_14209| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14242 0)) ((($Mutation_14242 (|l#$Mutation_14242| T@$Location) (|p#$Mutation_14242| (Seq Int)) (|v#$Mutation_14242| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12257 0)) ((($Mutation_12257 (|l#$Mutation_12257| T@$Location) (|p#$Mutation_12257| (Seq Int)) (|v#$Mutation_12257| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |resourcesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |resourcesz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |resourcesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |resourcesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |resourcesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |resourcesz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |resourcesz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesz3bpl.904:40|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesz3bpl.921:40|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesz3bpl.938:40|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesz3bpl.952:44|
 :skolemid |27|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesz3bpl.965:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |resourcesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |resourcesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |resourcesz3bpl.245:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () T@$42_TestResources_A)
(declare-fun _$t1 () T@$42_TestResources_B)
(declare-fun _$t2 () T@$42_TestResources_C)
(push 1)
(set-info :boogie-vc-id $42_TestResources_identity$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 26215) (let ((anon0$1_correct  (=> (|$IsValid'$42_TestResources_A'| _$t0) (=> (and (and (and (|$IsValid'$42_TestResources_B'| _$t1) (|$IsValid'$42_TestResources_C'| _$t2)) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (and (= _$t2 _$t2) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= _$t2 _$t2)))) (and (=> (= (ControlFlow 0 21155) (- 0 26309)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 21155) (- 0 26316)) (= _$t0 _$t0)) (=> (= _$t0 _$t0) (and (=> (= (ControlFlow 0 21155) (- 0 26323)) (= _$t1 _$t1)) (=> (= _$t1 _$t1) (=> (= (ControlFlow 0 21155) (- 0 26330)) (= _$t2 _$t2))))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 26215) 21155) anon0$1_correct)))
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
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_14209 0)) ((($Memory_14209 (|domain#$Memory_14209| |T@[Int]Bool|) (|contents#$Memory_14209| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14242 0)) ((($Mutation_14242 (|l#$Mutation_14242| T@$Location) (|p#$Mutation_14242| (Seq Int)) (|v#$Mutation_14242| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12257 0)) ((($Mutation_12257 (|l#$Mutation_12257| T@$Location) (|p#$Mutation_12257| (Seq Int)) (|v#$Mutation_12257| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |resourcesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |resourcesz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |resourcesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |resourcesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |resourcesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |resourcesz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |resourcesz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesz3bpl.904:40|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesz3bpl.921:40|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesz3bpl.938:40|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesz3bpl.952:44|
 :skolemid |27|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesz3bpl.965:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |resourcesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |resourcesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |resourcesz3bpl.245:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $t2@1 () T@$42_TestResources_R)
(declare-fun $t4@0 () Int)
(declare-fun $42_TestResources_R_$memory () T@$Memory_14209)
(declare-fun _$t0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $t2 () T@$42_TestResources_R)
(declare-fun $t2@0 () T@$42_TestResources_R)
(declare-fun |Select__T@[Int]$42_TestResources_R_| (|T@[Int]$42_TestResources_R| Int) T@$42_TestResources_R)
(declare-fun $42_TestResources_R_$memory@0 () T@$Memory_14209)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestResources_move_from_addr$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 26348) (let ((anon8_Else_correct  (=> (and (and (not $abort_flag@0) (= $t2@1 $t2@1)) (and (= $t4@0 (|$x#$42_TestResources_R| $t2@1)) (= (ControlFlow 0 21351) (- 0 26556)))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0))))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 21379) (- 0 26519))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0))))))
(let ((anon7_Then$1_correct  (=> (= $t2@1 $t2) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 21431) 21379) anon8_Then_correct) (=> (= (ControlFlow 0 21431) 21351) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0)) (= (ControlFlow 0 21429) 21431)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0) (= $t2@0 (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) _$t0))) (=> (and (and (= $42_TestResources_R_$memory@0 ($Memory_14209 (|Store__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0 false) (|contents#$Memory_14209| $42_TestResources_R_$memory))) (= $t2@1 $t2@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 21317) 21379) anon8_Then_correct) (=> (= (ControlFlow 0 21317) 21351) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) $a_0)))
(|$IsValid'$42_TestResources_R'| $rsc))
 :qid |resourcesz3bpl.1497:20|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) $a_0))
)) (= _$t0 _$t0)) (and (=> (= (ControlFlow 0 21297) 21429) anon7_Then_correct) (=> (= (ControlFlow 0 21297) 21317) anon7_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 26348) 21297) anon0$1_correct)))
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
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_14209 0)) ((($Memory_14209 (|domain#$Memory_14209| |T@[Int]Bool|) (|contents#$Memory_14209| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14242 0)) ((($Mutation_14242 (|l#$Mutation_14242| T@$Location) (|p#$Mutation_14242| (Seq Int)) (|v#$Mutation_14242| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12257 0)) ((($Mutation_12257 (|l#$Mutation_12257| T@$Location) (|p#$Mutation_12257| (Seq Int)) (|v#$Mutation_12257| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |resourcesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |resourcesz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |resourcesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |resourcesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |resourcesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |resourcesz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |resourcesz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesz3bpl.904:40|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesz3bpl.921:40|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesz3bpl.938:40|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesz3bpl.952:44|
 :skolemid |27|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesz3bpl.965:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |resourcesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |resourcesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |resourcesz3bpl.245:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $t3@1 () T@$42_TestResources_R)
(declare-fun $t5@0 () Int)
(declare-fun $t6@0 () T@$42_TestResources_R)
(declare-fun $42_TestResources_R_$memory () T@$Memory_14209)
(declare-fun _$t0 () Int)
(declare-fun |Select__T@[Int]$42_TestResources_R_| (|T@[Int]$42_TestResources_R| Int) T@$42_TestResources_R)
(declare-fun $abort_code@1 () Int)
(declare-fun $t3 () T@$42_TestResources_R)
(declare-fun $t3@0 () T@$42_TestResources_R)
(declare-fun $42_TestResources_R_$memory@0 () T@$Memory_14209)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestResources_move_from_addr_and_return$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 26573) (let ((anon8_Else_correct  (=> (and (not $abort_flag@0) (= $t3@1 $t3@1)) (=> (and (and (= $t5@0 (|$x#$42_TestResources_R| $t3@1)) (= $t5@0 $t5@0)) (and (= $t6@0 ($42_TestResources_R $t5@0)) (= $t6@0 $t6@0))) (and (=> (= (ControlFlow 0 21657) (- 0 26810)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0))) (and (=> (= (ControlFlow 0 21657) (- 0 26821)) (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0) (and (=> (= (ControlFlow 0 21657) (- 0 26828)) (= (|$x#$42_TestResources_R| $t6@0) (|$x#$42_TestResources_R| (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) _$t0)))) (=> (= (|$x#$42_TestResources_R| $t6@0) (|$x#$42_TestResources_R| (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) _$t0))) (=> (= (ControlFlow 0 21657) (- 0 26842)) (= $t6@0 (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) _$t0)))))))))))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 21685) (- 0 26751))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0))))))
(let ((anon7_Then$1_correct  (=> (= $t3@1 $t3) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 21737) 21685) anon8_Then_correct) (=> (= (ControlFlow 0 21737) 21657) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0)) (= (ControlFlow 0 21735) 21737)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0) (= $t3@0 (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) _$t0))) (=> (and (and (= $42_TestResources_R_$memory@0 ($Memory_14209 (|Store__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0 false) (|contents#$Memory_14209| $42_TestResources_R_$memory))) (= $t3@1 $t3@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 21567) 21685) anon8_Then_correct) (=> (= (ControlFlow 0 21567) 21657) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) $a_0)))
(|$IsValid'$42_TestResources_R'| $rsc))
 :qid |resourcesz3bpl.1584:20|
 :skolemid |34|
 :pattern ( (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) $a_0))
)) (= _$t0 _$t0)) (and (=> (= (ControlFlow 0 21547) 21735) anon7_Then_correct) (=> (= (ControlFlow 0 21547) 21567) anon7_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 26573) 21547) anon0$1_correct)))
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
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_14209 0)) ((($Memory_14209 (|domain#$Memory_14209| |T@[Int]Bool|) (|contents#$Memory_14209| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14242 0)) ((($Mutation_14242 (|l#$Mutation_14242| T@$Location) (|p#$Mutation_14242| (Seq Int)) (|v#$Mutation_14242| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12257 0)) ((($Mutation_12257 (|l#$Mutation_12257| T@$Location) (|p#$Mutation_12257| (Seq Int)) (|v#$Mutation_12257| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |resourcesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |resourcesz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |resourcesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |resourcesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |resourcesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |resourcesz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |resourcesz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesz3bpl.904:40|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesz3bpl.921:40|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesz3bpl.938:40|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesz3bpl.952:44|
 :skolemid |27|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesz3bpl.965:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |resourcesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |resourcesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |resourcesz3bpl.245:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $42_TestResources_R_$memory () T@$Memory_14209)
(declare-fun _$t1 () Int)
(declare-fun _$t0 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $42_TestResources_R_$memory@3 () T@$Memory_14209)
(declare-fun |Select__T@[Int]$42_TestResources_R_| (|T@[Int]$42_TestResources_R| Int) T@$42_TestResources_R)
(declare-fun $42_TestResources_R_$memory@1 () T@$Memory_14209)
(declare-fun $42_TestResources_R_$memory@2 () T@$Memory_14209)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$42_TestResources_R_| (|T@[Int]$42_TestResources_R| Int T@$42_TestResources_R) |T@[Int]$42_TestResources_R|)
(assert (forall ( ( ?x0 |T@[Int]$42_TestResources_R|) ( ?x1 Int) ( ?x2 T@$42_TestResources_R)) (! (= (|Select__T@[Int]$42_TestResources_R_| (|Store__T@[Int]$42_TestResources_R_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestResources_R|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$42_TestResources_R)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestResources_R_| (|Store__T@[Int]$42_TestResources_R_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestResources_R_| ?x0 ?y1))) :weight 0)))
(declare-fun $t7@0 () T@$42_TestResources_R)
(declare-fun $t4@1 () T@$42_TestResources_R)
(declare-fun $t6@0 () Int)
(declare-fun $t4 () T@$42_TestResources_R)
(declare-fun $t4@0 () T@$42_TestResources_R)
(declare-fun $42_TestResources_R_$memory@0 () T@$Memory_14209)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestResources_move_from_addr_to_sender$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 26860) (let ((L2_correct  (=> (= (ControlFlow 0 22116) (- 0 27274)) (or (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t1)) (and (not (= _$t0 _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0))))))
(let ((anon15_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 22078) 22116)) L2_correct))))
(let ((anon13_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 22180) 22116)) L2_correct))))
(let ((anon15_Else_correct  (=> (not $abort_flag@1) (and (=> (= (ControlFlow 0 22064) (- 0 27180)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t1)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t1))) (and (=> (= (ControlFlow 0 22064) (- 0 27191)) (not (and (not (= _$t0 _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0)))) (=> (not (and (not (= _$t0 _$t1)) (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0))) (and (=> (= (ControlFlow 0 22064) (- 0 27212)) (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory@3) _$t0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory@3) _$t0) (and (=> (= (ControlFlow 0 22064) (- 0 27221)) (=> (not (= _$t0 _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory@3) _$t1)))) (=> (=> (not (= _$t0 _$t1)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory@3) _$t1))) (and (=> (= (ControlFlow 0 22064) (- 0 27240)) (= (|$x#$42_TestResources_R| (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) _$t1)) (|$x#$42_TestResources_R| (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory@3) _$t0)))) (=> (= (|$x#$42_TestResources_R| (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) _$t1)) (|$x#$42_TestResources_R| (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory@3) _$t0))) (=> (= (ControlFlow 0 22064) (- 0 27259)) (= (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) _$t1) (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory@3) _$t0))))))))))))))))
(let ((anon14_Then$1_correct  (=> (= $42_TestResources_R_$memory@3 $42_TestResources_R_$memory@1) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= $abort_flag@1 true)) (and (=> (= (ControlFlow 0 22166) 22078) anon15_Then_correct) (=> (= (ControlFlow 0 22166) 22064) anon15_Else_correct))))))
(let ((anon14_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory@1) _$t0) (= (ControlFlow 0 22164) 22166)) anon14_Then$1_correct)))
(let ((anon14_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory@1) _$t0)) (=> (and (and (= $42_TestResources_R_$memory@2 ($Memory_14209 (|Store__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory@1) _$t0 true) (|Store__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory@1) _$t0 $t7@0))) (= $42_TestResources_R_$memory@3 $42_TestResources_R_$memory@2)) (and (= $abort_code@2 $abort_code@1) (= $abort_flag@1 $abort_flag@0))) (and (=> (= (ControlFlow 0 21946) 22078) anon15_Then_correct) (=> (= (ControlFlow 0 21946) 22064) anon15_Else_correct))))))
(let ((anon13_Else_correct  (=> (not $abort_flag@0) (=> (and (and (= $t4@1 $t4@1) (= $t6@0 (|$x#$42_TestResources_R| $t4@1))) (and (= $t6@0 $t6@0) (= $t7@0 ($42_TestResources_R $t6@0)))) (and (=> (= (ControlFlow 0 21928) 22164) anon14_Then_correct) (=> (= (ControlFlow 0 21928) 21946) anon14_Else_correct))))))
(let ((anon12_Then$1_correct  (=> (and (and (= $t4@1 $t4) (= $42_TestResources_R_$memory@1 $42_TestResources_R_$memory)) (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE))) (and (=> (= (ControlFlow 0 22232) 22180) anon13_Then_correct) (=> (= (ControlFlow 0 22232) 21928) anon13_Else_correct)))))
(let ((anon12_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t1)) (= (ControlFlow 0 22230) 22232)) anon12_Then$1_correct)))
(let ((anon12_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t1) (=> (and (= $t4@0 (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) _$t1)) (= $42_TestResources_R_$memory@0 ($Memory_14209 (|Store__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t1 false) (|contents#$Memory_14209| $42_TestResources_R_$memory)))) (=> (and (and (= $t4@1 $t4@0) (= $42_TestResources_R_$memory@1 $42_TestResources_R_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 21896) 22180) anon13_Then_correct) (=> (= (ControlFlow 0 21896) 21928) anon13_Else_correct)))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (and (|$IsValid'address'| _$t1) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) $a_0)))
(|$IsValid'$42_TestResources_R'| $rsc))
 :qid |resourcesz3bpl.1701:20|
 :skolemid |35|
 :pattern ( (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) $a_0))
))) (and (= _$t0 _$t0) (= _$t1 _$t1))) (and (=> (= (ControlFlow 0 21876) 22230) anon12_Then_correct) (=> (= (ControlFlow 0 21876) 21896) anon12_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 26860) 21876) anon0$1_correct)))
anon0_correct))))))))))))))
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
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_14209 0)) ((($Memory_14209 (|domain#$Memory_14209| |T@[Int]Bool|) (|contents#$Memory_14209| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14242 0)) ((($Mutation_14242 (|l#$Mutation_14242| T@$Location) (|p#$Mutation_14242| (Seq Int)) (|v#$Mutation_14242| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12257 0)) ((($Mutation_12257 (|l#$Mutation_12257| T@$Location) (|p#$Mutation_12257| (Seq Int)) (|v#$Mutation_12257| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |resourcesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |resourcesz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |resourcesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |resourcesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |resourcesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |resourcesz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |resourcesz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesz3bpl.904:40|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesz3bpl.921:40|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesz3bpl.938:40|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesz3bpl.952:44|
 :skolemid |27|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesz3bpl.965:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |resourcesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |resourcesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |resourcesz3bpl.245:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $t4@1 () T@$42_TestResources_R)
(declare-fun $t6@0 () Int)
(declare-fun $t7@0 () T@$42_TestResources_R)
(declare-fun $42_TestResources_R_$memory () T@$Memory_14209)
(declare-fun _$t0 () Int)
(declare-fun |Select__T@[Int]$42_TestResources_R_| (|T@[Int]$42_TestResources_R| Int) T@$42_TestResources_R)
(declare-fun $abort_code@1 () Int)
(declare-fun $t4 () T@$42_TestResources_R)
(declare-fun $t3 () Int)
(declare-fun $t4@0 () T@$42_TestResources_R)
(declare-fun $42_TestResources_R_$memory@0 () T@$Memory_14209)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestResources_move_from_sender_and_return$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 27313) (let ((anon8_Else_correct  (=> (and (not $abort_flag@0) (= $t4@1 $t4@1)) (=> (and (and (= $t6@0 (|$x#$42_TestResources_R| $t4@1)) (= $t6@0 $t6@0)) (and (= $t7@0 ($42_TestResources_R $t6@0)) (= $t7@0 $t7@0))) (and (=> (= (ControlFlow 0 22483) (- 0 27567)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0))) (and (=> (= (ControlFlow 0 22483) (- 0 27580)) (= (|$x#$42_TestResources_R| $t7@0) (|$x#$42_TestResources_R| (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) _$t0)))) (=> (= (|$x#$42_TestResources_R| $t7@0) (|$x#$42_TestResources_R| (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) _$t0))) (=> (= (ControlFlow 0 22483) (- 0 27596)) (= $t7@0 (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) _$t0)))))))))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 22513) (- 0 27506))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0))))))
(let ((anon7_Then$1_correct  (=> (= $t4@1 $t4) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 22565) 22513) anon8_Then_correct) (=> (= (ControlFlow 0 22565) 22483) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) $t3)) (= (ControlFlow 0 22563) 22565)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) $t3) (= $t4@0 (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) $t3))) (=> (and (and (= $42_TestResources_R_$memory@0 ($Memory_14209 (|Store__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) $t3 false) (|contents#$Memory_14209| $42_TestResources_R_$memory))) (= $t4@1 $t4@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 22395) 22513) anon8_Then_correct) (=> (= (ControlFlow 0 22395) 22483) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) $a_0)))
(|$IsValid'$42_TestResources_R'| $rsc))
 :qid |resourcesz3bpl.1835:20|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) $a_0))
)) (= _$t0 _$t0)) (and (|$IsValid'address'| $t3) (= $t3 _$t0))) (and (=> (= (ControlFlow 0 22375) 22563) anon7_Then_correct) (=> (= (ControlFlow 0 22375) 22395) anon7_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 27313) 22375) anon0$1_correct)))
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
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_14209 0)) ((($Memory_14209 (|domain#$Memory_14209| |T@[Int]Bool|) (|contents#$Memory_14209| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14242 0)) ((($Mutation_14242 (|l#$Mutation_14242| T@$Location) (|p#$Mutation_14242| (Seq Int)) (|v#$Mutation_14242| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12257 0)) ((($Mutation_12257 (|l#$Mutation_12257| T@$Location) (|p#$Mutation_12257| (Seq Int)) (|v#$Mutation_12257| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |resourcesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |resourcesz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |resourcesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |resourcesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |resourcesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |resourcesz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |resourcesz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesz3bpl.904:40|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesz3bpl.921:40|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesz3bpl.938:40|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesz3bpl.952:44|
 :skolemid |27|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesz3bpl.965:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |resourcesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |resourcesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |resourcesz3bpl.245:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $42_TestResources_R_$memory () T@$Memory_14209)
(declare-fun _$t0 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $42_TestResources_R_$memory@3 () T@$Memory_14209)
(declare-fun |Select__T@[Int]$42_TestResources_R_| (|T@[Int]$42_TestResources_R| Int) T@$42_TestResources_R)
(declare-fun $42_TestResources_R_$memory@1 () T@$Memory_14209)
(declare-fun $42_TestResources_R_$memory@2 () T@$Memory_14209)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$42_TestResources_R_| (|T@[Int]$42_TestResources_R| Int T@$42_TestResources_R) |T@[Int]$42_TestResources_R|)
(assert (forall ( ( ?x0 |T@[Int]$42_TestResources_R|) ( ?x1 Int) ( ?x2 T@$42_TestResources_R)) (! (= (|Select__T@[Int]$42_TestResources_R_| (|Store__T@[Int]$42_TestResources_R_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestResources_R|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$42_TestResources_R)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestResources_R_| (|Store__T@[Int]$42_TestResources_R_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestResources_R_| ?x0 ?y1))) :weight 0)))
(declare-fun $t7@0 () T@$42_TestResources_R)
(declare-fun $t4@1 () T@$42_TestResources_R)
(declare-fun $t6@0 () Int)
(declare-fun $t4 () T@$42_TestResources_R)
(declare-fun $t3 () Int)
(declare-fun $t4@0 () T@$42_TestResources_R)
(declare-fun $42_TestResources_R_$memory@0 () T@$Memory_14209)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestResources_move_from_sender_to_sender$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 27615) (let ((L2_correct  (=> (= (ControlFlow 0 22883) (- 0 27997)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0)))))
(let ((anon15_Then_correct  (=> $abort_flag@1 (=> (and (= $abort_code@2 $abort_code@2) (= (ControlFlow 0 22865) 22883)) L2_correct))))
(let ((anon13_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 22947) 22883)) L2_correct))))
(let ((anon15_Else_correct  (=> (not $abort_flag@1) (and (=> (= (ControlFlow 0 22851) (- 0 27937)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) _$t0))) (and (=> (= (ControlFlow 0 22851) (- 0 27950)) (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory@3) _$t0)) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory@3) _$t0) (and (=> (= (ControlFlow 0 22851) (- 0 27959)) (= (|$x#$42_TestResources_R| (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) _$t0)) (|$x#$42_TestResources_R| (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory@3) _$t0)))) (=> (= (|$x#$42_TestResources_R| (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) _$t0)) (|$x#$42_TestResources_R| (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory@3) _$t0))) (=> (= (ControlFlow 0 22851) (- 0 27980)) (= (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) _$t0) (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory@3) _$t0))))))))))))
(let ((anon14_Then$1_correct  (=> (= $42_TestResources_R_$memory@3 $42_TestResources_R_$memory@1) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= $abort_flag@1 true)) (and (=> (= (ControlFlow 0 22933) 22865) anon15_Then_correct) (=> (= (ControlFlow 0 22933) 22851) anon15_Else_correct))))))
(let ((anon14_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory@1) _$t0) (= (ControlFlow 0 22931) 22933)) anon14_Then$1_correct)))
(let ((anon14_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory@1) _$t0)) (=> (and (and (= $42_TestResources_R_$memory@2 ($Memory_14209 (|Store__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory@1) _$t0 true) (|Store__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory@1) _$t0 $t7@0))) (= $42_TestResources_R_$memory@3 $42_TestResources_R_$memory@2)) (and (= $abort_code@2 $abort_code@1) (= $abort_flag@1 $abort_flag@0))) (and (=> (= (ControlFlow 0 22773) 22865) anon15_Then_correct) (=> (= (ControlFlow 0 22773) 22851) anon15_Else_correct))))))
(let ((anon13_Else_correct  (=> (not $abort_flag@0) (=> (and (and (= $t4@1 $t4@1) (= $t6@0 (|$x#$42_TestResources_R| $t4@1))) (and (= $t6@0 $t6@0) (= $t7@0 ($42_TestResources_R $t6@0)))) (and (=> (= (ControlFlow 0 22755) 22931) anon14_Then_correct) (=> (= (ControlFlow 0 22755) 22773) anon14_Else_correct))))))
(let ((anon12_Then$1_correct  (=> (and (and (= $t4@1 $t4) (= $42_TestResources_R_$memory@1 $42_TestResources_R_$memory)) (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE))) (and (=> (= (ControlFlow 0 22999) 22947) anon13_Then_correct) (=> (= (ControlFlow 0 22999) 22755) anon13_Else_correct)))))
(let ((anon12_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) $t3)) (= (ControlFlow 0 22997) 22999)) anon12_Then$1_correct)))
(let ((anon12_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) $t3) (=> (and (= $t4@0 (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) $t3)) (= $42_TestResources_R_$memory@0 ($Memory_14209 (|Store__T@[Int]Bool_| (|domain#$Memory_14209| $42_TestResources_R_$memory) $t3 false) (|contents#$Memory_14209| $42_TestResources_R_$memory)))) (=> (and (and (= $t4@1 $t4@0) (= $42_TestResources_R_$memory@1 $42_TestResources_R_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 22723) 22947) anon13_Then_correct) (=> (= (ControlFlow 0 22723) 22755) anon13_Else_correct)))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) $a_0)))
(|$IsValid'$42_TestResources_R'| $rsc))
 :qid |resourcesz3bpl.1956:20|
 :skolemid |37|
 :pattern ( (|Select__T@[Int]$42_TestResources_R_| (|contents#$Memory_14209| $42_TestResources_R_$memory) $a_0))
)) (= _$t0 _$t0)) (and (|$IsValid'address'| $t3) (= $t3 _$t0))) (and (=> (= (ControlFlow 0 22703) 22997) anon12_Then_correct) (=> (= (ControlFlow 0 22703) 22723) anon12_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 27615) 22703) anon0$1_correct)))
anon0_correct))))))))))))))
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
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_14209 0)) ((($Memory_14209 (|domain#$Memory_14209| |T@[Int]Bool|) (|contents#$Memory_14209| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14242 0)) ((($Mutation_14242 (|l#$Mutation_14242| T@$Location) (|p#$Mutation_14242| (Seq Int)) (|v#$Mutation_14242| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12257 0)) ((($Mutation_12257 (|l#$Mutation_12257| T@$Location) (|p#$Mutation_12257| (Seq Int)) (|v#$Mutation_12257| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |resourcesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |resourcesz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |resourcesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |resourcesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |resourcesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |resourcesz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |resourcesz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesz3bpl.904:40|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesz3bpl.921:40|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesz3bpl.938:40|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesz3bpl.952:44|
 :skolemid |27|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesz3bpl.965:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |resourcesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |resourcesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |resourcesz3bpl.245:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(declare-fun $t2@0 () T@$42_TestResources_A)
(push 1)
(set-info :boogie-vc-id $42_TestResources_pack_A$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 28017) (let ((anon0$1_correct  (=> (and (|$IsValid'address'| _$t0) (|$IsValid'u64'| _$t1)) (=> (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= $t2@0 ($42_TestResources_A _$t0 _$t1)) (= $t2@0 $t2@0))) (and (=> (= (ControlFlow 0 23157) (- 0 28096)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 23157) (- 0 28103)) (= (|$addr#$42_TestResources_A| $t2@0) _$t0)) (=> (= (|$addr#$42_TestResources_A| $t2@0) _$t0) (=> (= (ControlFlow 0 23157) (- 0 28112)) (= (|$val#$42_TestResources_A| $t2@0) _$t1))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 28017) 23157) anon0$1_correct)))
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
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_14209 0)) ((($Memory_14209 (|domain#$Memory_14209| |T@[Int]Bool|) (|contents#$Memory_14209| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14242 0)) ((($Mutation_14242 (|l#$Mutation_14242| T@$Location) (|p#$Mutation_14242| (Seq Int)) (|v#$Mutation_14242| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12257 0)) ((($Mutation_12257 (|l#$Mutation_12257| T@$Location) (|p#$Mutation_12257| (Seq Int)) (|v#$Mutation_12257| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |resourcesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |resourcesz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |resourcesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |resourcesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |resourcesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |resourcesz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |resourcesz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesz3bpl.904:40|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesz3bpl.921:40|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesz3bpl.938:40|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesz3bpl.952:44|
 :skolemid |27|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesz3bpl.965:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |resourcesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |resourcesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |resourcesz3bpl.245:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(declare-fun _$t2 () Int)
(declare-fun $t5@0 () T@$42_TestResources_A)
(declare-fun $t6@0 () T@$42_TestResources_B)
(push 1)
(set-info :boogie-vc-id $42_TestResources_pack_B$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 28127) (let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (|$IsValid'u64'| _$t1) (|$IsValid'u64'| _$t2)) (=> (and (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= $t5@0 ($42_TestResources_A _$t0 _$t1)))) (and (and (= $t5@0 $t5@0) (= $t6@0 ($42_TestResources_B _$t2 $t5@0))) (and (= $t6@0 $t6@0) (= $t6@0 $t6@0)))) (and (=> (= (ControlFlow 0 23341) (- 0 28247)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 23341) (- 0 28254)) (= (|$val#$42_TestResources_B| $t6@0) _$t2)) (=> (= (|$val#$42_TestResources_B| $t6@0) _$t2) (and (=> (= (ControlFlow 0 23341) (- 0 28263)) (= (|$val#$42_TestResources_A| (|$a#$42_TestResources_B| $t6@0)) _$t1)) (=> (= (|$val#$42_TestResources_A| (|$a#$42_TestResources_B| $t6@0)) _$t1) (=> (= (ControlFlow 0 23341) (- 0 28274)) (= (|$addr#$42_TestResources_A| (|$a#$42_TestResources_B| $t6@0)) _$t0)))))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 28127) 23341) anon0$1_correct)))
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
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_14209 0)) ((($Memory_14209 (|domain#$Memory_14209| |T@[Int]Bool|) (|contents#$Memory_14209| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14242 0)) ((($Mutation_14242 (|l#$Mutation_14242| T@$Location) (|p#$Mutation_14242| (Seq Int)) (|v#$Mutation_14242| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12257 0)) ((($Mutation_12257 (|l#$Mutation_12257| T@$Location) (|p#$Mutation_12257| (Seq Int)) (|v#$Mutation_12257| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |resourcesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |resourcesz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |resourcesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |resourcesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |resourcesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |resourcesz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |resourcesz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesz3bpl.904:40|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesz3bpl.921:40|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesz3bpl.938:40|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesz3bpl.952:44|
 :skolemid |27|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesz3bpl.965:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |resourcesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |resourcesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |resourcesz3bpl.245:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(declare-fun _$t2 () Int)
(declare-fun _$t3 () Int)
(declare-fun $t7@0 () T@$42_TestResources_A)
(declare-fun $t8@0 () T@$42_TestResources_B)
(declare-fun $t9@0 () T@$42_TestResources_C)
(push 1)
(set-info :boogie-vc-id $42_TestResources_pack_C$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 28292) (let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (|$IsValid'u64'| _$t1) (|$IsValid'u64'| _$t2)) (=> (and (and (|$IsValid'u64'| _$t3) (= _$t0 _$t0)) (and (= _$t1 _$t1) (= _$t2 _$t2))) (=> (and (and (and (= _$t3 _$t3) (= $t7@0 ($42_TestResources_A _$t0 _$t1))) (and (= $t7@0 $t7@0) (= $t8@0 ($42_TestResources_B _$t2 $t7@0)))) (and (and (= $t8@0 $t8@0) (= $t9@0 ($42_TestResources_C _$t3 $t8@0))) (and (= $t9@0 $t9@0) (= $t9@0 $t9@0)))) (and (=> (= (ControlFlow 0 23577) (- 0 28445)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 23577) (- 0 28452)) (= (|$val#$42_TestResources_C| $t9@0) _$t3)) (=> (= (|$val#$42_TestResources_C| $t9@0) _$t3) (and (=> (= (ControlFlow 0 23577) (- 0 28461)) (= (|$val#$42_TestResources_B| (|$b#$42_TestResources_C| $t9@0)) _$t2)) (=> (= (|$val#$42_TestResources_B| (|$b#$42_TestResources_C| $t9@0)) _$t2) (and (=> (= (ControlFlow 0 23577) (- 0 28472)) (= (|$val#$42_TestResources_A| (|$a#$42_TestResources_B| (|$b#$42_TestResources_C| $t9@0))) _$t1)) (=> (= (|$val#$42_TestResources_A| (|$a#$42_TestResources_B| (|$b#$42_TestResources_C| $t9@0))) _$t1) (=> (= (ControlFlow 0 23577) (- 0 28485)) (= (|$addr#$42_TestResources_A| (|$a#$42_TestResources_B| (|$b#$42_TestResources_C| $t9@0))) _$t0))))))))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 28292) 23577) anon0$1_correct)))
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
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_14209 0)) ((($Memory_14209 (|domain#$Memory_14209| |T@[Int]Bool|) (|contents#$Memory_14209| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14242 0)) ((($Mutation_14242 (|l#$Mutation_14242| T@$Location) (|p#$Mutation_14242| (Seq Int)) (|v#$Mutation_14242| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12257 0)) ((($Mutation_12257 (|l#$Mutation_12257| T@$Location) (|p#$Mutation_12257| (Seq Int)) (|v#$Mutation_12257| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |resourcesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |resourcesz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |resourcesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |resourcesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |resourcesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |resourcesz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |resourcesz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesz3bpl.904:40|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesz3bpl.921:40|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesz3bpl.938:40|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesz3bpl.952:44|
 :skolemid |27|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesz3bpl.965:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |resourcesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |resourcesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |resourcesz3bpl.245:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t13@0 () Bool)
(declare-fun $t4@0 () T@$42_TestResources_A)
(declare-fun _$t1 () Bool)
(declare-fun _$t0 () Int)
(declare-fun $t11@0 () Int)
(declare-fun $t10@0 () T@$42_TestResources_A)
(declare-fun $t8@0 () T@$42_TestResources_A)
(push 1)
(set-info :boogie-vc-id $42_TestResources_ref_A$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 28507) (let ((anon9_Else_correct  (=> (and (not $t13@0) (= $t4@0 $t4@0)) (and (=> (= (ControlFlow 0 23800) (- 0 28746)) (not _$t1)) (=> (not _$t1) (=> (= (ControlFlow 0 23800) (- 0 28752)) (= (|$addr#$42_TestResources_A| $t4@0) _$t0)))))))
(let ((anon9_Then_correct  (=> (and (and $t13@0 (|$IsValid'u64'| 42)) (and (= 42 42) (= (ControlFlow 0 23826) (- 0 28726)))) _$t1)))
(let ((L3_correct  (=> (= $t4@0 $t4@0) (=> (and (= $t4@0 $t4@0) (= $t11@0 (|$val#$42_TestResources_A| $t4@0))) (=> (and (and (= $t11@0 $t11@0) (= $t11@0 $t11@0)) (and (|$IsValid'u64'| 42) (= $t13@0  (not (= $t11@0 42))))) (and (=> (= (ControlFlow 0 23768) 23826) anon9_Then_correct) (=> (= (ControlFlow 0 23768) 23800) anon9_Else_correct)))))))
(let ((anon8_Else_correct  (=> (and (not _$t1) (|$IsValid'u64'| 42)) (=> (and (and (= $t10@0 ($42_TestResources_A _$t0 42)) (= $t10@0 $t10@0)) (and (= $t4@0 $t10@0) (= (ControlFlow 0 23716) 23768))) L3_correct))))
(let ((anon8_Then_correct  (=> (and _$t1 (|$IsValid'u64'| 1)) (=> (and (and (= $t8@0 ($42_TestResources_A _$t0 1)) (= $t8@0 $t8@0)) (and (= $t4@0 $t8@0) (= (ControlFlow 0 23850) 23768))) L3_correct))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (=> (= (ControlFlow 0 23688) 23850) anon8_Then_correct) (=> (= (ControlFlow 0 23688) 23716) anon8_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 28507) 23688) anon0$1_correct)))
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
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_14209 0)) ((($Memory_14209 (|domain#$Memory_14209| |T@[Int]Bool|) (|contents#$Memory_14209| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14242 0)) ((($Mutation_14242 (|l#$Mutation_14242| T@$Location) (|p#$Mutation_14242| (Seq Int)) (|v#$Mutation_14242| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12257 0)) ((($Mutation_12257 (|l#$Mutation_12257| T@$Location) (|p#$Mutation_12257| (Seq Int)) (|v#$Mutation_12257| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |resourcesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |resourcesz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |resourcesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |resourcesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |resourcesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |resourcesz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |resourcesz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesz3bpl.904:40|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesz3bpl.921:40|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesz3bpl.938:40|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesz3bpl.952:44|
 :skolemid |27|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesz3bpl.965:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |resourcesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |resourcesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |resourcesz3bpl.245:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () Int)
(declare-fun $t1 () Int)
(declare-fun $t3@0 () T@$42_TestResources_A)
(push 1)
(set-info :boogie-vc-id $42_TestResources_spec_pack_A$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 28765) (let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (= _$t0 _$t0) (|$IsValid'address'| $t1)) (=> (and (and (= $t1 _$t0) (|$IsValid'u64'| 7)) (and (= $t3@0 ($42_TestResources_A $t1 7)) (= $t3@0 $t3@0))) (and (=> (= (ControlFlow 0 24041) (- 0 28851)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 24041) (- 0 28858)) (= (|$addr#$42_TestResources_A| $t3@0) _$t0)) (=> (= (|$addr#$42_TestResources_A| $t3@0) _$t0) (and (=> (= (ControlFlow 0 24041) (- 0 28869)) (= (|$val#$42_TestResources_A| $t3@0) 7)) (=> (= (|$val#$42_TestResources_A| $t3@0) 7) (and (=> (= (ControlFlow 0 24041) (- 0 28879)) (= $t3@0 ($42_TestResources_A _$t0 7))) (=> (= $t3@0 ($42_TestResources_A _$t0 7)) (=> (= (ControlFlow 0 24041) (- 0 28892)) (= $t3@0 ($42_TestResources_A _$t0 7))))))))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 28765) 24041) anon0$1_correct)))
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
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_14209 0)) ((($Memory_14209 (|domain#$Memory_14209| |T@[Int]Bool|) (|contents#$Memory_14209| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14242 0)) ((($Mutation_14242 (|l#$Mutation_14242| T@$Location) (|p#$Mutation_14242| (Seq Int)) (|v#$Mutation_14242| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12257 0)) ((($Mutation_12257 (|l#$Mutation_12257| T@$Location) (|p#$Mutation_12257| (Seq Int)) (|v#$Mutation_12257| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |resourcesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |resourcesz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |resourcesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |resourcesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |resourcesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |resourcesz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |resourcesz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesz3bpl.904:40|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesz3bpl.921:40|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesz3bpl.938:40|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesz3bpl.952:44|
 :skolemid |27|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesz3bpl.965:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |resourcesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |resourcesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |resourcesz3bpl.245:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () Int)
(declare-fun $t2 () Int)
(declare-fun $t4@0 () T@$42_TestResources_A)
(declare-fun $t5@0 () T@$42_TestResources_B)
(push 1)
(set-info :boogie-vc-id $42_TestResources_spec_pack_B$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 28909) (let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (and (and (= _$t0 _$t0) (|$IsValid'u64'| 77)) (and (|$IsValid'address'| $t2) (= $t2 _$t0))) (and (and (|$IsValid'u64'| 7) (= $t4@0 ($42_TestResources_A $t2 7))) (and (= $t5@0 ($42_TestResources_B 77 $t4@0)) (= $t5@0 $t5@0)))) (and (=> (= (ControlFlow 0 24285) (- 0 29015)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 24285) (- 0 29022)) (= (|$val#$42_TestResources_B| $t5@0) 77)) (=> (= (|$val#$42_TestResources_B| $t5@0) 77) (and (=> (= (ControlFlow 0 24285) (- 0 29032)) (= (|$val#$42_TestResources_A| (|$a#$42_TestResources_B| $t5@0)) 7)) (=> (= (|$val#$42_TestResources_A| (|$a#$42_TestResources_B| $t5@0)) 7) (and (=> (= (ControlFlow 0 24285) (- 0 29044)) (= (|$addr#$42_TestResources_A| (|$a#$42_TestResources_B| $t5@0)) _$t0)) (=> (= (|$addr#$42_TestResources_A| (|$a#$42_TestResources_B| $t5@0)) _$t0) (and (=> (= (ControlFlow 0 24285) (- 0 29057)) (= $t5@0 ($42_TestResources_B 77 ($42_TestResources_A _$t0 7)))) (=> (= $t5@0 ($42_TestResources_B 77 ($42_TestResources_A _$t0 7))) (and (=> (= (ControlFlow 0 24285) (- 0 29074)) (= $t5@0 ($42_TestResources_B 77 ($42_TestResources_A _$t0 7)))) (=> (= $t5@0 ($42_TestResources_B 77 ($42_TestResources_A _$t0 7))) (and (=> (= (ControlFlow 0 24285) (- 0 29091)) (= $t5@0 ($42_TestResources_B 77 ($42_TestResources_A _$t0 7)))) (=> (= $t5@0 ($42_TestResources_B 77 ($42_TestResources_A _$t0 7))) (=> (= (ControlFlow 0 24285) (- 0 29108)) (= $t5@0 ($42_TestResources_B 77 ($42_TestResources_A _$t0 7))))))))))))))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 28909) 24285) anon0$1_correct)))
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
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_14209 0)) ((($Memory_14209 (|domain#$Memory_14209| |T@[Int]Bool|) (|contents#$Memory_14209| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14242 0)) ((($Mutation_14242 (|l#$Mutation_14242| T@$Location) (|p#$Mutation_14242| (Seq Int)) (|v#$Mutation_14242| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12257 0)) ((($Mutation_12257 (|l#$Mutation_12257| T@$Location) (|p#$Mutation_12257| (Seq Int)) (|v#$Mutation_12257| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |resourcesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |resourcesz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |resourcesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |resourcesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |resourcesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |resourcesz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |resourcesz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesz3bpl.904:40|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesz3bpl.921:40|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesz3bpl.938:40|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesz3bpl.952:44|
 :skolemid |27|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesz3bpl.965:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |resourcesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |resourcesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |resourcesz3bpl.245:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t1@0 () T@$42_TestResources_R)
(push 1)
(set-info :boogie-vc-id $42_TestResources_spec_pack_R$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 29128) (let ((anon0$1_correct  (=> (|$IsValid'u64'| 7) (=> (and (= $t1@0 ($42_TestResources_R 7)) (= $t1@0 $t1@0)) (and (=> (= (ControlFlow 0 24405) (- 0 29182)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 24405) (- 0 29189)) (= (|$x#$42_TestResources_R| $t1@0) 7)) (=> (= (|$x#$42_TestResources_R| $t1@0) 7) (=> (= (ControlFlow 0 24405) (- 0 29199)) (= $t1@0 ($42_TestResources_R 7)))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 29128) 24405) anon0$1_correct)))
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
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_14209 0)) ((($Memory_14209 (|domain#$Memory_14209| |T@[Int]Bool|) (|contents#$Memory_14209| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14242 0)) ((($Mutation_14242 (|l#$Mutation_14242| T@$Location) (|p#$Mutation_14242| (Seq Int)) (|v#$Mutation_14242| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12257 0)) ((($Mutation_12257 (|l#$Mutation_12257| T@$Location) (|p#$Mutation_12257| (Seq Int)) (|v#$Mutation_12257| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |resourcesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |resourcesz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |resourcesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |resourcesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |resourcesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |resourcesz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |resourcesz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesz3bpl.904:40|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesz3bpl.921:40|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesz3bpl.938:40|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesz3bpl.952:44|
 :skolemid |27|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesz3bpl.965:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |resourcesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |resourcesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |resourcesz3bpl.245:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(declare-fun $t5@0 () T@$42_TestResources_A)
(declare-fun $t6@0 () Int)
(declare-fun $t7@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestResources_unpack_A$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 29215) (let ((anon0$1_correct  (=> (and (and (|$IsValid'address'| _$t0) (|$IsValid'u64'| _$t1)) (and (= _$t0 _$t0) (= _$t1 _$t1))) (=> (and (and (and (= $t5@0 ($42_TestResources_A _$t0 _$t1)) (= $t5@0 $t5@0)) (and (= $t6@0 (|$addr#$42_TestResources_A| $t5@0)) (= $t7@0 (|$val#$42_TestResources_A| $t5@0)))) (and (and (= $t7@0 $t7@0) (= $t6@0 $t6@0)) (and (= $t6@0 $t6@0) (= $t7@0 $t7@0)))) (and (=> (= (ControlFlow 0 24575) (- 0 29344)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 24575) (- 0 29351)) (= $t6@0 _$t0)) (=> (= $t6@0 _$t0) (=> (= (ControlFlow 0 24575) (- 0 29358)) (= $t7@0 _$t1))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 29215) 24575) anon0$1_correct)))
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
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_14209 0)) ((($Memory_14209 (|domain#$Memory_14209| |T@[Int]Bool|) (|contents#$Memory_14209| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14242 0)) ((($Mutation_14242 (|l#$Mutation_14242| T@$Location) (|p#$Mutation_14242| (Seq Int)) (|v#$Mutation_14242| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12257 0)) ((($Mutation_12257 (|l#$Mutation_12257| T@$Location) (|p#$Mutation_12257| (Seq Int)) (|v#$Mutation_12257| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |resourcesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |resourcesz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |resourcesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |resourcesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |resourcesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |resourcesz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |resourcesz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesz3bpl.904:40|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesz3bpl.921:40|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesz3bpl.938:40|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesz3bpl.952:44|
 :skolemid |27|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesz3bpl.965:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |resourcesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |resourcesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |resourcesz3bpl.245:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(declare-fun _$t2 () Int)
(declare-fun $t8@0 () T@$42_TestResources_A)
(declare-fun $t9@0 () T@$42_TestResources_B)
(declare-fun $t10@0 () Int)
(declare-fun $t11@0 () T@$42_TestResources_A)
(declare-fun $t12@0 () Int)
(declare-fun $t13@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestResources_unpack_B$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 29375) (let ((anon0$1_correct  (=> (and (and (|$IsValid'address'| _$t0) (|$IsValid'u64'| _$t1)) (and (|$IsValid'u64'| _$t2) (= _$t0 _$t0))) (=> (and (and (and (and (= _$t1 _$t1) (= _$t2 _$t2)) (and (= $t8@0 ($42_TestResources_A _$t0 _$t1)) (= $t8@0 $t8@0))) (and (and (= $t9@0 ($42_TestResources_B _$t2 $t8@0)) (= $t9@0 $t9@0)) (and (= $t10@0 (|$val#$42_TestResources_B| $t9@0)) (= $t11@0 (|$a#$42_TestResources_B| $t9@0))))) (and (and (and (= $t12@0 (|$addr#$42_TestResources_A| $t11@0)) (= $t13@0 (|$val#$42_TestResources_A| $t11@0))) (and (= $t13@0 $t13@0) (= $t12@0 $t12@0))) (and (and (= $t10@0 $t10@0) (= $t12@0 $t12@0)) (and (= $t13@0 $t13@0) (= $t10@0 $t10@0))))) (and (=> (= (ControlFlow 0 24798) (- 0 29571)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 24798) (- 0 29578)) (= $t12@0 _$t0)) (=> (= $t12@0 _$t0) (and (=> (= (ControlFlow 0 24798) (- 0 29585)) (= $t13@0 _$t1)) (=> (= $t13@0 _$t1) (=> (= (ControlFlow 0 24798) (- 0 29592)) (= $t10@0 _$t2))))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 29375) 24798) anon0$1_correct)))
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
(declare-datatypes ((T@$42_TestResources_R 0)) ((($42_TestResources_R (|$x#$42_TestResources_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestResources_R| 0)
(declare-datatypes ((T@$Memory_14209 0)) ((($Memory_14209 (|domain#$Memory_14209| |T@[Int]Bool|) (|contents#$Memory_14209| |T@[Int]$42_TestResources_R|) ) ) ))
(declare-datatypes ((T@$42_TestResources_Empty 0)) ((($42_TestResources_Empty (|$dummy_field#$42_TestResources_Empty| Bool) ) ) ))
(declare-datatypes ((T@$42_TestResources_A 0)) ((($42_TestResources_A (|$addr#$42_TestResources_A| Int) (|$val#$42_TestResources_A| Int) ) ) ))
(declare-datatypes ((T@$42_TestResources_B 0)) ((($42_TestResources_B (|$val#$42_TestResources_B| Int) (|$a#$42_TestResources_B| T@$42_TestResources_A) ) ) ))
(declare-datatypes ((T@$42_TestResources_C 0)) ((($42_TestResources_C (|$val#$42_TestResources_C| Int) (|$b#$42_TestResources_C| T@$42_TestResources_B) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_14242 0)) ((($Mutation_14242 (|l#$Mutation_14242| T@$Location) (|p#$Mutation_14242| (Seq Int)) (|v#$Mutation_14242| T@$42_TestResources_R) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12257 0)) ((($Mutation_12257 (|l#$Mutation_12257| T@$Location) (|p#$Mutation_12257| (Seq Int)) (|v#$Mutation_12257| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestResources_A'| (T@$42_TestResources_A) Bool)
(declare-fun |$IsValid'$42_TestResources_B'| (T@$42_TestResources_B) Bool)
(declare-fun |$IsValid'$42_TestResources_C'| (T@$42_TestResources_C) Bool)
(declare-fun |$IsValid'$42_TestResources_Empty'| (T@$42_TestResources_Empty) Bool)
(declare-fun |$IsValid'$42_TestResources_R'| (T@$42_TestResources_R) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |resourcesz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |resourcesz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |resourcesz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |resourcesz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |resourcesz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |resourcesz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |resourcesz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |resourcesz3bpl.590:13|
 :skolemid |15|
))))
 :qid |resourcesz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |resourcesz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |resourcesz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |resourcesz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |resourcesz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |resourcesz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |resourcesz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |resourcesz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestResources_A) ) (! (= (|$IsValid'$42_TestResources_A'| s)  (and (|$IsValid'address'| (|$addr#$42_TestResources_A| s)) (|$IsValid'u64'| (|$val#$42_TestResources_A| s))))
 :qid |resourcesz3bpl.904:40|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestResources_A'| s))
)))
(assert (forall ((s@@0 T@$42_TestResources_B) ) (! (= (|$IsValid'$42_TestResources_B'| s@@0)  (and (|$IsValid'u64'| (|$val#$42_TestResources_B| s@@0)) (|$IsValid'$42_TestResources_A'| (|$a#$42_TestResources_B| s@@0))))
 :qid |resourcesz3bpl.921:40|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestResources_B'| s@@0))
)))
(assert (forall ((s@@1 T@$42_TestResources_C) ) (! (= (|$IsValid'$42_TestResources_C'| s@@1)  (and (|$IsValid'u64'| (|$val#$42_TestResources_C| s@@1)) (|$IsValid'$42_TestResources_B'| (|$b#$42_TestResources_C| s@@1))))
 :qid |resourcesz3bpl.938:40|
 :skolemid |26|
 :pattern ( (|$IsValid'$42_TestResources_C'| s@@1))
)))
(assert (forall ((s@@2 T@$42_TestResources_Empty) ) (! (= (|$IsValid'$42_TestResources_Empty'| s@@2) true)
 :qid |resourcesz3bpl.952:44|
 :skolemid |27|
 :pattern ( (|$IsValid'$42_TestResources_Empty'| s@@2))
)))
(assert (forall ((s@@3 T@$42_TestResources_R) ) (! (= (|$IsValid'$42_TestResources_R'| s@@3) (|$IsValid'u64'| (|$x#$42_TestResources_R| s@@3)))
 :qid |resourcesz3bpl.965:40|
 :skolemid |28|
 :pattern ( (|$IsValid'$42_TestResources_R'| s@@3))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |resourcesz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |resourcesz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |resourcesz3bpl.245:54|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () Int)
(declare-fun _$t1 () Int)
(declare-fun _$t2 () Int)
(declare-fun _$t3 () Int)
(declare-fun $t11@0 () T@$42_TestResources_A)
(declare-fun $t12@0 () T@$42_TestResources_B)
(declare-fun $t13@0 () T@$42_TestResources_C)
(declare-fun $t14@0 () Int)
(declare-fun $t15@0 () T@$42_TestResources_B)
(declare-fun $t16@0 () Int)
(declare-fun $t17@0 () T@$42_TestResources_A)
(declare-fun $t18@0 () Int)
(declare-fun $t19@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestResources_unpack_C$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 29613) (let ((anon0$1_correct  (=> (and (and (|$IsValid'address'| _$t0) (|$IsValid'u64'| _$t1)) (and (|$IsValid'u64'| _$t2) (|$IsValid'u64'| _$t3))) (=> (and (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (= _$t2 _$t2) (= _$t3 _$t3))) (and (and (= $t11@0 ($42_TestResources_A _$t0 _$t1)) (= $t11@0 $t11@0)) (and (= $t12@0 ($42_TestResources_B _$t2 $t11@0)) (= $t12@0 $t12@0)))) (=> (and (and (and (and (= $t13@0 ($42_TestResources_C _$t3 $t12@0)) (= $t13@0 $t13@0)) (and (= $t14@0 (|$val#$42_TestResources_C| $t13@0)) (= $t15@0 (|$b#$42_TestResources_C| $t13@0)))) (and (and (= $t16@0 (|$val#$42_TestResources_B| $t15@0)) (= $t17@0 (|$a#$42_TestResources_B| $t15@0))) (and (= $t18@0 (|$addr#$42_TestResources_A| $t17@0)) (= $t19@0 (|$val#$42_TestResources_A| $t17@0))))) (and (and (and (= $t19@0 $t19@0) (= $t18@0 $t18@0)) (and (= $t16@0 $t16@0) (= $t14@0 $t14@0))) (and (and (= $t18@0 $t18@0) (= $t19@0 $t19@0)) (and (= $t16@0 $t16@0) (= $t14@0 $t14@0))))) (and (=> (= (ControlFlow 0 25087) (- 0 29876)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 25087) (- 0 29883)) (= $t18@0 _$t0)) (=> (= $t18@0 _$t0) (and (=> (= (ControlFlow 0 25087) (- 0 29890)) (= $t19@0 _$t1)) (=> (= $t19@0 _$t1) (and (=> (= (ControlFlow 0 25087) (- 0 29897)) (= $t16@0 _$t2)) (=> (= $t16@0 _$t2) (=> (= (ControlFlow 0 25087) (- 0 29904)) (= $t14@0 _$t3)))))))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 29613) 25087) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(pop 1)
; Valid
