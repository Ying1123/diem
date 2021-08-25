(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :strings-exp true)
(set-logic ALL)
; done setting options


(declare-datatypes ((T@$signer 0)) ((($signer (|$addr#$signer| Int) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8552 0)) ((($Mutation_8552 (|l#$Mutation_8552| T@$Location) (|p#$Mutation_8552| (Seq Int)) (|v#$Mutation_8552| (Seq Int)) ) ) ))
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
(declare-sort |T@[Int]Bool| 0)
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
(declare-fun ReverseVec_3283 ((Seq Int)) (Seq Int))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |existsinvectorandybpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |existsinvectorandybpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |existsinvectorandybpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |existsinvectorandybpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |existsinvectorandybpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |existsinvectorandybpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |existsinvectorandybpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |existsinvectorandybpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u64'| (seq.nth v@@4 i@@0)))
 :qid |existsinvectorandybpl.590:13|
 :skolemid |15|
))))
 :qid |existsinvectorandybpl.588:29|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |existsinvectorandybpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |existsinvectorandybpl.603:17|
 :skolemid |18|
)))))
 :qid |existsinvectorandybpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |existsinvectorandybpl.770:13|
 :skolemid |20|
))))
 :qid |existsinvectorandybpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |existsinvectorandybpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |existsinvectorandybpl.783:17|
 :skolemid |23|
)))))
 :qid |existsinvectorandybpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |existsinvectorandybpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |existsinvectorandybpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |existsinvectorandybpl.1039:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |existsinvectorandybpl.1042:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |existsinvectorandybpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |existsinvectorandybpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@8))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |existsinvectorandybpl.245:54|
 :skolemid |43|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun _$t0 () (Seq Int))
