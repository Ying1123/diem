(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-datatypes ((T@$42_TestSome_R 0)) ((($42_TestSome_R (|$x#$42_TestSome_R| Int) ) ) ))
(declare-sort |T@[Int]Bool| 0)
(declare-sort |T@[Int]$42_TestSome_R| 0)
(declare-datatypes ((T@$Memory_12474 0)) ((($Memory_12474 (|domain#$Memory_12474| |T@[Int]Bool|) (|contents#$Memory_12474| |T@[Int]$42_TestSome_R|) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_9728 0)) ((($Mutation_9728 (|l#$Mutation_9728| T@$Location) (|p#$Mutation_9728| (Seq Int)) (|v#$Mutation_9728| (Seq Int)) ) ) ))
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
(declare-fun |$IsValid'$42_TestSome_R'| (T@$42_TestSome_R) Bool)
(declare-fun $choice_2 () Int)
(declare-fun $choice_3 () Int)
(declare-fun $choice_0 (Int) Int)
(declare-fun |Select_[$int]$bool| (|T@[Int]Bool| Int) Bool)
(declare-fun |Select_[$int]$42_TestSome_R| (|T@[Int]$42_TestSome_R| Int) T@$42_TestSome_R)
(declare-fun $choice_1 (T@$Memory_12474) Int)
(declare-fun $choice_4 ((Seq Int)) Int)
(declare-fun $choice_5 ((Seq Int)) Int)
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |choicebpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |choicebpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |choicebpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |choicebpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |choicebpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |choicebpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |choicebpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |choicebpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u64'| (seq.nth v@@4 i@@0)))
 :qid |choicebpl.590:13|
 :skolemid |15|
))))
 :qid |choicebpl.588:29|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |choicebpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |choicebpl.603:17|
 :skolemid |18|
)))))
 :qid |choicebpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |choicebpl.770:13|
 :skolemid |20|
))))
 :qid |choicebpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |choicebpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |choicebpl.783:17|
 :skolemid |23|
)))))
 :qid |choicebpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |choicebpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |choicebpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |choicebpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |choicebpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$42_TestSome_R) ) (! (= (|$IsValid'$42_TestSome_R'| s) (|$IsValid'u64'| (|$x#$42_TestSome_R| s)))
 :qid |choicebpl.1086:35|
 :skolemid |29|
 :pattern ( (|$IsValid'$42_TestSome_R'| s))
)))
(assert  (=> (exists ((x Int) ) (!  (and (|$IsValid'u64'| x) (>= x 4))
 :qid |choicebpl.1704:13|
 :skolemid |32|
)) (let ((x@@0 $choice_2))
 (and (|$IsValid'u64'| x@@0) (>= x@@0 4)))))
(assert  (=> (exists ((x@@1 Int) ) (!  (and (|$IsValid'u64'| x@@1) (and (>= x@@1 4) (<= x@@1 5)))
 :qid |choicebpl.1715:13|
 :skolemid |33|
)) (let ((x@@2 $choice_3))
 (and (|$IsValid'u64'| x@@2) (and (>= x@@2 4) (<= x@@2 5))))))
(assert (forall ((x@@3 Int) ) (!  (=> (|$IsValid'u64'| x@@3) (=> (exists ((y Int) ) (!  (and (|$IsValid'u64'| y) (>= y x@@3))
 :qid |choicebpl.1726:13|
 :skolemid |34|
)) (let ((y@@0 ($choice_0 x@@3)))
 (and (|$IsValid'u64'| y@@0) (>= y@@0 x@@3)))))
 :qid |choicebpl.1725:15|
 :skolemid |35|
)))
(assert (forall (($42_TestSome_R_$memory T@$Memory_12474) ) (!  (=> (exists ((a Int) ) (!  (and (|$IsValid'address'| a) (and (|Select_[$int]$bool| (|domain#$Memory_12474| $42_TestSome_R_$memory) a) (= (|$x#$42_TestSome_R| (|Select_[$int]$42_TestSome_R| (|contents#$Memory_12474| $42_TestSome_R_$memory) a)) 2)))
 :qid |choicebpl.1736:72|
 :skolemid |36|
)) (let ((a@@0 ($choice_1 $42_TestSome_R_$memory)))
 (and (|$IsValid'address'| a@@0) (and (|Select_[$int]$bool| (|domain#$Memory_12474| $42_TestSome_R_$memory) a@@0) (= (|$x#$42_TestSome_R| (|Select_[$int]$42_TestSome_R| (|contents#$Memory_12474| $42_TestSome_R_$memory) a@@0)) 2)))))
 :qid |choicebpl.1736:15|
 :skolemid |37|
)))
(assert (forall (($t8 (Seq Int)) ) (!  (=> (|$IsValid'vec'u64''| $t8) (=> (exists ((i@@6 Int) ) (!  (and (and (|$IsValid'num'| i@@6) ($InRange ($Range 0 (seq.len $t8)) i@@6)) (= (seq.nth $t8 i@@6) 2))
 :qid |choicebpl.1747:13|
 :skolemid |38|
)) (let ((i@@7 ($choice_4 $t8)))
 (and (and (and (|$IsValid'num'| i@@7) ($InRange ($Range 0 (seq.len $t8)) i@@7)) (= (seq.nth $t8 i@@7) 2)) (let (($$c i@@7))
(forall ((i@@8 Int) ) (!  (=> (< i@@8 $$c) (not (and (and (|$IsValid'num'| i@@8) ($InRange ($Range 0 (seq.len $t8)) i@@8)) (= (seq.nth $t8 i@@8) 2))))
 :qid |choicebpl.1749:32|
 :skolemid |39|
)))))))
 :qid |choicebpl.1746:15|
 :skolemid |40|
)))
(assert (forall (($t9 (Seq Int)) ) (!  (=> (|$IsValid'vec'u64''| $t9) (=> (exists ((i@@9 Int) ) (!  (and (and (|$IsValid'num'| i@@9) ($InRange ($Range 0 (seq.len $t9)) i@@9)) (= (seq.nth $t9 i@@9) 2))
 :qid |choicebpl.1758:13|
 :skolemid |41|
)) (let ((i@@10 ($choice_5 $t9)))
 (and (and (|$IsValid'num'| i@@10) ($InRange ($Range 0 (seq.len $t9)) i@@10)) (= (seq.nth $t9 i@@10) 2)))))
 :qid |choicebpl.1757:15|
 :skolemid |42|
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@11 Int) ) (!  (=> (and (>= i@@11 0) (< i@@11 (seq.len r@@0))) (= (seq.nth r@@0 i@@11) (seq.nth v@@8 (- (- (seq.len v@@8) i@@11) 1))))
 :qid |choicebpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@11))
))))
 :qid |choicebpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@8))
)))
(assert (forall ((|l#0| Bool) (i@@12 Int) ) (! (= (|Select_[$int]$bool| (|lambda#0| |l#0|) i@@12) |l#0|)
 :qid |choicebpl.245:54|
 :skolemid |43|
 :pattern ( (|Select_[$int]$bool| (|lambda#0| |l#0|) i@@12))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $t4 () Int)
(declare-fun _$t1 () Int)
(declare-fun $abort_code@2 () Int)
(declare-fun $42_TestSome_R_$memory@1 () T@$Memory_12474)
(declare-fun $42_TestSome_R_$memory@2 () T@$Memory_12474)
(declare-fun |Store_[$int]$bool| (|T@[Int]Bool| Int Bool) |T@[Int]Bool|)
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?x2 Bool)) (= (|Select_[$int]$bool| (|Store_[$int]$bool| ?x0 ?x1 ?x2) ?x1)  ?x2)))
(assert (forall ( ( ?x0 |T@[Int]Bool|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Bool)) (=>  (not (= ?x1 ?y1)) (= (|Select_[$int]$bool| (|Store_[$int]$bool| ?x0 ?x1 ?x2) ?y1) (|Select_[$int]$bool| ?x0 ?y1)))))
(declare-fun |Store_[$int]$42_TestSome_R| (|T@[Int]$42_TestSome_R| Int T@$42_TestSome_R) |T@[Int]$42_TestSome_R|)
(assert (forall ( ( ?x0 |T@[Int]$42_TestSome_R|) ( ?x1 Int) ( ?x2 T@$42_TestSome_R)) (= (|Select_[$int]$42_TestSome_R| (|Store_[$int]$42_TestSome_R| ?x0 ?x1 ?x2) ?x1)  ?x2)))
(assert (forall ( ( ?x0 |T@[Int]$42_TestSome_R|) ( ?x1 Int) ( ?y1 Int) ( ?x2 T@$42_TestSome_R)) (=>  (not (= ?x1 ?y1)) (= (|Select_[$int]$42_TestSome_R| (|Store_[$int]$42_TestSome_R| ?x0 ?x1 ?x2) ?y1) (|Select_[$int]$42_TestSome_R| ?x0 ?y1)))))
(declare-fun $t9@0 () T@$42_TestSome_R)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun $42_TestSome_R_$memory@@0 () T@$Memory_12474)
(declare-fun _$t0 () Int)
(declare-fun $42_TestSome_R_$memory@0 () T@$Memory_12474)
(declare-fun $t6@0 () T@$42_TestSome_R)
(declare-fun $abort_code@0 () Int)
(declare-fun $t2 () Int)
(declare-fun $t3 () Int)
(push 1)
(set-info :boogie-vc-id $42_TestSome_populate_R$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 16885) (let ((anon15_Else_correct  (=> (and (not $abort_flag@1) (= (ControlFlow 0 14860) (- 0 17226))) (= $t4 _$t1))))
(let ((anon15_Then_correct true))
(let ((anon14_Then$1_correct  (=> (and (= $abort_flag@1 true) (= $abort_code@2 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 14930) 14874) anon15_Then_correct) (=> (= (ControlFlow 0 14930) 14860) anon15_Else_correct)))))
(let ((anon14_Then_correct  (=> (and (|Select_[$int]$bool| (|domain#$Memory_12474| $42_TestSome_R_$memory@1) _$t1) (= (ControlFlow 0 14928) 14930)) anon14_Then$1_correct)))
(let ((anon14_Else_correct  (=> (and (and (not (|Select_[$int]$bool| (|domain#$Memory_12474| $42_TestSome_R_$memory@1) _$t1)) (= $42_TestSome_R_$memory@2 ($Memory_12474 (|Store_[$int]$bool| (|domain#$Memory_12474| $42_TestSome_R_$memory@1) _$t1 true) (|Store_[$int]$42_TestSome_R| (|contents#$Memory_12474| $42_TestSome_R_$memory@1) _$t1 $t9@0)))) (and (= $abort_flag@1 $abort_flag@0) (= $abort_code@2 $abort_code@1))) (and (=> (= (ControlFlow 0 14840) 14874) anon15_Then_correct) (=> (= (ControlFlow 0 14840) 14860) anon15_Else_correct)))))
(let ((anon13_Else_correct  (=> (not $abort_flag@0) (=> (and (|$IsValid'u64'| 2) (= $t9@0 ($42_TestSome_R 2))) (and (=> (= (ControlFlow 0 14822) 14928) anon14_Then_correct) (=> (= (ControlFlow 0 14822) 14840) anon14_Else_correct))))))
(let ((anon13_Then_correct true))
(let ((anon12_Then$1_correct  (=> (= $42_TestSome_R_$memory@1 $42_TestSome_R_$memory@@0) (=> (and (= $abort_flag@0 true) (= $abort_code@1 $EXEC_FAILURE_CODE)) (and (=> (= (ControlFlow 0 14994) 14944) anon13_Then_correct) (=> (= (ControlFlow 0 14994) 14822) anon13_Else_correct))))))
(let ((anon12_Then_correct  (=> (and (|Select_[$int]$bool| (|domain#$Memory_12474| $42_TestSome_R_$memory@@0) _$t0) (= (ControlFlow 0 14992) 14994)) anon12_Then$1_correct)))
(let ((anon12_Else_correct  (=> (not (|Select_[$int]$bool| (|domain#$Memory_12474| $42_TestSome_R_$memory@@0) _$t0)) (=> (and (and (= $42_TestSome_R_$memory@0 ($Memory_12474 (|Store_[$int]$bool| (|domain#$Memory_12474| $42_TestSome_R_$memory@@0) _$t0 true) (|Store_[$int]$42_TestSome_R| (|contents#$Memory_12474| $42_TestSome_R_$memory@@0) _$t0 $t6@0))) (= $42_TestSome_R_$memory@1 $42_TestSome_R_$memory@0)) (and (= $abort_flag@0 false) (= $abort_code@1 $abort_code@0))) (and (=> (= (ControlFlow 0 14802) 14944) anon13_Then_correct) (=> (= (ControlFlow 0 14802) 14822) anon13_Else_correct))))))
(let ((anon0$1_correct  (=> (|$IsValid'address'| _$t0) (=> (and (|$IsValid'address'| _$t1) (forall (($a_0 Int) ) (! (let (($rsc (|Select_[$int]$42_TestSome_R| (|contents#$Memory_12474| $42_TestSome_R_$memory@@0) $a_0)))
(|$IsValid'$42_TestSome_R'| $rsc))
 :qid |choicebpl.1124:20|
 :skolemid |30|
 :pattern ( (|Select_[$int]$42_TestSome_R| (|contents#$Memory_12474| $42_TestSome_R_$memory@@0) $a_0))
))) (=> (and (and (and (= $t2 _$t0) (= $t3 _$t1)) (and (= $t4 ($choice_1 $42_TestSome_R_$memory@@0)) (forall ((a@@1 Int) ) (!  (=> (|$IsValid'address'| a@@1) (not (|Select_[$int]$bool| (|domain#$Memory_12474| $42_TestSome_R_$memory@@0) a@@1)))
 :qid |choicebpl.1141:20|
 :skolemid |31|
)))) (and (and (= _$t0 _$t0) (= _$t1 _$t1)) (and (|$IsValid'u64'| 1) (= $t6@0 ($42_TestSome_R 1))))) (and (=> (= (ControlFlow 0 14784) 14992) anon12_Then_correct) (=> (= (ControlFlow 0 14784) 14802) anon12_Else_correct)))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 16885) 14784) anon0$1_correct)))
anon0_correct)))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 16885)))
(get-value ((ControlFlow 0 14784)))
(get-value ((ControlFlow 0 14802)))
(get-value ((ControlFlow 0 14822)))
(get-value ((ControlFlow 0 14840)))
(get-value ((ControlFlow 0 14860)))
(assert (not (= (ControlFlow 0 14860) (- 17226))))
(check-sat)
(pop 1)
; Invalid
(push 1)
(set-info :boogie-vc-id $42_TestSome_simple$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 17257) (let ((anon0$1_correct@@0  (=> (|$IsValid'u64'| 4) (=> (and (= 4 4) (= (ControlFlow 0 15092) (- 0 17297))) (<= 4 $choice_2)))))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 17257) 15092) anon0$1_correct@@0)))
anon0_correct@@0)))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t1@0 () Int)
(declare-fun $t4@@0 () Int)
(declare-fun _$t0@@0 () Bool)
(push 1)
(set-info :boogie-vc-id $42_TestSome_simple_incorrect$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 17309) (let ((L3_correct  (=> (= $t1@0 $t1@0) (=> (and (= $t4@@0 $choice_3) (= (ControlFlow 0 15212) (- 0 17419))) (= $t1@0 $choice_3)))))
(let ((anon3_Else_correct  (=> (not _$t0@@0) (=> (and (and (|$IsValid'u64'| 5) (= 5 5)) (and (= $t1@0 5) (= (ControlFlow 0 15184) 15212))) L3_correct))))
(let ((anon3_Then_correct  (=> _$t0@@0 (=> (and (and (|$IsValid'u64'| 4) (= 4 4)) (and (= $t1@0 4) (= (ControlFlow 0 15230) 15212))) L3_correct))))
(let ((anon0$1_correct@@1  (=> (= _$t0@@0 _$t0@@0) (and (=> (= (ControlFlow 0 15164) 15230) anon3_Then_correct) (=> (= (ControlFlow 0 15164) 15184) anon3_Else_correct)))))
(let ((anon0_correct@@1  (=> (= (ControlFlow 0 17309) 15164) anon0$1_correct@@1)))
anon0_correct@@1))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 17309)))
(get-value ((ControlFlow 0 15164)))
(get-value ((ControlFlow 0 15230)))
(get-value ((ControlFlow 0 15212)))
(assert (not (= (ControlFlow 0 15212) (- 17419))))
(check-sat)
(pop 1)
; Invalid
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$3$m'@1| () T@$Mutation_9728)
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_9728)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_9728)
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_9728)
(declare-fun $t3@0 () T@$Mutation_9728)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun |$temp_0'vec'u64''@0| () (Seq Int))
(declare-fun $t1 () T@$Mutation_9728)
(declare-fun $t3@@0 () T@$Mutation_9728)
(push 1)
(set-info :boogie-vc-id $42_TestSome_test_min$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 17434) (let ((anon16_Else_correct  (=> (and (and (not false) (= $t0@0 (|v#$Mutation_9728| |inline$$1_Vector_push_back'u64'$3$m'@1|))) (and (= $t0@0 $t0@0) (= (ControlFlow 0 15680) (- 0 17813)))) (= ($choice_4 $t0@0) 1))))
(let ((anon16_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$3$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$3$m'@1| ($Mutation_9728 (|l#$Mutation_9728| |inline$$1_Vector_push_back'u64'$2$m'@1|) (|p#$Mutation_9728| |inline$$1_Vector_push_back'u64'$2$m'@1|) (seq.++ (|v#$Mutation_9728| |inline$$1_Vector_push_back'u64'$2$m'@1|) (seq.unit 2)))) (and (=> (= (ControlFlow 0 15638) 15694) anon16_Then_correct) (=> (= (ControlFlow 0 15638) 15680) anon16_Else_correct)))))
(let ((anon15_Else_correct@@0  (=> (not false) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 15644) 15638)) |inline$$1_Vector_push_back'u64'$3$anon0_correct|))))
(let ((anon15_Then_correct@@0 true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_9728 (|l#$Mutation_9728| |inline$$1_Vector_push_back'u64'$1$m'@1|) (|p#$Mutation_9728| |inline$$1_Vector_push_back'u64'$1$m'@1|) (seq.++ (|v#$Mutation_9728| |inline$$1_Vector_push_back'u64'$1$m'@1|) (seq.unit 3)))) (and (=> (= (ControlFlow 0 15565) 15714) anon15_Then_correct@@0) (=> (= (ControlFlow 0 15565) 15644) anon15_Else_correct@@0)))))
(let ((anon14_Else_correct@@0  (=> (not false) (=> (and (|$IsValid'u64'| 3) (= (ControlFlow 0 15571) 15565)) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon14_Then_correct@@0 true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_9728 (|l#$Mutation_9728| |inline$$1_Vector_push_back'u64'$0$m'@1|) (|p#$Mutation_9728| |inline$$1_Vector_push_back'u64'$0$m'@1|) (seq.++ (|v#$Mutation_9728| |inline$$1_Vector_push_back'u64'$0$m'@1|) (seq.unit 2)))) (and (=> (= (ControlFlow 0 15492) 15728) anon14_Then_correct@@0) (=> (= (ControlFlow 0 15492) 15571) anon14_Else_correct@@0)))))
(let ((anon13_Else_correct@@0  (=> (not false) (=> (and (|$IsValid'u64'| 2) (= (ControlFlow 0 15498) 15492)) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon13_Then_correct@@0 true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_9728 (|l#$Mutation_9728| $t3@0) (|p#$Mutation_9728| $t3@0) (seq.++ (|v#$Mutation_9728| $t3@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 15419) 15742) anon13_Then_correct@@0) (=> (= (ControlFlow 0 15419) 15498) anon13_Else_correct@@0)))))
(let ((anon12_Else_correct@@0  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t3@0 ($Mutation_9728 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (=> (and (and (= |$temp_0'vec'u64''@0| (|v#$Mutation_9728| $t3@0)) (= |$temp_0'vec'u64''@0| |$temp_0'vec'u64''@0|)) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 15425) 15419))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|)))))
(let ((anon12_Then_correct@@0 true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 15318) 15756) anon12_Then_correct@@0) (=> (= (ControlFlow 0 15318) 15425) anon12_Else_correct@@0)))))
(let ((anon0$1_correct@@2  (=> (= (ControlFlow 0 15324) 15318) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct@@2  (=> (= (seq.len (|p#$Mutation_9728| $t1)) 0) (=> (and (= (seq.len (|p#$Mutation_9728| $t3@@0)) 0) (= (ControlFlow 0 15294) 15324)) anon0$1_correct@@2))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 17434) 15294) anon0_correct@@2)))
PreconditionGeneratedEntry_correct)))))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
