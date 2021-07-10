(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-logic ALL)
; done setting options


(declare-datatypes ((T@$1_TestMutRef_R 0)) ((($1_TestMutRef_R (|$value#$1_TestMutRef_R| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_T 0)) ((($1_TestMutRef_T (|$value#$1_TestMutRef_T| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_V 0)) ((($1_TestMutRef_V (|$is#$1_TestMutRef_V| (Seq Int)) (|$ts#$1_TestMutRef_V| (Seq T@$1_TestMutRef_T)) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_N 0)) ((($1_TestMutRef_N (|$value#$1_TestMutRef_N| Int) (|$t#$1_TestMutRef_N| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_28709 0)) ((($Mutation_28709 (|l#$Mutation_28709| T@$Location) (|p#$Mutation_28709| (Seq Int)) (|v#$Mutation_28709| T@$1_TestMutRef_R) ) ) ))
(declare-datatypes ((T@$Mutation_24230 0)) ((($Mutation_24230 (|l#$Mutation_24230| T@$Location) (|p#$Mutation_24230| (Seq Int)) (|v#$Mutation_24230| T@$1_TestMutRef_V) ) ) ))
(declare-datatypes ((T@$Mutation_23208 0)) ((($Mutation_23208 (|l#$Mutation_23208| T@$Location) (|p#$Mutation_23208| (Seq Int)) (|v#$Mutation_23208| T@$1_TestMutRef_N) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_19890 0)) ((($Mutation_19890 (|l#$Mutation_19890| T@$Location) (|p#$Mutation_19890| (Seq Int)) (|v#$Mutation_19890| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_18526 0)) ((($Mutation_18526 (|l#$Mutation_18526| T@$Location) (|p#$Mutation_18526| (Seq Int)) (|v#$Mutation_18526| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Mutation_17780 0)) ((($Mutation_17780 (|l#$Mutation_17780| T@$Location) (|p#$Mutation_17780| (Seq Int)) (|v#$Mutation_17780| (Seq T@$1_TestMutRef_T)) ) ) ))
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
(declare-fun |$IsValid'vec'$1_TestMutRef_T''| ((Seq T@$1_TestMutRef_T)) Bool)
(declare-fun |$IsValid'$1_TestMutRef_T'| (T@$1_TestMutRef_T) Bool)
(declare-fun |$IndexOfVec'$1_TestMutRef_T'| ((Seq T@$1_TestMutRef_T) T@$1_TestMutRef_T) Int)
(declare-fun |$IsValid'vec'u64''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u64'| ((Seq Int) Int) Int)
(declare-fun |$IsValid'vec'u8''| ((Seq Int)) Bool)
(declare-fun |$IndexOfVec'u8'| ((Seq Int) Int) Int)
(declare-fun $1_Hash_sha2 ((Seq Int)) (Seq Int))
(declare-fun $1_Hash_sha3 ((Seq Int)) (Seq Int))
(declare-fun $1_Signature_$ed25519_validate_pubkey ((Seq Int)) Bool)
(declare-fun $1_Signature_$ed25519_verify ((Seq Int) (Seq Int) (Seq Int)) Bool)
(declare-fun |$IsValid'$1_TestMutRef_N'| (T@$1_TestMutRef_N) Bool)
(declare-fun |$IsValid'$1_TestMutRef_R'| (T@$1_TestMutRef_R) Bool)
(declare-fun |$IsValid'$1_TestMutRef_V'| (T@$1_TestMutRef_V) Bool)
(declare-fun ReverseVec_4388 ((Seq Int)) (Seq Int))
(declare-fun ReverseVec_13833 ((Seq T@$1_TestMutRef_T)) (Seq T@$1_TestMutRef_T))
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(assert (= $MAX_U8 255))
(assert (= $MAX_U64 18446744073709551615))
(assert (= $MAX_U128 340282366920938463463374607431768211455))
(assert (forall ((v Int) ) (! (= (|$IsValid'u8'| v)  (and (>= v 0) (<= v $MAX_U8)))
 :qid |mutrefcvc4bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefcvc4bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefcvc4bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefcvc4bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefcvc4bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefcvc4bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefcvc4bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefcvc4bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_TestMutRef_T)) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_TestMutRef_T'| (seq.nth v@@4 i@@0)))
 :qid |mutrefcvc4bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefcvc4bpl.588:41|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_TestMutRef_T)) (e T@$1_TestMutRef_T) ) (! (let ((i@@1 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefcvc4bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefcvc4bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefcvc4bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |mutrefcvc4bpl.770:13|
 :skolemid |20|
))))
 :qid |mutrefcvc4bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |mutrefcvc4bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |mutrefcvc4bpl.783:17|
 :skolemid |23|
)))))
 :qid |mutrefcvc4bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |mutrefcvc4bpl.950:13|
 :skolemid |25|
))))
 :qid |mutrefcvc4bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |mutrefcvc4bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |mutrefcvc4bpl.963:17|
 :skolemid |28|
)))))
 :qid |mutrefcvc4bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefcvc4bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefcvc4bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefcvc4bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefcvc4bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefcvc4bpl.1264:36|
 :skolemid |34|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefcvc4bpl.1278:36|
 :skolemid |35|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefcvc4bpl.1291:36|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefcvc4bpl.1307:36|
 :skolemid |37|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |mutrefcvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |mutrefcvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_TestMutRef_T)) ) (! (let ((r@@1 (ReverseVec_13833 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |mutrefcvc4bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |mutrefcvc4bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13833 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |mutrefcvc4bpl.245:54|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun $t3@0 () T@$Mutation_4535)
(declare-fun $t4@0 () T@$Mutation_4535)
(declare-fun $t3@1 () T@$Mutation_4535)
(declare-fun $t1@0 () Int)
(declare-fun |inline$$1_TestMutRef_identity$0$$temp_0'u64'@1| () Int)
(declare-fun |inline$$1_TestMutRef_identity$0$$temp_0'u64'@2| () Int)
(declare-fun |inline$$1_TestMutRef_identity$0$$temp_0'u64'@3| () Int)
(declare-fun $t0 () T@$Mutation_4535)
(declare-fun $t3 () T@$Mutation_4535)
(declare-fun $t4 () T@$Mutation_4535)
(push 1)
(set-info :boogie-vc-id $1_TestMutRef_call_identity$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 45802) (let ((anon4_Else_correct  (=> (not false) (=> (and (and (and (= |$temp_0'u64'@0| (|v#$Mutation_4535| $t3@0)) (= |$temp_0'u64'@0| |$temp_0'u64'@0|)) (and (|$IsValid'u64'| 2) (= $t4@0 ($Mutation_4535 (|l#$Mutation_4535| $t3@0) (|p#$Mutation_4535| $t3@0) 2)))) (and (and (= $t3@1 ($Mutation_4535 (|l#$Mutation_4535| $t3@0) (|p#$Mutation_4535| $t3@0) (|v#$Mutation_4535| $t4@0))) (= $t1@0 (|v#$Mutation_4535| $t3@1))) (and (= $t1@0 $t1@0) (= (ControlFlow 0 34942) (- 0 46075))))) (= $t1@0 2)))))
(let ((anon4_Then_correct true))
(let ((inline$$1_TestMutRef_identity$0$anon0_correct  (=> (and (= |inline$$1_TestMutRef_identity$0$$temp_0'u64'@1| (|v#$Mutation_4535| $t3@0)) (= |inline$$1_TestMutRef_identity$0$$temp_0'u64'@1| |inline$$1_TestMutRef_identity$0$$temp_0'u64'@1|)) (=> (and (and (= |inline$$1_TestMutRef_identity$0$$temp_0'u64'@2| (|v#$Mutation_4535| $t3@0)) (= |inline$$1_TestMutRef_identity$0$$temp_0'u64'@2| |inline$$1_TestMutRef_identity$0$$temp_0'u64'@2|)) (and (= |inline$$1_TestMutRef_identity$0$$temp_0'u64'@3| (|v#$Mutation_4535| $t3@0)) (= |inline$$1_TestMutRef_identity$0$$temp_0'u64'@3| |inline$$1_TestMutRef_identity$0$$temp_0'u64'@3|))) (and (=> (= (ControlFlow 0 34868) 34960) anon4_Then_correct) (=> (= (ControlFlow 0 34868) 34942) anon4_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'u64'| 1) (= 1 1)) (and (= $t3@0 ($Mutation_4535 ($Local 1) (as seq.empty (Seq Int)) 1)) (= (ControlFlow 0 34876) 34868))) inline$$1_TestMutRef_identity$0$anon0_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_4535| $t0)) 0) (= (seq.len (|p#$Mutation_4535| $t3)) 0)) (and (= (seq.len (|p#$Mutation_4535| $t4)) 0) (= (ControlFlow 0 34718) 34876))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 45802) 34718) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(pop 1)
; Valid
(declare-fun $t6@4 () T@$Mutation_23208)
(declare-fun $t2@1 () T@$1_TestMutRef_N)
(declare-fun _$t0 () Bool)
(declare-fun $t11@0 () Bool)
(declare-fun $t6@2 () T@$Mutation_23208)
(declare-fun $t6@3 () T@$Mutation_23208)
(declare-fun $t7@0 () T@$Mutation_4535)
(declare-fun $t10@0 () Bool)
(declare-fun $t6@0 () T@$Mutation_23208)
(declare-fun $t6@1 () T@$Mutation_23208)
(declare-fun |$temp_0'u64'@0@@0| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path$0$$t2@1 () T@$Mutation_4535)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@3| () Int)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@2| () T@$1_TestMutRef_N)
(declare-fun inline$$1_TestMutRef_return_ref_different_path$0$$t4@1 () T@$Mutation_18526)
(declare-fun inline$$1_TestMutRef_return_ref_different_path$0$$t5@1 () T@$Mutation_4535)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@2| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path$0$$t3@1 () T@$Mutation_4535)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@1| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path$0$$t2@0 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path$0$$t3@0 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path$0$$t4@0 () T@$Mutation_18526)
(declare-fun inline$$1_TestMutRef_return_ref_different_path$0$$t5@0 () T@$Mutation_4535)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@1| () T@$1_TestMutRef_N)
(declare-fun $t5@0 () T@$1_TestMutRef_T)
(declare-fun $t2@0 () T@$1_TestMutRef_N)
(declare-fun $t1 () T@$Mutation_4535)
(declare-fun $t6 () T@$Mutation_23208)
(declare-fun $t7 () T@$Mutation_4535)
(push 1)
(set-info :boogie-vc-id $1_TestMutRef_call_return_ref_different_path$verify)
(assert (not
 (=> (= (ControlFlow 0 0) 46113) (let ((L4_correct  (and (=> (= (ControlFlow 0 35665) (- 0 46680)) (> (|$value#$1_TestMutRef_T| (|$t#$1_TestMutRef_N| (|v#$Mutation_23208| $t6@4))) 0)) (=> (> (|$value#$1_TestMutRef_T| (|$t#$1_TestMutRef_N| (|v#$Mutation_23208| $t6@4))) 0) (=> (and (= $t2@1 (|v#$Mutation_23208| $t6@4)) (= $t2@1 $t2@1)) (and (=> (= (ControlFlow 0 35665) (- 0 46719)) (=> _$t0 (= $t2@1 ($1_TestMutRef_N 5 ($1_TestMutRef_T 2))))) (=> (=> _$t0 (= $t2@1 ($1_TestMutRef_N 5 ($1_TestMutRef_T 2)))) (=> (= (ControlFlow 0 35665) (- 0 46736)) (=> (not _$t0) (= $t2@1 ($1_TestMutRef_N 1 ($1_TestMutRef_T 5))))))))))))
(let ((anon11_Else_correct  (=> (not $t11@0) (=> (and (= $t6@4 $t6@2) (= (ControlFlow 0 35591) 35665)) L4_correct))))
(let ((anon11_Then_correct  (=> (and (and $t11@0 (= $t6@3 ($Mutation_23208 (|l#$Mutation_23208| $t6@2) (|p#$Mutation_23208| $t6@2) ($1_TestMutRef_N (|$value#$1_TestMutRef_N| (|v#$Mutation_23208| $t6@2)) ($1_TestMutRef_T (|v#$Mutation_4535| $t7@0)))))) (and (= $t6@4 $t6@3) (= (ControlFlow 0 35695) 35665))) L4_correct)))
(let ((L2_correct  (=> (= $t11@0  (and (= (|l#$Mutation_23208| $t6@2) (|l#$Mutation_4535| $t7@0)) (let ((pp (|p#$Mutation_23208| $t6@2)))
(let ((cp (|p#$Mutation_4535| $t7@0)))
(let ((pl (seq.len pp)))
(let ((cl (seq.len cp)))
(let ((el (seq.len (seq.++ (seq.unit 1) (seq.unit 0)))))
 (and (and (= cl (+ pl el)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 pl)) (= (seq.nth pp i@@12) (seq.nth cp i@@12)))
 :qid |mutrefcvc4bpl.286:14|
 :skolemid |11|
))) (forall ((i@@13 Int) ) (!  (=> (and (>= i@@13 0) (< i@@13 el)) (or (= (seq.nth (seq.++ (seq.unit 1) (seq.unit 0)) i@@13) (- 0 1)) (= (seq.nth (seq.++ (seq.unit 1) (seq.unit 0)) i@@13) (seq.nth cp (+ pl i@@13)))))
 :qid |mutrefcvc4bpl.287:14|
 :skolemid |12|
)))))))))) (and (=> (= (ControlFlow 0 35585) 35695) anon11_Then_correct) (=> (= (ControlFlow 0 35585) 35591) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (not $t10@0) (=> (and (= $t6@2 $t6@0) (= (ControlFlow 0 35571) 35585)) L2_correct))))
(let ((anon10_Then_correct  (=> (and (and $t10@0 (= $t6@1 ($Mutation_23208 (|l#$Mutation_23208| $t6@0) (|p#$Mutation_23208| $t6@0) ($1_TestMutRef_N (|v#$Mutation_4535| $t7@0) (|$t#$1_TestMutRef_N| (|v#$Mutation_23208| $t6@0)))))) (and (= $t6@2 $t6@1) (= (ControlFlow 0 35713) 35585))) L2_correct)))
(let ((anon9_Else_correct  (=> (and (not false) (= |$temp_0'u64'@0@@0| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path$0$$t2@1))) (=> (and (and (= |$temp_0'u64'@0@@0| |$temp_0'u64'@0@@0|) (|$IsValid'u64'| 5)) (and (= $t7@0 ($Mutation_4535 (|l#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path$0$$t2@1) (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path$0$$t2@1) 5)) (= $t10@0  (and (= (|l#$Mutation_23208| $t6@0) (|l#$Mutation_4535| $t7@0)) (let ((pp@@0 (|p#$Mutation_23208| $t6@0)))
(let ((cp@@0 (|p#$Mutation_4535| $t7@0)))
(let ((pl@@0 (seq.len pp@@0)))
(let ((cl@@0 (seq.len cp@@0)))
 (and (and (= cl@@0 (+ pl@@0 1)) (forall ((i@@14 Int) ) (!  (=> (and (>= i@@14 0) (< i@@14 pl@@0)) (= (seq.nth pp@@0 i@@14) (seq.nth cp@@0 i@@14)))
 :qid |mutrefcvc4bpl.272:14|
 :skolemid |10|
))) (or (= 0 (- 0 1)) (= 0 (seq.nth cp@@0 pl@@0)))))))))))) (and (=> (= (ControlFlow 0 35565) 35713) anon10_Then_correct) (=> (= (ControlFlow 0 35565) 35571) anon10_Else_correct))))))
(let ((anon9_Then_correct true))
(let ((inline$$1_TestMutRef_return_ref_different_path$0$L3_correct  (=> (and (and (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@3| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path$0$$t2@1)) (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@3| |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@3|)) (and (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@2| (|v#$Mutation_23208| $t6@0)) (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@2| |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@2|))) (and (=> (= (ControlFlow 0 35489) 35731) anon9_Then_correct) (=> (= (ControlFlow 0 35489) 35565) anon9_Else_correct)))))
(let ((inline$$1_TestMutRef_return_ref_different_path$0$anon3_Else_correct  (=> (not _$t0) (=> (and (= inline$$1_TestMutRef_return_ref_different_path$0$$t4@1 ($Mutation_18526 (|l#$Mutation_23208| $t6@0) (seq.++ (|p#$Mutation_23208| $t6@0) (seq.unit 1)) (|$t#$1_TestMutRef_N| (|v#$Mutation_23208| $t6@0)))) (= inline$$1_TestMutRef_return_ref_different_path$0$$t5@1 ($Mutation_4535 (|l#$Mutation_18526| inline$$1_TestMutRef_return_ref_different_path$0$$t4@1) (seq.++ (|p#$Mutation_18526| inline$$1_TestMutRef_return_ref_different_path$0$$t4@1) (seq.unit 0)) (|$value#$1_TestMutRef_T| (|v#$Mutation_18526| inline$$1_TestMutRef_return_ref_different_path$0$$t4@1))))) (=> (and (and (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@2| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path$0$$t5@1)) (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@2| |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@2|)) (and (= inline$$1_TestMutRef_return_ref_different_path$0$$t2@1 inline$$1_TestMutRef_return_ref_different_path$0$$t5@1) (= (ControlFlow 0 35461) 35489))) inline$$1_TestMutRef_return_ref_different_path$0$L3_correct)))))
(let ((inline$$1_TestMutRef_return_ref_different_path$0$anon3_Then_correct  (=> (and _$t0 (= inline$$1_TestMutRef_return_ref_different_path$0$$t3@1 ($Mutation_4535 (|l#$Mutation_23208| $t6@0) (seq.++ (|p#$Mutation_23208| $t6@0) (seq.unit 0)) (|$value#$1_TestMutRef_N| (|v#$Mutation_23208| $t6@0))))) (=> (and (and (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@1| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path$0$$t3@1)) (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@1| |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@1|)) (and (= inline$$1_TestMutRef_return_ref_different_path$0$$t2@1 inline$$1_TestMutRef_return_ref_different_path$0$$t3@1) (= (ControlFlow 0 35517) 35489))) inline$$1_TestMutRef_return_ref_different_path$0$L3_correct))))
(let ((inline$$1_TestMutRef_return_ref_different_path$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path$0$$t2@0)) 0) (=> (and (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path$0$$t3@0)) 0) (= (seq.len (|p#$Mutation_18526| inline$$1_TestMutRef_return_ref_different_path$0$$t4@0)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path$0$$t5@0)) 0) (= _$t0 _$t0)) (and (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@1| (|v#$Mutation_23208| $t6@0)) (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@1| |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@1|))) (and (=> (= (ControlFlow 0 35419) 35517) inline$$1_TestMutRef_return_ref_different_path$0$anon3_Then_correct) (=> (= (ControlFlow 0 35419) 35461) inline$$1_TestMutRef_return_ref_different_path$0$anon3_Else_correct)))))))
(let ((anon0$1_correct@@0  (=> (and (and (= _$t0 _$t0) (|$IsValid'u64'| 1)) (and (|$IsValid'u64'| 2) (= $t5@0 ($1_TestMutRef_T 2)))) (and (=> (= (ControlFlow 0 35525) (- 0 46268)) (> (|$value#$1_TestMutRef_T| $t5@0) 0)) (=> (> (|$value#$1_TestMutRef_T| $t5@0) 0) (=> (and (and (= $t2@0 ($1_TestMutRef_N 1 $t5@0)) (= $t2@0 $t2@0)) (and (= $t6@0 ($Mutation_23208 ($Local 2) (as seq.empty (Seq Int)) $t2@0)) (= (ControlFlow 0 35525) 35419))) inline$$1_TestMutRef_return_ref_different_path$0$anon0_correct))))))
(let ((anon0_correct@@0  (=> (and (and (= (seq.len (|p#$Mutation_4535| $t1)) 0) (= (seq.len (|p#$Mutation_23208| $t6)) 0)) (and (= (seq.len (|p#$Mutation_4535| $t7)) 0) (= (ControlFlow 0 35068) 35525))) anon0$1_correct@@0)))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (= (ControlFlow 0 46113) 35068) anon0_correct@@0)))
PreconditionGeneratedEntry_correct@@0))))))))))))))))
))
(check-sat)
(pop 1)
; Undetermined
