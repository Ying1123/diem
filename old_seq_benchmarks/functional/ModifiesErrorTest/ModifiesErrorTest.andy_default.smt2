(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-datatypes ((T@$0_B_T 0)) ((($0_B_T (|$x#$0_B_T| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$0_B_T| 0)
(declare-datatypes ((T@$Memory_12014 0)) ((($Memory_12014 (|domain#$Memory_12014| |T@[Int]Bool|) (|contents#$Memory_12014| |T@[Int]$0_B_T|) ) ) ))
(declare-datatypes ((T@$0_A_S 0)) ((($0_A_S (|$x#$0_A_S| Int) ) ) ))
(declare-sort |T@[Int]$0_A_S| 0)
(declare-datatypes ((T@$Memory_10918 0)) ((($Memory_10918 (|domain#$Memory_10918| |T@[Int]Bool|) (|contents#$Memory_10918| |T@[Int]$0_A_S|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_13822 0)) ((($Mutation_13822 (|l#$Mutation_13822| T@$Location) (|p#$Mutation_13822| (Seq Int)) (|v#$Mutation_13822| T@$0_B_T) ) ) ))
(declare-datatypes ((T@$Mutation_10951 0)) ((($Mutation_10951 (|l#$Mutation_10951| T@$Location) (|p#$Mutation_10951| (Seq Int)) (|v#$Mutation_10951| T@$0_A_S) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9236 0)) ((($Mutation_9236 (|l#$Mutation_9236| T@$Location) (|p#$Mutation_9236| (Seq Int)) (|v#$Mutation_9236| (Seq Int)) ) ) ))
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
 :qid |ModifiesErrorTestandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |ModifiesErrorTestandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |ModifiesErrorTestandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |ModifiesErrorTestandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |ModifiesErrorTestandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |ModifiesErrorTestandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |ModifiesErrorTestandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |ModifiesErrorTestandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |ModifiesErrorTestandybpl.590:13|
 :skolemid |15|
))))
 :qid |ModifiesErrorTestandybpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |ModifiesErrorTestandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |ModifiesErrorTestandybpl.603:17|
 :skolemid |18|
)))))
 :qid |ModifiesErrorTestandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |ModifiesErrorTestandybpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |ModifiesErrorTestandybpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |ModifiesErrorTestandybpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |ModifiesErrorTestandybpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$0_A_S) ) (! (= (|$IsValid'$0_A_S'| s) (|$IsValid'u64'| (|$x#$0_A_S| s)))
 :qid |ModifiesErrorTestandybpl.901:27|
 :skolemid |24|
 :pattern ( (|$IsValid'$0_A_S'| s))
)))
(assert (forall ((s@@0 T@$0_B_T) ) (! (= (|$IsValid'$0_B_T'| s@@0) (|$IsValid'u64'| (|$x#$0_B_T| s@@0)))
 :qid |ModifiesErrorTestandybpl.1122:27|
 :skolemid |27|
 :pattern ( (|$IsValid'$0_B_T'| s@@0))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |ModifiesErrorTestandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |ModifiesErrorTestandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |ModifiesErrorTestandybpl.245:54|
 :skolemid |36|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun |$temp_0'$0_A_S'@0| () T@$0_A_S)
(declare-fun $t2@1 () T@$Mutation_10951)
(declare-fun $t5@0 () T@$Mutation_3430)
(declare-fun $t5@1 () T@$Mutation_3430)
(declare-fun $t2@2 () T@$Mutation_10951)
(declare-fun $0_A_S_$memory@0 () T@$Memory_10918)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $0_A_S_$memory () T@$Memory_10918)
(declare-fun |Store__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int T@$0_A_S) |T@[Int]$0_A_S|)
(declare-fun |Select__T@[Int]$0_A_S_| (|T@[Int]$0_A_S| Int) T@$0_A_S)
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?x2 T@$0_A_S)) (! (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$0_A_S|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$0_A_S)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$0_A_S_| (|Store__T@[Int]$0_A_S_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$0_A_S_| ?x0 ?y1))) :weight 0)))
(declare-fun _$t0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $t2 () T@$Mutation_10951)
(declare-fun $t2@0 () T@$Mutation_10951)
(declare-fun $abort_code@0 () Int)
(declare-fun $0_A_S_$modifies () |T@[Int]Bool|)
(declare-fun $t1 () T@$Mutation_10951)
(declare-fun $t5 () T@$Mutation_3430)
(push 1)
(set-info :boogie-vc-id $0_A_mutate_at$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 17399) (let ((anon8_Else_correct  (=> (and (and (and (not $abort_flag@0) (= |$temp_0'$0_A_S'@0| (|v#$Mutation_10951| $t2@1))) (and (= |$temp_0'$0_A_S'@0| |$temp_0'$0_A_S'@0|) (|$IsValid'u64'| 2))) (and (and (= $t5@0 ($Mutation_3430 (|l#$Mutation_10951| $t2@1) (seq.++ (|p#$Mutation_10951| $t2@1) (seq.unit 0)) (|$x#$0_A_S| (|v#$Mutation_10951| $t2@1)))) (= $t5@1 ($Mutation_3430 (|l#$Mutation_3430| $t5@0) (|p#$Mutation_3430| $t5@0) 2))) (and (= $t2@2 ($Mutation_10951 (|l#$Mutation_10951| $t2@1) (|p#$Mutation_10951| $t2@1) ($0_A_S (|v#$Mutation_3430| $t5@1)))) (= $0_A_S_$memory@0 ($Memory_10918 (|Store__T@[Int]Bool_| (|domain#$Memory_10918| $0_A_S_$memory) (|a#$Global| (|l#$Mutation_10951| $t2@2)) true) (|Store__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) (|a#$Global| (|l#$Mutation_10951| $t2@2)) (|v#$Mutation_10951| $t2@2))))))) (and (=> (= (ControlFlow 0 15016) (- 0 17710)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_10918| $0_A_S_$memory) _$t0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_10918| $0_A_S_$memory) _$t0))) (=> (= (ControlFlow 0 15016) (- 0 17721)) (= (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory@0) _$t0)) 2)))))))
(let ((anon8_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 15044) (- 0 17608))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_10918| $0_A_S_$memory) _$t0))))))
(let ((anon7_Then$1_correct  (=> (= $t2@1 $t2) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 15096) 15044) anon8_Then_correct) (=> (= (ControlFlow 0 15096) 15016) anon8_Else_correct))))))
(let ((anon7_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_10918| $0_A_S_$memory) _$t0)) (= (ControlFlow 0 15094) 15096)) anon7_Then$1_correct)))
(let ((anon7_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10918| $0_A_S_$memory) _$t0) (=> (and (and (= $t2@0 ($Mutation_10951 ($Global _$t0) (as seq.empty (Seq Int)) (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) _$t0))) (= $t2@1 $t2@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 14918) 15044) anon8_Then_correct) (=> (= (ControlFlow 0 14918) 15016) anon8_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) $a_0)))
(|$IsValid'$0_A_S'| $rsc))
 :qid |ModifiesErrorTestandybpl.937:20|
 :skolemid |25|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) $a_0))
))) (and (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0) (= _$t0 _$t0))) (and (=> (= (ControlFlow 0 14896) (- 0 17521)) (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0)) (=> (|Select__T@[Int]Bool_| $0_A_S_$modifies _$t0) (and (=> (= (ControlFlow 0 14896) 15094) anon7_Then_correct) (=> (= (ControlFlow 0 14896) 14918) anon7_Else_correct)))))))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_10951| $t1)) 0) (= (seq.len (|p#$Mutation_10951| $t2)) 0)) (and (= (seq.len (|p#$Mutation_3430| $t5)) 0) (= (ControlFlow 0 14840) 14896))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 17399) 14840) anon0_correct)))
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
 (=> (= (ControlFlow 0 0) 17758) (let ((anon8_Else_correct@@0  (=> (and (and (not $abort_flag@0@@0) (= $t2@1@@0 $t2@1@@0)) (and (= $t4@0 (|$x#$0_A_S| $t2@1@@0)) (= $t4@0 $t4@0))) (and (=> (= (ControlFlow 0 15304) (- 0 17963)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_10918| $0_A_S_$memory) _$t0@@0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_10918| $0_A_S_$memory) _$t0@@0))) (=> (= (ControlFlow 0 15304) (- 0 17974)) (= $t4@0 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) _$t0@@0)))))))))
(let ((anon8_Then_correct@@0  (=> $abort_flag@0@@0 (=> (and (= $abort_code@1@@0 $abort_code@1@@0) (= (ControlFlow 0 15332) (- 0 17921))) (not (|Select__T@[Int]Bool_| (|domain#$Memory_10918| $0_A_S_$memory) _$t0@@0))))))
(let ((anon7_Then$1_correct@@0  (=> (= $t2@1@@0 $t2@@0) (=> (and (= $abort_flag@0@@0 true) (= $abort_code@1@@0 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 15384) 15332) anon8_Then_correct@@0) (=> (= (ControlFlow 0 15384) 15304) anon8_Else_correct@@0))))))
(let ((anon7_Then_correct@@0  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_10918| $0_A_S_$memory) _$t0@@0)) (= (ControlFlow 0 15382) 15384)) anon7_Then$1_correct@@0)))
(let ((anon7_Else_correct@@0  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10918| $0_A_S_$memory) _$t0@@0) (=> (and (and (= $t2@0@@0 (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) _$t0@@0)) (= $t2@1@@0 $t2@0@@0)) (and (= $abort_flag@0@@0 false) (= $abort_code@1@@0 $abort_code@0@@0))) (and (=> (= (ControlFlow 0 15248) 15332) anon8_Then_correct@@0) (=> (= (ControlFlow 0 15248) 15304) anon8_Else_correct@@0))))))
(let ((anon0$1_correct@@0  (=> (|$IsValid'address'| _$t0@@0) (=> (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) $a_0@@0)))
(|$IsValid'$0_A_S'| $rsc@@0))
 :qid |ModifiesErrorTestandybpl.1048:20|
 :skolemid |26|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) $a_0@@0))
)) (= _$t0@@0 _$t0@@0)) (and (=> (= (ControlFlow 0 15234) 15382) anon7_Then_correct@@0) (=> (= (ControlFlow 0 15234) 15248) anon7_Else_correct@@0))))))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 17758) 15234) anon0$1_correct@@0)))
anon0_correct@@0))))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t10 () Bool)
(declare-fun $t9 () Int)
(declare-fun _$t1 () Int)
(declare-fun $t5@@0 () Int)
(declare-fun $abort_flag@0@@1 () Bool)
(declare-fun $t8@1 () T@$0_B_T)
(declare-fun $t8 () T@$0_B_T)
(declare-fun $abort_code@1@@1 () Int)
(declare-fun $0_B_T_$memory () T@$Memory_12014)
(declare-fun _$t0@@1 () Int)
(declare-fun $t8@0 () T@$0_B_T)
(declare-fun |Select__T@[Int]$0_B_T_| (|T@[Int]$0_B_T| Int) T@$0_B_T)
(declare-fun $0_B_T_$memory@0 () T@$Memory_12014)
(declare-fun $abort_code@0@@1 () Int)
(declare-fun $t6 () Bool)
(declare-fun $0_B_T_$modifies () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $0_B_move_from_test_incorrect$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 17996) (let ((anon13_Else_correct  (=> (not $t10) (=> (and (and (|$IsValid'u64'| $t9) (= $t9 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) _$t1)))) (and (= $t9 $t9) (= (ControlFlow 0 15683) (- 0 18325)))) (= $t5@@0 $t9)))))
(let ((anon13_Then_correct true))
(let ((anon12_Else_correct  (=> (not $abort_flag@0@@1) (=> (and (= $t8@1 $t8@1) (= $t10  (not (|Select__T@[Int]Bool_| (|domain#$Memory_10918| $0_A_S_$memory) _$t1)))) (and (=> (= (ControlFlow 0 15635) 15695) anon13_Then_correct) (=> (= (ControlFlow 0 15635) 15683) anon13_Else_correct))))))
(let ((anon12_Then_correct true))
(let ((anon11_Then$1_correct  (=> (= $t8@1 $t8) (=> (and (= $abort_flag@0@@1 true) (= $abort_code@1@@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 15767) 15715) anon12_Then_correct) (=> (= (ControlFlow 0 15767) 15635) anon12_Else_correct))))))
(let ((anon11_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_12014| $0_B_T_$memory) _$t0@@1)) (= (ControlFlow 0 15765) 15767)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_12014| $0_B_T_$memory) _$t0@@1) (= $t8@0 (|Select__T@[Int]$0_B_T_| (|contents#$Memory_12014| $0_B_T_$memory) _$t0@@1))) (=> (and (and (= $0_B_T_$memory@0 ($Memory_12014 (|Store__T@[Int]Bool_| (|domain#$Memory_12014| $0_B_T_$memory) _$t0@@1 false) (|contents#$Memory_12014| $0_B_T_$memory))) (= $t8@1 $t8@0)) (and (= $abort_flag@0@@1 false) (= $abort_code@1@@1 $abort_code@0@@1))) (and (=> (= (ControlFlow 0 15607) 15715) anon12_Then_correct) (=> (= (ControlFlow 0 15607) 15635) anon12_Else_correct))))))
(let ((anon10_Else_correct  (=> (and (and (not $t6) (|$IsValid'u64'| $t5@@0)) (and (= $t5@@0 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) _$t1))) (= $t5@@0 $t5@@0))) (and (=> (= (ControlFlow 0 15587) (- 0 18174)) (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t0@@1)) (=> (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t0@@1) (and (=> (= (ControlFlow 0 15587) 15765) anon11_Then_correct) (=> (= (ControlFlow 0 15587) 15607) anon11_Else_correct)))))))
(let ((anon10_Then_correct true))
(let ((anon0$1_correct@@1  (=> (and (and (and (|$IsValid'address'| _$t0@@1) (|$IsValid'address'| _$t1)) (and (forall (($a_0@@1 Int) ) (! (let (($rsc@@1 (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) $a_0@@1)))
(|$IsValid'$0_A_S'| $rsc@@1))
 :qid |ModifiesErrorTestandybpl.1164:20|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) $a_0@@1))
)) (forall (($a_0@@2 Int) ) (! (let (($rsc@@2 (|Select__T@[Int]$0_B_T_| (|contents#$Memory_12014| $0_B_T_$memory) $a_0@@2)))
(|$IsValid'$0_B_T'| $rsc@@2))
 :qid |ModifiesErrorTestandybpl.1168:20|
 :skolemid |29|
 :pattern ( (|Select__T@[Int]$0_B_T_| (|contents#$Memory_12014| $0_B_T_$memory) $a_0@@2))
)))) (and (and (|Select__T@[Int]Bool_| $0_B_T_$modifies _$t1) (= _$t0@@1 _$t0@@1)) (and (= _$t1 _$t1) (= $t6  (not (|Select__T@[Int]Bool_| (|domain#$Memory_10918| $0_A_S_$memory) _$t1)))))) (and (=> (= (ControlFlow 0 15551) 15779) anon10_Then_correct) (=> (= (ControlFlow 0 15551) 15587) anon10_Else_correct)))))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 17996) 15551) anon0$1_correct@@1)))
anon0_correct@@1))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 17996)))
(get-value ((ControlFlow 0 15551)))
(get-value ((ControlFlow 0 15587)))
(assert (not (= (ControlFlow 0 15587) (- 18174))))
(check-sat)
(pop 1)
; Invalid
(declare-fun $t10@@0 () Bool)
(declare-fun $t9@@0 () Int)
(declare-fun _$t1@@0 () Int)
(declare-fun $t4 () Int)
(declare-fun $abort_flag@0@@2 () Bool)
(declare-fun $abort_code@1@@2 () Int)
(declare-fun _$t0@@2 () Int)
(declare-fun $0_B_T_$memory@0@@0 () T@$Memory_12014)
(declare-fun |Store__T@[Int]$0_B_T_| (|T@[Int]$0_B_T| Int T@$0_B_T) |T@[Int]$0_B_T|)
(assert (forall ( ( ?x0 |T@[Int]$0_B_T|) ( ?x1 Int) ( ?x2 T@$0_B_T)) (! (= (|Select__T@[Int]$0_B_T_| (|Store__T@[Int]$0_B_T_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$0_B_T|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$0_B_T)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$0_B_T_| (|Store__T@[Int]$0_B_T_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$0_B_T_| ?x0 ?y1))) :weight 0)))
(declare-fun $t8@0@@0 () T@$0_B_T)
(declare-fun $abort_code@0@@2 () Int)
(declare-fun $t5@@1 () Bool)
(declare-fun $0_B_T_$modifies@@0 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $0_B_move_to_test_incorrect$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 18359) (let ((anon13_Else_correct@@0  (=> (not $t10@@0) (=> (and (and (|$IsValid'u64'| $t9@@0) (= $t9@@0 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) _$t1@@0)))) (and (= $t9@@0 $t9@@0) (= (ControlFlow 0 16082) (- 0 18678)))) (= $t4 $t9@@0)))))
(let ((anon13_Then_correct@@0 true))
(let ((anon12_Else_correct@@0  (=> (and (not $abort_flag@0@@2) (= $t10@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_10918| $0_A_S_$memory) _$t1@@0)))) (and (=> (= (ControlFlow 0 16044) 16094) anon13_Then_correct@@0) (=> (= (ControlFlow 0 16044) 16082) anon13_Else_correct@@0)))))
(let ((anon12_Then_correct@@0 true))
(let ((anon11_Then$1_correct@@0  (=> (and (= $abort_flag@0@@2 true) (= $abort_code@1@@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 16164) 16114) anon12_Then_correct@@0) (=> (= (ControlFlow 0 16164) 16044) anon12_Else_correct@@0)))))
(let ((anon11_Then_correct@@0  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_12014| $0_B_T_$memory) _$t0@@2) (= (ControlFlow 0 16162) 16164)) anon11_Then$1_correct@@0)))
(let ((anon11_Else_correct@@0  (=> (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_12014| $0_B_T_$memory) _$t0@@2)) (= $0_B_T_$memory@0@@0 ($Memory_12014 (|Store__T@[Int]Bool_| (|domain#$Memory_12014| $0_B_T_$memory) _$t0@@2 true) (|Store__T@[Int]$0_B_T_| (|contents#$Memory_12014| $0_B_T_$memory) _$t0@@2 $t8@0@@0)))) (and (= $abort_flag@0@@2 false) (= $abort_code@1@@2 $abort_code@0@@2))) (and (=> (= (ControlFlow 0 16022) 16114) anon12_Then_correct@@0) (=> (= (ControlFlow 0 16022) 16044) anon12_Else_correct@@0)))))
(let ((anon10_Else_correct@@0  (=> (and (not $t5@@1) (|$IsValid'u64'| $t4)) (=> (and (and (= $t4 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) _$t1@@0))) (= $t4 $t4)) (and (|$IsValid'u64'| 2) (= $t8@0@@0 ($0_B_T 2)))) (and (=> (= (ControlFlow 0 16004) (- 0 18552)) (|Select__T@[Int]Bool_| $0_B_T_$modifies@@0 _$t0@@2)) (=> (|Select__T@[Int]Bool_| $0_B_T_$modifies@@0 _$t0@@2) (and (=> (= (ControlFlow 0 16004) 16162) anon11_Then_correct@@0) (=> (= (ControlFlow 0 16004) 16022) anon11_Else_correct@@0))))))))
(let ((anon10_Then_correct@@0 true))
(let ((anon0$1_correct@@2  (=> (and (and (and (|$IsValid'address'| _$t0@@2) (|$IsValid'address'| _$t1@@0)) (and (forall (($a_0@@3 Int) ) (! (let (($rsc@@3 (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) $a_0@@3)))
(|$IsValid'$0_A_S'| $rsc@@3))
 :qid |ModifiesErrorTestandybpl.1336:20|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) $a_0@@3))
)) (forall (($a_0@@4 Int) ) (! (let (($rsc@@4 (|Select__T@[Int]$0_B_T_| (|contents#$Memory_12014| $0_B_T_$memory) $a_0@@4)))
(|$IsValid'$0_B_T'| $rsc@@4))
 :qid |ModifiesErrorTestandybpl.1340:20|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]$0_B_T_| (|contents#$Memory_12014| $0_B_T_$memory) $a_0@@4))
)))) (and (and (|Select__T@[Int]Bool_| $0_B_T_$modifies@@0 _$t1@@0) (= _$t0@@2 _$t0@@2)) (and (= _$t1@@0 _$t1@@0) (= $t5@@1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_10918| $0_A_S_$memory) _$t1@@0)))))) (and (=> (= (ControlFlow 0 15958) 16176) anon10_Then_correct@@0) (=> (= (ControlFlow 0 15958) 16004) anon10_Else_correct@@0)))))
(let ((anon0_correct@@2  (=> (= (ControlFlow 0 18359) 15958) anon0$1_correct@@2)))
anon0_correct@@2))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 18359)))
(get-value ((ControlFlow 0 15958)))
(get-value ((ControlFlow 0 16004)))
(assert (not (= (ControlFlow 0 16004) (- 18552))))
(check-sat)
(pop 1)
; Invalid
(declare-fun $t9@@1 () Bool)
(declare-fun $t8@@0 () Int)
(declare-fun $0_A_S_$memory@2 () T@$Memory_10918)
(declare-fun _$t1@@1 () Int)
(declare-fun $t4@@0 () Int)
(declare-fun _$t0@@3 () Int)
(declare-fun |$temp_0'bool'@0| () Bool)
(declare-fun $0_A_S_$memory@1 () T@$Memory_10918)
(declare-fun $0_A_S_$memory@0@@0 () T@$Memory_10918)
(declare-fun |$temp_0'$0_A_S'@0@@0| () T@$0_A_S)
(declare-fun $t7 () Bool)
(declare-fun $t5@@2 () Bool)
(declare-fun $0_A_S_$modifies@@0 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $0_B_mutate_S_test1_incorrect$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 18702) (let ((anon13_Else_correct@@1  (=> (not $t9@@1) (=> (and (and (|$IsValid'u64'| $t8@@0) (= $t8@@0 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory@2) _$t1@@1)))) (and (= $t8@@0 $t8@@0) (= (ControlFlow 0 16466) (- 0 18992)))) (= $t4@@0 $t8@@0)))))
(let ((anon13_Then_correct@@1 true))
(let ((anon7_correct  (=> (and (= (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory@2) _$t0@@3)) 2) (= $t9@@1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_10918| $0_A_S_$memory@2) _$t1@@1)))) (and (=> (= (ControlFlow 0 16428) 16478) anon13_Then_correct@@1) (=> (= (ControlFlow 0 16428) 16466) anon13_Else_correct@@1)))))
(let ((anon12_Else_correct@@1  (=> (and (and (not |$temp_0'bool'@0|) (= $0_A_S_$memory@1 ($Memory_10918 (|Store__T@[Int]Bool_| (|domain#$Memory_10918| $0_A_S_$memory) _$t0@@3 false) (|contents#$Memory_10918| $0_A_S_$memory)))) (and (= $0_A_S_$memory@2 $0_A_S_$memory@1) (= (ControlFlow 0 16400) 16428))) anon7_correct)))
(let ((anon12_Then_correct@@1  (=> (and (and |$temp_0'bool'@0| (= $0_A_S_$memory@0@@0 ($Memory_10918 (|Store__T@[Int]Bool_| (|domain#$Memory_10918| $0_A_S_$memory) _$t0@@3 true) (|Store__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) _$t0@@3 |$temp_0'$0_A_S'@0@@0|)))) (and (= $0_A_S_$memory@2 $0_A_S_$memory@0@@0) (= (ControlFlow 0 16496) 16428))) anon7_correct)))
(let ((anon11_Else_correct@@1  (=> (not $t7) (and (=> (= (ControlFlow 0 16388) 16496) anon12_Then_correct@@1) (=> (= (ControlFlow 0 16388) 16400) anon12_Else_correct@@1)))))
(let ((anon11_Then_correct@@1 true))
(let ((anon10_Else_correct@@1  (=> (and (and (not $t5@@2) (|$IsValid'u64'| $t4@@0)) (and (= $t4@@0 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) _$t1@@1))) (= $t4@@0 $t4@@0))) (and (=> (= (ControlFlow 0 16382) (- 0 18855)) (|Select__T@[Int]Bool_| $0_A_S_$modifies@@0 _$t0@@3)) (=> (|Select__T@[Int]Bool_| $0_A_S_$modifies@@0 _$t0@@3) (=> (= $t7  (not (|Select__T@[Int]Bool_| (|domain#$Memory_10918| $0_A_S_$memory) _$t0@@3))) (and (=> (= (ControlFlow 0 16382) 16508) anon11_Then_correct@@1) (=> (= (ControlFlow 0 16382) 16388) anon11_Else_correct@@1))))))))
(let ((anon10_Then_correct@@1 true))
(let ((anon0$1_correct@@3  (=> (and (and (and (|$IsValid'address'| _$t0@@3) (|$IsValid'address'| _$t1@@1)) (and (forall (($a_0@@5 Int) ) (! (let (($rsc@@5 (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) $a_0@@5)))
(|$IsValid'$0_A_S'| $rsc@@5))
 :qid |ModifiesErrorTestandybpl.1507:20|
 :skolemid |32|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) $a_0@@5))
)) (not (= _$t0@@3 _$t1@@1)))) (and (and (|Select__T@[Int]Bool_| $0_A_S_$modifies@@0 _$t1@@1) (= _$t0@@3 _$t0@@3)) (and (= _$t1@@1 _$t1@@1) (= $t5@@2  (not (|Select__T@[Int]Bool_| (|domain#$Memory_10918| $0_A_S_$memory) _$t1@@1)))))) (and (=> (= (ControlFlow 0 16334) 16520) anon10_Then_correct@@1) (=> (= (ControlFlow 0 16334) 16382) anon10_Else_correct@@1)))))
(let ((anon0_correct@@3  (=> (= (ControlFlow 0 18702) 16334) anon0$1_correct@@3)))
anon0_correct@@3))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 18702)))
(get-value ((ControlFlow 0 16334)))
(get-value ((ControlFlow 0 16382)))
(assert (not (= (ControlFlow 0 16382) (- 18855))))
(check-sat)
(pop 1)
; Invalid
(declare-fun $t8@@1 () Bool)
(declare-fun $t7@@0 () Int)
(declare-fun $0_A_S_$memory@2@@0 () T@$Memory_10918)
(declare-fun _$t0@@4 () Int)
(declare-fun $t3 () Int)
(declare-fun |$temp_0'bool'@0@@0| () Bool)
(declare-fun $0_A_S_$memory@1@@0 () T@$Memory_10918)
(declare-fun $0_A_S_$memory@0@@1 () T@$Memory_10918)
(declare-fun |$temp_0'$0_A_S'@0@@1| () T@$0_A_S)
(declare-fun $t6@@0 () Bool)
(declare-fun $t4@@1 () Bool)
(declare-fun $0_A_S_$modifies@@1 () |T@[Int]Bool|)
(push 1)
(set-info :boogie-vc-id $0_B_mutate_S_test2_incorrect$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 19015) (let ((anon13_Else_correct@@2  (=> (not $t8@@1) (=> (and (and (|$IsValid'u64'| $t7@@0) (= $t7@@0 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory@2@@0) _$t0@@4)))) (and (= $t7@@0 $t7@@0) (= (ControlFlow 0 16786) (- 0 19283)))) (= $t3 $t7@@0)))))
(let ((anon13_Then_correct@@2 true))
(let ((anon7_correct@@0  (=> (and (= (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory@2@@0) _$t0@@4)) 2) (= $t8@@1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_10918| $0_A_S_$memory@2@@0) _$t0@@4)))) (and (=> (= (ControlFlow 0 16748) 16798) anon13_Then_correct@@2) (=> (= (ControlFlow 0 16748) 16786) anon13_Else_correct@@2)))))
(let ((anon12_Else_correct@@2  (=> (and (and (not |$temp_0'bool'@0@@0|) (= $0_A_S_$memory@1@@0 ($Memory_10918 (|Store__T@[Int]Bool_| (|domain#$Memory_10918| $0_A_S_$memory) _$t0@@4 false) (|contents#$Memory_10918| $0_A_S_$memory)))) (and (= $0_A_S_$memory@2@@0 $0_A_S_$memory@1@@0) (= (ControlFlow 0 16720) 16748))) anon7_correct@@0)))
(let ((anon12_Then_correct@@2  (=> (and (and |$temp_0'bool'@0@@0| (= $0_A_S_$memory@0@@1 ($Memory_10918 (|Store__T@[Int]Bool_| (|domain#$Memory_10918| $0_A_S_$memory) _$t0@@4 true) (|Store__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) _$t0@@4 |$temp_0'$0_A_S'@0@@1|)))) (and (= $0_A_S_$memory@2@@0 $0_A_S_$memory@0@@1) (= (ControlFlow 0 16816) 16748))) anon7_correct@@0)))
(let ((anon11_Else_correct@@2  (=> (not $t6@@0) (and (=> (= (ControlFlow 0 16708) 16816) anon12_Then_correct@@2) (=> (= (ControlFlow 0 16708) 16720) anon12_Else_correct@@2)))))
(let ((anon11_Then_correct@@2 true))
(let ((anon10_Else_correct@@2  (=> (and (and (not $t4@@1) (|$IsValid'u64'| $t3)) (and (= $t3 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) _$t0@@4))) (= $t3 $t3))) (and (=> (= (ControlFlow 0 16702) (- 0 19146)) (|Select__T@[Int]Bool_| $0_A_S_$modifies@@1 _$t0@@4)) (=> (|Select__T@[Int]Bool_| $0_A_S_$modifies@@1 _$t0@@4) (=> (= $t6@@0  (not (|Select__T@[Int]Bool_| (|domain#$Memory_10918| $0_A_S_$memory) _$t0@@4))) (and (=> (= (ControlFlow 0 16702) 16828) anon11_Then_correct@@2) (=> (= (ControlFlow 0 16702) 16708) anon11_Else_correct@@2))))))))
(let ((anon10_Then_correct@@2 true))
(let ((anon0$1_correct@@4  (=> (|$IsValid'address'| _$t0@@4) (=> (and (and (forall (($a_0@@6 Int) ) (! (let (($rsc@@6 (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) $a_0@@6)))
(|$IsValid'$0_A_S'| $rsc@@6))
 :qid |ModifiesErrorTestandybpl.1691:20|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) $a_0@@6))
)) (|Select__T@[Int]Bool_| $0_A_S_$modifies@@1 _$t0@@4)) (and (= _$t0@@4 _$t0@@4) (= $t4@@1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_10918| $0_A_S_$memory) _$t0@@4))))) (and (=> (= (ControlFlow 0 16654) 16840) anon10_Then_correct@@2) (=> (= (ControlFlow 0 16654) 16702) anon10_Else_correct@@2))))))
(let ((anon0_correct@@4  (=> (= (ControlFlow 0 19015) 16654) anon0$1_correct@@4)))
anon0_correct@@4))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 19015)))
(get-value ((ControlFlow 0 16654)))
(get-value ((ControlFlow 0 16702)))
(get-value ((ControlFlow 0 16708)))
(get-value ((ControlFlow 0 16816)))
(get-value ((ControlFlow 0 16748)))
(get-value ((ControlFlow 0 16786)))
(assert (not (= (ControlFlow 0 16786) (- 19283))))
(check-sat)
(pop 1)
; Invalid
(declare-fun $t12 () Bool)
(declare-fun $t11 () Int)
(declare-fun _$t1@@2 () Int)
(declare-fun $t5@@3 () Int)
(declare-fun $abort_flag@0@@3 () Bool)
(declare-fun |$temp_0'$0_B_T'@0| () T@$0_B_T)
(declare-fun $t8@1@@0 () T@$Mutation_13822)
(declare-fun $t10@0 () T@$Mutation_3430)
(declare-fun $t10@1 () T@$Mutation_3430)
(declare-fun $t8@2 () T@$Mutation_13822)
(declare-fun $0_B_T_$memory@0@@1 () T@$Memory_12014)
(declare-fun $t8@@2 () T@$Mutation_13822)
(declare-fun $abort_code@1@@3 () Int)
(declare-fun _$t0@@5 () Int)
(declare-fun $t8@0@@1 () T@$Mutation_13822)
(declare-fun $abort_code@0@@3 () Int)
(declare-fun $t6@@1 () Bool)
(declare-fun $0_B_T_$modifies@@1 () |T@[Int]Bool|)
(declare-fun $t2@@1 () T@$Mutation_13822)
(declare-fun $t10@@1 () T@$Mutation_3430)
(push 1)
(set-info :boogie-vc-id $0_B_mutate_at_test_incorrect$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 19307) (let ((anon13_Else_correct@@3  (=> (not $t12) (=> (and (and (|$IsValid'u64'| $t11) (= $t11 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) _$t1@@2)))) (and (= $t11 $t11) (= (ControlFlow 0 17206) (- 0 19735)))) (= $t5@@3 $t11)))))
(let ((anon13_Then_correct@@3 true))
(let ((anon12_Else_correct@@3  (=> (not $abort_flag@0@@3) (=> (and (and (and (= |$temp_0'$0_B_T'@0| (|v#$Mutation_13822| $t8@1@@0)) (= |$temp_0'$0_B_T'@0| |$temp_0'$0_B_T'@0|)) (and (|$IsValid'u64'| 2) (= $t10@0 ($Mutation_3430 (|l#$Mutation_13822| $t8@1@@0) (seq.++ (|p#$Mutation_13822| $t8@1@@0) (seq.unit 0)) (|$x#$0_B_T| (|v#$Mutation_13822| $t8@1@@0)))))) (and (and (= $t10@1 ($Mutation_3430 (|l#$Mutation_3430| $t10@0) (|p#$Mutation_3430| $t10@0) 2)) (= $t8@2 ($Mutation_13822 (|l#$Mutation_13822| $t8@1@@0) (|p#$Mutation_13822| $t8@1@@0) ($0_B_T (|v#$Mutation_3430| $t10@1))))) (and (= $0_B_T_$memory@0@@1 ($Memory_12014 (|Store__T@[Int]Bool_| (|domain#$Memory_12014| $0_B_T_$memory) (|a#$Global| (|l#$Mutation_13822| $t8@2)) true) (|Store__T@[Int]$0_B_T_| (|contents#$Memory_12014| $0_B_T_$memory) (|a#$Global| (|l#$Mutation_13822| $t8@2)) (|v#$Mutation_13822| $t8@2)))) (= $t12  (not (|Select__T@[Int]Bool_| (|domain#$Memory_10918| $0_A_S_$memory) _$t1@@2)))))) (and (=> (= (ControlFlow 0 17168) 17218) anon13_Then_correct@@3) (=> (= (ControlFlow 0 17168) 17206) anon13_Else_correct@@3))))))
(let ((anon12_Then_correct@@3 true))
(let ((anon11_Then$1_correct@@1  (=> (= $t8@1@@0 $t8@@2) (=> (and (= $abort_flag@0@@3 true) (= $abort_code@1@@3 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 17290) 17238) anon12_Then_correct@@3) (=> (= (ControlFlow 0 17290) 17168) anon12_Else_correct@@3))))))
(let ((anon11_Then_correct@@3  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_12014| $0_B_T_$memory) _$t0@@5)) (= (ControlFlow 0 17288) 17290)) anon11_Then$1_correct@@1)))
(let ((anon11_Else_correct@@3  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_12014| $0_B_T_$memory) _$t0@@5) (=> (and (and (= $t8@0@@1 ($Mutation_13822 ($Global _$t0@@5) (as seq.empty (Seq Int)) (|Select__T@[Int]$0_B_T_| (|contents#$Memory_12014| $0_B_T_$memory) _$t0@@5))) (= $t8@1@@0 $t8@0@@1)) (and (= $abort_flag@0@@3 false) (= $abort_code@1@@3 $abort_code@0@@3))) (and (=> (= (ControlFlow 0 17084) 17238) anon12_Then_correct@@3) (=> (= (ControlFlow 0 17084) 17168) anon12_Else_correct@@3))))))
(let ((anon10_Else_correct@@3  (=> (and (and (not $t6@@1) (|$IsValid'u64'| $t5@@3)) (and (= $t5@@3 (|$x#$0_A_S| (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) _$t1@@2))) (= $t5@@3 $t5@@3))) (and (=> (= (ControlFlow 0 17062) (- 0 19511)) (|Select__T@[Int]Bool_| $0_B_T_$modifies@@1 _$t0@@5)) (=> (|Select__T@[Int]Bool_| $0_B_T_$modifies@@1 _$t0@@5) (and (=> (= (ControlFlow 0 17062) 17288) anon11_Then_correct@@3) (=> (= (ControlFlow 0 17062) 17084) anon11_Else_correct@@3)))))))
(let ((anon10_Then_correct@@3 true))
(let ((anon0$1_correct@@5  (=> (and (and (and (|$IsValid'address'| _$t0@@5) (|$IsValid'address'| _$t1@@2)) (and (forall (($a_0@@7 Int) ) (! (let (($rsc@@7 (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) $a_0@@7)))
(|$IsValid'$0_A_S'| $rsc@@7))
 :qid |ModifiesErrorTestandybpl.1878:20|
 :skolemid |34|
 :pattern ( (|Select__T@[Int]$0_A_S_| (|contents#$Memory_10918| $0_A_S_$memory) $a_0@@7))
)) (forall (($a_0@@8 Int) ) (! (let (($rsc@@8 (|Select__T@[Int]$0_B_T_| (|contents#$Memory_12014| $0_B_T_$memory) $a_0@@8)))
(|$IsValid'$0_B_T'| $rsc@@8))
 :qid |ModifiesErrorTestandybpl.1882:20|
 :skolemid |35|
 :pattern ( (|Select__T@[Int]$0_B_T_| (|contents#$Memory_12014| $0_B_T_$memory) $a_0@@8))
)))) (and (and (|Select__T@[Int]Bool_| $0_B_T_$modifies@@1 _$t1@@2) (= _$t0@@5 _$t0@@5)) (and (= _$t1@@2 _$t1@@2) (= $t6@@1  (not (|Select__T@[Int]Bool_| (|domain#$Memory_10918| $0_A_S_$memory) _$t1@@2)))))) (and (=> (= (ControlFlow 0 17026) 17302) anon10_Then_correct@@3) (=> (= (ControlFlow 0 17026) 17062) anon10_Else_correct@@3)))))
(let ((anon0_correct@@5  (=> (and (and (= (seq.len (|p#$Mutation_13822| $t2@@1)) 0) (= (seq.len (|p#$Mutation_13822| $t8@@2)) 0)) (and (= (seq.len (|p#$Mutation_3430| $t10@@1)) 0) (= (ControlFlow 0 16934) 17026))) anon0$1_correct@@5)))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 19307) 16934) anon0_correct@@5)))
PreconditionGeneratedEntry_correct@@0)))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 19307)))
(get-value ((ControlFlow 0 16934)))
(get-value ((ControlFlow 0 17026)))
(get-value ((ControlFlow 0 17062)))
(assert (not (= (ControlFlow 0 17062) (- 19511))))
(check-sat)
(pop 1)
; Invalid