(push 1)
(set-info :boogie-vc-id $42_VectorExists_do_nothing_ref$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 13146) (let ((anon0$1_correct  (=> (and (|$IsValid'vec'u64''| _$t0) (= _$t0 _$t0)) (and (=> (= (ControlFlow 0 12707) (- 0 13187)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 12707) (- 0 13194)) (= _$t0 _$t0)) (=> (= _$t0 _$t0) (and (=> (= (ControlFlow 0 12707) (- 0 13201)) (exists ((l Int) ) (!  (and (|$IsValid'u64'| l) (= l (seq.len _$t0)))
 :qid |existsinvectorandybpl.1133:15|
 :skolemid |32|
))) (=> (exists ((l@@0 Int) ) (!  (and (|$IsValid'u64'| l@@0) (= l@@0 (seq.len _$t0)))
 :qid |existsinvectorandybpl.1133:15|
 :skolemid |32|
)) (and (=> (= (ControlFlow 0 12707) (- 0 13220)) (exists ((l@@1 Int) ) (!  (and (and (|$IsValid'u64'| l@@1) (= l@@1 (seq.len _$t0))) (= l@@1 (seq.len _$t0)))
 :qid |existsinvectorandybpl.1138:15|
 :skolemid |33|
))) (=> (exists ((l@@2 Int) ) (!  (and (and (|$IsValid'u64'| l@@2) (= l@@2 (seq.len _$t0))) (= l@@2 (seq.len _$t0)))
 :qid |existsinvectorandybpl.1138:15|
 :skolemid |33|
)) (and (=> (= (ControlFlow 0 12707) (- 0 13248)) (=> (let (($range_0 _$t0))
(exists (($i_1 Int) ) (!  (and (and (>= $i_1 0) (< $i_1 (seq.len $range_0))) (let ((x (seq.nth $range_0 $i_1)))
(= x 0)))
 :qid |existsinvectorandybpl.1082:33|
 :skolemid |29|
))) (let (($range_0@@0 _$t0))
(exists (($i_1@@0 Int) ) (!  (and (and (>= $i_1@@0 0) (< $i_1@@0 (seq.len $range_0@@0))) (let ((x@@0 (seq.nth $range_0@@0 $i_1@@0)))
(= x@@0 0)))
 :qid |existsinvectorandybpl.1082:33|
 :skolemid |29|
))))) (=> (=> (let (($range_0@@1 _$t0))
(exists (($i_1@@1 Int) ) (!  (and (and (>= $i_1@@1 0) (< $i_1@@1 (seq.len $range_0@@1))) (let ((x@@1 (seq.nth $range_0@@1 $i_1@@1)))
(= x@@1 0)))
 :qid |existsinvectorandybpl.1082:33|
 :skolemid |29|
))) (let (($range_0@@2 _$t0))
(exists (($i_1@@2 Int) ) (!  (and (and (>= $i_1@@2 0) (< $i_1@@2 (seq.len $range_0@@2))) (let ((x@@2 (seq.nth $range_0@@2 $i_1@@2)))
(= x@@2 0)))
 :qid |existsinvectorandybpl.1082:33|
 :skolemid |29|
)))) (and (=> (= (ControlFlow 0 12707) (- 0 13263)) (=> (let (($range_2 ($Range 0 (seq.len _$t0))))
(exists (($i_3 Int) ) (!  (and ($InRange $range_2 $i_3) (let ((i@@8 $i_3))
(= (seq.nth _$t0 i@@8) 0)))
 :qid |existsinvectorandybpl.1088:52|
 :skolemid |30|
))) (let (($range_2@@0 ($Range 0 (seq.len _$t0))))
(exists (($i_3@@0 Int) ) (!  (and ($InRange $range_2@@0 $i_3@@0) (let ((i@@9 $i_3@@0))
(= (seq.nth _$t0 i@@9) 0)))
 :qid |existsinvectorandybpl.1088:52|
 :skolemid |30|
))))) (=> (=> (let (($range_2@@1 ($Range 0 (seq.len _$t0))))
(exists (($i_3@@1 Int) ) (!  (and ($InRange $range_2@@1 $i_3@@1) (let ((i@@10 $i_3@@1))
(= (seq.nth _$t0 i@@10) 0)))
 :qid |existsinvectorandybpl.1088:52|
 :skolemid |30|
))) (let (($range_2@@2 ($Range 0 (seq.len _$t0))))
(exists (($i_3@@2 Int) ) (!  (and ($InRange $range_2@@2 $i_3@@2) (let ((i@@11 $i_3@@2))
(= (seq.nth _$t0 i@@11) 0)))
 :qid |existsinvectorandybpl.1088:52|
 :skolemid |30|
)))) (and (=> (= (ControlFlow 0 12707) (- 0 13278)) (=> (exists ((i@@12 Int) ) (!  (and (and (|$IsValid'u64'| i@@12) (and (<= 0 i@@12) (< i@@12 (seq.len _$t0)))) (= (seq.nth _$t0 i@@12) 0))
 :qid |existsinvectorandybpl.1094:13|
 :skolemid |31|
)) (exists ((i@@13 Int) ) (!  (and (and (|$IsValid'u64'| i@@13) (and (<= 0 i@@13) (< i@@13 (seq.len _$t0)))) (= (seq.nth _$t0 i@@13) 0))
 :qid |existsinvectorandybpl.1094:13|
 :skolemid |31|
)))) (=> (=> (exists ((i@@14 Int) ) (!  (and (and (|$IsValid'u64'| i@@14) (and (<= 0 i@@14) (< i@@14 (seq.len _$t0)))) (= (seq.nth _$t0 i@@14) 0))
 :qid |existsinvectorandybpl.1094:13|
 :skolemid |31|
)) (exists ((i@@15 Int) ) (!  (and (and (|$IsValid'u64'| i@@15) (and (<= 0 i@@15) (< i@@15 (seq.len _$t0)))) (= (seq.nth _$t0 i@@15) 0))
 :qid |existsinvectorandybpl.1094:13|
 :skolemid |31|
))) (and (=> (= (ControlFlow 0 12707) (- 0 13293)) (forall ((e@@1 Int) ) (!  (=> (|$IsValid'u64'| e@@1) (=> (let (($range_0@@3 _$t0))
(exists (($i_1@@3 Int) ) (!  (and (and (>= $i_1@@3 0) (< $i_1@@3 (seq.len $range_0@@3))) (let ((x@@3 (seq.nth $range_0@@3 $i_1@@3)))
(= x@@3 e@@1)))
 :qid |existsinvectorandybpl.1082:33|
 :skolemid |29|
))) (let (($range_0@@4 _$t0))
(exists (($i_1@@4 Int) ) (!  (and (and (>= $i_1@@4 0) (< $i_1@@4 (seq.len $range_0@@4))) (let ((x@@4 (seq.nth $range_0@@4 $i_1@@4)))
(= x@@4 e@@1)))
 :qid |existsinvectorandybpl.1082:33|
 :skolemid |29|
)))))
 :qid |existsinvectorandybpl.1158:15|
 :skolemid |34|
))) (=> (forall ((e@@2 Int) ) (!  (=> (|$IsValid'u64'| e@@2) (=> (let (($range_0@@5 _$t0))
(exists (($i_1@@5 Int) ) (!  (and (and (>= $i_1@@5 0) (< $i_1@@5 (seq.len $range_0@@5))) (let ((x@@5 (seq.nth $range_0@@5 $i_1@@5)))
(= x@@5 e@@2)))
 :qid |existsinvectorandybpl.1082:33|
 :skolemid |29|
))) (let (($range_0@@6 _$t0))
(exists (($i_1@@6 Int) ) (!  (and (and (>= $i_1@@6 0) (< $i_1@@6 (seq.len $range_0@@6))) (let ((x@@6 (seq.nth $range_0@@6 $i_1@@6)))
(= x@@6 e@@2)))
 :qid |existsinvectorandybpl.1082:33|
 :skolemid |29|
)))))
 :qid |existsinvectorandybpl.1158:15|
 :skolemid |34|
)) (and (=> (= (ControlFlow 0 12707) (- 0 13317)) (forall ((e@@3 Int) ) (!  (=> (|$IsValid'u64'| e@@3) (=> (let (($range_2@@3 ($Range 0 (seq.len _$t0))))
(exists (($i_3@@3 Int) ) (!  (and ($InRange $range_2@@3 $i_3@@3) (let ((i@@16 $i_3@@3))
(= (seq.nth _$t0 i@@16) e@@3)))
 :qid |existsinvectorandybpl.1088:52|
 :skolemid |30|
))) (let (($range_2@@4 ($Range 0 (seq.len _$t0))))
(exists (($i_3@@4 Int) ) (!  (and ($InRange $range_2@@4 $i_3@@4) (let ((i@@17 $i_3@@4))
(= (seq.nth _$t0 i@@17) e@@3)))
 :qid |existsinvectorandybpl.1088:52|
 :skolemid |30|
)))))
 :qid |existsinvectorandybpl.1163:15|
 :skolemid |35|
))) (=> (forall ((e@@4 Int) ) (!  (=> (|$IsValid'u64'| e@@4) (=> (let (($range_2@@5 ($Range 0 (seq.len _$t0))))
(exists (($i_3@@5 Int) ) (!  (and ($InRange $range_2@@5 $i_3@@5) (let ((i@@18 $i_3@@5))
(= (seq.nth _$t0 i@@18) e@@4)))
 :qid |existsinvectorandybpl.1088:52|
 :skolemid |30|
))) (let (($range_2@@6 ($Range 0 (seq.len _$t0))))
(exists (($i_3@@6 Int) ) (!  (and ($InRange $range_2@@6 $i_3@@6) (let ((i@@19 $i_3@@6))
(= (seq.nth _$t0 i@@19) e@@4)))
 :qid |existsinvectorandybpl.1088:52|
 :skolemid |30|
)))))
 :qid |existsinvectorandybpl.1163:15|
 :skolemid |35|
)) (=> (= (ControlFlow 0 12707) (- 0 13341)) (forall ((e@@5 Int) ) (!  (=> (|$IsValid'u64'| e@@5) (=> (exists ((i@@20 Int) ) (!  (and (and (|$IsValid'u64'| i@@20) (and (<= 0 i@@20) (< i@@20 (seq.len _$t0)))) (= (seq.nth _$t0 i@@20) e@@5))
 :qid |existsinvectorandybpl.1094:13|
 :skolemid |31|
)) (exists ((i@@21 Int) ) (!  (and (and (|$IsValid'u64'| i@@21) (and (<= 0 i@@21) (< i@@21 (seq.len _$t0)))) (= (seq.nth _$t0 i@@21) e@@5))
 :qid |existsinvectorandybpl.1094:13|
 :skolemid |31|
))))
 :qid |existsinvectorandybpl.1168:15|
 :skolemid |36|
))))))))))))))))))))))))
(let ((anon0_correct  (=> (= (ControlFlow 0 13146) 12707) anon0$1_correct)))
anon0_correct)))
))
(check-sat)
(pop 1)
; Valid
(declare-fun _$t0@@0 () T@$Mutation_8552)
(declare-fun $t1@0 () (Seq Int))
(declare-fun |$temp_0'vec'u64''@0| () (Seq Int))
(declare-fun |$temp_0'vec'u64''@1| () (Seq Int))
(push 1)
(set-info :boogie-vc-id $42_VectorExists_do_nothing_ref_mut$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 13380) (let ((anon0$1_correct@@0  (=> (= (|l#$Mutation_8552| _$t0@@0) ($Param 0)) (=> (and (|$IsValid'vec'u64''| (|v#$Mutation_8552| _$t0@@0)) (= $t1@0 (|v#$Mutation_8552| _$t0@@0))) (=> (and (and (= |$temp_0'vec'u64''@0| (|v#$Mutation_8552| _$t0@@0)) (= |$temp_0'vec'u64''@0| |$temp_0'vec'u64''@0|)) (and (= |$temp_0'vec'u64''@1| (|v#$Mutation_8552| _$t0@@0)) (= |$temp_0'vec'u64''@1| |$temp_0'vec'u64''@1|))) (and (=> (= (ControlFlow 0 13056) (- 0 13472)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 13056) (- 0 13479)) (= $t1@0 (|v#$Mutation_8552| _$t0@@0))) (=> (= $t1@0 (|v#$Mutation_8552| _$t0@@0)) (and (=> (= (ControlFlow 0 13056) (- 0 13488)) (exists ((l@@3 Int) ) (!  (and (|$IsValid'u64'| l@@3) (= l@@3 (seq.len $t1@0)))
 :qid |existsinvectorandybpl.1221:15|
 :skolemid |37|
))) (=> (exists ((l@@4 Int) ) (!  (and (|$IsValid'u64'| l@@4) (= l@@4 (seq.len $t1@0)))
 :qid |existsinvectorandybpl.1221:15|
 :skolemid |37|
)) (and (=> (= (ControlFlow 0 13056) (- 0 13507)) (exists ((l@@5 Int) ) (!  (and (|$IsValid'u64'| l@@5) (= l@@5 (seq.len (|v#$Mutation_8552| _$t0@@0))))
 :qid |existsinvectorandybpl.1226:15|
 :skolemid |38|
))) (=> (exists ((l@@6 Int) ) (!  (and (|$IsValid'u64'| l@@6) (= l@@6 (seq.len (|v#$Mutation_8552| _$t0@@0))))
 :qid |existsinvectorandybpl.1226:15|
 :skolemid |38|
)) (and (=> (= (ControlFlow 0 13056) (- 0 13528)) (exists ((l@@7 Int) ) (!  (and (and (|$IsValid'u64'| l@@7) (= l@@7 (seq.len $t1@0))) (= l@@7 (seq.len (|v#$Mutation_8552| _$t0@@0))))
 :qid |existsinvectorandybpl.1231:15|
 :skolemid |39|
))) (=> (exists ((l@@8 Int) ) (!  (and (and (|$IsValid'u64'| l@@8) (= l@@8 (seq.len $t1@0))) (= l@@8 (seq.len (|v#$Mutation_8552| _$t0@@0))))
 :qid |existsinvectorandybpl.1231:15|
 :skolemid |39|
)) (and (=> (= (ControlFlow 0 13056) (- 0 13558)) (=> (let (($range_0@@7 $t1@0))
(exists (($i_1@@7 Int) ) (!  (and (and (>= $i_1@@7 0) (< $i_1@@7 (seq.len $range_0@@7))) (let ((x@@7 (seq.nth $range_0@@7 $i_1@@7)))
(= x@@7 0)))
 :qid |existsinvectorandybpl.1082:33|
 :skolemid |29|
))) (let (($range_0@@8 (|v#$Mutation_8552| _$t0@@0)))
(exists (($i_1@@8 Int) ) (!  (and (and (>= $i_1@@8 0) (< $i_1@@8 (seq.len $range_0@@8))) (let ((x@@8 (seq.nth $range_0@@8 $i_1@@8)))
(= x@@8 0)))
 :qid |existsinvectorandybpl.1082:33|
 :skolemid |29|
))))) (=> (=> (let (($range_0@@9 $t1@0))
(exists (($i_1@@9 Int) ) (!  (and (and (>= $i_1@@9 0) (< $i_1@@9 (seq.len $range_0@@9))) (let ((x@@9 (seq.nth $range_0@@9 $i_1@@9)))
(= x@@9 0)))
 :qid |existsinvectorandybpl.1082:33|
 :skolemid |29|
))) (let (($range_0@@10 (|v#$Mutation_8552| _$t0@@0)))
(exists (($i_1@@10 Int) ) (!  (and (and (>= $i_1@@10 0) (< $i_1@@10 (seq.len $range_0@@10))) (let ((x@@10 (seq.nth $range_0@@10 $i_1@@10)))
(= x@@10 0)))
 :qid |existsinvectorandybpl.1082:33|
 :skolemid |29|
)))) (and (=> (= (ControlFlow 0 13056) (- 0 13575)) (=> (let (($range_2@@7 ($Range 0 (seq.len $t1@0))))
(exists (($i_3@@7 Int) ) (!  (and ($InRange $range_2@@7 $i_3@@7) (let ((i@@22 $i_3@@7))
(= (seq.nth $t1@0 i@@22) 0)))
 :qid |existsinvectorandybpl.1088:52|
 :skolemid |30|
))) (let (($range_2@@8 ($Range 0 (seq.len (|v#$Mutation_8552| _$t0@@0)))))
(exists (($i_3@@8 Int) ) (!  (and ($InRange $range_2@@8 $i_3@@8) (let ((i@@23 $i_3@@8))
(= (seq.nth (|v#$Mutation_8552| _$t0@@0) i@@23) 0)))
 :qid |existsinvectorandybpl.1088:52|
 :skolemid |30|
))))) (=> (=> (let (($range_2@@9 ($Range 0 (seq.len $t1@0))))
(exists (($i_3@@9 Int) ) (!  (and ($InRange $range_2@@9 $i_3@@9) (let ((i@@24 $i_3@@9))
(= (seq.nth $t1@0 i@@24) 0)))
 :qid |existsinvectorandybpl.1088:52|
 :skolemid |30|
))) (let (($range_2@@10 ($Range 0 (seq.len (|v#$Mutation_8552| _$t0@@0)))))
(exists (($i_3@@10 Int) ) (!  (and ($InRange $range_2@@10 $i_3@@10) (let ((i@@25 $i_3@@10))
(= (seq.nth (|v#$Mutation_8552| _$t0@@0) i@@25) 0)))
 :qid |existsinvectorandybpl.1088:52|
 :skolemid |30|
)))) (and (=> (= (ControlFlow 0 13056) (- 0 13592)) (=> (exists ((i@@26 Int) ) (!  (and (and (|$IsValid'u64'| i@@26) (and (<= 0 i@@26) (< i@@26 (seq.len $t1@0)))) (= (seq.nth $t1@0 i@@26) 0))
 :qid |existsinvectorandybpl.1094:13|
 :skolemid |31|
)) (exists ((i@@27 Int) ) (!  (and (and (|$IsValid'u64'| i@@27) (and (<= 0 i@@27) (< i@@27 (seq.len (|v#$Mutation_8552| _$t0@@0))))) (= (seq.nth (|v#$Mutation_8552| _$t0@@0) i@@27) 0))
 :qid |existsinvectorandybpl.1094:13|
 :skolemid |31|
)))) (=> (=> (exists ((i@@28 Int) ) (!  (and (and (|$IsValid'u64'| i@@28) (and (<= 0 i@@28) (< i@@28 (seq.len $t1@0)))) (= (seq.nth $t1@0 i@@28) 0))
 :qid |existsinvectorandybpl.1094:13|
 :skolemid |31|
)) (exists ((i@@29 Int) ) (!  (and (and (|$IsValid'u64'| i@@29) (and (<= 0 i@@29) (< i@@29 (seq.len (|v#$Mutation_8552| _$t0@@0))))) (= (seq.nth (|v#$Mutation_8552| _$t0@@0) i@@29) 0))
 :qid |existsinvectorandybpl.1094:13|
 :skolemid |31|
))) (and (=> (= (ControlFlow 0 13056) (- 0 13609)) (forall ((e@@6 Int) ) (!  (=> (|$IsValid'u64'| e@@6) (=> (let (($range_0@@11 $t1@0))
(exists (($i_1@@11 Int) ) (!  (and (and (>= $i_1@@11 0) (< $i_1@@11 (seq.len $range_0@@11))) (let ((x@@11 (seq.nth $range_0@@11 $i_1@@11)))
(= x@@11 e@@6)))
 :qid |existsinvectorandybpl.1082:33|
 :skolemid |29|
))) (let (($range_0@@12 (|v#$Mutation_8552| _$t0@@0)))
(exists (($i_1@@12 Int) ) (!  (and (and (>= $i_1@@12 0) (< $i_1@@12 (seq.len $range_0@@12))) (let ((x@@12 (seq.nth $range_0@@12 $i_1@@12)))
(= x@@12 e@@6)))
 :qid |existsinvectorandybpl.1082:33|
 :skolemid |29|
)))))
 :qid |existsinvectorandybpl.1251:15|
 :skolemid |40|
))) (=> (forall ((e@@7 Int) ) (!  (=> (|$IsValid'u64'| e@@7) (=> (let (($range_0@@13 $t1@0))
(exists (($i_1@@13 Int) ) (!  (and (and (>= $i_1@@13 0) (< $i_1@@13 (seq.len $range_0@@13))) (let ((x@@13 (seq.nth $range_0@@13 $i_1@@13)))
(= x@@13 e@@7)))
 :qid |existsinvectorandybpl.1082:33|
 :skolemid |29|
))) (let (($range_0@@14 (|v#$Mutation_8552| _$t0@@0)))
(exists (($i_1@@14 Int) ) (!  (and (and (>= $i_1@@14 0) (< $i_1@@14 (seq.len $range_0@@14))) (let ((x@@14 (seq.nth $range_0@@14 $i_1@@14)))
(= x@@14 e@@7)))
 :qid |existsinvectorandybpl.1082:33|
 :skolemid |29|
)))))
 :qid |existsinvectorandybpl.1251:15|
 :skolemid |40|
)) (and (=> (= (ControlFlow 0 13056) (- 0 13635)) (forall ((e@@8 Int) ) (!  (=> (|$IsValid'u64'| e@@8) (=> (let (($range_2@@11 ($Range 0 (seq.len $t1@0))))
(exists (($i_3@@11 Int) ) (!  (and ($InRange $range_2@@11 $i_3@@11) (let ((i@@30 $i_3@@11))
(= (seq.nth $t1@0 i@@30) e@@8)))
 :qid |existsinvectorandybpl.1088:52|
 :skolemid |30|
))) (let (($range_2@@12 ($Range 0 (seq.len (|v#$Mutation_8552| _$t0@@0)))))
(exists (($i_3@@12 Int) ) (!  (and ($InRange $range_2@@12 $i_3@@12) (let ((i@@31 $i_3@@12))
(= (seq.nth (|v#$Mutation_8552| _$t0@@0) i@@31) e@@8)))
 :qid |existsinvectorandybpl.1088:52|
 :skolemid |30|
)))))
 :qid |existsinvectorandybpl.1256:15|
 :skolemid |41|
))) (=> (forall ((e@@9 Int) ) (!  (=> (|$IsValid'u64'| e@@9) (=> (let (($range_2@@13 ($Range 0 (seq.len $t1@0))))
(exists (($i_3@@13 Int) ) (!  (and ($InRange $range_2@@13 $i_3@@13) (let ((i@@32 $i_3@@13))
(= (seq.nth $t1@0 i@@32) e@@9)))
 :qid |existsinvectorandybpl.1088:52|
 :skolemid |30|
))) (let (($range_2@@14 ($Range 0 (seq.len (|v#$Mutation_8552| _$t0@@0)))))
(exists (($i_3@@14 Int) ) (!  (and ($InRange $range_2@@14 $i_3@@14) (let ((i@@33 $i_3@@14))
(= (seq.nth (|v#$Mutation_8552| _$t0@@0) i@@33) e@@9)))
 :qid |existsinvectorandybpl.1088:52|
 :skolemid |30|
)))))
 :qid |existsinvectorandybpl.1256:15|
 :skolemid |41|
)) (=> (= (ControlFlow 0 13056) (- 0 13661)) (forall ((e@@10 Int) ) (!  (=> (|$IsValid'u64'| e@@10) (=> (exists ((i@@34 Int) ) (!  (and (and (|$IsValid'u64'| i@@34) (and (<= 0 i@@34) (< i@@34 (seq.len $t1@0)))) (= (seq.nth $t1@0 i@@34) e@@10))
 :qid |existsinvectorandybpl.1094:13|
 :skolemid |31|
)) (exists ((i@@35 Int) ) (!  (and (and (|$IsValid'u64'| i@@35) (and (<= 0 i@@35) (< i@@35 (seq.len (|v#$Mutation_8552| _$t0@@0))))) (= (seq.nth (|v#$Mutation_8552| _$t0@@0) i@@35) e@@10))
 :qid |existsinvectorandybpl.1094:13|
 :skolemid |31|
))))
 :qid |existsinvectorandybpl.1261:15|
 :skolemid |42|
))))))))))))))))))))))))))))
(let ((anon0_correct@@0  (=> (= (ControlFlow 0 13380) 13056) anon0$1_correct@@0)))
anon0_correct@@0)))
))
(check-sat)
(pop 1)
; Valid
