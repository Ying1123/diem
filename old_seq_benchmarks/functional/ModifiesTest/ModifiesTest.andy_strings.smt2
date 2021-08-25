(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-logic ALL)
; done setting options


(declare-datatypes ((T@$0_B_T 0)) ((($0_B_T (|$x#$0_B_T| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_B_T| 0)
(declare-datatypes ((T@$Memory_11574 0)) ((($Memory_11574 (|domain#$Memory_11574| |T@[Int]Bool|) (|contents#$Memory_11574| |T@[Int]$0_B_T|) ) ) ))
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_10478 0)) ((($Memory_10478 (|domain#$Memory_10478| |T@[Int]Bool|) (|contents#$Memory_10478| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_12925 0)) ((($Mutation_12925 (|l#$Mutation_12925| T@$Location) (|p#$Mutation_12925| (Seq Int)) (|v#$Mutation_12925| T@$0_B_T) ) ) ))
(declare-datatypes ((T@$Mutation_10511 0)) ((($Mutation_10511 (|l#$Mutation_10511| T@$Location) (|p#$Mutation_10511| (Seq Int)) (|v#$Mutation_10511| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8705 0)) ((($Mutation_8705 (|l#$Mutation_8705| T@$Location) (|p#$Mutation_8705| (Seq Int)) (|v#$Mutation_8705| (Seq Int)) ) ) ))
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
(declare-fun $1_Signer_is_signer (Int) Bool)
(declare-fun |$IsValid'$0_A_S'| (T@$0_A_S) Bool)
(declare-fun |$IsValid'$0_B_T'| (T@$0_B_T) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |ModifiesTestandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ModifiesTestandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ModifiesTestandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ModifiesTestandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ModifiesTestandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ModifiesTestandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ModifiesTestandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ModifiesTestandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |ModifiesTestandybpl.590:13|
 :skolemid |15|
))))
 :qid |ModifiesTestandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |ModifiesTestandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |ModifiesTestandybpl.603:17|
 :skolemid |18|
)))))
 :qid |ModifiesTestandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |ModifiesTestandybpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |ModifiesTestandybpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ModifiesTestandybpl.859:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ModifiesTestandybpl.862:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$signer) ) (!  (=> (|$IsValid'address'| (|$addr#$signer| s)) ($1_Signer_is_signer (|$addr#$signer| s)))
 :qid |ModifiesTestandybpl.901:15|
 :skolemid |24|
)))
(assert (forall ((addr Int) ) (! true
 :qid |ModifiesTestandybpl.905:15|
 :skolemid |25|
)))
(assert (forall ((s@@0 T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s@@0) (|$IsValid'u64'| (|$x#$0_A_S| s@@0)))
 :qid |ModifiesTestandybpl.915:27|
 :skolemid |26|
 :pattern ( (|$IsValid'$0_A_S'| s@@0))
)))
(assert (forall ((s@@1 T@$0_B_T) ) (! (= (|$IsValid'$0_B_T'| s@@1) (|$IsValid'u64'| (|$x#$0_B_T| s@@1)))
 :qid |ModifiesTestandybpl.1136:27|
 :skolemid |29|
 :pattern ( (|$IsValid'$0_B_T'| s@@1))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |ModifiesTestandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |ModifiesTestandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |ModifiesTestandybpl.245:54|
 :skolemid |35|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'$0_A_S'@0| () T@$0_A_S)
(declare-fun $t2@1 () T@$Mutation_10511)
(declare-fun $t5@0 () T@$Mutation_3430)
(declare-fun $t5@1 () T@$Mutation_3430)
(declare-fun $t2@2 () T@$Mutation_10511)
(declare-fun $0_A_S_$memory@0 () T@$Memory_10478)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $0_A_S_$memory () T@$Memory_10478)
(declare-fun |Store__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int T@$0_A_S) |T@[Int]$0_A_S|)
(declare-fun |Select__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int) T@$0_A_S)
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?x2 T@$0_A_S)) (! (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$0_A_S)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$0_A_S_| ?x0 ?y1))) :weight 0)))
(declare-fun _$t0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $t2 () T@$Mutation_10511)
(declare-fun $t2@0 () T@$Mutation_10511)
(declare-fun $abort_code@0 () Int)
(declare-fun $0_A_S_$modifies () |T@[Int]Bool|)
(declare-fun $t1 () T@$Mutation_10511)
(declare-fun $t5 () T@$Mutation_3430)
(push 1)
(set-info :boogie-vc-id $0_A_mutate_at$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 15743) (let ((anon8_Else_correct  (=> (and (and (and (not $abort_flag@0) (= |$temp_0'$0_A_S'@0| (|v#$Mutation_10511| $t2@1))) (and (= |$temp_0'$0_A_S'@0| |$temp_0'$0_A_S'@0|) (|$IsValid'u64'| 2))) (and (and (= $t5@0 ($Mutation_3430 (|l#$Mutation_10511| $t2@1) (seq.++ (|p#$Mutation_10511| $t2@1) (seq.unit 0)) (|$x#$0_A_S| (|v#$Mutation_10511| $t2@1)))) (= $t5@1 ($Mutation_3430 (|l#$Mutation_3430| $t5@0) (|p#$Mutation_3430| $t5@0) 2))) (and (= $t2@2 ($Mutation_10511 (|l#$Mutation_10511| $t2@1) (|p#$Mutation_10511| $t2@1) ($0_A_S (|v#$Mutation_3430| $t5@1)))) (= $0_A_S_$memory@0 ($Memory_10478 (|Store__T@[Int]Bool_| (|domain#$Memory_10478| $0_A_S_$memory) (|a#$Global| (|l#$Mutation_10511| $t2@2)) true) (|Store__T@[Int]$0_A_S_| (|contents#$Memory_10478| $0_A_S_$memory) (|a#$Global| (|l#$Mutation_10511| $t2@2)) (|v#$Mutation_10511| $t2@2))))))) (and (=> (= (ControlFlow 0 13925) (- 0 16054)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_10478| $0_A_S_$memory) _$t0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_10478| $0_A_S_$memory) _$t0))) (=> (= (ControlFlow 0 13925) (- 0 16065)) (= (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10478| $0_A_S_$memory@0) _$t0)) 2)))))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 13953) (- 0 15952))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_10478| $0_A_S_$memory) _$t0))))))
(let ((anon7_Then$1_correct  (=> (= $t2@1 $t2) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 14005) 13953) anon8_Then_correct) (=> (= (ControlFlow 0 14005) 13925) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_10478| $0_A_S_$memory) _$t0)) (= (ControlFlow 0 14003) 14005)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10478| $0_A_S_$memory) _$t0) (=> (and (and (= $t2@0 ($Mutation_10511 ($Global _$t0) (as seq.empty (Seq Int)) (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10478| $0_A_S_$memory) _$t0))) (= $t2@1 $t2@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 13827) 13953) anon8_Then_correct) (=> (= (ControlFlow 0 13827) 13925) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10478| $0_A_S_$memory) $a_0)))
(|$IsValid'$0_A_S'| $rsc))
 :qid |ModifiesTestandybpl.951:20|
 :skolemid |27|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10478| $0_A_S_$memory) $a_0))
))) (and (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0) (= _$t0 _$t0))) (and (=> (= (ControlFlow 0 13805) (- 0 15865)) (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0) (and (=> (= (ControlFlow 0 13805) 14003) anon7_Then_correct) (=> (= (ControlFlow 0 13805) 13827) anon7_Else_correct)))))))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_10511| $t1)) 0) (= (seq.len (|p#$Mutation_10511| $t2)) 0)) (and (= (seq.len (|p#$Mutation_3430| $t5)) 0) (= (ControlFlow 0 13749) 13805))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 15743) 13749) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@0 () Bool)
(declare-fun $t2@1@@0 () T@$0_A_S)
(declare-fun $t4@0 () Int)
(declare-fun _$t0@@0 () Int)
(declare-fun $abort_code@1@@0 () Int)
(declare-fun $t2@@0 () T@$0_A_S)
(declare-fun $t2@0@@0 () T@$0_A_S)
(declare-fun $abort_code@0@@0 () Int)
(push 1)
(set-info :boogie-vc-id $0_A_read_at$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 16103) (let ((anon8_Else_correct@@0  (=> (and (and (not $abort_flag@0@@0) (= $t2@1@@0 $t2@1@@0)) (and (= $t4@0 (|$x#$0_A_S| $t2@1@@0)) (= $t4@0 $t4@0))) (and (=> (= (ControlFlow 0 14213) (- 0 16308)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_10478| $0_A_S_$memory) _$t0@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_10478| $0_A_S_$memory) _$t0@@0))) (=> (= (ControlFlow 0 14213) (- 0 16319)) (= $t4@0 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10478| $0_A_S_$memory) _$t0@@0)))))))))
(let ((anon8_Then_correct@@0  (=> $abort_flag@0@@0 (=> (and (= $abort_code@1@@0 $abort_code@1@@0) (= (ControlFlow 0 14241) (- 0 16266))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_10478| $0_A_S_$memory) _$t0@@0))))))
(let ((anon7_Then$1_correct@@0  (=> (= $t2@1@@0 $t2@@0) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 14293) 14241) anon8_Then_correct@@0) (=> (= (ControlFlow 0 14293) 14213) anon8_Else_correct@@0))))))
(let ((anon7_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_10478| $0_A_S_$memory) _$t0@@0)) (= (ControlFlow 0 14291) 14293)) anon7_Then$1_correct@@0)))
(let ((anon7_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10478| $0_A_S_$memory) _$t0@@0) (=> (and (and (= $t2@0@@0 (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10478| $0_A_S_$memory) _$t0@@0)) (= $t2@1@@0 $t2@0@@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 14157) 14241) anon8_Then_correct@@0) (=> (= (ControlFlow 0 14157) 14213) anon8_Else_correct@@0))))))
(let ((anon0$1_correct@@0  (=> (|$IsValid'address'| _$t0@@0) (=> (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10478| $0_A_S_$memory) $a_0@@0)))
(|$IsValid'$0_A_S'| $rsc@@0))
 :qid |ModifiesTestandybpl.1062:20|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10478| $0_A_S_$memory) $a_0@@0))
)) (= _$t0@@0 _$t0@@0)) (and (=> (= (ControlFlow 0 14143) 14291) anon7_Then_correct@@0) (=> (= (ControlFlow 0 14143) 14157) anon7_Else_correct@@0))))))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 16103) 14143) anon0$1_correct@@0)))
anon0_correct@@0))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $t1@1 () T@$0_B_T)
(declare-fun $t1@@0 () T@$0_B_T)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $0_B_T_$memory () T@$Memory_11574)
(declare-fun _$t0@@1 () Int)
(declare-fun $t1@0 () T@$0_B_T)
(declare-fun |Select__T@[Int]$0_B_T_| (|T@[Int]$0_B_T| Int) T@$0_B_T)
(declare-fun $0_B_T_$memory@0 () T@$Memory_11574)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun $0_B_T_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $0_B_move_from_test$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 16340) (let ((anon8_Else_correct@@1  (=> (not $abort_flag@0@@1) (=> (and (= $t1@1 $t1@1) (= (ControlFlow 0 14482) (- 0 16552))) (= (|$x#$0_B_T| $t1@1) 2)))))
(let ((anon8_Then_correct@@1 true))
(let ((anon7_Then$1_correct@@1  (=> (= $t1@1 $t1@@0) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 14552) 14500) anon8_Then_correct@@1) (=> (= (ControlFlow 0 14552) 14482) anon8_Else_correct@@1))))))
(let ((anon7_Then_correct@@1  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_11574| $0_B_T_$memory) _$t0@@1)) (= (ControlFlow 0 14550) 14552)) anon7_Then$1_correct@@1)))
(let ((anon7_Else_correct@@1  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_11574| $0_B_T_$memory) _$t0@@1) (= $t1@0 (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11574| $0_B_T_$memory) _$t0@@1))) (=> (and (and (= $0_B_T_$memory@0 ($Memory_11574 (|Store__T@[Int]Bool_| (|domain#$Memory_11574| $0_B_T_$memory) _$t0@@1 false) (|contents#$Memory_11574| $0_B_T_$memory))) (= $t1@1 $t1@0)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 14454) 14500) anon8_Then_correct@@1) (=> (= (ControlFlow 0 14454) 14482) anon8_Else_correct@@1))))))
(let ((anon0$1_correct@@1  (=> (|$IsValid'address'| _$t0@@1) (=> (and (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11574| $0_B_T_$memory) $a_0@@1)))
(|$IsValid'$0_B_T'| $rsc@@1))
 :qid |ModifiesTestandybpl.1165:20|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11574| $0_B_T_$memory) $a_0@@1))
)) (= (|$x#$0_B_T| (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11574| $0_B_T_$memory) _$t0@@1)) 2)) (and (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t0@@1) (= _$t0@@1 _$t0@@1))) (and (=> (= (ControlFlow 0 14434) (- 0 16445)) (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t0@@1)) (=> (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t0@@1) (and (=> (= (ControlFlow 0 14434) 14550) anon7_Then_correct@@1) (=> (= (ControlFlow 0 14434) 14454) anon7_Else_correct@@1))))))))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 16340) 14434) anon0$1_correct@@1)))
anon0_correct@@1))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $0_B_T_$memory@1 () T@$Memory_11574)
(declare-fun _$t0@@2 () T@$signer)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun $0_B_T_$memory@0@@0 () T@$Memory_11574)
(declare-fun |Store__T@[Int]$0_B_T_| (|T@[Int]$0_B_T| Int T@$0_B_T) |T@[Int]$0_B_T|)
(assert (forall ( ( ?x0 |T@[Int]$0_B_T|) ( ?x1 Int) ( ?x2 T@$0_B_T)) (! (= (|Select__T@[Int]$0_B_T_| (|Store__T@[Int]$0_B_T_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$0_B_T|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$0_B_T)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$0_B_T_| (|Store__T@[Int]$0_B_T_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$0_B_T_| ?x0 ?y1))) :weight 0)))
(declare-fun $t2@0@@1 () T@$0_B_T)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun $0_B_T_$modifies@@0 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $0_B_move_to_test$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 16569) (let ((anon8_Else_correct@@2  (=> (and (not $abort_flag@0@@2) (= (ControlFlow 0 14744) (- 0 16777))) (= (|$x#$0_B_T| (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11574| $0_B_T_$memory@1) (|$addr#$signer| _$t0@@2))) 2))))
(let ((anon8_Then_correct@@2 true))
(let ((anon7_Then$1_correct@@2  (=> (= $0_B_T_$memory@1 $0_B_T_$memory) (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 14814) 14762) anon8_Then_correct@@2) (=> (= (ControlFlow 0 14814) 14744) anon8_Else_correct@@2))))))
(let ((anon7_Then_correct@@2  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_11574| $0_B_T_$memory) (|$addr#$signer| _$t0@@2)) (= (ControlFlow 0 14812) 14814)) anon7_Then$1_correct@@2)))
(let ((anon7_Else_correct@@2  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_11574| $0_B_T_$memory) (|$addr#$signer| _$t0@@2))) (=> (and (and (= $0_B_T_$memory@0@@0 ($Memory_11574 (|Store__T@[Int]Bool_| (|domain#$Memory_11574| $0_B_T_$memory) (|$addr#$signer| _$t0@@2) true) (|Store__T@[Int]$0_B_T_| (|contents#$Memory_11574| $0_B_T_$memory) (|$addr#$signer| _$t0@@2) $t2@0@@1))) (= $0_B_T_$memory@1 $0_B_T_$memory@0@@0)) (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2))) (and (=> (= (ControlFlow 0 14718) 14762) anon8_Then_correct@@2) (=> (= (ControlFlow 0 14718) 14744) anon8_Else_correct@@2))))))
(let ((anon0$1_correct@@2  (=> (and (|$IsValid'address'| (|$addr#$signer| _$t0@@2)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11574| $0_B_T_$memory) $a_0@@2)))
(|$IsValid'$0_B_T'| $rsc@@2))
 :qid |ModifiesTestandybpl.1247:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11574| $0_B_T_$memory) $a_0@@2))
))) (=> (and (and (|Select__T@[Int]Bool_| $0_B_T_$modifies@@0 (|$addr#$signer| _$t0@@2)) (= _$t0@@2 _$t0@@2)) (and (|$IsValid'u64'| 2) (= $t2@0@@1 ($0_B_T 2)))) (and (=> (= (ControlFlow 0 14696) (- 0 16677)) (|Select__T@[Int]Bool_| $0_B_T_$modifies@@0 (|$addr#$signer| _$t0@@2))) (=> (|Select__T@[Int]Bool_| $0_B_T_$modifies@@0 (|$addr#$signer| _$t0@@2)) (and (=> (= (ControlFlow 0 14696) 14812) anon7_Then_correct@@2) (=> (= (ControlFlow 0 14696) 14718) anon7_Else_correct@@2))))))))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 16569) 14696) anon0$1_correct@@2)))
anon0_correct@@2))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $0_B_T_$memory@2 () T@$Memory_11574)
(declare-fun _$t1 () Int)
(declare-fun $0_A_S_$memory@2 () T@$Memory_10478)
(declare-fun _$t0@@3 () Int)
(declare-fun |$temp_0'bool'@1| () Bool)
(declare-fun $0_B_T_$memory@1@@0 () T@$Memory_11574)
(declare-fun $0_B_T_$memory@0@@1 () T@$Memory_11574)
(declare-fun |$temp_0'$0_B_T'@0| () T@$0_B_T)
(declare-fun $t10@0 () Bool)
(declare-fun $t9 () Bool)
(declare-fun $t8 () Int)
(declare-fun $t4 () Int)
(declare-fun $0_B_T_$modifies@@1 () |T@[Int]Bool|)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $0_A_S_$memory@1 () T@$Memory_10478)
(declare-fun $0_A_S_$memory@0@@0 () T@$Memory_10478)
(declare-fun |$temp_0'$0_A_S'@0@@0| () T@$0_A_S)
(declare-fun $t7 () Bool)
(declare-fun $t5@@0 () Bool)
(declare-fun $0_A_S_$modifies@@0 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $0_B_mutate_S_test$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 16798) (let ((anon14_correct  (=> (= (|$x#$0_B_T| (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11574| $0_B_T_$memory@2) _$t1)) 2) (and (=> (= (ControlFlow 0 15229) (- 0 17216)) (= (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10478| $0_A_S_$memory@2) _$t1) (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10478| $0_A_S_$memory) _$t1))) (=> (= (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10478| $0_A_S_$memory@2) _$t1) (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10478| $0_A_S_$memory) _$t1)) (and (=> (= (ControlFlow 0 15229) (- 0 17229)) (= (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10478| $0_A_S_$memory@2) _$t0@@3)) 2)) (=> (= (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10478| $0_A_S_$memory@2) _$t0@@3)) 2) (=> (= (ControlFlow 0 15229) (- 0 17242)) (= (|$x#$0_B_T| (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11574| $0_B_T_$memory@2) _$t1)) 2)))))))))
(let ((anon21_Else_correct  (=> (and (and (not |$temp_0'bool'@1|) (= $0_B_T_$memory@1@@0 ($Memory_11574 (|Store__T@[Int]Bool_| (|domain#$Memory_11574| $0_B_T_$memory) _$t1 false) (|contents#$Memory_11574| $0_B_T_$memory)))) (and (= $0_B_T_$memory@2 $0_B_T_$memory@1@@0) (= (ControlFlow 0 15169) 15229))) anon14_correct)))
(let ((anon21_Then_correct  (=> (and (and |$temp_0'bool'@1| (= $0_B_T_$memory@0@@1 ($Memory_11574 (|Store__T@[Int]Bool_| (|domain#$Memory_11574| $0_B_T_$memory) _$t1 true) (|Store__T@[Int]$0_B_T_| (|contents#$Memory_11574| $0_B_T_$memory) _$t1 |$temp_0'$0_B_T'@0|)))) (and (= $0_B_T_$memory@2 $0_B_T_$memory@0@@1) (= (ControlFlow 0 15241) 15229))) anon14_correct)))
(let ((anon20_Else_correct  (=> (not $t10@0) (and (=> (= (ControlFlow 0 15157) 15241) anon21_Then_correct) (=> (= (ControlFlow 0 15157) 15169) anon21_Else_correct)))))
(let ((anon20_Then_correct true))
(let ((anon19_Else_correct  (=> (and (and (not $t9) (|$IsValid'u64'| $t8)) (and (= $t8 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10478| $0_A_S_$memory@2) _$t1))) (= $t8 $t8))) (and (=> (= (ControlFlow 0 15151) (- 0 17124)) (= $t4 $t8)) (=> (= $t4 $t8) (and (=> (= (ControlFlow 0 15151) (- 0 17133)) (|Select__T@[Int]Bool_| $0_B_T_$modifies@@1 _$t1)) (=> (|Select__T@[Int]Bool_| $0_B_T_$modifies@@1 _$t1) (and (=> (= (ControlFlow 0 15151) 15253) anon20_Then_correct) (=> (= (ControlFlow 0 15151) 15157) anon20_Else_correct)))))))))
(let ((anon19_Then_correct true))
(let ((anon7_correct  (=> (and (= (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10478| $0_A_S_$memory@2) _$t0@@3)) 2) (= $t9  (not (|Select__T@[Int]Bool_| (|domain#$Memory_10478| $0_A_S_$memory@2) _$t1)))) (and (=> (= (ControlFlow 0 15103) 15271) anon19_Then_correct) (=> (= (ControlFlow 0 15103) 15151) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (and (and (not |$temp_0'bool'@0|) (= $0_A_S_$memory@1 ($Memory_10478 (|Store__T@[Int]Bool_| (|domain#$Memory_10478| $0_A_S_$memory) _$t0@@3 false) (|contents#$Memory_10478| $0_A_S_$memory)))) (and (= $0_A_S_$memory@2 $0_A_S_$memory@1) (= (ControlFlow 0 15075) 15103))) anon7_correct)))
(let ((anon18_Then_correct  (=> (and (and |$temp_0'bool'@0| (= $0_A_S_$memory@0@@0 ($Memory_10478 (|Store__T@[Int]Bool_| (|domain#$Memory_10478| $0_A_S_$memory) _$t0@@3 true) (|Store__T@[Int]$0_A_S_| (|contents#$Memory_10478| $0_A_S_$memory) _$t0@@3 |$temp_0'$0_A_S'@0@@0|)))) (and (= $0_A_S_$memory@2 $0_A_S_$memory@0@@0) (= (ControlFlow 0 15283) 15103))) anon7_correct)))
(let ((anon17_Else_correct  (=> (not $t7) (and (=> (= (ControlFlow 0 15063) 15283) anon18_Then_correct) (=> (= (ControlFlow 0 15063) 15075) anon18_Else_correct)))))
(let ((anon17_Then_correct true))
(let ((anon16_Else_correct  (=> (and (and (not $t5@@0) (|$IsValid'u64'| $t4)) (and (= $t4 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10478| $0_A_S_$memory) _$t1))) (= $t4 $t4))) (and (=> (= (ControlFlow 0 15057) (- 0 16987)) (|Select__T@[Int]Bool_| $0_A_S_$modifies@@0 _$t0@@3)) (=> (|Select__T@[Int]Bool_| $0_A_S_$modifies@@0 _$t0@@3) (=> (= $t7  (not (|Select__T@[Int]Bool_| (|domain#$Memory_10478| $0_A_S_$memory) _$t0@@3))) (and (=> (= (ControlFlow 0 15057) 15295) anon17_Then_correct) (=> (= (ControlFlow 0 15057) 15063) anon17_Else_correct))))))))
(let ((anon16_Then_correct true))
(let ((anon0$1_correct@@3  (=> (and (|$IsValid'address'| _$t0@@3) (|$IsValid'address'| _$t1)) (=> (and (and (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10478| $0_A_S_$memory) $a_0@@3)))
(|$IsValid'$0_A_S'| $rsc@@3))
 :qid |ModifiesTestandybpl.1344:20|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10478| $0_A_S_$memory) $a_0@@3))
)) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11574| $0_B_T_$memory) $a_0@@4)))
(|$IsValid'$0_B_T'| $rsc@@4))
 :qid |ModifiesTestandybpl.1348:20|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11574| $0_B_T_$memory) $a_0@@4))
))) (and (not (= _$t0@@3 _$t1)) (|Select__T@[Int]Bool_| $0_A_S_$modifies@@0 _$t0@@3))) (and (and (|Select__T@[Int]Bool_| $0_B_T_$modifies@@1 _$t1) (= _$t0@@3 _$t0@@3)) (and (= _$t1 _$t1) (= $t5@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_10478| $0_A_S_$memory) _$t1)))))) (and (=> (= (ControlFlow 0 15009) 15307) anon16_Then_correct) (=> (= (ControlFlow 0 15009) 15057) anon16_Else_correct))))))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 16798) 15009) anon0$1_correct@@3)))
anon0_correct@@3)))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun |$temp_0'$0_B_T'@0@@0| () T@$0_B_T)
(declare-fun $t2@1@@1 () T@$Mutation_12925)
(declare-fun $t5@0@@0 () T@$Mutation_3430)
(declare-fun $t5@1@@0 () T@$Mutation_3430)
(declare-fun $t2@2@@0 () T@$Mutation_12925)
(declare-fun $0_B_T_$memory@0@@2 () T@$Memory_11574)
(declare-fun _$t0@@4 () Int)
(declare-fun $t2@@1 () T@$Mutation_12925)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun $t2@0@@2 () T@$Mutation_12925)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun $0_B_T_$modifies@@2 () |T@[Int]Bool|)
(declare-fun $t1@@1 () T@$Mutation_12925)
(declare-fun $t5@@1 () T@$Mutation_3430)
(push 1)
(set-info :boogie-vc-id $0_B_mutate_at_test$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 17266) (let ((anon8_Else_correct@@3  (=> (not $abort_flag@0@@3) (=> (and (and (and (= |$temp_0'$0_B_T'@0@@0| (|v#$Mutation_12925| $t2@1@@1)) (= |$temp_0'$0_B_T'@0@@0| |$temp_0'$0_B_T'@0@@0|)) (and (|$IsValid'u64'| 2) (= $t5@0@@0 ($Mutation_3430 (|l#$Mutation_12925| $t2@1@@1) (seq.++ (|p#$Mutation_12925| $t2@1@@1) (seq.unit 0)) (|$x#$0_B_T| (|v#$Mutation_12925| $t2@1@@1)))))) (and (and (= $t5@1@@0 ($Mutation_3430 (|l#$Mutation_3430| $t5@0@@0) (|p#$Mutation_3430| $t5@0@@0) 2)) (= $t2@2@@0 ($Mutation_12925 (|l#$Mutation_12925| $t2@1@@1) (|p#$Mutation_12925| $t2@1@@1) ($0_B_T (|v#$Mutation_3430| $t5@1@@0))))) (and (= $0_B_T_$memory@0@@2 ($Memory_11574 (|Store__T@[Int]Bool_| (|domain#$Memory_11574| $0_B_T_$memory) (|a#$Global| (|l#$Mutation_12925| $t2@2@@0)) true) (|Store__T@[Int]$0_B_T_| (|contents#$Memory_11574| $0_B_T_$memory) (|a#$Global| (|l#$Mutation_12925| $t2@2@@0)) (|v#$Mutation_12925| $t2@2@@0)))) (= (ControlFlow 0 15583) (- 0 17563))))) (= (|$x#$0_B_T| (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11574| $0_B_T_$memory@0@@2) _$t0@@4)) 2)))))
(let ((anon8_Then_correct@@3 true))
(let ((anon7_Then$1_correct@@3  (=> (= $t2@1@@1 $t2@@1) (=> (and (= $abort_flag@0@@3 true) (= $abort_code@1@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 15653) 15601) anon8_Then_correct@@3) (=> (= (ControlFlow 0 15653) 15583) anon8_Else_correct@@3))))))
(let ((anon7_Then_correct@@3  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_11574| $0_B_T_$memory) _$t0@@4)) (= (ControlFlow 0 15651) 15653)) anon7_Then$1_correct@@3)))
(let ((anon7_Else_correct@@3  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_11574| $0_B_T_$memory) _$t0@@4) (=> (and (and (= $t2@0@@2 ($Mutation_12925 ($Global _$t0@@4) (as seq.empty (Seq Int)) (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11574| $0_B_T_$memory) _$t0@@4))) (= $t2@1@@1 $t2@0@@2)) (and (= $abort_flag@0@@3 false) (= $abort_code@1@@3 $abort_code@0@@3))) (and (=> (= (ControlFlow 0 15497) 15601) anon8_Then_correct@@3) (=> (= (ControlFlow 0 15497) 15583) anon8_Else_correct@@3))))))
(let ((anon0$1_correct@@4  (=> (and (and (|$IsValid'address'| _$t0@@4) (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11574| $0_B_T_$memory) $a_0@@5)))
(|$IsValid'$0_B_T'| $rsc@@5))
 :qid |ModifiesTestandybpl.1596:20|
 :skolemid |34|
 :pattern ( (|Select__T@[Int]$0_B_T_| (|contents#$Memory_11574| $0_B_T_$memory) $a_0@@5))
))) (and (|Select__T@[Int]Bool_| $0_B_T_$modifies@@2 _$t0@@4) (= _$t0@@4 _$t0@@4))) (and (=> (= (ControlFlow 0 15475) (- 0 17383)) (|Select__T@[Int]Bool_| $0_B_T_$modifies@@2 _$t0@@4)) (=> (|Select__T@[Int]Bool_| $0_B_T_$modifies@@2 _$t0@@4) (and (=> (= (ControlFlow 0 15475) 15651) anon7_Then_correct@@3) (=> (= (ControlFlow 0 15475) 15497) anon7_Else_correct@@3)))))))
(let ((anon0_correct@@4  (=> (and (and (= (seq.len (|p#$Mutation_12925| $t1@@1)) 0) (= (seq.len (|p#$Mutation_12925| $t2@@1)) 0)) (and (= (seq.len (|p#$Mutation_3430| $t5@@1)) 0) (= (ControlFlow 0 15421) 15475))) anon0$1_correct@@4)))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 17266) 15421) anon0_correct@@4)))
PreconditionGeneratedEntry_correct@@0)))))))))
))
(check-sat)
(pop 1)
; Valid
