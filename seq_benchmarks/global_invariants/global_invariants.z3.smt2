(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@$42_TestGlobalInvariants_S 0)) ((($42_TestGlobalInvariants_S (|$x#$42_TestGlobalInvariants_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestGlobalInvariants_S| 0)
(declare-datatypes ((T@$Memory_10192 0)) ((($Memory_10192 (|domain#$Memory_10192| |T@[Int]Bool|) (|contents#$Memory_10192| |T@[Int]$42_TestGlobalInvariants_S|) ) ) ))
(declare-datatypes ((T@$42_TestGlobalInvariants_R 0)) ((($42_TestGlobalInvariants_R (|$x#$42_TestGlobalInvariants_R| Int) ) ) ))
(declare-sort |T@[Int]$42_TestGlobalInvariants_R| 0)
(declare-datatypes ((T@$Memory_10016 0)) ((($Memory_10016 (|domain#$Memory_10016| |T@[Int]Bool|) (|contents#$Memory_10016| |T@[Int]$42_TestGlobalInvariants_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8388 0)) ((($Mutation_8388 (|l#$Mutation_8388| T@$Location) (|p#$Mutation_8388| (Seq Int)) (|v#$Mutation_8388| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestGlobalInvariants_R'| (T@$42_TestGlobalInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestGlobalInvariants_S'| (T@$42_TestGlobalInvariants_S) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |globalinvariantsz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |globalinvariantsz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |globalinvariantsz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |globalinvariantsz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |globalinvariantsz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |globalinvariantsz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |globalinvariantsz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |globalinvariantsz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |globalinvariantsz3bpl.590:13|
 :skolemid |15|
))))
 :qid |globalinvariantsz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |globalinvariantsz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |globalinvariantsz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |globalinvariantsz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |globalinvariantsz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |globalinvariantsz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |globalinvariantsz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |globalinvariantsz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestGlobalInvariants_R) ) (! (= (|$IsValid'$42_TestGlobalInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestGlobalInvariants_R| s)))
 :qid |globalinvariantsz3bpl.906:47|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestGlobalInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestGlobalInvariants_S) ) (! (= (|$IsValid'$42_TestGlobalInvariants_S'| s@@0) (|$IsValid'u64'| (|$x#$42_TestGlobalInvariants_S| s@@0)))
 :qid |globalinvariantsz3bpl.920:47|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestGlobalInvariants_S'| s@@0))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |globalinvariantsz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |globalinvariantsz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |globalinvariantsz3bpl.245:54|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $42_TestGlobalInvariants_R_$memory@1 () T@$Memory_10016)
(declare-fun $42_TestGlobalInvariants_S_$memory@1 () T@$Memory_10192)
(declare-fun $42_TestGlobalInvariants_R_$memory () T@$Memory_10016)
(declare-fun $abort_code@2 () Int)
(declare-fun _$t0 () Int)
(declare-fun $42_TestGlobalInvariants_R_$memory@0 () T@$Memory_10016)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$42_TestGlobalInvariants_R_| (|T@[Int]$42_TestGlobalInvariants_R| Int T@$42_TestGlobalInvariants_R) |T@[Int]$42_TestGlobalInvariants_R|)
(declare-fun |Select__T@[Int]$42_TestGlobalInvariants_R_| (|T@[Int]$42_TestGlobalInvariants_R| Int) T@$42_TestGlobalInvariants_R)
(assert (forall ( ( ?x0 |T@[Int]$42_TestGlobalInvariants_R|) ( ?x1 Int) ( ?x2 T@$42_TestGlobalInvariants_R)) (! (= (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|Store__T@[Int]$42_TestGlobalInvariants_R_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestGlobalInvariants_R|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$42_TestGlobalInvariants_R)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|Store__T@[Int]$42_TestGlobalInvariants_R_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestGlobalInvariants_R_| ?x0 ?y1))) :weight 0)))
(declare-fun $t5@0 () T@$42_TestGlobalInvariants_R)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $42_TestGlobalInvariants_S_$memory () T@$Memory_10192)
(declare-fun $42_TestGlobalInvariants_S_$memory@0 () T@$Memory_10192)
(declare-fun |Store__T@[Int]$42_TestGlobalInvariants_S_| (|T@[Int]$42_TestGlobalInvariants_S| Int T@$42_TestGlobalInvariants_S) |T@[Int]$42_TestGlobalInvariants_S|)
(declare-fun |Select__T@[Int]$42_TestGlobalInvariants_S_| (|T@[Int]$42_TestGlobalInvariants_S| Int) T@$42_TestGlobalInvariants_S)
(assert (forall ( ( ?x0 |T@[Int]$42_TestGlobalInvariants_S|) ( ?x1 Int) ( ?x2 T@$42_TestGlobalInvariants_S)) (! (= (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|Store__T@[Int]$42_TestGlobalInvariants_S_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestGlobalInvariants_S|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$42_TestGlobalInvariants_S)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|Store__T@[Int]$42_TestGlobalInvariants_S_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestGlobalInvariants_S_| ?x0 ?y1))) :weight 0)))
(declare-fun $t2@0 () T@$42_TestGlobalInvariants_S)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestGlobalInvariants_create_R$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 14669) (let ((anon14_Else_correct  (=> (not $abort_flag@1) (and (=> (= (ControlFlow 0 13023) (- 0 15061)) (forall ((a Int) ) (!  (=> (|$IsValid'address'| a) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory@1) a) (|Select__T@[Int]Bool_| (|domain#$Memory_10192| $42_TestGlobalInvariants_S_$memory@1) a)))
 :qid |globalinvariantsz3bpl.1032:15|
 :skolemid |30|
))) (=> (forall ((a@@0 Int) ) (!  (=> (|$IsValid'address'| a@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory@1) a@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_10192| $42_TestGlobalInvariants_S_$memory@1) a@@0)))
 :qid |globalinvariantsz3bpl.1032:15|
 :skolemid |30|
)) (=> (= (ControlFlow 0 13023) (- 0 15085)) (forall ((a@@1 Int) ) (!  (=> (|$IsValid'address'| a@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) a@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory@1) a@@1)))
 :qid |globalinvariantsz3bpl.1038:15|
 :skolemid |31|
))))))))
(let ((anon14_Then_correct true))
(let ((anon13_Then$1_correct  (=> (= $42_TestGlobalInvariants_R_$memory@1 $42_TestGlobalInvariants_R_$memory) (=> (and (= $abort_flag@1 true) (= $abort_code@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 13093) 13037) anon14_Then_correct) (=> (= (ControlFlow 0 13093) 13023) anon14_Else_correct))))))
(let ((anon13_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) _$t0) (= (ControlFlow 0 13091) 13093)) anon13_Then$1_correct)))
(let ((anon13_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) _$t0)) (=> (and (and (= $42_TestGlobalInvariants_R_$memory@0 ($Memory_10016 (|Store__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) _$t0 true) (|Store__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10016| $42_TestGlobalInvariants_R_$memory) _$t0 $t5@0))) (= $42_TestGlobalInvariants_R_$memory@1 $42_TestGlobalInvariants_R_$memory@0)) (and (= $abort_flag@1 $abort_flag@0) (= $abort_code@2 $abort_code@1))) (and (=> (= (ControlFlow 0 12963) 13037) anon14_Then_correct) (=> (= (ControlFlow 0 12963) 13023) anon14_Else_correct))))))
(let ((anon12_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 12945) (- 0 14933)) (forall ((a@@2 Int) ) (!  (=> (|$IsValid'address'| a@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) a@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_10192| $42_TestGlobalInvariants_S_$memory@1) a@@2)))
 :qid |globalinvariantsz3bpl.999:15|
 :skolemid |29|
))) (=> (forall ((a@@3 Int) ) (!  (=> (|$IsValid'address'| a@@3) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) a@@3) (|Select__T@[Int]Bool_| (|domain#$Memory_10192| $42_TestGlobalInvariants_S_$memory@1) a@@3)))
 :qid |globalinvariantsz3bpl.999:15|
 :skolemid |29|
)) (=> (and (|$IsValid'u64'| 0) (= $t5@0 ($42_TestGlobalInvariants_R 0))) (and (=> (= (ControlFlow 0 12945) 13091) anon13_Then_correct) (=> (= (ControlFlow 0 12945) 12963) anon13_Else_correct))))))))
(let ((anon12_Then_correct true))
(let ((anon11_Then$1_correct  (=> (= $42_TestGlobalInvariants_S_$memory@1 $42_TestGlobalInvariants_S_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 13157) 13107) anon12_Then_correct) (=> (= (ControlFlow 0 13157) 12945) anon12_Else_correct))))))
(let ((anon11_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10192| $42_TestGlobalInvariants_S_$memory) _$t0) (= (ControlFlow 0 13155) 13157)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_10192| $42_TestGlobalInvariants_S_$memory) _$t0)) (=> (and (and (= $42_TestGlobalInvariants_S_$memory@0 ($Memory_10192 (|Store__T@[Int]Bool_| (|domain#$Memory_10192| $42_TestGlobalInvariants_S_$memory) _$t0 true) (|Store__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_10192| $42_TestGlobalInvariants_S_$memory) _$t0 $t2@0))) (= $42_TestGlobalInvariants_S_$memory@1 $42_TestGlobalInvariants_S_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 12894) 13107) anon12_Then_correct) (=> (= (ControlFlow 0 12894) 12945) anon12_Else_correct))))))
(let ((anon0$1_correct  (=> (forall ((a@@4 Int) ) (!  (=> (|$IsValid'address'| a@@4) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) a@@4) (|Select__T@[Int]Bool_| (|domain#$Memory_10192| $42_TestGlobalInvariants_S_$memory) a@@4)))
 :qid |globalinvariantsz3bpl.949:20|
 :skolemid |26|
)) (=> (and (and (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10016| $42_TestGlobalInvariants_R_$memory) $a_0)))
(|$IsValid'$42_TestGlobalInvariants_R'| $rsc))
 :qid |globalinvariantsz3bpl.955:20|
 :skolemid |27|
 :pattern ( (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10016| $42_TestGlobalInvariants_R_$memory) $a_0))
))) (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_10192| $42_TestGlobalInvariants_S_$memory) $a_0@@0)))
(|$IsValid'$42_TestGlobalInvariants_S'| $rsc@@0))
 :qid |globalinvariantsz3bpl.959:20|
 :skolemid |28|
 :pattern ( (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_10192| $42_TestGlobalInvariants_S_$memory) $a_0@@0))
)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) _$t0)))) (and (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_10192| $42_TestGlobalInvariants_S_$memory) _$t0)) (= _$t0 _$t0)) (and (|$IsValid'u64'| 0) (= $t2@0 ($42_TestGlobalInvariants_S 0))))) (and (=> (= (ControlFlow 0 12876) 13155) anon11_Then_correct) (=> (= (ControlFlow 0 12876) 12894) anon11_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 14669) 12876) anon0$1_correct)))
anon0_correct)))))))))))))
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
(declare-datatypes ((T@$42_TestGlobalInvariants_S 0)) ((($42_TestGlobalInvariants_S (|$x#$42_TestGlobalInvariants_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestGlobalInvariants_S| 0)
(declare-datatypes ((T@$Memory_10192 0)) ((($Memory_10192 (|domain#$Memory_10192| |T@[Int]Bool|) (|contents#$Memory_10192| |T@[Int]$42_TestGlobalInvariants_S|) ) ) ))
(declare-datatypes ((T@$42_TestGlobalInvariants_R 0)) ((($42_TestGlobalInvariants_R (|$x#$42_TestGlobalInvariants_R| Int) ) ) ))
(declare-sort |T@[Int]$42_TestGlobalInvariants_R| 0)
(declare-datatypes ((T@$Memory_10016 0)) ((($Memory_10016 (|domain#$Memory_10016| |T@[Int]Bool|) (|contents#$Memory_10016| |T@[Int]$42_TestGlobalInvariants_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8388 0)) ((($Mutation_8388 (|l#$Mutation_8388| T@$Location) (|p#$Mutation_8388| (Seq Int)) (|v#$Mutation_8388| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestGlobalInvariants_R'| (T@$42_TestGlobalInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestGlobalInvariants_S'| (T@$42_TestGlobalInvariants_S) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |globalinvariantsz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |globalinvariantsz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |globalinvariantsz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |globalinvariantsz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |globalinvariantsz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |globalinvariantsz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |globalinvariantsz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |globalinvariantsz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |globalinvariantsz3bpl.590:13|
 :skolemid |15|
))))
 :qid |globalinvariantsz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |globalinvariantsz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |globalinvariantsz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |globalinvariantsz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |globalinvariantsz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |globalinvariantsz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |globalinvariantsz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |globalinvariantsz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestGlobalInvariants_R) ) (! (= (|$IsValid'$42_TestGlobalInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestGlobalInvariants_R| s)))
 :qid |globalinvariantsz3bpl.906:47|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestGlobalInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestGlobalInvariants_S) ) (! (= (|$IsValid'$42_TestGlobalInvariants_S'| s@@0) (|$IsValid'u64'| (|$x#$42_TestGlobalInvariants_S| s@@0)))
 :qid |globalinvariantsz3bpl.920:47|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestGlobalInvariants_S'| s@@0))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |globalinvariantsz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |globalinvariantsz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |globalinvariantsz3bpl.245:54|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $42_TestGlobalInvariants_R_$memory@1 () T@$Memory_10016)
(declare-fun $42_TestGlobalInvariants_S_$memory () T@$Memory_10192)
(declare-fun $42_TestGlobalInvariants_R_$memory () T@$Memory_10016)
(declare-fun $abort_code@1 () Int)
(declare-fun _$t0 () Int)
(declare-fun $42_TestGlobalInvariants_R_$memory@0 () T@$Memory_10016)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun |Store__T@[Int]$42_TestGlobalInvariants_R_| (|T@[Int]$42_TestGlobalInvariants_R| Int T@$42_TestGlobalInvariants_R) |T@[Int]$42_TestGlobalInvariants_R|)
(declare-fun |Select__T@[Int]$42_TestGlobalInvariants_R_| (|T@[Int]$42_TestGlobalInvariants_R| Int) T@$42_TestGlobalInvariants_R)
(assert (forall ( ( ?x0 |T@[Int]$42_TestGlobalInvariants_R|) ( ?x1 Int) ( ?x2 T@$42_TestGlobalInvariants_R)) (! (= (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|Store__T@[Int]$42_TestGlobalInvariants_R_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestGlobalInvariants_R|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$42_TestGlobalInvariants_R)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|Store__T@[Int]$42_TestGlobalInvariants_R_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]$42_TestGlobalInvariants_R_| ?x0 ?y1))) :weight 0)))
(declare-fun $t2@0 () T@$42_TestGlobalInvariants_R)
(declare-fun $abort_code@0 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestGlobalInvariants_create_R_invalid$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 15139) (let ((anon7_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 13401) (- 0 15352)) (forall ((a Int) ) (!  (=> (|$IsValid'address'| a) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory@1) a) (|Select__T@[Int]Bool_| (|domain#$Memory_10192| $42_TestGlobalInvariants_S_$memory) a)))
 :qid |globalinvariantsz3bpl.1119:15|
 :skolemid |34|
))) (=> (forall ((a@@0 Int) ) (!  (=> (|$IsValid'address'| a@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory@1) a@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_10192| $42_TestGlobalInvariants_S_$memory) a@@0)))
 :qid |globalinvariantsz3bpl.1119:15|
 :skolemid |34|
)) (=> (= (ControlFlow 0 13401) (- 0 15377)) (forall ((a@@1 Int) ) (!  (=> (|$IsValid'address'| a@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) a@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory@1) a@@1)))
 :qid |globalinvariantsz3bpl.1125:15|
 :skolemid |35|
))))))))
(let ((anon7_Then_correct true))
(let ((anon6_Then$1_correct  (=> (= $42_TestGlobalInvariants_R_$memory@1 $42_TestGlobalInvariants_R_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 13469) 13419) anon7_Then_correct) (=> (= (ControlFlow 0 13469) 13401) anon7_Else_correct))))))
(let ((anon6_Then_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) _$t0) (= (ControlFlow 0 13467) 13469)) anon6_Then$1_correct)))
(let ((anon6_Else_correct  (=> (not (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) _$t0)) (=> (and (and (= $42_TestGlobalInvariants_R_$memory@0 ($Memory_10016 (|Store__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) _$t0 true) (|Store__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10016| $42_TestGlobalInvariants_R_$memory) _$t0 $t2@0))) (= $42_TestGlobalInvariants_R_$memory@1 $42_TestGlobalInvariants_R_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 13341) 13419) anon7_Then_correct) (=> (= (ControlFlow 0 13341) 13401) anon7_Else_correct))))))
(let ((anon0$1_correct  (=> (and (forall ((a@@2 Int) ) (!  (=> (|$IsValid'address'| a@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) a@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_10192| $42_TestGlobalInvariants_S_$memory) a@@2)))
 :qid |globalinvariantsz3bpl.1076:20|
 :skolemid |32|
)) (|$IsValid'address'| _$t0)) (=> (and (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10016| $42_TestGlobalInvariants_R_$memory) $a_0)))
(|$IsValid'$42_TestGlobalInvariants_R'| $rsc))
 :qid |globalinvariantsz3bpl.1082:20|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10016| $42_TestGlobalInvariants_R_$memory) $a_0))
)) (= _$t0 _$t0)) (and (|$IsValid'u64'| 0) (= $t2@0 ($42_TestGlobalInvariants_R 0)))) (and (=> (= (ControlFlow 0 13323) 13467) anon6_Then_correct) (=> (= (ControlFlow 0 13323) 13341) anon6_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 15139) 13323) anon0$1_correct)))
anon0_correct))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 15139)))
(get-value ((ControlFlow 0 13323)))
(get-value ((ControlFlow 0 13341)))
(get-value ((ControlFlow 0 13401)))
(assert (not (= (ControlFlow 0 13401) (- 15352))))
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
(declare-datatypes ((T@$42_TestGlobalInvariants_S 0)) ((($42_TestGlobalInvariants_S (|$x#$42_TestGlobalInvariants_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestGlobalInvariants_S| 0)
(declare-datatypes ((T@$Memory_10192 0)) ((($Memory_10192 (|domain#$Memory_10192| |T@[Int]Bool|) (|contents#$Memory_10192| |T@[Int]$42_TestGlobalInvariants_S|) ) ) ))
(declare-datatypes ((T@$42_TestGlobalInvariants_R 0)) ((($42_TestGlobalInvariants_R (|$x#$42_TestGlobalInvariants_R| Int) ) ) ))
(declare-sort |T@[Int]$42_TestGlobalInvariants_R| 0)
(declare-datatypes ((T@$Memory_10016 0)) ((($Memory_10016 (|domain#$Memory_10016| |T@[Int]Bool|) (|contents#$Memory_10016| |T@[Int]$42_TestGlobalInvariants_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8388 0)) ((($Mutation_8388 (|l#$Mutation_8388| T@$Location) (|p#$Mutation_8388| (Seq Int)) (|v#$Mutation_8388| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestGlobalInvariants_R'| (T@$42_TestGlobalInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestGlobalInvariants_S'| (T@$42_TestGlobalInvariants_S) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |globalinvariantsz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |globalinvariantsz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |globalinvariantsz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |globalinvariantsz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |globalinvariantsz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |globalinvariantsz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |globalinvariantsz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |globalinvariantsz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |globalinvariantsz3bpl.590:13|
 :skolemid |15|
))))
 :qid |globalinvariantsz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |globalinvariantsz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |globalinvariantsz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |globalinvariantsz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |globalinvariantsz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |globalinvariantsz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |globalinvariantsz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |globalinvariantsz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestGlobalInvariants_R) ) (! (= (|$IsValid'$42_TestGlobalInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestGlobalInvariants_R| s)))
 :qid |globalinvariantsz3bpl.906:47|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestGlobalInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestGlobalInvariants_S) ) (! (= (|$IsValid'$42_TestGlobalInvariants_S'| s@@0) (|$IsValid'u64'| (|$x#$42_TestGlobalInvariants_S| s@@0)))
 :qid |globalinvariantsz3bpl.920:47|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestGlobalInvariants_S'| s@@0))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |globalinvariantsz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |globalinvariantsz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |globalinvariantsz3bpl.245:54|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $t9@0 () Int)
(declare-fun $t8@1 () T@$42_TestGlobalInvariants_S)
(declare-fun $42_TestGlobalInvariants_R_$memory () T@$Memory_10016)
(declare-fun _$t0 () Int)
(declare-fun |Select__T@[Int]$42_TestGlobalInvariants_S_| (|T@[Int]$42_TestGlobalInvariants_S| Int) T@$42_TestGlobalInvariants_S)
(declare-fun $42_TestGlobalInvariants_S_$memory () T@$Memory_10192)
(declare-fun $abort_code@1 () Int)
(declare-fun $t8 () T@$42_TestGlobalInvariants_S)
(declare-fun $t7 () Int)
(declare-fun $t8@0 () T@$42_TestGlobalInvariants_S)
(declare-fun $abort_code@0 () Int)
(declare-fun $t4@0 () Bool)
(declare-fun |Select__T@[Int]$42_TestGlobalInvariants_R_| (|T@[Int]$42_TestGlobalInvariants_R| Int) T@$42_TestGlobalInvariants_R)
(declare-fun $t3 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestGlobalInvariants_get_S_x$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 15410) (let ((anon12_Else_correct  (=> (not $abort_flag@0) (=> (and (= $t9@0 (|$x#$42_TestGlobalInvariants_S| $t8@1)) (= $t9@0 $t9@0)) (and (=> (= (ControlFlow 0 13778) (- 0 15726)) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) _$t0)))) (=> (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) _$t0))) (=> (= (ControlFlow 0 13778) (- 0 15739)) (= $t9@0 (|$x#$42_TestGlobalInvariants_S| (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_10192| $42_TestGlobalInvariants_S_$memory) _$t0))))))))))
(let ((L3_correct  (=> (= (ControlFlow 0 13696) (- 0 15689)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) _$t0)))))
(let ((anon12_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 13792) 13696)) L3_correct))))
(let ((anon11_Then$1_correct  (=> (= $t8@1 $t8) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 13844) 13792) anon12_Then_correct) (=> (= (ControlFlow 0 13844) 13778) anon12_Else_correct))))))
(let ((anon11_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_10192| $42_TestGlobalInvariants_S_$memory) $t7)) (= (ControlFlow 0 13842) 13844)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10192| $42_TestGlobalInvariants_S_$memory) $t7) (=> (and (and (= $t8@0 (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_10192| $42_TestGlobalInvariants_S_$memory) $t7)) (= $t8@1 $t8@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 13726) 13792) anon12_Then_correct) (=> (= (ControlFlow 0 13726) 13778) anon12_Else_correct))))))
(let ((anon10_Then_correct  (=> $t4@0 (=> (and (|$IsValid'address'| $t7) (= $t7 _$t0)) (and (=> (= (ControlFlow 0 13712) 13842) anon11_Then_correct) (=> (= (ControlFlow 0 13712) 13726) anon11_Else_correct))))))
(let ((anon10_Else_correct  (=> (and (and (not $t4@0) (|$IsValid'u64'| 0)) (and (= 0 0) (= (ControlFlow 0 13678) 13696))) L3_correct)))
(let ((anon0$1_correct  (=> (forall ((a Int) ) (!  (=> (|$IsValid'address'| a) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) a) (|Select__T@[Int]Bool_| (|domain#$Memory_10192| $42_TestGlobalInvariants_S_$memory) a)))
 :qid |globalinvariantsz3bpl.1171:20|
 :skolemid |36|
)) (=> (and (and (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10016| $42_TestGlobalInvariants_R_$memory) $a_0)))
(|$IsValid'$42_TestGlobalInvariants_R'| $rsc))
 :qid |globalinvariantsz3bpl.1178:20|
 :skolemid |37|
 :pattern ( (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10016| $42_TestGlobalInvariants_R_$memory) $a_0))
))) (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_10192| $42_TestGlobalInvariants_S_$memory) $a_0@@0)))
(|$IsValid'$42_TestGlobalInvariants_S'| $rsc@@0))
 :qid |globalinvariantsz3bpl.1182:20|
 :skolemid |38|
 :pattern ( (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_10192| $42_TestGlobalInvariants_S_$memory) $a_0@@0))
)) (= _$t0 _$t0))) (and (and (|$IsValid'address'| $t3) (= $t3 _$t0)) (and (= $t4@0 (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) $t3)) (= $t4@0 $t4@0)))) (and (=> (= (ControlFlow 0 13656) 13712) anon10_Then_correct) (=> (= (ControlFlow 0 13656) 13678) anon10_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 15410) 13656) anon0$1_correct)))
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
(declare-datatypes ((T@$42_TestGlobalInvariants_S 0)) ((($42_TestGlobalInvariants_S (|$x#$42_TestGlobalInvariants_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestGlobalInvariants_S| 0)
(declare-datatypes ((T@$Memory_10192 0)) ((($Memory_10192 (|domain#$Memory_10192| |T@[Int]Bool|) (|contents#$Memory_10192| |T@[Int]$42_TestGlobalInvariants_S|) ) ) ))
(declare-datatypes ((T@$42_TestGlobalInvariants_R 0)) ((($42_TestGlobalInvariants_R (|$x#$42_TestGlobalInvariants_R| Int) ) ) ))
(declare-sort |T@[Int]$42_TestGlobalInvariants_R| 0)
(declare-datatypes ((T@$Memory_10016 0)) ((($Memory_10016 (|domain#$Memory_10016| |T@[Int]Bool|) (|contents#$Memory_10016| |T@[Int]$42_TestGlobalInvariants_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8388 0)) ((($Mutation_8388 (|l#$Mutation_8388| T@$Location) (|p#$Mutation_8388| (Seq Int)) (|v#$Mutation_8388| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestGlobalInvariants_R'| (T@$42_TestGlobalInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestGlobalInvariants_S'| (T@$42_TestGlobalInvariants_S) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |globalinvariantsz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |globalinvariantsz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |globalinvariantsz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |globalinvariantsz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |globalinvariantsz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |globalinvariantsz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |globalinvariantsz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |globalinvariantsz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |globalinvariantsz3bpl.590:13|
 :skolemid |15|
))))
 :qid |globalinvariantsz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |globalinvariantsz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |globalinvariantsz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |globalinvariantsz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |globalinvariantsz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |globalinvariantsz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |globalinvariantsz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |globalinvariantsz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestGlobalInvariants_R) ) (! (= (|$IsValid'$42_TestGlobalInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestGlobalInvariants_R| s)))
 :qid |globalinvariantsz3bpl.906:47|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestGlobalInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestGlobalInvariants_S) ) (! (= (|$IsValid'$42_TestGlobalInvariants_S'| s@@0) (|$IsValid'u64'| (|$x#$42_TestGlobalInvariants_S| s@@0)))
 :qid |globalinvariantsz3bpl.920:47|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestGlobalInvariants_S'| s@@0))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |globalinvariantsz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |globalinvariantsz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |globalinvariantsz3bpl.245:54|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $42_TestGlobalInvariants_R_$memory@1 () T@$Memory_10016)
(declare-fun $42_TestGlobalInvariants_S_$memory () T@$Memory_10192)
(declare-fun $42_TestGlobalInvariants_R_$memory () T@$Memory_10016)
(declare-fun $abort_code@1 () Int)
(declare-fun $t7 () Int)
(declare-fun $t8@0 () T@$42_TestGlobalInvariants_R)
(declare-fun |Select__T@[Int]$42_TestGlobalInvariants_R_| (|T@[Int]$42_TestGlobalInvariants_R| Int) T@$42_TestGlobalInvariants_R)
(declare-fun $42_TestGlobalInvariants_R_$memory@0 () T@$Memory_10016)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@0 () Int)
(declare-fun $t4@0 () Bool)
(declare-fun _$t0 () Int)
(declare-fun $t3 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestGlobalInvariants_remove_R_invalid$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 15761) (let ((anon11_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 14142) (- 0 16039)) (forall ((a Int) ) (!  (=> (|$IsValid'address'| a) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory@1) a) (|Select__T@[Int]Bool_| (|domain#$Memory_10192| $42_TestGlobalInvariants_S_$memory) a)))
 :qid |globalinvariantsz3bpl.1425:15|
 :skolemid |41|
))) (=> (forall ((a@@0 Int) ) (!  (=> (|$IsValid'address'| a@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory@1) a@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_10192| $42_TestGlobalInvariants_S_$memory) a@@0)))
 :qid |globalinvariantsz3bpl.1425:15|
 :skolemid |41|
)) (=> (= (ControlFlow 0 14142) (- 0 16064)) (forall ((a@@1 Int) ) (!  (=> (|$IsValid'address'| a@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) a@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory@1) a@@1)))
 :qid |globalinvariantsz3bpl.1431:15|
 :skolemid |42|
))))))))
(let ((anon11_Then_correct true))
(let ((anon10_Then$1_correct  (=> (= $42_TestGlobalInvariants_R_$memory@1 $42_TestGlobalInvariants_R_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 14208) 14156) anon11_Then_correct) (=> (= (ControlFlow 0 14208) 14142) anon11_Else_correct))))))
(let ((anon10_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) $t7)) (= (ControlFlow 0 14206) 14208)) anon10_Then$1_correct)))
(let ((anon10_Else_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) $t7) (= $t8@0 (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10016| $42_TestGlobalInvariants_R_$memory) $t7))) (=> (and (and (= $42_TestGlobalInvariants_R_$memory@0 ($Memory_10016 (|Store__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) $t7 false) (|contents#$Memory_10016| $42_TestGlobalInvariants_R_$memory))) (= $42_TestGlobalInvariants_R_$memory@1 $42_TestGlobalInvariants_R_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 14076) 14156) anon11_Then_correct) (=> (= (ControlFlow 0 14076) 14142) anon11_Else_correct))))))
(let ((anon9_Then_correct  (=> $t4@0 (=> (and (|$IsValid'address'| $t7) (= $t7 _$t0)) (and (=> (= (ControlFlow 0 14056) 14206) anon10_Then_correct) (=> (= (ControlFlow 0 14056) 14076) anon10_Else_correct))))))
(let ((anon9_Else_correct true))
(let ((anon0$1_correct  (=> (and (and (and (forall ((a@@2 Int) ) (!  (=> (|$IsValid'address'| a@@2) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) a@@2) (|Select__T@[Int]Bool_| (|domain#$Memory_10192| $42_TestGlobalInvariants_S_$memory) a@@2)))
 :qid |globalinvariantsz3bpl.1330:20|
 :skolemid |39|
)) (|$IsValid'address'| _$t0)) (and (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10016| $42_TestGlobalInvariants_R_$memory) $a_0)))
(|$IsValid'$42_TestGlobalInvariants_R'| $rsc))
 :qid |globalinvariantsz3bpl.1336:20|
 :skolemid |40|
 :pattern ( (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10016| $42_TestGlobalInvariants_R_$memory) $a_0))
)) (= _$t0 _$t0))) (and (and (|$IsValid'address'| $t3) (= $t3 _$t0)) (and (= $t4@0 (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) $t3)) (= $t4@0 $t4@0)))) (and (=> (= (ControlFlow 0 14006) 14056) anon9_Then_correct) (=> (= (ControlFlow 0 14006) 14028) anon9_Else_correct)))))
(let ((anon0_correct  (=> (= (ControlFlow 0 15761) 14006) anon0$1_correct)))
anon0_correct))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 15761)))
(get-value ((ControlFlow 0 14006)))
(get-value ((ControlFlow 0 14056)))
(get-value ((ControlFlow 0 14076)))
(get-value ((ControlFlow 0 14142)))
(assert (not (= (ControlFlow 0 14142) (- 16064))))
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
(declare-datatypes ((T@$42_TestGlobalInvariants_S 0)) ((($42_TestGlobalInvariants_S (|$x#$42_TestGlobalInvariants_S| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestGlobalInvariants_S| 0)
(declare-datatypes ((T@$Memory_10192 0)) ((($Memory_10192 (|domain#$Memory_10192| |T@[Int]Bool|) (|contents#$Memory_10192| |T@[Int]$42_TestGlobalInvariants_S|) ) ) ))
(declare-datatypes ((T@$42_TestGlobalInvariants_R 0)) ((($42_TestGlobalInvariants_R (|$x#$42_TestGlobalInvariants_R| Int) ) ) ))
(declare-sort |T@[Int]$42_TestGlobalInvariants_R| 0)
(declare-datatypes ((T@$Memory_10016 0)) ((($Memory_10016 (|domain#$Memory_10016| |T@[Int]Bool|) (|contents#$Memory_10016| |T@[Int]$42_TestGlobalInvariants_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8388 0)) ((($Mutation_8388 (|l#$Mutation_8388| T@$Location) (|p#$Mutation_8388| (Seq Int)) (|v#$Mutation_8388| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestGlobalInvariants_R'| (T@$42_TestGlobalInvariants_R) Bool)
(declare-fun |$IsValid'$42_TestGlobalInvariants_S'| (T@$42_TestGlobalInvariants_S) Bool)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |globalinvariantsz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |globalinvariantsz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |globalinvariantsz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |globalinvariantsz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |globalinvariantsz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |globalinvariantsz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |globalinvariantsz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |globalinvariantsz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u8'| (seq.nth v@@4 i@@0)))
 :qid |globalinvariantsz3bpl.590:13|
 :skolemid |15|
))))
 :qid |globalinvariantsz3bpl.588:28|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u8''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u8'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |globalinvariantsz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |globalinvariantsz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |globalinvariantsz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u8'| v@@5 e))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |globalinvariantsz3bpl.776:15|
 :skolemid |20|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |globalinvariantsz3bpl.792:15|
 :skolemid |21|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |globalinvariantsz3bpl.839:15|
 :skolemid |22|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |globalinvariantsz3bpl.842:15|
 :skolemid |23|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestGlobalInvariants_R) ) (! (= (|$IsValid'$42_TestGlobalInvariants_R'| s) (|$IsValid'u64'| (|$x#$42_TestGlobalInvariants_R| s)))
 :qid |globalinvariantsz3bpl.906:47|
 :skolemid |24|
 :pattern ( (|$IsValid'$42_TestGlobalInvariants_R'| s))
)))
(assert (forall ((s@@0 T@$42_TestGlobalInvariants_S) ) (! (= (|$IsValid'$42_TestGlobalInvariants_S'| s@@0) (|$IsValid'u64'| (|$x#$42_TestGlobalInvariants_S| s@@0)))
 :qid |globalinvariantsz3bpl.920:47|
 :skolemid |25|
 :pattern ( (|$IsValid'$42_TestGlobalInvariants_S'| s@@0))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@6)))
 (and (= (seq.len r@@0) (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len r@@0))) (= (seq.nth r@@0 i@@3) (seq.nth v@@6 (- (- (seq.len v@@6) i@@3) 1))))
 :qid |globalinvariantsz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@3))
))))
 :qid |globalinvariantsz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@6))
)))
(assert (forall ((|l#0| Bool) (i@@4 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4) |l#0|)
 :qid |globalinvariantsz3bpl.245:54|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@4))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $42_TestGlobalInvariants_R_$memory () T@$Memory_10016)
(declare-fun $42_TestGlobalInvariants_S_$memory@1 () T@$Memory_10192)
(declare-fun $t9@0 () Int)
(declare-fun $t8 () T@$42_TestGlobalInvariants_S)
(declare-fun _$t0 () Int)
(declare-fun $abort_code@1 () Int)
(declare-fun $42_TestGlobalInvariants_S_$memory () T@$Memory_10192)
(declare-fun $t7 () Int)
(declare-fun $t8@0 () T@$42_TestGlobalInvariants_S)
(declare-fun |Select__T@[Int]$42_TestGlobalInvariants_S_| (|T@[Int]$42_TestGlobalInvariants_S| Int) T@$42_TestGlobalInvariants_S)
(declare-fun $42_TestGlobalInvariants_S_$memory@0 () T@$Memory_10192)
(declare-fun |Store__T@[Int]Bool_| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (! (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Bool_| (|Store__T@[Int]Bool_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Bool_| ?x0 ?y1))) :weight 0)))
(declare-fun $abort_code@0 () Int)
(declare-fun $t4@0 () Bool)
(declare-fun |Select__T@[Int]$42_TestGlobalInvariants_R_| (|T@[Int]$42_TestGlobalInvariants_R| Int) T@$42_TestGlobalInvariants_R)
(declare-fun $t3 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestGlobalInvariants_remove_S_invalid$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 16109) (let ((anon12_Else_correct  (=> (not $abort_flag@0) (and (=> (= (ControlFlow 0 14524) (- 0 16414)) (forall ((a Int) ) (!  (=> (|$IsValid'address'| a) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) a) (|Select__T@[Int]Bool_| (|domain#$Memory_10192| $42_TestGlobalInvariants_S_$memory@1) a)))
 :qid |globalinvariantsz3bpl.1578:15|
 :skolemid |46|
))) (=> (forall ((a@@0 Int) ) (!  (=> (|$IsValid'address'| a@@0) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) a@@0) (|Select__T@[Int]Bool_| (|domain#$Memory_10192| $42_TestGlobalInvariants_S_$memory@1) a@@0)))
 :qid |globalinvariantsz3bpl.1578:15|
 :skolemid |46|
)) (=> (and (= $t9@0 (|$x#$42_TestGlobalInvariants_S| $t8)) (= (ControlFlow 0 14524) (- 0 16455))) (not (not (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) _$t0)))))))))
(let ((L3_correct  (=> (= (ControlFlow 0 14433) (- 0 16394)) (not (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) _$t0)))))
(let ((anon12_Then_correct  (=> $abort_flag@0 (=> (and (= $abort_code@1 $abort_code@1) (= (ControlFlow 0 14538) 14433)) L3_correct))))
(let ((anon11_Then$1_correct  (=> (= $42_TestGlobalInvariants_S_$memory@1 $42_TestGlobalInvariants_S_$memory) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 14590) 14538) anon12_Then_correct) (=> (= (ControlFlow 0 14590) 14524) anon12_Else_correct))))))
(let ((anon11_Then_correct  (=> (and (not (|Select__T@[Int]Bool_| (|domain#$Memory_10192| $42_TestGlobalInvariants_S_$memory) $t7)) (= (ControlFlow 0 14588) 14590)) anon11_Then$1_correct)))
(let ((anon11_Else_correct  (=> (and (|Select__T@[Int]Bool_| (|domain#$Memory_10192| $42_TestGlobalInvariants_S_$memory) $t7) (= $t8@0 (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_10192| $42_TestGlobalInvariants_S_$memory) $t7))) (=> (and (and (= $42_TestGlobalInvariants_S_$memory@0 ($Memory_10192 (|Store__T@[Int]Bool_| (|domain#$Memory_10192| $42_TestGlobalInvariants_S_$memory) $t7 false) (|contents#$Memory_10192| $42_TestGlobalInvariants_S_$memory))) (= $42_TestGlobalInvariants_S_$memory@1 $42_TestGlobalInvariants_S_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 14469) 14538) anon12_Then_correct) (=> (= (ControlFlow 0 14469) 14524) anon12_Else_correct))))))
(let ((anon10_Then_correct  (=> $t4@0 (=> (and (|$IsValid'address'| $t7) (= $t7 _$t0)) (and (=> (= (ControlFlow 0 14449) 14588) anon11_Then_correct) (=> (= (ControlFlow 0 14449) 14469) anon11_Else_correct))))))
(let ((anon10_Else_correct  (=> (and (and (not $t4@0) (|$IsValid'u64'| 0)) (and (= 0 0) (= (ControlFlow 0 14415) 14433))) L3_correct)))
(let ((anon0$1_correct  (=> (forall ((a@@1 Int) ) (!  (=> (|$IsValid'address'| a@@1) (=> (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) a@@1) (|Select__T@[Int]Bool_| (|domain#$Memory_10192| $42_TestGlobalInvariants_S_$memory) a@@1)))
 :qid |globalinvariantsz3bpl.1482:20|
 :skolemid |43|
)) (=> (and (and (and (|$IsValid'address'| _$t0) (forall (($a_0 Int) ) (! (let (($rsc (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10016| $42_TestGlobalInvariants_R_$memory) $a_0)))
(|$IsValid'$42_TestGlobalInvariants_R'| $rsc))
 :qid |globalinvariantsz3bpl.1488:20|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]$42_TestGlobalInvariants_R_| (|contents#$Memory_10016| $42_TestGlobalInvariants_R_$memory) $a_0))
))) (and (forall (($a_0@@0 Int) ) (! (let (($rsc@@0 (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_10192| $42_TestGlobalInvariants_S_$memory) $a_0@@0)))
(|$IsValid'$42_TestGlobalInvariants_S'| $rsc@@0))
 :qid |globalinvariantsz3bpl.1492:20|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]$42_TestGlobalInvariants_S_| (|contents#$Memory_10192| $42_TestGlobalInvariants_S_$memory) $a_0@@0))
)) (= _$t0 _$t0))) (and (and (|$IsValid'address'| $t3) (= $t3 _$t0)) (and (= $t4@0 (|Select__T@[Int]Bool_| (|domain#$Memory_10016| $42_TestGlobalInvariants_R_$memory) $t3)) (= $t4@0 $t4@0)))) (and (=> (= (ControlFlow 0 14393) 14449) anon10_Then_correct) (=> (= (ControlFlow 0 14393) 14415) anon10_Else_correct))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 16109) 14393) anon0$1_correct)))
anon0_correct)))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 16109)))
(get-value ((ControlFlow 0 14393)))
(get-value ((ControlFlow 0 14449)))
(get-value ((ControlFlow 0 14469)))
(get-value ((ControlFlow 0 14524)))
(assert (not (= (ControlFlow 0 14524) (- 16414))))
(check-sat)
(pop 1)
; Invalid
