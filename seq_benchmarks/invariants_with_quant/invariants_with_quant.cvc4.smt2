(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_3430 0)) ((($Mutation_3430 (|l#$Mutation_3430| T@$Location) (|p#$Mutation_3430| (Seq Int)) (|v#$Mutation_3430| Int) ) ) ))
(declare-datatypes ((T@$Mutation_8370 0)) ((($Mutation_8370 (|l#$Mutation_8370| T@$Location) (|p#$Mutation_8370| (Seq Int)) (|v#$Mutation_8370| (Seq Int)) ) ) ))
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
 :qid |invariantswithquantcvc4bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |invariantswithquantcvc4bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |invariantswithquantcvc4bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |invariantswithquantcvc4bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |invariantswithquantcvc4bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |invariantswithquantcvc4bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |invariantswithquantcvc4bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |invariantswithquantcvc4bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'u64'| (seq.nth v@@4 i@@0)))
 :qid |invariantswithquantcvc4bpl.590:13|
 :skolemid |15|
))))
 :qid |invariantswithquantcvc4bpl.588:29|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'u64''| v@@4))
)))
(assert (forall ((v@@5 (Seq Int)) (e Int) ) (! (let ((i@@1 (|$IndexOfVec'u64'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |invariantswithquantcvc4bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |invariantswithquantcvc4bpl.603:17|
 :skolemid |18|
)))))
 :qid |invariantswithquantcvc4bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'u64'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u8'| (seq.nth v@@6 i@@3)))
 :qid |invariantswithquantcvc4bpl.770:13|
 :skolemid |20|
))))
 :qid |invariantswithquantcvc4bpl.768:28|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u8''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u8'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |invariantswithquantcvc4bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |invariantswithquantcvc4bpl.783:17|
 :skolemid |23|
)))))
 :qid |invariantswithquantcvc4bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u8'| v@@7 e@@0))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |invariantswithquantcvc4bpl.956:15|
 :skolemid |25|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |invariantswithquantcvc4bpl.972:15|
 :skolemid |26|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |invariantswithquantcvc4bpl.1019:15|
 :skolemid |27|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |invariantswithquantcvc4bpl.1022:15|
 :skolemid |28|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_3283 v@@8)))
 (and (= (seq.len r@@0) (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len r@@0))) (= (seq.nth r@@0 i@@6) (seq.nth v@@8 (- (- (seq.len v@@8) i@@6) 1))))
 :qid |invariantswithquantcvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@6))
))))
 :qid |invariantswithquantcvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_3283 v@@8))
)))
(assert (forall ((|l#0| Bool) (i@@7 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7) |l#0|)
 :qid |invariantswithquantcvc4bpl.245:54|
 :skolemid |33|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@7))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t0@2 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$2$m'@1| () T@$Mutation_8370)
(declare-fun $t6@0 () T@$Mutation_8370)
(declare-fun $t0@1 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_8370)
(declare-fun $t4@0 () T@$Mutation_8370)
(declare-fun $t0@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_8370)
(declare-fun $t2@0 () T@$Mutation_8370)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t2 () T@$Mutation_8370)
(declare-fun $t4 () T@$Mutation_8370)
(declare-fun $t6 () T@$Mutation_8370)
(push 1)
(set-info :boogie-vc-id $42_TestQuantInvariant_vector_of_proper_positives$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 12913) (let ((anon13_Else_correct  (=> (not false) (=> (and (= $t0@2 (|v#$Mutation_8370| |inline$$1_Vector_push_back'u64'$2$m'@1|)) (= $t0@2 $t0@2)) (and (=> (= (ControlFlow 0 12705) (- 0 13276)) (not false)) (=> (not false) (and (=> (= (ControlFlow 0 12705) (- 0 13283)) (let (($range_0 $t0@2))
(forall (($i_1 Int) ) (!  (=> (and (>= $i_1 0) (< $i_1 (seq.len $range_0))) (let ((n (seq.nth $range_0 $i_1)))
(> n 0)))
 :qid |invariantswithquantcvc4bpl.1189:37|
 :skolemid |29|
)))) (=> (let (($range_0 $t0@2))
(forall (($i_1@@0 Int) ) (!  (=> (and (>= $i_1@@0 0) (< $i_1@@0 (seq.len $range_0))) (let ((n (seq.nth $range_0 $i_1@@0)))
(> n 0)))
 :qid |invariantswithquantcvc4bpl.1189:37|
 :skolemid |29|
))) (and (=> (= (ControlFlow 0 12705) (- 0 13314)) (let (($range_0@@0 ($Range 0 (seq.len $t0@2))))
(let (($range_1 ($Range 0 (seq.len $t0@2))))
(forall (($i_2 Int) ($i_3 Int) ) (!  (=> ($InRange $range_0@@0 $i_2) (=> ($InRange $range_1 $i_3) (let ((i@@8 $i_2))
(let ((j@@1 $i_3))
 (=> (= (seq.nth $t0@2 i@@8) (seq.nth $t0@2 j@@1)) (= i@@8 j@@1))))))
 :qid |invariantswithquantcvc4bpl.1195:97|
 :skolemid |30|
))))) (=> (let (($range_0@@0 ($Range 0 (seq.len $t0@2))))
(let (($range_1 ($Range 0 (seq.len $t0@2))))
(forall (($i_2@@0 Int) ($i_3@@0 Int) ) (!  (=> ($InRange $range_0@@0 $i_2@@0) (=> ($InRange $range_1 $i_3@@0) (let ((i@@8 $i_2@@0))
(let ((j@@1 $i_3@@0))
 (=> (= (seq.nth $t0@2 i@@8) (seq.nth $t0@2 j@@1)) (= i@@8 j@@1))))))
 :qid |invariantswithquantcvc4bpl.1195:97|
 :skolemid |30|
)))) (and (=> (= (ControlFlow 0 12705) (- 0 13382)) (forall ((i@@9 Int) (j@@2 Int) ) (!  (=> (|$IsValid'u64'| i@@9) (=> (|$IsValid'u64'| j@@2) (=> (and (and (and (and (= (seq.nth $t0@2 i@@9) (seq.nth $t0@2 j@@2)) (>= i@@9 0)) (< i@@9 (seq.len $t0@2))) (>= j@@2 0)) (< j@@2 (seq.len $t0@2))) (= i@@9 j@@2))))
 :qid |invariantswithquantcvc4bpl.1202:15|
 :skolemid |31|
 :pattern ( (seq.nth $t0@2 i@@9) (seq.nth $t0@2 j@@2))
))) (=> (forall ((i@@10 Int) (j@@3 Int) ) (!  (=> (|$IsValid'u64'| i@@10) (=> (|$IsValid'u64'| j@@3) (=> (and (and (and (and (= (seq.nth $t0@2 i@@10) (seq.nth $t0@2 j@@3)) (>= i@@10 0)) (< i@@10 (seq.len $t0@2))) (>= j@@3 0)) (< j@@3 (seq.len $t0@2))) (= i@@10 j@@3))))
 :qid |invariantswithquantcvc4bpl.1202:15|
 :skolemid |31|
 :pattern ( (seq.nth $t0@2 i@@10) (seq.nth $t0@2 j@@3))
)) (=> (= (ControlFlow 0 12705) (- 0 13465)) (let (($range_0@@1 ($Range 0 (seq.len $t0@2))))
(forall (($i_1@@1 Int) ) (!  (=> ($InRange $range_0@@1 $i_1@@1) (let ((i@@11 $i_1@@1))
(let ((i@@12 (seq.nth $t0@2 i@@11)))
(> i@@12 0))))
 :qid |invariantswithquantcvc4bpl.1207:56|
 :skolemid |32|
 :pattern ( (let ((i@@13 $i_1@@1))
(seq.nth $t0@2 i@@13)))
))))))))))))))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$2$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$2$m'@1| ($Mutation_8370 (|l#$Mutation_8370| $t6@0) (|p#$Mutation_8370| $t6@0) (seq.++ (|v#$Mutation_8370| $t6@0) (seq.unit 3)))) (and (=> (= (ControlFlow 0 12425) 12719) anon13_Then_correct) (=> (= (ControlFlow 0 12425) 12705) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (not false) (=> (and (and (= $t0@1 (|v#$Mutation_8370| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t6@0 ($Mutation_8370 ($Local 0) (as seq.empty (Seq Int)) $t0@1))) (and (|$IsValid'u64'| 3) (= (ControlFlow 0 12431) 12425))) |inline$$1_Vector_push_back'u64'$2$anon0_correct|))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_8370 (|l#$Mutation_8370| $t4@0) (|p#$Mutation_8370| $t4@0) (seq.++ (|v#$Mutation_8370| $t4@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 12338) 12743) anon12_Then_correct) (=> (= (ControlFlow 0 12338) 12431) anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (not false) (=> (and (and (= $t0@0 (|v#$Mutation_8370| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t4@0 ($Mutation_8370 ($Local 0) (as seq.empty (Seq Int)) $t0@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 12344) 12338))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon11_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_8370 (|l#$Mutation_8370| $t2@0) (|p#$Mutation_8370| $t2@0) (seq.++ (|v#$Mutation_8370| $t2@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 12251) 12757) anon11_Then_correct) (=> (= (ControlFlow 0 12251) 12344) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= $t2@0 ($Mutation_8370 ($Local 0) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 12257) 12251))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon10_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 12162) 12771) anon10_Then_correct) (=> (= (ControlFlow 0 12162) 12257) anon10_Else_correct)))))
(let ((anon0$1_correct  (=> (= (ControlFlow 0 12168) 12162) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_8370| $t2)) 0) (= (seq.len (|p#$Mutation_8370| $t4)) 0)) (and (= (seq.len (|p#$Mutation_8370| $t6)) 0) (= (ControlFlow 0 12138) 12168))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 12913) 12138) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
