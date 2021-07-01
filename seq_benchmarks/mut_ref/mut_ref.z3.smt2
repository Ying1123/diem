(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-datatypes ((T@$1_TestMutRef_R 0)) ((($1_TestMutRef_R (|$value#$1_TestMutRef_R| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_T 0)) ((($1_TestMutRef_T (|$value#$1_TestMutRef_T| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_V 0)) ((($1_TestMutRef_V (|$is#$1_TestMutRef_V| (Seq Int)) (|$ts#$1_TestMutRef_V| (Seq T@$1_TestMutRef_T)) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_N 0)) ((($1_TestMutRef_N (|$value#$1_TestMutRef_N| Int) (|$t#$1_TestMutRef_N| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_28102 0)) ((($Mutation_28102 (|l#$Mutation_28102| T@$Location) (|p#$Mutation_28102| (Seq Int)) (|v#$Mutation_28102| T@$1_TestMutRef_R) ) ) ))
(declare-datatypes ((T@$Mutation_23973 0)) ((($Mutation_23973 (|l#$Mutation_23973| T@$Location) (|p#$Mutation_23973| (Seq Int)) (|v#$Mutation_23973| T@$1_TestMutRef_V) ) ) ))
(declare-datatypes ((T@$Mutation_22996 0)) ((($Mutation_22996 (|l#$Mutation_22996| T@$Location) (|p#$Mutation_22996| (Seq Int)) (|v#$Mutation_22996| T@$1_TestMutRef_N) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_19785 0)) ((($Mutation_19785 (|l#$Mutation_19785| T@$Location) (|p#$Mutation_19785| (Seq Int)) (|v#$Mutation_19785| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_18478 0)) ((($Mutation_18478 (|l#$Mutation_18478| T@$Location) (|p#$Mutation_18478| (Seq Int)) (|v#$Mutation_18478| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Mutation_17766 0)) ((($Mutation_17766 (|l#$Mutation_17766| T@$Location) (|p#$Mutation_17766| (Seq Int)) (|v#$Mutation_17766| (Seq T@$1_TestMutRef_T)) ) ) ))
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
 :qid |mutrefz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_TestMutRef_T)) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_TestMutRef_T'| (seq.nth v@@4 i@@0)))
 :qid |mutrefz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefz3bpl.588:41|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_TestMutRef_T)) (e T@$1_TestMutRef_T) ) (! (let ((i@@1 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |mutrefz3bpl.770:13|
 :skolemid |20|
))))
 :qid |mutrefz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |mutrefz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |mutrefz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |mutrefz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |mutrefz3bpl.950:13|
 :skolemid |25|
))))
 :qid |mutrefz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |mutrefz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |mutrefz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |mutrefz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefz3bpl.1264:36|
 :skolemid |34|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefz3bpl.1278:36|
 :skolemid |35|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefz3bpl.1291:36|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefz3bpl.1307:36|
 :skolemid |37|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |mutrefz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |mutrefz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_TestMutRef_T)) ) (! (let ((r@@1 (ReverseVec_13833 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |mutrefz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |mutrefz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13833 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |mutrefz3bpl.245:54|
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
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 44830) (let ((anon4_Else_correct  (=> (not false) (=> (and (and (and (= |$temp_0'u64'@0| (|v#$Mutation_4535| $t3@0)) (= |$temp_0'u64'@0| |$temp_0'u64'@0|)) (and (|$IsValid'u64'| 2) (= $t4@0 ($Mutation_4535 (|l#$Mutation_4535| $t3@0) (|p#$Mutation_4535| $t3@0) 2)))) (and (and (= $t3@1 ($Mutation_4535 (|l#$Mutation_4535| $t3@0) (|p#$Mutation_4535| $t3@0) (|v#$Mutation_4535| $t4@0))) (= $t1@0 (|v#$Mutation_4535| $t3@1))) (and (= $t1@0 $t1@0) (= (ControlFlow 0 33970) (- 0 45103))))) (= $t1@0 2)))))
(let ((anon4_Then_correct true))
(let ((inline$$1_TestMutRef_identity$0$anon0_correct  (=> (and (= |inline$$1_TestMutRef_identity$0$$temp_0'u64'@1| (|v#$Mutation_4535| $t3@0)) (= |inline$$1_TestMutRef_identity$0$$temp_0'u64'@1| |inline$$1_TestMutRef_identity$0$$temp_0'u64'@1|)) (=> (and (and (= |inline$$1_TestMutRef_identity$0$$temp_0'u64'@2| (|v#$Mutation_4535| $t3@0)) (= |inline$$1_TestMutRef_identity$0$$temp_0'u64'@2| |inline$$1_TestMutRef_identity$0$$temp_0'u64'@2|)) (and (= |inline$$1_TestMutRef_identity$0$$temp_0'u64'@3| (|v#$Mutation_4535| $t3@0)) (= |inline$$1_TestMutRef_identity$0$$temp_0'u64'@3| |inline$$1_TestMutRef_identity$0$$temp_0'u64'@3|))) (and (=> (= (ControlFlow 0 33896) 33988) anon4_Then_correct) (=> (= (ControlFlow 0 33896) 33970) anon4_Else_correct))))))
(let ((anon0$1_correct  (=> (and (and (|$IsValid'u64'| 1) (= 1 1)) (and (= $t3@0 ($Mutation_4535 ($Local 1) (as seq.empty (Seq Int)) 1)) (= (ControlFlow 0 33904) 33896))) inline$$1_TestMutRef_identity$0$anon0_correct)))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_4535| $t0)) 0) (= (seq.len (|p#$Mutation_4535| $t3)) 0)) (and (= (seq.len (|p#$Mutation_4535| $t4)) 0) (= (ControlFlow 0 33746) 33904))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 44830) 33746) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
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
(declare-datatypes ((T@$1_TestMutRef_R 0)) ((($1_TestMutRef_R (|$value#$1_TestMutRef_R| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_T 0)) ((($1_TestMutRef_T (|$value#$1_TestMutRef_T| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_V 0)) ((($1_TestMutRef_V (|$is#$1_TestMutRef_V| (Seq Int)) (|$ts#$1_TestMutRef_V| (Seq T@$1_TestMutRef_T)) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_N 0)) ((($1_TestMutRef_N (|$value#$1_TestMutRef_N| Int) (|$t#$1_TestMutRef_N| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_28102 0)) ((($Mutation_28102 (|l#$Mutation_28102| T@$Location) (|p#$Mutation_28102| (Seq Int)) (|v#$Mutation_28102| T@$1_TestMutRef_R) ) ) ))
(declare-datatypes ((T@$Mutation_23973 0)) ((($Mutation_23973 (|l#$Mutation_23973| T@$Location) (|p#$Mutation_23973| (Seq Int)) (|v#$Mutation_23973| T@$1_TestMutRef_V) ) ) ))
(declare-datatypes ((T@$Mutation_22996 0)) ((($Mutation_22996 (|l#$Mutation_22996| T@$Location) (|p#$Mutation_22996| (Seq Int)) (|v#$Mutation_22996| T@$1_TestMutRef_N) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_19785 0)) ((($Mutation_19785 (|l#$Mutation_19785| T@$Location) (|p#$Mutation_19785| (Seq Int)) (|v#$Mutation_19785| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_18478 0)) ((($Mutation_18478 (|l#$Mutation_18478| T@$Location) (|p#$Mutation_18478| (Seq Int)) (|v#$Mutation_18478| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Mutation_17766 0)) ((($Mutation_17766 (|l#$Mutation_17766| T@$Location) (|p#$Mutation_17766| (Seq Int)) (|v#$Mutation_17766| (Seq T@$1_TestMutRef_T)) ) ) ))
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
 :qid |mutrefz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_TestMutRef_T)) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_TestMutRef_T'| (seq.nth v@@4 i@@0)))
 :qid |mutrefz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefz3bpl.588:41|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_TestMutRef_T)) (e T@$1_TestMutRef_T) ) (! (let ((i@@1 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |mutrefz3bpl.770:13|
 :skolemid |20|
))))
 :qid |mutrefz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |mutrefz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |mutrefz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |mutrefz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |mutrefz3bpl.950:13|
 :skolemid |25|
))))
 :qid |mutrefz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |mutrefz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |mutrefz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |mutrefz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefz3bpl.1264:36|
 :skolemid |34|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefz3bpl.1278:36|
 :skolemid |35|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefz3bpl.1291:36|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefz3bpl.1307:36|
 :skolemid |37|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |mutrefz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |mutrefz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_TestMutRef_T)) ) (! (let ((r@@1 (ReverseVec_13833 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |mutrefz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |mutrefz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13833 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |mutrefz3bpl.245:54|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t6@4 () T@$Mutation_22996)
(declare-fun $t2@1 () T@$1_TestMutRef_N)
(declare-fun _$t0 () Bool)
(declare-fun $t11@0 () Bool)
(declare-fun $t6@2 () T@$Mutation_22996)
(declare-fun $t6@3 () T@$Mutation_22996)
(declare-fun $t7@0 () T@$Mutation_4535)
(declare-fun $t10@0 () Bool)
(declare-fun $t6@0 () T@$Mutation_22996)
(declare-fun $t6@1 () T@$Mutation_22996)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path$0$$t2@1 () T@$Mutation_4535)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@3| () Int)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@2| () T@$1_TestMutRef_N)
(declare-fun inline$$1_TestMutRef_return_ref_different_path$0$$t4@1 () T@$Mutation_18478)
(declare-fun inline$$1_TestMutRef_return_ref_different_path$0$$t5@1 () T@$Mutation_4535)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@2| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path$0$$t3@1 () T@$Mutation_4535)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@1| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path$0$$t2@0 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path$0$$t3@0 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path$0$$t4@0 () T@$Mutation_18478)
(declare-fun inline$$1_TestMutRef_return_ref_different_path$0$$t5@0 () T@$Mutation_4535)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@1| () T@$1_TestMutRef_N)
(declare-fun $t5@0 () T@$1_TestMutRef_T)
(declare-fun $t2@0 () T@$1_TestMutRef_N)
(declare-fun $t1 () T@$Mutation_4535)
(declare-fun $t6 () T@$Mutation_22996)
(declare-fun $t7 () T@$Mutation_4535)
(push 1)
(set-info :boogie-vc-id $1_TestMutRef_call_return_ref_different_path$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 45141) (let ((L4_correct  (and (=> (= (ControlFlow 0 34693) (- 0 45708)) (> (|$value#$1_TestMutRef_T| (|$t#$1_TestMutRef_N| (|v#$Mutation_22996| $t6@4))) 0)) (=> (> (|$value#$1_TestMutRef_T| (|$t#$1_TestMutRef_N| (|v#$Mutation_22996| $t6@4))) 0) (=> (and (= $t2@1 (|v#$Mutation_22996| $t6@4)) (= $t2@1 $t2@1)) (and (=> (= (ControlFlow 0 34693) (- 0 45747)) (=> _$t0 (= $t2@1 ($1_TestMutRef_N 5 ($1_TestMutRef_T 2))))) (=> (=> _$t0 (= $t2@1 ($1_TestMutRef_N 5 ($1_TestMutRef_T 2)))) (=> (= (ControlFlow 0 34693) (- 0 45764)) (=> (not _$t0) (= $t2@1 ($1_TestMutRef_N 1 ($1_TestMutRef_T 5))))))))))))
(let ((anon11_Else_correct  (=> (not $t11@0) (=> (and (= $t6@4 $t6@2) (= (ControlFlow 0 34619) 34693)) L4_correct))))
(let ((anon11_Then_correct  (=> (and (and $t11@0 (= $t6@3 ($Mutation_22996 (|l#$Mutation_22996| $t6@2) (|p#$Mutation_22996| $t6@2) ($1_TestMutRef_N (|$value#$1_TestMutRef_N| (|v#$Mutation_22996| $t6@2)) ($1_TestMutRef_T (|v#$Mutation_4535| $t7@0)))))) (and (= $t6@4 $t6@3) (= (ControlFlow 0 34723) 34693))) L4_correct)))
(let ((L2_correct  (=> (= $t11@0  (and (= (|l#$Mutation_22996| $t6@2) (|l#$Mutation_4535| $t7@0)) (let ((pp (|p#$Mutation_22996| $t6@2)))
(let ((cp (|p#$Mutation_4535| $t7@0)))
(let ((pl (seq.len pp)))
(let ((cl (seq.len cp)))
(let ((el (seq.len (seq.++ (seq.unit 1) (seq.unit 0)))))
 (and (and (= cl (+ pl el)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 pl)) (= (seq.nth pp i@@12) (seq.nth cp i@@12)))
 :qid |mutrefz3bpl.286:14|
 :skolemid |11|
))) (forall ((i@@13 Int) ) (!  (=> (and (>= i@@13 0) (< i@@13 el)) (or (= (seq.nth (seq.++ (seq.unit 1) (seq.unit 0)) i@@13) (- 0 1)) (= (seq.nth (seq.++ (seq.unit 1) (seq.unit 0)) i@@13) (seq.nth cp (+ pl i@@13)))))
 :qid |mutrefz3bpl.287:14|
 :skolemid |12|
)))))))))) (and (=> (= (ControlFlow 0 34613) 34723) anon11_Then_correct) (=> (= (ControlFlow 0 34613) 34619) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (not $t10@0) (=> (and (= $t6@2 $t6@0) (= (ControlFlow 0 34599) 34613)) L2_correct))))
(let ((anon10_Then_correct  (=> (and (and $t10@0 (= $t6@1 ($Mutation_22996 (|l#$Mutation_22996| $t6@0) (|p#$Mutation_22996| $t6@0) ($1_TestMutRef_N (|v#$Mutation_4535| $t7@0) (|$t#$1_TestMutRef_N| (|v#$Mutation_22996| $t6@0)))))) (and (= $t6@2 $t6@1) (= (ControlFlow 0 34741) 34613))) L2_correct)))
(let ((anon9_Else_correct  (=> (and (not false) (= |$temp_0'u64'@0| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path$0$$t2@1))) (=> (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (|$IsValid'u64'| 5)) (and (= $t7@0 ($Mutation_4535 (|l#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path$0$$t2@1) (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path$0$$t2@1) 5)) (= $t10@0  (and (= (|l#$Mutation_22996| $t6@0) (|l#$Mutation_4535| $t7@0)) (let ((pp@@0 (|p#$Mutation_22996| $t6@0)))
(let ((cp@@0 (|p#$Mutation_4535| $t7@0)))
(let ((pl@@0 (seq.len pp@@0)))
(let ((cl@@0 (seq.len cp@@0)))
 (and (and (= cl@@0 (+ pl@@0 1)) (forall ((i@@14 Int) ) (!  (=> (and (>= i@@14 0) (< i@@14 pl@@0)) (= (seq.nth pp@@0 i@@14) (seq.nth cp@@0 i@@14)))
 :qid |mutrefz3bpl.272:14|
 :skolemid |10|
))) (or (= 0 (- 0 1)) (= 0 (seq.nth cp@@0 pl@@0)))))))))))) (and (=> (= (ControlFlow 0 34593) 34741) anon10_Then_correct) (=> (= (ControlFlow 0 34593) 34599) anon10_Else_correct))))))
(let ((anon9_Then_correct true))
(let ((inline$$1_TestMutRef_return_ref_different_path$0$L3_correct  (=> (and (and (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@3| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path$0$$t2@1)) (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@3| |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@3|)) (and (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@2| (|v#$Mutation_22996| $t6@0)) (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@2| |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@2|))) (and (=> (= (ControlFlow 0 34517) 34759) anon9_Then_correct) (=> (= (ControlFlow 0 34517) 34593) anon9_Else_correct)))))
(let ((inline$$1_TestMutRef_return_ref_different_path$0$anon3_Else_correct  (=> (not _$t0) (=> (and (= inline$$1_TestMutRef_return_ref_different_path$0$$t4@1 ($Mutation_18478 (|l#$Mutation_22996| $t6@0) (seq.++ (|p#$Mutation_22996| $t6@0) (seq.unit 1)) (|$t#$1_TestMutRef_N| (|v#$Mutation_22996| $t6@0)))) (= inline$$1_TestMutRef_return_ref_different_path$0$$t5@1 ($Mutation_4535 (|l#$Mutation_18478| inline$$1_TestMutRef_return_ref_different_path$0$$t4@1) (seq.++ (|p#$Mutation_18478| inline$$1_TestMutRef_return_ref_different_path$0$$t4@1) (seq.unit 0)) (|$value#$1_TestMutRef_T| (|v#$Mutation_18478| inline$$1_TestMutRef_return_ref_different_path$0$$t4@1))))) (=> (and (and (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@2| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path$0$$t5@1)) (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@2| |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@2|)) (and (= inline$$1_TestMutRef_return_ref_different_path$0$$t2@1 inline$$1_TestMutRef_return_ref_different_path$0$$t5@1) (= (ControlFlow 0 34489) 34517))) inline$$1_TestMutRef_return_ref_different_path$0$L3_correct)))))
(let ((inline$$1_TestMutRef_return_ref_different_path$0$anon3_Then_correct  (=> (and _$t0 (= inline$$1_TestMutRef_return_ref_different_path$0$$t3@1 ($Mutation_4535 (|l#$Mutation_22996| $t6@0) (seq.++ (|p#$Mutation_22996| $t6@0) (seq.unit 0)) (|$value#$1_TestMutRef_N| (|v#$Mutation_22996| $t6@0))))) (=> (and (and (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@1| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path$0$$t3@1)) (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@1| |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@1|)) (and (= inline$$1_TestMutRef_return_ref_different_path$0$$t2@1 inline$$1_TestMutRef_return_ref_different_path$0$$t3@1) (= (ControlFlow 0 34545) 34517))) inline$$1_TestMutRef_return_ref_different_path$0$L3_correct))))
(let ((inline$$1_TestMutRef_return_ref_different_path$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path$0$$t2@0)) 0) (=> (and (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path$0$$t3@0)) 0) (= (seq.len (|p#$Mutation_18478| inline$$1_TestMutRef_return_ref_different_path$0$$t4@0)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path$0$$t5@0)) 0) (= _$t0 _$t0)) (and (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@1| (|v#$Mutation_22996| $t6@0)) (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@1| |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@1|))) (and (=> (= (ControlFlow 0 34447) 34545) inline$$1_TestMutRef_return_ref_different_path$0$anon3_Then_correct) (=> (= (ControlFlow 0 34447) 34489) inline$$1_TestMutRef_return_ref_different_path$0$anon3_Else_correct)))))))
(let ((anon0$1_correct  (=> (and (and (= _$t0 _$t0) (|$IsValid'u64'| 1)) (and (|$IsValid'u64'| 2) (= $t5@0 ($1_TestMutRef_T 2)))) (and (=> (= (ControlFlow 0 34553) (- 0 45296)) (> (|$value#$1_TestMutRef_T| $t5@0) 0)) (=> (> (|$value#$1_TestMutRef_T| $t5@0) 0) (=> (and (and (= $t2@0 ($1_TestMutRef_N 1 $t5@0)) (= $t2@0 $t2@0)) (and (= $t6@0 ($Mutation_22996 ($Local 2) (as seq.empty (Seq Int)) $t2@0)) (= (ControlFlow 0 34553) 34447))) inline$$1_TestMutRef_return_ref_different_path$0$anon0_correct))))))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_4535| $t1)) 0) (= (seq.len (|p#$Mutation_22996| $t6)) 0)) (and (= (seq.len (|p#$Mutation_4535| $t7)) 0) (= (ControlFlow 0 34096) 34553))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 45141) 34096) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
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
(declare-datatypes ((T@$1_TestMutRef_R 0)) ((($1_TestMutRef_R (|$value#$1_TestMutRef_R| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_T 0)) ((($1_TestMutRef_T (|$value#$1_TestMutRef_T| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_V 0)) ((($1_TestMutRef_V (|$is#$1_TestMutRef_V| (Seq Int)) (|$ts#$1_TestMutRef_V| (Seq T@$1_TestMutRef_T)) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_N 0)) ((($1_TestMutRef_N (|$value#$1_TestMutRef_N| Int) (|$t#$1_TestMutRef_N| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_28102 0)) ((($Mutation_28102 (|l#$Mutation_28102| T@$Location) (|p#$Mutation_28102| (Seq Int)) (|v#$Mutation_28102| T@$1_TestMutRef_R) ) ) ))
(declare-datatypes ((T@$Mutation_23973 0)) ((($Mutation_23973 (|l#$Mutation_23973| T@$Location) (|p#$Mutation_23973| (Seq Int)) (|v#$Mutation_23973| T@$1_TestMutRef_V) ) ) ))
(declare-datatypes ((T@$Mutation_22996 0)) ((($Mutation_22996 (|l#$Mutation_22996| T@$Location) (|p#$Mutation_22996| (Seq Int)) (|v#$Mutation_22996| T@$1_TestMutRef_N) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_19785 0)) ((($Mutation_19785 (|l#$Mutation_19785| T@$Location) (|p#$Mutation_19785| (Seq Int)) (|v#$Mutation_19785| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_18478 0)) ((($Mutation_18478 (|l#$Mutation_18478| T@$Location) (|p#$Mutation_18478| (Seq Int)) (|v#$Mutation_18478| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Mutation_17766 0)) ((($Mutation_17766 (|l#$Mutation_17766| T@$Location) (|p#$Mutation_17766| (Seq Int)) (|v#$Mutation_17766| (Seq T@$1_TestMutRef_T)) ) ) ))
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
 :qid |mutrefz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_TestMutRef_T)) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_TestMutRef_T'| (seq.nth v@@4 i@@0)))
 :qid |mutrefz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefz3bpl.588:41|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_TestMutRef_T)) (e T@$1_TestMutRef_T) ) (! (let ((i@@1 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |mutrefz3bpl.770:13|
 :skolemid |20|
))))
 :qid |mutrefz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |mutrefz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |mutrefz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |mutrefz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |mutrefz3bpl.950:13|
 :skolemid |25|
))))
 :qid |mutrefz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |mutrefz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |mutrefz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |mutrefz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefz3bpl.1264:36|
 :skolemid |34|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefz3bpl.1278:36|
 :skolemid |35|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefz3bpl.1291:36|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefz3bpl.1307:36|
 :skolemid |37|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |mutrefz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |mutrefz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_TestMutRef_T)) ) (! (let ((r@@1 (ReverseVec_13833 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |mutrefz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |mutrefz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13833 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |mutrefz3bpl.245:54|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret0@1 () T@$Mutation_4535)
(declare-fun $t13@0 () T@$Mutation_4535)
(declare-fun $t12@1 () T@$Mutation_23973)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1 () T@$Mutation_23973)
(declare-fun $t4@1 () T@$1_TestMutRef_V)
(declare-fun _$t0 () Bool)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret0@0 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@0 () T@$Mutation_23973)
(declare-fun $abort_code@4 () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$t6@1 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@3| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$t2@1 () T@$Mutation_4535)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'$1_TestMutRef_V'@2| () T@$1_TestMutRef_V)
(declare-fun $t12@0 () T@$Mutation_23973)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@2| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$dst@2| () T@$Mutation_4535)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$dst@0| () T@$Mutation_4535)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$dst@1| () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$t3@1 () T@$Mutation_19785)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@1| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@2| () T@$Mutation_4535)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@0| () T@$Mutation_4535)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@1| () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$t7@1 () T@$Mutation_19785)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$t2@0 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$t3@0 () T@$Mutation_19785)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$t5@0 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$t7@0 () T@$Mutation_19785)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$t9@0 () T@$Mutation_4535)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'$1_TestMutRef_V'@1| () T@$1_TestMutRef_V)
(declare-fun $t1@1 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_19785)
(declare-fun $t4@0 () T@$1_TestMutRef_V)
(declare-fun |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1| () (Seq T@$1_TestMutRef_T))
(declare-fun $t9@0 () T@$Mutation_19785)
(declare-fun $t1@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_19785)
(declare-fun $t7@0 () T@$Mutation_19785)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t2 () T@$Mutation_4535)
(declare-fun $t7 () T@$Mutation_19785)
(declare-fun $t9 () T@$Mutation_19785)
(declare-fun $t12 () T@$Mutation_23973)
(declare-fun $t13 () T@$Mutation_4535)
(push 1)
(set-info :boogie-vc-id $1_TestMutRef_call_return_ref_different_path_vec$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 45792) (let ((anon16_Else_correct  (=> (and (not $abort_flag@3) (= |$temp_0'u64'@0| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret0@1))) (=> (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (|$IsValid'u64'| 5)) (and (= $t13@0 ($Mutation_4535 (|l#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret0@1) (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret0@1) 5)) (= $t12@1 ($Mutation_23973 (|l#$Mutation_23973| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1) (|p#$Mutation_23973| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1) (let (($$sel0 (|$is#$1_TestMutRef_V| (|v#$Mutation_23973| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1))))
($1_TestMutRef_V (seq.++ (seq.extract $$sel0 0 (- (seq.nth (|p#$Mutation_4535| $t13@0) (+ (seq.len (|p#$Mutation_23973| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1)) 1)) 0)) (seq.unit (|v#$Mutation_4535| $t13@0)) (seq.extract $$sel0 (+ (seq.nth (|p#$Mutation_4535| $t13@0) (+ (seq.len (|p#$Mutation_23973| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1)) 1)) 1) (- (seq.len $$sel0) (+ (seq.nth (|p#$Mutation_4535| $t13@0) (+ (seq.len (|p#$Mutation_23973| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1)) 1)) 1)))) (|$ts#$1_TestMutRef_V| (|v#$Mutation_23973| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1)))))))) (and (=> (= (ControlFlow 0 36374) (- 0 46904)) (let (($range_0 (|$ts#$1_TestMutRef_V| (|v#$Mutation_23973| $t12@1))))
(forall (($i_1 Int) ) (!  (=> (and (>= $i_1 0) (< $i_1 (seq.len $range_0))) (let (($elem (seq.nth $range_0 $i_1)))
(> (|$value#$1_TestMutRef_T| $elem) 0)))
 :qid |mutrefz3bpl.1733:73|
 :skolemid |38|
)))) (=> (let (($range_0 (|$ts#$1_TestMutRef_V| (|v#$Mutation_23973| $t12@1))))
(forall (($i_1@@0 Int) ) (!  (=> (and (>= $i_1@@0 0) (< $i_1@@0 (seq.len $range_0))) (let (($elem (seq.nth $range_0 $i_1@@0)))
(> (|$value#$1_TestMutRef_T| $elem) 0)))
 :qid |mutrefz3bpl.1733:73|
 :skolemid |38|
))) (=> (and (= $t4@1 (|v#$Mutation_23973| $t12@1)) (= $t4@1 $t4@1)) (and (=> (= (ControlFlow 0 36374) (- 0 46966)) (=> _$t0 (= $t4@1 ($1_TestMutRef_V (seq.++ (seq.unit 1) (seq.unit 5)) (as seq.empty (Seq T@$1_TestMutRef_T)))))) (=> (=> _$t0 (= $t4@1 ($1_TestMutRef_V (seq.++ (seq.unit 1) (seq.unit 5)) (as seq.empty (Seq T@$1_TestMutRef_T))))) (=> (= (ControlFlow 0 36374) (- 0 46989)) (=> (not _$t0) (= $t4@1 ($1_TestMutRef_V (seq.++ (seq.unit 5) (seq.unit 2)) (as seq.empty (Seq T@$1_TestMutRef_T)))))))))))))))
(let ((anon16_Then_correct true))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec$0$L13_correct  (=> (and (and (= $abort_flag@3 true) (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret0@1 inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret0@0)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1 inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@0) (= $abort_code@4 inline$$1_TestMutRef_return_ref_different_path_vec$0$$t6@1))) (and (=> (= (ControlFlow 0 35939) 36388) anon16_Then_correct) (=> (= (ControlFlow 0 35939) 36374) anon16_Else_correct)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec$0$anon8_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$t6@1 $abort_code@2) (= (ControlFlow 0 36185) 35939))) inline$$1_TestMutRef_return_ref_different_path_vec$0$L13_correct)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec$0$anon9_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$t6@1 $abort_code@1) (= (ControlFlow 0 35933) 35939))) inline$$1_TestMutRef_return_ref_different_path_vec$0$L13_correct)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec$0$L3_correct  (=> (and (and (and (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@3| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t2@1)) (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@3| |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@3|)) (and (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'$1_TestMutRef_V'@2| (|v#$Mutation_23973| $t12@0)) (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'$1_TestMutRef_V'@2| |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'$1_TestMutRef_V'@2|))) (and (and (= $abort_flag@3 $abort_flag@2) (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret0@1 inline$$1_TestMutRef_return_ref_different_path_vec$0$$t2@1)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1 $t12@0) (= $abort_code@4 $abort_code@3)))) (and (=> (= (ControlFlow 0 35919) 36388) anon16_Then_correct) (=> (= (ControlFlow 0 35919) 36374) anon16_Else_correct)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec$0$anon8_Else_correct  (=> (not $abort_flag@1) (=> (and (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@2| (|v#$Mutation_4535| |inline$$1_Vector_borrow_mut'u64'$1$dst@2|)) (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@2| |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@2|)) (=> (and (and (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$t2@1 |inline$$1_Vector_borrow_mut'u64'$1$dst@2|) (= $abort_code@3 $abort_code@2)) (and (= $abort_flag@2 $abort_flag@1) (= (ControlFlow 0 36171) 35919))) inline$$1_TestMutRef_return_ref_different_path_vec$0$L3_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$1$anon3_Then$1_correct|  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow_mut'u64'$1$dst@2| |inline$$1_Vector_borrow_mut'u64'$1$dst@0|)) (and (=> (= (ControlFlow 0 36143) 36185) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon8_Then_correct) (=> (= (ControlFlow 0 36143) 36171) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon8_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$1$anon3_Then_correct|  (=> (and (not (and (>= 1 0) (< 1 (seq.len |inline$$1_Vector_borrow_mut'u64'$1$v@1|)))) (= (ControlFlow 0 36141) 36143)) |inline$$1_Vector_borrow_mut'u64'$1$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$1$anon3_Else_correct|  (=> (and (>= 1 0) (< 1 (seq.len |inline$$1_Vector_borrow_mut'u64'$1$v@1|))) (=> (and (and (= |inline$$1_Vector_borrow_mut'u64'$1$dst@1| ($Mutation_4535 (|l#$Mutation_19785| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t3@1) (seq.++ (|p#$Mutation_19785| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t3@1) (seq.unit 1)) (seq.nth |inline$$1_Vector_borrow_mut'u64'$1$v@1| 1))) (= $abort_flag@1 false)) (and (= $abort_code@2 $abort_code@0) (= |inline$$1_Vector_borrow_mut'u64'$1$dst@2| |inline$$1_Vector_borrow_mut'u64'$1$dst@1|))) (and (=> (= (ControlFlow 0 36091) 36185) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon8_Then_correct) (=> (= (ControlFlow 0 36091) 36171) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon8_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$1$v@1| (|v#$Mutation_19785| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t3@1)) (and (=> (= (ControlFlow 0 36061) 36141) |inline$$1_Vector_borrow_mut'u64'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 36061) 36091) |inline$$1_Vector_borrow_mut'u64'$1$anon3_Else_correct|)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec$0$anon7_Then_correct  (=> (and (and _$t0 (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$t3@1 ($Mutation_19785 (|l#$Mutation_23973| $t12@0) (seq.++ (|p#$Mutation_23973| $t12@0) (seq.unit 0)) (|$is#$1_TestMutRef_V| (|v#$Mutation_23973| $t12@0))))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 36151) 36061))) |inline$$1_Vector_borrow_mut'u64'$1$anon0_correct|)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec$0$anon9_Else_correct  (=> (not $abort_flag@0) (=> (and (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@1| (|v#$Mutation_4535| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|)) (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@1| |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@1|)) (=> (and (and (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$t2@1 |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) (= $abort_code@3 $abort_code@1)) (and (= $abort_flag@2 $abort_flag@0) (= (ControlFlow 0 35891) 35919))) inline$$1_TestMutRef_return_ref_different_path_vec$0$L3_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@0|)) (and (=> (= (ControlFlow 0 35863) 35933) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon9_Then_correct) (=> (= (ControlFlow 0 35863) 35891) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon9_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|  (=> (and (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_borrow_mut'u64'$0$v@1|)))) (= (ControlFlow 0 35861) 35863)) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|  (=> (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_borrow_mut'u64'$0$v@1|))) (=> (and (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@1| ($Mutation_4535 (|l#$Mutation_19785| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t7@1) (seq.++ (|p#$Mutation_19785| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t7@1) (seq.unit 0)) (seq.nth |inline$$1_Vector_borrow_mut'u64'$0$v@1| 0))) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@1|))) (and (=> (= (ControlFlow 0 35811) 35933) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon9_Then_correct) (=> (= (ControlFlow 0 35811) 35891) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon9_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$0$v@1| (|v#$Mutation_19785| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t7@1)) (and (=> (= (ControlFlow 0 35781) 35861) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 35781) 35811) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec$0$anon7_Else_correct  (=> (and (and (not _$t0) (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$t7@1 ($Mutation_19785 (|l#$Mutation_23973| $t12@0) (seq.++ (|p#$Mutation_23973| $t12@0) (seq.unit 0)) (|$is#$1_TestMutRef_V| (|v#$Mutation_23973| $t12@0))))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 35871) 35781))) |inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec$0$anon0_correct  (=> (and (and (and (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t2@0)) 0) (= (seq.len (|p#$Mutation_19785| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t3@0)) 0)) (and (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t5@0)) 0) (= (seq.len (|p#$Mutation_19785| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t7@0)) 0))) (and (and (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t9@0)) 0) (= _$t0 _$t0)) (and (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'$1_TestMutRef_V'@1| (|v#$Mutation_23973| $t12@0)) (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'$1_TestMutRef_V'@1| |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'$1_TestMutRef_V'@1|)))) (and (=> (= (ControlFlow 0 35657) 36151) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon7_Then_correct) (=> (= (ControlFlow 0 35657) 35871) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon7_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (not false) (= $t1@1 (|v#$Mutation_19785| |inline$$1_Vector_push_back'u64'$1$m'@1|))) (=> (and (and (= $t4@0 ($1_TestMutRef_V $t1@1 |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1|)) (= $t4@0 $t4@0)) (and (= $t12@0 ($Mutation_23973 ($Local 4) (as seq.empty (Seq Int)) $t4@0)) (= (ControlFlow 0 36193) 35657))) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon0_correct))))
(let ((anon15_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_19785 (|l#$Mutation_19785| $t9@0) (|p#$Mutation_19785| $t9@0) (seq.++ (|v#$Mutation_19785| $t9@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 35207) 36408) anon15_Then_correct) (=> (= (ControlFlow 0 35207) 36193) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_19785| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t9@0 ($Mutation_19785 ($Local 1) (as seq.empty (Seq Int)) $t1@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 35213) 35207))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon14_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_19785 (|l#$Mutation_19785| $t7@0) (|p#$Mutation_19785| $t7@0) (seq.++ (|v#$Mutation_19785| $t7@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 35120) 36422) anon14_Then_correct) (=> (= (ControlFlow 0 35120) 35213) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1| |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1|) (= $t7@0 ($Mutation_19785 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 35126) 35120))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_empty'$1_TestMutRef_T'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1| (as seq.empty (Seq T@$1_TestMutRef_T))) (and (=> (= (ControlFlow 0 35031) 36436) anon13_Then_correct) (=> (= (ControlFlow 0 35031) 35126) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 35037) 35031)) |inline$$1_Vector_empty'$1_TestMutRef_T'$0$anon0_correct|))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 34989) 36450) anon12_Then_correct) (=> (= (ControlFlow 0 34989) 35037) anon12_Else_correct)))))
(let ((anon0$1_correct  (=> (and (= _$t0 _$t0) (= (ControlFlow 0 34995) 34989)) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_4535| $t2)) 0) (= (seq.len (|p#$Mutation_19785| $t7)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_19785| $t9)) 0) (= (seq.len (|p#$Mutation_23973| $t12)) 0)) (and (= (seq.len (|p#$Mutation_4535| $t13)) 0) (= (ControlFlow 0 34951) 34995))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 45792) 34951) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))
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
(declare-datatypes ((T@$1_TestMutRef_R 0)) ((($1_TestMutRef_R (|$value#$1_TestMutRef_R| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_T 0)) ((($1_TestMutRef_T (|$value#$1_TestMutRef_T| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_V 0)) ((($1_TestMutRef_V (|$is#$1_TestMutRef_V| (Seq Int)) (|$ts#$1_TestMutRef_V| (Seq T@$1_TestMutRef_T)) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_N 0)) ((($1_TestMutRef_N (|$value#$1_TestMutRef_N| Int) (|$t#$1_TestMutRef_N| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_28102 0)) ((($Mutation_28102 (|l#$Mutation_28102| T@$Location) (|p#$Mutation_28102| (Seq Int)) (|v#$Mutation_28102| T@$1_TestMutRef_R) ) ) ))
(declare-datatypes ((T@$Mutation_23973 0)) ((($Mutation_23973 (|l#$Mutation_23973| T@$Location) (|p#$Mutation_23973| (Seq Int)) (|v#$Mutation_23973| T@$1_TestMutRef_V) ) ) ))
(declare-datatypes ((T@$Mutation_22996 0)) ((($Mutation_22996 (|l#$Mutation_22996| T@$Location) (|p#$Mutation_22996| (Seq Int)) (|v#$Mutation_22996| T@$1_TestMutRef_N) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_19785 0)) ((($Mutation_19785 (|l#$Mutation_19785| T@$Location) (|p#$Mutation_19785| (Seq Int)) (|v#$Mutation_19785| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_18478 0)) ((($Mutation_18478 (|l#$Mutation_18478| T@$Location) (|p#$Mutation_18478| (Seq Int)) (|v#$Mutation_18478| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Mutation_17766 0)) ((($Mutation_17766 (|l#$Mutation_17766| T@$Location) (|p#$Mutation_17766| (Seq Int)) (|v#$Mutation_17766| (Seq T@$1_TestMutRef_T)) ) ) ))
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
 :qid |mutrefz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_TestMutRef_T)) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_TestMutRef_T'| (seq.nth v@@4 i@@0)))
 :qid |mutrefz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefz3bpl.588:41|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_TestMutRef_T)) (e T@$1_TestMutRef_T) ) (! (let ((i@@1 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |mutrefz3bpl.770:13|
 :skolemid |20|
))))
 :qid |mutrefz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |mutrefz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |mutrefz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |mutrefz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |mutrefz3bpl.950:13|
 :skolemid |25|
))))
 :qid |mutrefz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |mutrefz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |mutrefz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |mutrefz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefz3bpl.1264:36|
 :skolemid |34|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefz3bpl.1278:36|
 :skolemid |35|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefz3bpl.1291:36|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefz3bpl.1307:36|
 :skolemid |37|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |mutrefz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |mutrefz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_TestMutRef_T)) ) (! (let ((r@@1 (ReverseVec_13833 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |mutrefz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |mutrefz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13833 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |mutrefz3bpl.245:54|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t18@4 () T@$Mutation_23973)
(declare-fun $t4@1 () T@$1_TestMutRef_V)
(declare-fun _$t0 () Bool)
(declare-fun $t22@0 () Bool)
(declare-fun $t18@2 () T@$Mutation_23973)
(declare-fun $t18@3 () T@$Mutation_23973)
(declare-fun $t19@0 () T@$Mutation_4535)
(declare-fun $t21@0 () Bool)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1 () T@$Mutation_23973)
(declare-fun $t18@1 () T@$Mutation_23973)
(declare-fun $abort_flag@3 () Bool)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@0 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@0 () T@$Mutation_23973)
(declare-fun $abort_code@4 () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t6@1 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@3| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1 () T@$Mutation_4535)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@2| () T@$1_TestMutRef_V)
(declare-fun $t18@0 () T@$Mutation_23973)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@2| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@2| () T@$Mutation_4535)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@0| () T@$Mutation_4535)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@1| () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1 () T@$Mutation_19785)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@1 () T@$Mutation_4535)
(declare-fun |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2| () T@$Mutation_18478)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@1| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@0| () T@$Mutation_18478)
(declare-fun |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1| () (Seq T@$1_TestMutRef_T))
(declare-fun |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@1| () T@$Mutation_18478)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1 () T@$Mutation_17766)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@0 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@0 () T@$Mutation_19785)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t5@0 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@0 () T@$Mutation_17766)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t9@0 () T@$Mutation_18478)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@0 () T@$Mutation_4535)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@1| () T@$1_TestMutRef_V)
(declare-fun |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1| () T@$Mutation_17766)
(declare-fun $t3@1 () (Seq T@$1_TestMutRef_T))
(declare-fun $t4@0 () T@$1_TestMutRef_V)
(declare-fun $t1@1 () (Seq Int))
(declare-fun $t13@0 () T@$Mutation_17766)
(declare-fun $t15@0 () T@$1_TestMutRef_T)
(declare-fun |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1| () T@$Mutation_17766)
(declare-fun $t3@0 () (Seq T@$1_TestMutRef_T))
(declare-fun $t10@0 () T@$Mutation_17766)
(declare-fun $t12@0 () T@$1_TestMutRef_T)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_19785)
(declare-fun |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1| () (Seq T@$1_TestMutRef_T))
(declare-fun $t8@0 () T@$Mutation_19785)
(declare-fun $t1@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_19785)
(declare-fun $t6@0 () T@$Mutation_19785)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t2 () T@$Mutation_4535)
(declare-fun $t6 () T@$Mutation_19785)
(declare-fun $t8 () T@$Mutation_19785)
(declare-fun $t10 () T@$Mutation_17766)
(declare-fun $t13 () T@$Mutation_17766)
(declare-fun $t18 () T@$Mutation_23973)
(declare-fun $t19 () T@$Mutation_4535)
(push 1)
(set-info :boogie-vc-id $1_TestMutRef_call_return_ref_different_path_vec2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 47032) (let ((L4_correct  (and (=> (= (ControlFlow 0 38535) (- 0 48620)) (let (($range_0 (|$ts#$1_TestMutRef_V| (|v#$Mutation_23973| $t18@4))))
(forall (($i_1 Int) ) (!  (=> (and (>= $i_1 0) (< $i_1 (seq.len $range_0))) (let (($elem (seq.nth $range_0 $i_1)))
(> (|$value#$1_TestMutRef_T| $elem) 0)))
 :qid |mutrefz3bpl.2044:73|
 :skolemid |41|
)))) (=> (let (($range_0 (|$ts#$1_TestMutRef_V| (|v#$Mutation_23973| $t18@4))))
(forall (($i_1@@0 Int) ) (!  (=> (and (>= $i_1@@0 0) (< $i_1@@0 (seq.len $range_0))) (let (($elem (seq.nth $range_0 $i_1@@0)))
(> (|$value#$1_TestMutRef_T| $elem) 0)))
 :qid |mutrefz3bpl.2044:73|
 :skolemid |41|
))) (=> (and (= $t4@1 (|v#$Mutation_23973| $t18@4)) (= $t4@1 $t4@1)) (and (=> (= (ControlFlow 0 38535) (- 0 48682)) (=> _$t0 (= $t4@1 ($1_TestMutRef_V (seq.++ (seq.unit 1) (seq.unit 5)) (seq.++ (seq.unit ($1_TestMutRef_T 3)) (seq.unit ($1_TestMutRef_T 4))))))) (=> (=> _$t0 (= $t4@1 ($1_TestMutRef_V (seq.++ (seq.unit 1) (seq.unit 5)) (seq.++ (seq.unit ($1_TestMutRef_T 3)) (seq.unit ($1_TestMutRef_T 4)))))) (=> (= (ControlFlow 0 38535) (- 0 48717)) (=> (not _$t0) (= $t4@1 ($1_TestMutRef_V (seq.++ (seq.unit 1) (seq.unit 2)) (seq.++ (seq.unit ($1_TestMutRef_T 5)) (seq.unit ($1_TestMutRef_T 4))))))))))))))
(let ((anon29_Else_correct  (=> (not $t22@0) (=> (and (= $t18@4 $t18@2) (= (ControlFlow 0 38402) 38535)) L4_correct))))
(let ((anon29_Then_correct  (=> (and (and $t22@0 (= $t18@3 ($Mutation_23973 (|l#$Mutation_23973| $t18@2) (|p#$Mutation_23973| $t18@2) (let (($$sel0 (|$ts#$1_TestMutRef_V| (|v#$Mutation_23973| $t18@2))))
($1_TestMutRef_V (|$is#$1_TestMutRef_V| (|v#$Mutation_23973| $t18@2)) (seq.++ (seq.extract $$sel0 0 (- (seq.nth (|p#$Mutation_4535| $t19@0) (+ (seq.len (|p#$Mutation_23973| $t18@2)) 1)) 0)) (seq.unit ($1_TestMutRef_T (|v#$Mutation_4535| $t19@0))) (seq.extract $$sel0 (+ (seq.nth (|p#$Mutation_4535| $t19@0) (+ (seq.len (|p#$Mutation_23973| $t18@2)) 1)) 1) (- (seq.len $$sel0) (+ (seq.nth (|p#$Mutation_4535| $t19@0) (+ (seq.len (|p#$Mutation_23973| $t18@2)) 1)) 1))))))))) (and (= $t18@4 $t18@3) (= (ControlFlow 0 38607) 38535))) L4_correct)))
(let ((L2_correct  (=> (= $t22@0  (and (= (|l#$Mutation_23973| $t18@2) (|l#$Mutation_4535| $t19@0)) (let ((pp (|p#$Mutation_23973| $t18@2)))
(let ((cp (|p#$Mutation_4535| $t19@0)))
(let ((pl (seq.len pp)))
(let ((cl (seq.len cp)))
(let ((el (seq.len (seq.++ (seq.++ (seq.unit 1) (seq.unit (- 0 1))) (seq.unit 0)))))
 (and (and (= cl (+ pl el)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 pl)) (= (seq.nth pp i@@12) (seq.nth cp i@@12)))
 :qid |mutrefz3bpl.286:14|
 :skolemid |11|
))) (forall ((i@@13 Int) ) (!  (=> (and (>= i@@13 0) (< i@@13 el)) (or (= (seq.nth (seq.++ (seq.++ (seq.unit 1) (seq.unit (- 0 1))) (seq.unit 0)) i@@13) (- 0 1)) (= (seq.nth (seq.++ (seq.++ (seq.unit 1) (seq.unit (- 0 1))) (seq.unit 0)) i@@13) (seq.nth cp (+ pl i@@13)))))
 :qid |mutrefz3bpl.287:14|
 :skolemid |12|
)))))))))) (and (=> (= (ControlFlow 0 38396) 38607) anon29_Then_correct) (=> (= (ControlFlow 0 38396) 38402) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (not $t21@0) (=> (and (= $t18@2 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1) (= (ControlFlow 0 38378) 38396)) L2_correct))))
(let ((anon28_Then_correct  (=> (and (and $t21@0 (= $t18@1 ($Mutation_23973 (|l#$Mutation_23973| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1) (|p#$Mutation_23973| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1) (let (($$sel0@@0 (|$is#$1_TestMutRef_V| (|v#$Mutation_23973| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1))))
($1_TestMutRef_V (seq.++ (seq.extract $$sel0@@0 0 (- (seq.nth (|p#$Mutation_4535| $t19@0) (+ (seq.len (|p#$Mutation_23973| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1)) 1)) 0)) (seq.unit (|v#$Mutation_4535| $t19@0)) (seq.extract $$sel0@@0 (+ (seq.nth (|p#$Mutation_4535| $t19@0) (+ (seq.len (|p#$Mutation_23973| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1)) 1)) 1) (- (seq.len $$sel0@@0) (+ (seq.nth (|p#$Mutation_4535| $t19@0) (+ (seq.len (|p#$Mutation_23973| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1)) 1)) 1)))) (|$ts#$1_TestMutRef_V| (|v#$Mutation_23973| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1))))))) (and (= $t18@2 $t18@1) (= (ControlFlow 0 38653) 38396))) L2_correct)))
(let ((anon27_Else_correct  (=> (and (not $abort_flag@3) (= |$temp_0'u64'@0| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1))) (=> (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (|$IsValid'u64'| 5)) (and (= $t19@0 ($Mutation_4535 (|l#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1) (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1) 5)) (= $t21@0  (and (= (|l#$Mutation_23973| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1) (|l#$Mutation_4535| $t19@0)) (let ((pp@@0 (|p#$Mutation_23973| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1)))
(let ((cp@@0 (|p#$Mutation_4535| $t19@0)))
(let ((pl@@0 (seq.len pp@@0)))
(let ((cl@@0 (seq.len cp@@0)))
(let ((el@@0 (seq.len (seq.++ (seq.unit 0) (seq.unit (- 0 1))))))
 (and (and (= cl@@0 (+ pl@@0 el@@0)) (forall ((i@@14 Int) ) (!  (=> (and (>= i@@14 0) (< i@@14 pl@@0)) (= (seq.nth pp@@0 i@@14) (seq.nth cp@@0 i@@14)))
 :qid |mutrefz3bpl.286:14|
 :skolemid |11|
))) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 el@@0)) (or (= (seq.nth (seq.++ (seq.unit 0) (seq.unit (- 0 1))) i@@15) (- 0 1)) (= (seq.nth (seq.++ (seq.unit 0) (seq.unit (- 0 1))) i@@15) (seq.nth cp@@0 (+ pl@@0 i@@15)))))
 :qid |mutrefz3bpl.287:14|
 :skolemid |12|
)))))))))))) (and (=> (= (ControlFlow 0 38372) 38653) anon28_Then_correct) (=> (= (ControlFlow 0 38372) 38378) anon28_Else_correct))))))
(let ((anon27_Then_correct true))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$L15_correct  (=> (and (and (= $abort_flag@3 true) (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@0)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@0) (= $abort_code@4 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t6@1))) (and (=> (= (ControlFlow 0 38072) 38667) anon27_Then_correct) (=> (= (ControlFlow 0 38072) 38372) anon27_Else_correct)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t6@1 $abort_code@2) (= (ControlFlow 0 38318) 38072))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$L15_correct)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t6@1 $abort_code@1) (= (ControlFlow 0 38066) 38072))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$L15_correct)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$L3_correct  (=> (and (and (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@3| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@3| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@3|)) (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@2| (|v#$Mutation_23973| $t18@0)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@2| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@2|))) (and (and (= $abort_flag@3 $abort_flag@2) (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1 $t18@0) (= $abort_code@4 $abort_code@3)))) (and (=> (= (ControlFlow 0 38052) 38667) anon27_Then_correct) (=> (= (ControlFlow 0 38052) 38372) anon27_Else_correct)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Else_correct  (=> (not $abort_flag@1) (=> (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@2| (|v#$Mutation_4535| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@2| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@2|)) (=> (and (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1 |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) (= $abort_code@3 $abort_code@2)) (and (= $abort_flag@2 $abort_flag@1) (= (ControlFlow 0 38304) 38052))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$L3_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@0|)) (and (=> (= (ControlFlow 0 38276) 38318) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Then_correct) (=> (= (ControlFlow 0 38276) 38304) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|  (=> (and (not (and (>= 1 0) (< 1 (seq.len |inline$$1_Vector_borrow_mut'u64'$0$v@1|)))) (= (ControlFlow 0 38274) 38276)) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|  (=> (and (>= 1 0) (< 1 (seq.len |inline$$1_Vector_borrow_mut'u64'$0$v@1|))) (=> (and (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@1| ($Mutation_4535 (|l#$Mutation_19785| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1) (seq.++ (|p#$Mutation_19785| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1) (seq.unit 1)) (seq.nth |inline$$1_Vector_borrow_mut'u64'$0$v@1| 1))) (= $abort_flag@1 false)) (and (= $abort_code@2 $abort_code@0) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@1|))) (and (=> (= (ControlFlow 0 38224) 38318) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Then_correct) (=> (= (ControlFlow 0 38224) 38304) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$0$v@1| (|v#$Mutation_19785| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1)) (and (=> (= (ControlFlow 0 38194) 38274) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 38194) 38224) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon7_Then_correct  (=> (and (and _$t0 (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1 ($Mutation_19785 (|l#$Mutation_23973| $t18@0) (seq.++ (|p#$Mutation_23973| $t18@0) (seq.unit 0)) (|$is#$1_TestMutRef_V| (|v#$Mutation_23973| $t18@0))))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 38284) 38194))) |inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Else_correct  (=> (and (and (and (not $abort_flag@0) (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@1 ($Mutation_4535 (|l#$Mutation_18478| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2|) (seq.++ (|p#$Mutation_18478| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2|) (seq.unit 0)) (|$value#$1_TestMutRef_T| (|v#$Mutation_18478| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2|))))) (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@1| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@1)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@1| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@1|))) (and (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@1) (= $abort_code@3 $abort_code@1)) (and (= $abort_flag@2 $abort_flag@0) (= (ControlFlow 0 38024) 38052)))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$L3_correct)))
(let ((|inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@0|)) (and (=> (= (ControlFlow 0 37984) 38066) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Then_correct) (=> (= (ControlFlow 0 37984) 38024) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Then_correct|  (=> (and (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1|)))) (= (ControlFlow 0 37982) 37984)) |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Else_correct|  (=> (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1|))) (=> (and (and (= |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@1| ($Mutation_18478 (|l#$Mutation_17766| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1) (seq.++ (|p#$Mutation_17766| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1) (seq.unit 0)) (seq.nth |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1| 0))) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@1|))) (and (=> (= (ControlFlow 0 37932) 38066) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Then_correct) (=> (= (ControlFlow 0 37932) 38024) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1| (|v#$Mutation_17766| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1)) (and (=> (= (ControlFlow 0 37902) 37982) |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 37902) 37932) |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Else_correct|)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon7_Else_correct  (=> (and (and (not _$t0) (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1 ($Mutation_17766 (|l#$Mutation_23973| $t18@0) (seq.++ (|p#$Mutation_23973| $t18@0) (seq.unit 1)) (|$ts#$1_TestMutRef_V| (|v#$Mutation_23973| $t18@0))))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 37992) 37902))) |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon0_correct|)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@0)) 0) (=> (and (and (and (= (seq.len (|p#$Mutation_19785| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@0)) 0) (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t5@0)) 0)) (and (= (seq.len (|p#$Mutation_17766| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@0)) 0) (= (seq.len (|p#$Mutation_18478| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t9@0)) 0))) (and (and (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@0)) 0) (= _$t0 _$t0)) (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@1| (|v#$Mutation_23973| $t18@0)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@1| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@1|)))) (and (=> (= (ControlFlow 0 37778) 38284) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon7_Then_correct) (=> (= (ControlFlow 0 37778) 37992) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon7_Else_correct))))))
(let ((anon26_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 38326) (- 0 47760)) (let (($range_0@@0 (|v#$Mutation_17766| |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1|)))
(forall (($i_1@@1 Int) ) (!  (=> (and (>= $i_1@@1 0) (< $i_1@@1 (seq.len $range_0@@0))) (let (($elem@@0 (seq.nth $range_0@@0 $i_1@@1)))
(> (|$value#$1_TestMutRef_T| $elem@@0) 0)))
 :qid |mutrefz3bpl.1965:52|
 :skolemid |40|
)))) (=> (let (($range_0@@0 (|v#$Mutation_17766| |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1|)))
(forall (($i_1@@2 Int) ) (!  (=> (and (>= $i_1@@2 0) (< $i_1@@2 (seq.len $range_0@@0))) (let (($elem@@0 (seq.nth $range_0@@0 $i_1@@2)))
(> (|$value#$1_TestMutRef_T| $elem@@0) 0)))
 :qid |mutrefz3bpl.1965:52|
 :skolemid |40|
))) (=> (= $t3@1 (|v#$Mutation_17766| |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1|)) (=> (and (and (= $t4@0 ($1_TestMutRef_V $t1@1 $t3@1)) (= $t4@0 $t4@0)) (and (= $t18@0 ($Mutation_23973 ($Local 4) (as seq.empty (Seq Int)) $t4@0)) (= (ControlFlow 0 38326) 37778))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon0_correct)))))))
(let ((anon26_Then_correct true))
(let ((|inline$$1_Vector_push_back'$1_TestMutRef_T'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1| ($Mutation_17766 (|l#$Mutation_17766| $t13@0) (|p#$Mutation_17766| $t13@0) (seq.++ (|v#$Mutation_17766| $t13@0) (seq.unit $t15@0)))) (and (=> (= (ControlFlow 0 37262) 38687) anon26_Then_correct) (=> (= (ControlFlow 0 37262) 38326) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 37268) (- 0 47629)) (let (($range_0@@1 (|v#$Mutation_17766| |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1|)))
(forall (($i_1@@3 Int) ) (!  (=> (and (>= $i_1@@3 0) (< $i_1@@3 (seq.len $range_0@@1))) (let (($elem@@1 (seq.nth $range_0@@1 $i_1@@3)))
(> (|$value#$1_TestMutRef_T| $elem@@1) 0)))
 :qid |mutrefz3bpl.1927:52|
 :skolemid |39|
)))) (=> (let (($range_0@@1 (|v#$Mutation_17766| |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1|)))
(forall (($i_1@@4 Int) ) (!  (=> (and (>= $i_1@@4 0) (< $i_1@@4 (seq.len $range_0@@1))) (let (($elem@@1 (seq.nth $range_0@@1 $i_1@@4)))
(> (|$value#$1_TestMutRef_T| $elem@@1) 0)))
 :qid |mutrefz3bpl.1927:52|
 :skolemid |39|
))) (=> (and (and (= $t3@0 (|v#$Mutation_17766| |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1|)) (= $t13@0 ($Mutation_17766 ($Local 3) (as seq.empty (Seq Int)) $t3@0))) (and (|$IsValid'u64'| 4) (= $t15@0 ($1_TestMutRef_T 4)))) (and (=> (= (ControlFlow 0 37268) (- 0 47709)) (> (|$value#$1_TestMutRef_T| $t15@0) 0)) (=> (> (|$value#$1_TestMutRef_T| $t15@0) 0) (=> (= (ControlFlow 0 37268) 37262) |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$anon0_correct|)))))))))
(let ((anon25_Then_correct true))
(let ((|inline$$1_Vector_push_back'$1_TestMutRef_T'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1| ($Mutation_17766 (|l#$Mutation_17766| $t10@0) (|p#$Mutation_17766| $t10@0) (seq.++ (|v#$Mutation_17766| $t10@0) (seq.unit $t12@0)))) (and (=> (= (ControlFlow 0 37122) 38701) anon25_Then_correct) (=> (= (ControlFlow 0 37122) 37268) anon25_Else_correct)))))
(let ((anon24_Else_correct  (=> (not false) (=> (and (and (= $t1@1 (|v#$Mutation_19785| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t10@0 ($Mutation_17766 ($Local 3) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1|))) (and (|$IsValid'u64'| 3) (= $t12@0 ($1_TestMutRef_T 3)))) (and (=> (= (ControlFlow 0 37128) (- 0 47578)) (> (|$value#$1_TestMutRef_T| $t12@0) 0)) (=> (> (|$value#$1_TestMutRef_T| $t12@0) 0) (=> (= (ControlFlow 0 37128) 37122) |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$anon0_correct|)))))))
(let ((anon24_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_19785 (|l#$Mutation_19785| $t8@0) (|p#$Mutation_19785| $t8@0) (seq.++ (|v#$Mutation_19785| $t8@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 37019) 38715) anon24_Then_correct) (=> (= (ControlFlow 0 37019) 37128) anon24_Else_correct)))))
(let ((anon23_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_19785| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t8@0 ($Mutation_19785 ($Local 1) (as seq.empty (Seq Int)) $t1@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 37025) 37019))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon23_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_19785 (|l#$Mutation_19785| $t6@0) (|p#$Mutation_19785| $t6@0) (seq.++ (|v#$Mutation_19785| $t6@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 36932) 38729) anon23_Then_correct) (=> (= (ControlFlow 0 36932) 37025) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1| |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1|) (= $t6@0 ($Mutation_19785 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 36938) 36932))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_empty'$1_TestMutRef_T'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1| (as seq.empty (Seq T@$1_TestMutRef_T))) (and (=> (= (ControlFlow 0 36843) 38743) anon22_Then_correct) (=> (= (ControlFlow 0 36843) 36938) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 36849) 36843)) |inline$$1_Vector_empty'$1_TestMutRef_T'$0$anon0_correct|))))
(let ((anon21_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 36801) 38757) anon21_Then_correct) (=> (= (ControlFlow 0 36801) 36849) anon21_Else_correct)))))
(let ((anon0$1_correct  (=> (and (= _$t0 _$t0) (= (ControlFlow 0 36807) 36801)) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (and (and (= (seq.len (|p#$Mutation_4535| $t2)) 0) (= (seq.len (|p#$Mutation_19785| $t6)) 0)) (and (= (seq.len (|p#$Mutation_19785| $t8)) 0) (= (seq.len (|p#$Mutation_17766| $t10)) 0))) (and (and (= (seq.len (|p#$Mutation_17766| $t13)) 0) (= (seq.len (|p#$Mutation_23973| $t18)) 0)) (and (= (seq.len (|p#$Mutation_4535| $t19)) 0) (= (ControlFlow 0 36763) 36807)))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 47032) 36763) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))
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
(declare-datatypes ((T@$1_TestMutRef_R 0)) ((($1_TestMutRef_R (|$value#$1_TestMutRef_R| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_T 0)) ((($1_TestMutRef_T (|$value#$1_TestMutRef_T| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_V 0)) ((($1_TestMutRef_V (|$is#$1_TestMutRef_V| (Seq Int)) (|$ts#$1_TestMutRef_V| (Seq T@$1_TestMutRef_T)) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_N 0)) ((($1_TestMutRef_N (|$value#$1_TestMutRef_N| Int) (|$t#$1_TestMutRef_N| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_28102 0)) ((($Mutation_28102 (|l#$Mutation_28102| T@$Location) (|p#$Mutation_28102| (Seq Int)) (|v#$Mutation_28102| T@$1_TestMutRef_R) ) ) ))
(declare-datatypes ((T@$Mutation_23973 0)) ((($Mutation_23973 (|l#$Mutation_23973| T@$Location) (|p#$Mutation_23973| (Seq Int)) (|v#$Mutation_23973| T@$1_TestMutRef_V) ) ) ))
(declare-datatypes ((T@$Mutation_22996 0)) ((($Mutation_22996 (|l#$Mutation_22996| T@$Location) (|p#$Mutation_22996| (Seq Int)) (|v#$Mutation_22996| T@$1_TestMutRef_N) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_19785 0)) ((($Mutation_19785 (|l#$Mutation_19785| T@$Location) (|p#$Mutation_19785| (Seq Int)) (|v#$Mutation_19785| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_18478 0)) ((($Mutation_18478 (|l#$Mutation_18478| T@$Location) (|p#$Mutation_18478| (Seq Int)) (|v#$Mutation_18478| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Mutation_17766 0)) ((($Mutation_17766 (|l#$Mutation_17766| T@$Location) (|p#$Mutation_17766| (Seq Int)) (|v#$Mutation_17766| (Seq T@$1_TestMutRef_T)) ) ) ))
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
 :qid |mutrefz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_TestMutRef_T)) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_TestMutRef_T'| (seq.nth v@@4 i@@0)))
 :qid |mutrefz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefz3bpl.588:41|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_TestMutRef_T)) (e T@$1_TestMutRef_T) ) (! (let ((i@@1 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |mutrefz3bpl.770:13|
 :skolemid |20|
))))
 :qid |mutrefz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |mutrefz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |mutrefz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |mutrefz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |mutrefz3bpl.950:13|
 :skolemid |25|
))))
 :qid |mutrefz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |mutrefz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |mutrefz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |mutrefz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefz3bpl.1264:36|
 :skolemid |34|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefz3bpl.1278:36|
 :skolemid |35|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefz3bpl.1291:36|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefz3bpl.1307:36|
 :skolemid |37|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |mutrefz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |mutrefz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_TestMutRef_T)) ) (! (let ((r@@1 (ReverseVec_13833 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |mutrefz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |mutrefz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13833 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |mutrefz3bpl.245:54|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t18@4 () T@$Mutation_23973)
(declare-fun $t4@1 () T@$1_TestMutRef_V)
(declare-fun _$t0 () Bool)
(declare-fun $t22@0 () Bool)
(declare-fun $t18@2 () T@$Mutation_23973)
(declare-fun $t18@3 () T@$Mutation_23973)
(declare-fun $t19@0 () T@$Mutation_4535)
(declare-fun $t21@0 () Bool)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1 () T@$Mutation_23973)
(declare-fun $t18@1 () T@$Mutation_23973)
(declare-fun $abort_flag@3 () Bool)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@0 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@0 () T@$Mutation_23973)
(declare-fun $abort_code@4 () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t6@1 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@3| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1 () T@$Mutation_4535)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@2| () T@$1_TestMutRef_V)
(declare-fun $t18@0 () T@$Mutation_23973)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@2| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@2| () T@$Mutation_4535)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@0| () T@$Mutation_4535)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@1| () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1 () T@$Mutation_19785)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@1 () T@$Mutation_4535)
(declare-fun |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2| () T@$Mutation_18478)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@1| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@0| () T@$Mutation_18478)
(declare-fun |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1| () (Seq T@$1_TestMutRef_T))
(declare-fun |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@1| () T@$Mutation_18478)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1 () T@$Mutation_17766)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@0 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@0 () T@$Mutation_19785)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t5@0 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@0 () T@$Mutation_17766)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t9@0 () T@$Mutation_18478)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@0 () T@$Mutation_4535)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@1| () T@$1_TestMutRef_V)
(declare-fun |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1| () T@$Mutation_17766)
(declare-fun $t3@1 () (Seq T@$1_TestMutRef_T))
(declare-fun $t4@0 () T@$1_TestMutRef_V)
(declare-fun $t1@1 () (Seq Int))
(declare-fun $t13@0 () T@$Mutation_17766)
(declare-fun $t15@0 () T@$1_TestMutRef_T)
(declare-fun |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1| () T@$Mutation_17766)
(declare-fun $t3@0 () (Seq T@$1_TestMutRef_T))
(declare-fun $t10@0 () T@$Mutation_17766)
(declare-fun $t12@0 () T@$1_TestMutRef_T)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_19785)
(declare-fun |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1| () (Seq T@$1_TestMutRef_T))
(declare-fun $t8@0 () T@$Mutation_19785)
(declare-fun $t1@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_19785)
(declare-fun $t6@0 () T@$Mutation_19785)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t2 () T@$Mutation_4535)
(declare-fun $t6 () T@$Mutation_19785)
(declare-fun $t8 () T@$Mutation_19785)
(declare-fun $t10 () T@$Mutation_17766)
(declare-fun $t13 () T@$Mutation_17766)
(declare-fun $t18 () T@$Mutation_23973)
(declare-fun $t19 () T@$Mutation_4535)
(push 1)
(set-info :boogie-vc-id $1_TestMutRef_call_return_ref_different_path_vec2_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 48774) (let ((L4_correct  (and (=> (= (ControlFlow 0 40949) (- 0 50362)) (let (($range_0 (|$ts#$1_TestMutRef_V| (|v#$Mutation_23973| $t18@4))))
(forall (($i_1 Int) ) (!  (=> (and (>= $i_1 0) (< $i_1 (seq.len $range_0))) (let (($elem (seq.nth $range_0 $i_1)))
(> (|$value#$1_TestMutRef_T| $elem) 0)))
 :qid |mutrefz3bpl.2364:73|
 :skolemid |44|
)))) (=> (let (($range_0 (|$ts#$1_TestMutRef_V| (|v#$Mutation_23973| $t18@4))))
(forall (($i_1@@0 Int) ) (!  (=> (and (>= $i_1@@0 0) (< $i_1@@0 (seq.len $range_0))) (let (($elem (seq.nth $range_0 $i_1@@0)))
(> (|$value#$1_TestMutRef_T| $elem) 0)))
 :qid |mutrefz3bpl.2364:73|
 :skolemid |44|
))) (=> (and (= $t4@1 (|v#$Mutation_23973| $t18@4)) (= $t4@1 $t4@1)) (and (=> (= (ControlFlow 0 40949) (- 0 50424)) (=> _$t0 (= $t4@1 ($1_TestMutRef_V (seq.++ (seq.unit 1) (seq.unit 0)) (seq.++ (seq.unit ($1_TestMutRef_T 3)) (seq.unit ($1_TestMutRef_T 4))))))) (=> (=> _$t0 (= $t4@1 ($1_TestMutRef_V (seq.++ (seq.unit 1) (seq.unit 0)) (seq.++ (seq.unit ($1_TestMutRef_T 3)) (seq.unit ($1_TestMutRef_T 4)))))) (=> (= (ControlFlow 0 40949) (- 0 50459)) (=> (not _$t0) (= $t4@1 ($1_TestMutRef_V (seq.++ (seq.unit 1) (seq.unit 2)) (seq.++ (seq.unit ($1_TestMutRef_T 0)) (seq.unit ($1_TestMutRef_T 4))))))))))))))
(let ((anon29_Else_correct  (=> (not $t22@0) (=> (and (= $t18@4 $t18@2) (= (ControlFlow 0 40816) 40949)) L4_correct))))
(let ((anon29_Then_correct  (=> (and (and $t22@0 (= $t18@3 ($Mutation_23973 (|l#$Mutation_23973| $t18@2) (|p#$Mutation_23973| $t18@2) (let (($$sel0 (|$ts#$1_TestMutRef_V| (|v#$Mutation_23973| $t18@2))))
($1_TestMutRef_V (|$is#$1_TestMutRef_V| (|v#$Mutation_23973| $t18@2)) (seq.++ (seq.extract $$sel0 0 (- (seq.nth (|p#$Mutation_4535| $t19@0) (+ (seq.len (|p#$Mutation_23973| $t18@2)) 1)) 0)) (seq.unit ($1_TestMutRef_T (|v#$Mutation_4535| $t19@0))) (seq.extract $$sel0 (+ (seq.nth (|p#$Mutation_4535| $t19@0) (+ (seq.len (|p#$Mutation_23973| $t18@2)) 1)) 1) (- (seq.len $$sel0) (+ (seq.nth (|p#$Mutation_4535| $t19@0) (+ (seq.len (|p#$Mutation_23973| $t18@2)) 1)) 1))))))))) (and (= $t18@4 $t18@3) (= (ControlFlow 0 41021) 40949))) L4_correct)))
(let ((L2_correct  (=> (= $t22@0  (and (= (|l#$Mutation_23973| $t18@2) (|l#$Mutation_4535| $t19@0)) (let ((pp (|p#$Mutation_23973| $t18@2)))
(let ((cp (|p#$Mutation_4535| $t19@0)))
(let ((pl (seq.len pp)))
(let ((cl (seq.len cp)))
(let ((el (seq.len (seq.++ (seq.++ (seq.unit 1) (seq.unit (- 0 1))) (seq.unit 0)))))
 (and (and (= cl (+ pl el)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 pl)) (= (seq.nth pp i@@12) (seq.nth cp i@@12)))
 :qid |mutrefz3bpl.286:14|
 :skolemid |11|
))) (forall ((i@@13 Int) ) (!  (=> (and (>= i@@13 0) (< i@@13 el)) (or (= (seq.nth (seq.++ (seq.++ (seq.unit 1) (seq.unit (- 0 1))) (seq.unit 0)) i@@13) (- 0 1)) (= (seq.nth (seq.++ (seq.++ (seq.unit 1) (seq.unit (- 0 1))) (seq.unit 0)) i@@13) (seq.nth cp (+ pl i@@13)))))
 :qid |mutrefz3bpl.287:14|
 :skolemid |12|
)))))))))) (and (=> (= (ControlFlow 0 40810) 41021) anon29_Then_correct) (=> (= (ControlFlow 0 40810) 40816) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (not $t21@0) (=> (and (= $t18@2 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1) (= (ControlFlow 0 40792) 40810)) L2_correct))))
(let ((anon28_Then_correct  (=> (and (and $t21@0 (= $t18@1 ($Mutation_23973 (|l#$Mutation_23973| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1) (|p#$Mutation_23973| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1) (let (($$sel0@@0 (|$is#$1_TestMutRef_V| (|v#$Mutation_23973| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1))))
($1_TestMutRef_V (seq.++ (seq.extract $$sel0@@0 0 (- (seq.nth (|p#$Mutation_4535| $t19@0) (+ (seq.len (|p#$Mutation_23973| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1)) 1)) 0)) (seq.unit (|v#$Mutation_4535| $t19@0)) (seq.extract $$sel0@@0 (+ (seq.nth (|p#$Mutation_4535| $t19@0) (+ (seq.len (|p#$Mutation_23973| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1)) 1)) 1) (- (seq.len $$sel0@@0) (+ (seq.nth (|p#$Mutation_4535| $t19@0) (+ (seq.len (|p#$Mutation_23973| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1)) 1)) 1)))) (|$ts#$1_TestMutRef_V| (|v#$Mutation_23973| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1))))))) (and (= $t18@2 $t18@1) (= (ControlFlow 0 41067) 40810))) L2_correct)))
(let ((anon27_Else_correct  (=> (and (not $abort_flag@3) (= |$temp_0'u64'@0| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1))) (=> (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (|$IsValid'u64'| 0)) (and (= $t19@0 ($Mutation_4535 (|l#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1) (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1) 0)) (= $t21@0  (and (= (|l#$Mutation_23973| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1) (|l#$Mutation_4535| $t19@0)) (let ((pp@@0 (|p#$Mutation_23973| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1)))
(let ((cp@@0 (|p#$Mutation_4535| $t19@0)))
(let ((pl@@0 (seq.len pp@@0)))
(let ((cl@@0 (seq.len cp@@0)))
(let ((el@@0 (seq.len (seq.++ (seq.unit 0) (seq.unit (- 0 1))))))
 (and (and (= cl@@0 (+ pl@@0 el@@0)) (forall ((i@@14 Int) ) (!  (=> (and (>= i@@14 0) (< i@@14 pl@@0)) (= (seq.nth pp@@0 i@@14) (seq.nth cp@@0 i@@14)))
 :qid |mutrefz3bpl.286:14|
 :skolemid |11|
))) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 el@@0)) (or (= (seq.nth (seq.++ (seq.unit 0) (seq.unit (- 0 1))) i@@15) (- 0 1)) (= (seq.nth (seq.++ (seq.unit 0) (seq.unit (- 0 1))) i@@15) (seq.nth cp@@0 (+ pl@@0 i@@15)))))
 :qid |mutrefz3bpl.287:14|
 :skolemid |12|
)))))))))))) (and (=> (= (ControlFlow 0 40786) 41067) anon28_Then_correct) (=> (= (ControlFlow 0 40786) 40792) anon28_Else_correct))))))
(let ((anon27_Then_correct true))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$L15_correct  (=> (and (and (= $abort_flag@3 true) (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@0)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@0) (= $abort_code@4 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t6@1))) (and (=> (= (ControlFlow 0 40486) 41081) anon27_Then_correct) (=> (= (ControlFlow 0 40486) 40786) anon27_Else_correct)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t6@1 $abort_code@2) (= (ControlFlow 0 40732) 40486))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$L15_correct)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t6@1 $abort_code@1) (= (ControlFlow 0 40480) 40486))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$L15_correct)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$L3_correct  (=> (and (and (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@3| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@3| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@3|)) (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@2| (|v#$Mutation_23973| $t18@0)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@2| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@2|))) (and (and (= $abort_flag@3 $abort_flag@2) (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1 $t18@0) (= $abort_code@4 $abort_code@3)))) (and (=> (= (ControlFlow 0 40466) 41081) anon27_Then_correct) (=> (= (ControlFlow 0 40466) 40786) anon27_Else_correct)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Else_correct  (=> (not $abort_flag@1) (=> (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@2| (|v#$Mutation_4535| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@2| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@2|)) (=> (and (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1 |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) (= $abort_code@3 $abort_code@2)) (and (= $abort_flag@2 $abort_flag@1) (= (ControlFlow 0 40718) 40466))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$L3_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@0|)) (and (=> (= (ControlFlow 0 40690) 40732) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Then_correct) (=> (= (ControlFlow 0 40690) 40718) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|  (=> (and (not (and (>= 1 0) (< 1 (seq.len |inline$$1_Vector_borrow_mut'u64'$0$v@1|)))) (= (ControlFlow 0 40688) 40690)) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|  (=> (and (>= 1 0) (< 1 (seq.len |inline$$1_Vector_borrow_mut'u64'$0$v@1|))) (=> (and (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@1| ($Mutation_4535 (|l#$Mutation_19785| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1) (seq.++ (|p#$Mutation_19785| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1) (seq.unit 1)) (seq.nth |inline$$1_Vector_borrow_mut'u64'$0$v@1| 1))) (= $abort_flag@1 false)) (and (= $abort_code@2 $abort_code@0) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@1|))) (and (=> (= (ControlFlow 0 40638) 40732) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Then_correct) (=> (= (ControlFlow 0 40638) 40718) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$0$v@1| (|v#$Mutation_19785| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1)) (and (=> (= (ControlFlow 0 40608) 40688) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 40608) 40638) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon7_Then_correct  (=> (and (and _$t0 (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1 ($Mutation_19785 (|l#$Mutation_23973| $t18@0) (seq.++ (|p#$Mutation_23973| $t18@0) (seq.unit 0)) (|$is#$1_TestMutRef_V| (|v#$Mutation_23973| $t18@0))))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 40698) 40608))) |inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Else_correct  (=> (and (and (and (not $abort_flag@0) (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@1 ($Mutation_4535 (|l#$Mutation_18478| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2|) (seq.++ (|p#$Mutation_18478| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2|) (seq.unit 0)) (|$value#$1_TestMutRef_T| (|v#$Mutation_18478| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2|))))) (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@1| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@1)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@1| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@1|))) (and (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@1) (= $abort_code@3 $abort_code@1)) (and (= $abort_flag@2 $abort_flag@0) (= (ControlFlow 0 40438) 40466)))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$L3_correct)))
(let ((|inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@0|)) (and (=> (= (ControlFlow 0 40398) 40480) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Then_correct) (=> (= (ControlFlow 0 40398) 40438) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Then_correct|  (=> (and (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1|)))) (= (ControlFlow 0 40396) 40398)) |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Else_correct|  (=> (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1|))) (=> (and (and (= |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@1| ($Mutation_18478 (|l#$Mutation_17766| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1) (seq.++ (|p#$Mutation_17766| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1) (seq.unit 0)) (seq.nth |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1| 0))) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@1|))) (and (=> (= (ControlFlow 0 40346) 40480) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Then_correct) (=> (= (ControlFlow 0 40346) 40438) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1| (|v#$Mutation_17766| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1)) (and (=> (= (ControlFlow 0 40316) 40396) |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 40316) 40346) |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Else_correct|)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon7_Else_correct  (=> (and (and (not _$t0) (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1 ($Mutation_17766 (|l#$Mutation_23973| $t18@0) (seq.++ (|p#$Mutation_23973| $t18@0) (seq.unit 1)) (|$ts#$1_TestMutRef_V| (|v#$Mutation_23973| $t18@0))))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 40406) 40316))) |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon0_correct|)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@0)) 0) (=> (and (and (and (= (seq.len (|p#$Mutation_19785| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@0)) 0) (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t5@0)) 0)) (and (= (seq.len (|p#$Mutation_17766| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@0)) 0) (= (seq.len (|p#$Mutation_18478| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t9@0)) 0))) (and (and (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@0)) 0) (= _$t0 _$t0)) (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@1| (|v#$Mutation_23973| $t18@0)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@1| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@1|)))) (and (=> (= (ControlFlow 0 40192) 40698) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon7_Then_correct) (=> (= (ControlFlow 0 40192) 40406) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon7_Else_correct))))))
(let ((anon26_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 40740) (- 0 49502)) (let (($range_0@@0 (|v#$Mutation_17766| |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1|)))
(forall (($i_1@@1 Int) ) (!  (=> (and (>= $i_1@@1 0) (< $i_1@@1 (seq.len $range_0@@0))) (let (($elem@@0 (seq.nth $range_0@@0 $i_1@@1)))
(> (|$value#$1_TestMutRef_T| $elem@@0) 0)))
 :qid |mutrefz3bpl.2285:52|
 :skolemid |43|
)))) (=> (let (($range_0@@0 (|v#$Mutation_17766| |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1|)))
(forall (($i_1@@2 Int) ) (!  (=> (and (>= $i_1@@2 0) (< $i_1@@2 (seq.len $range_0@@0))) (let (($elem@@0 (seq.nth $range_0@@0 $i_1@@2)))
(> (|$value#$1_TestMutRef_T| $elem@@0) 0)))
 :qid |mutrefz3bpl.2285:52|
 :skolemid |43|
))) (=> (= $t3@1 (|v#$Mutation_17766| |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1|)) (=> (and (and (= $t4@0 ($1_TestMutRef_V $t1@1 $t3@1)) (= $t4@0 $t4@0)) (and (= $t18@0 ($Mutation_23973 ($Local 4) (as seq.empty (Seq Int)) $t4@0)) (= (ControlFlow 0 40740) 40192))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon0_correct)))))))
(let ((anon26_Then_correct true))
(let ((|inline$$1_Vector_push_back'$1_TestMutRef_T'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1| ($Mutation_17766 (|l#$Mutation_17766| $t13@0) (|p#$Mutation_17766| $t13@0) (seq.++ (|v#$Mutation_17766| $t13@0) (seq.unit $t15@0)))) (and (=> (= (ControlFlow 0 39676) 41101) anon26_Then_correct) (=> (= (ControlFlow 0 39676) 40740) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 39682) (- 0 49371)) (let (($range_0@@1 (|v#$Mutation_17766| |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1|)))
(forall (($i_1@@3 Int) ) (!  (=> (and (>= $i_1@@3 0) (< $i_1@@3 (seq.len $range_0@@1))) (let (($elem@@1 (seq.nth $range_0@@1 $i_1@@3)))
(> (|$value#$1_TestMutRef_T| $elem@@1) 0)))
 :qid |mutrefz3bpl.2247:52|
 :skolemid |42|
)))) (=> (let (($range_0@@1 (|v#$Mutation_17766| |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1|)))
(forall (($i_1@@4 Int) ) (!  (=> (and (>= $i_1@@4 0) (< $i_1@@4 (seq.len $range_0@@1))) (let (($elem@@1 (seq.nth $range_0@@1 $i_1@@4)))
(> (|$value#$1_TestMutRef_T| $elem@@1) 0)))
 :qid |mutrefz3bpl.2247:52|
 :skolemid |42|
))) (=> (and (and (= $t3@0 (|v#$Mutation_17766| |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1|)) (= $t13@0 ($Mutation_17766 ($Local 3) (as seq.empty (Seq Int)) $t3@0))) (and (|$IsValid'u64'| 4) (= $t15@0 ($1_TestMutRef_T 4)))) (and (=> (= (ControlFlow 0 39682) (- 0 49451)) (> (|$value#$1_TestMutRef_T| $t15@0) 0)) (=> (> (|$value#$1_TestMutRef_T| $t15@0) 0) (=> (= (ControlFlow 0 39682) 39676) |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$anon0_correct|)))))))))
(let ((anon25_Then_correct true))
(let ((|inline$$1_Vector_push_back'$1_TestMutRef_T'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1| ($Mutation_17766 (|l#$Mutation_17766| $t10@0) (|p#$Mutation_17766| $t10@0) (seq.++ (|v#$Mutation_17766| $t10@0) (seq.unit $t12@0)))) (and (=> (= (ControlFlow 0 39536) 41115) anon25_Then_correct) (=> (= (ControlFlow 0 39536) 39682) anon25_Else_correct)))))
(let ((anon24_Else_correct  (=> (not false) (=> (and (and (= $t1@1 (|v#$Mutation_19785| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t10@0 ($Mutation_17766 ($Local 3) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1|))) (and (|$IsValid'u64'| 3) (= $t12@0 ($1_TestMutRef_T 3)))) (and (=> (= (ControlFlow 0 39542) (- 0 49320)) (> (|$value#$1_TestMutRef_T| $t12@0) 0)) (=> (> (|$value#$1_TestMutRef_T| $t12@0) 0) (=> (= (ControlFlow 0 39542) 39536) |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$anon0_correct|)))))))
(let ((anon24_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_19785 (|l#$Mutation_19785| $t8@0) (|p#$Mutation_19785| $t8@0) (seq.++ (|v#$Mutation_19785| $t8@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 39433) 41129) anon24_Then_correct) (=> (= (ControlFlow 0 39433) 39542) anon24_Else_correct)))))
(let ((anon23_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_19785| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t8@0 ($Mutation_19785 ($Local 1) (as seq.empty (Seq Int)) $t1@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 39439) 39433))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon23_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_19785 (|l#$Mutation_19785| $t6@0) (|p#$Mutation_19785| $t6@0) (seq.++ (|v#$Mutation_19785| $t6@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 39346) 41143) anon23_Then_correct) (=> (= (ControlFlow 0 39346) 39439) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1| |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1|) (= $t6@0 ($Mutation_19785 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 39352) 39346))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_empty'$1_TestMutRef_T'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1| (as seq.empty (Seq T@$1_TestMutRef_T))) (and (=> (= (ControlFlow 0 39257) 41157) anon22_Then_correct) (=> (= (ControlFlow 0 39257) 39352) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 39263) 39257)) |inline$$1_Vector_empty'$1_TestMutRef_T'$0$anon0_correct|))))
(let ((anon21_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 39215) 41171) anon21_Then_correct) (=> (= (ControlFlow 0 39215) 39263) anon21_Else_correct)))))
(let ((anon0$1_correct  (=> (and (= _$t0 _$t0) (= (ControlFlow 0 39221) 39215)) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (and (and (= (seq.len (|p#$Mutation_4535| $t2)) 0) (= (seq.len (|p#$Mutation_19785| $t6)) 0)) (and (= (seq.len (|p#$Mutation_19785| $t8)) 0) (= (seq.len (|p#$Mutation_17766| $t10)) 0))) (and (and (= (seq.len (|p#$Mutation_17766| $t13)) 0) (= (seq.len (|p#$Mutation_23973| $t18)) 0)) (and (= (seq.len (|p#$Mutation_4535| $t19)) 0) (= (ControlFlow 0 39177) 39221)))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 48774) 39177) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 48774)))
(get-value ((ControlFlow 0 39177)))
(get-value ((ControlFlow 0 39221)))
(get-value ((ControlFlow 0 39215)))
(get-value ((ControlFlow 0 39263)))
(get-value ((ControlFlow 0 39257)))
(get-value ((ControlFlow 0 39352)))
(get-value ((ControlFlow 0 39346)))
(get-value ((ControlFlow 0 39439)))
(get-value ((ControlFlow 0 39433)))
(get-value ((ControlFlow 0 39542)))
(get-value ((ControlFlow 0 39536)))
(get-value ((ControlFlow 0 39682)))
(get-value ((ControlFlow 0 39676)))
(get-value ((ControlFlow 0 40740)))
(get-value ((ControlFlow 0 40192)))
(get-value ((ControlFlow 0 40406)))
(get-value ((ControlFlow 0 40316)))
(get-value ((ControlFlow 0 40346)))
(get-value ((ControlFlow 0 40438)))
(get-value ((ControlFlow 0 40466)))
(get-value ((ControlFlow 0 40786)))
(get-value ((ControlFlow 0 40792)))
(get-value ((ControlFlow 0 40810)))
(get-value ((ControlFlow 0 41021)))
(get-value ((ControlFlow 0 40949)))
(assert (not (= (ControlFlow 0 40949) (- 50362))))
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
(declare-datatypes ((T@$1_TestMutRef_R 0)) ((($1_TestMutRef_R (|$value#$1_TestMutRef_R| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_T 0)) ((($1_TestMutRef_T (|$value#$1_TestMutRef_T| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_V 0)) ((($1_TestMutRef_V (|$is#$1_TestMutRef_V| (Seq Int)) (|$ts#$1_TestMutRef_V| (Seq T@$1_TestMutRef_T)) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_N 0)) ((($1_TestMutRef_N (|$value#$1_TestMutRef_N| Int) (|$t#$1_TestMutRef_N| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_28102 0)) ((($Mutation_28102 (|l#$Mutation_28102| T@$Location) (|p#$Mutation_28102| (Seq Int)) (|v#$Mutation_28102| T@$1_TestMutRef_R) ) ) ))
(declare-datatypes ((T@$Mutation_23973 0)) ((($Mutation_23973 (|l#$Mutation_23973| T@$Location) (|p#$Mutation_23973| (Seq Int)) (|v#$Mutation_23973| T@$1_TestMutRef_V) ) ) ))
(declare-datatypes ((T@$Mutation_22996 0)) ((($Mutation_22996 (|l#$Mutation_22996| T@$Location) (|p#$Mutation_22996| (Seq Int)) (|v#$Mutation_22996| T@$1_TestMutRef_N) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_19785 0)) ((($Mutation_19785 (|l#$Mutation_19785| T@$Location) (|p#$Mutation_19785| (Seq Int)) (|v#$Mutation_19785| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_18478 0)) ((($Mutation_18478 (|l#$Mutation_18478| T@$Location) (|p#$Mutation_18478| (Seq Int)) (|v#$Mutation_18478| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Mutation_17766 0)) ((($Mutation_17766 (|l#$Mutation_17766| T@$Location) (|p#$Mutation_17766| (Seq Int)) (|v#$Mutation_17766| (Seq T@$1_TestMutRef_T)) ) ) ))
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
 :qid |mutrefz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_TestMutRef_T)) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_TestMutRef_T'| (seq.nth v@@4 i@@0)))
 :qid |mutrefz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefz3bpl.588:41|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_TestMutRef_T)) (e T@$1_TestMutRef_T) ) (! (let ((i@@1 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |mutrefz3bpl.770:13|
 :skolemid |20|
))))
 :qid |mutrefz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |mutrefz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |mutrefz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |mutrefz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |mutrefz3bpl.950:13|
 :skolemid |25|
))))
 :qid |mutrefz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |mutrefz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |mutrefz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |mutrefz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefz3bpl.1264:36|
 :skolemid |34|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefz3bpl.1278:36|
 :skolemid |35|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefz3bpl.1291:36|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefz3bpl.1307:36|
 :skolemid |37|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |mutrefz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |mutrefz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_TestMutRef_T)) ) (! (let ((r@@1 (ReverseVec_13833 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |mutrefz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |mutrefz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13833 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |mutrefz3bpl.245:54|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t6@2 () T@$Mutation_18478)
(declare-fun $t2@1 () T@$1_TestMutRef_T)
(declare-fun $t3@1 () T@$1_TestMutRef_R)
(declare-fun $t7@2 () T@$Mutation_28102)
(declare-fun _$t0 () Bool)
(declare-fun $t12@0 () Bool)
(declare-fun $t7@0 () T@$Mutation_28102)
(declare-fun $t7@1 () T@$Mutation_28102)
(declare-fun $t8@0 () T@$Mutation_4535)
(declare-fun $t11@0 () Bool)
(declare-fun $t6@0 () T@$Mutation_18478)
(declare-fun $t6@1 () T@$Mutation_18478)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_root$0$$t3@1 () T@$Mutation_4535)
(declare-fun |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@3| () Int)
(declare-fun |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_T'@2| () T@$1_TestMutRef_T)
(declare-fun |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_R'@2| () T@$1_TestMutRef_R)
(declare-fun inline$$1_TestMutRef_return_ref_different_root$0$$t5@1 () T@$Mutation_4535)
(declare-fun |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@2| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_root$0$$t4@1 () T@$Mutation_4535)
(declare-fun |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@1| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_root$0$$t3@0 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_root$0$$t4@0 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_root$0$$t5@0 () T@$Mutation_4535)
(declare-fun |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_T'@1| () T@$1_TestMutRef_T)
(declare-fun |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_R'@1| () T@$1_TestMutRef_R)
(declare-fun $t2@0 () T@$1_TestMutRef_T)
(declare-fun $t3@0 () T@$1_TestMutRef_R)
(declare-fun $t1 () T@$Mutation_4535)
(declare-fun $t6 () T@$Mutation_18478)
(declare-fun $t7 () T@$Mutation_28102)
(declare-fun $t8 () T@$Mutation_4535)
(push 1)
(set-info :boogie-vc-id $1_TestMutRef_call_return_ref_different_root$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 50517) (let ((L4_correct  (and (=> (= (ControlFlow 0 42241) (- 0 51136)) (> (|$value#$1_TestMutRef_T| (|v#$Mutation_18478| $t6@2)) 0)) (=> (> (|$value#$1_TestMutRef_T| (|v#$Mutation_18478| $t6@2)) 0) (=> (and (and (= $t2@1 (|v#$Mutation_18478| $t6@2)) (= $t3@1 (|v#$Mutation_28102| $t7@2))) (and (= $t2@1 $t2@1) (= $t3@1 $t3@1))) (and (=> (= (ControlFlow 0 42241) (- 0 51189)) (=> _$t0 (and (= $t2@1 ($1_TestMutRef_T 5)) (= $t3@1 ($1_TestMutRef_R 10))))) (=> (=> _$t0 (and (= $t2@1 ($1_TestMutRef_T 5)) (= $t3@1 ($1_TestMutRef_R 10)))) (=> (= (ControlFlow 0 42241) (- 0 51211)) (=> (not _$t0) (and (= $t2@1 ($1_TestMutRef_T 1)) (= $t3@1 ($1_TestMutRef_R 5))))))))))))
(let ((anon11_Else_correct  (=> (not $t12@0) (=> (and (= $t7@2 $t7@0) (= (ControlFlow 0 42143) 42241)) L4_correct))))
(let ((anon11_Then_correct  (=> (and (and $t12@0 (= $t7@1 ($Mutation_28102 (|l#$Mutation_28102| $t7@0) (|p#$Mutation_28102| $t7@0) ($1_TestMutRef_R (|v#$Mutation_4535| $t8@0))))) (and (= $t7@2 $t7@1) (= (ControlFlow 0 42259) 42241))) L4_correct)))
(let ((L2_correct  (=> (= $t12@0  (and (= (|l#$Mutation_28102| $t7@0) (|l#$Mutation_4535| $t8@0)) (let ((pp (|p#$Mutation_28102| $t7@0)))
(let ((cp (|p#$Mutation_4535| $t8@0)))
(let ((pl (seq.len pp)))
(let ((cl (seq.len cp)))
 (and (and (= cl (+ pl 1)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 pl)) (= (seq.nth pp i@@12) (seq.nth cp i@@12)))
 :qid |mutrefz3bpl.272:14|
 :skolemid |10|
))) (or (= 0 (- 0 1)) (= 0 (seq.nth cp pl)))))))))) (and (=> (= (ControlFlow 0 42137) 42259) anon11_Then_correct) (=> (= (ControlFlow 0 42137) 42143) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (not $t11@0) (=> (and (= $t6@2 $t6@0) (= (ControlFlow 0 42127) 42137)) L2_correct))))
(let ((anon10_Then_correct  (=> (and (and $t11@0 (= $t6@1 ($Mutation_18478 (|l#$Mutation_18478| $t6@0) (|p#$Mutation_18478| $t6@0) ($1_TestMutRef_T (|v#$Mutation_4535| $t8@0))))) (and (= $t6@2 $t6@1) (= (ControlFlow 0 42277) 42137))) L2_correct)))
(let ((anon9_Else_correct  (=> (and (not false) (= |$temp_0'u64'@0| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_root$0$$t3@1))) (=> (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (|$IsValid'u64'| 5)) (and (= $t8@0 ($Mutation_4535 (|l#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_root$0$$t3@1) (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_root$0$$t3@1) 5)) (= $t11@0  (and (= (|l#$Mutation_18478| $t6@0) (|l#$Mutation_4535| $t8@0)) (let ((pp@@0 (|p#$Mutation_18478| $t6@0)))
(let ((cp@@0 (|p#$Mutation_4535| $t8@0)))
(let ((pl@@0 (seq.len pp@@0)))
(let ((cl@@0 (seq.len cp@@0)))
 (and (and (= cl@@0 (+ pl@@0 1)) (forall ((i@@13 Int) ) (!  (=> (and (>= i@@13 0) (< i@@13 pl@@0)) (= (seq.nth pp@@0 i@@13) (seq.nth cp@@0 i@@13)))
 :qid |mutrefz3bpl.272:14|
 :skolemid |10|
))) (or (= 0 (- 0 1)) (= 0 (seq.nth cp@@0 pl@@0)))))))))))) (and (=> (= (ControlFlow 0 42121) 42277) anon10_Then_correct) (=> (= (ControlFlow 0 42121) 42127) anon10_Else_correct))))))
(let ((anon9_Then_correct true))
(let ((inline$$1_TestMutRef_return_ref_different_root$0$L3_correct  (=> (and (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@3| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_root$0$$t3@1)) (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@3| |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@3|)) (=> (and (and (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_T'@2| (|v#$Mutation_18478| $t6@0)) (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_T'@2| |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_T'@2|)) (and (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_R'@2| (|v#$Mutation_28102| $t7@0)) (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_R'@2| |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_R'@2|))) (and (=> (= (ControlFlow 0 42043) 42295) anon9_Then_correct) (=> (= (ControlFlow 0 42043) 42121) anon9_Else_correct))))))
(let ((inline$$1_TestMutRef_return_ref_different_root$0$anon3_Else_correct  (=> (and (not _$t0) (= inline$$1_TestMutRef_return_ref_different_root$0$$t5@1 ($Mutation_4535 (|l#$Mutation_28102| $t7@0) (seq.++ (|p#$Mutation_28102| $t7@0) (seq.unit 0)) (|$value#$1_TestMutRef_R| (|v#$Mutation_28102| $t7@0))))) (=> (and (and (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@2| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_root$0$$t5@1)) (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@2| |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@2|)) (and (= inline$$1_TestMutRef_return_ref_different_root$0$$t3@1 inline$$1_TestMutRef_return_ref_different_root$0$$t5@1) (= (ControlFlow 0 42003) 42043))) inline$$1_TestMutRef_return_ref_different_root$0$L3_correct))))
(let ((inline$$1_TestMutRef_return_ref_different_root$0$anon3_Then_correct  (=> (and _$t0 (= inline$$1_TestMutRef_return_ref_different_root$0$$t4@1 ($Mutation_4535 (|l#$Mutation_18478| $t6@0) (seq.++ (|p#$Mutation_18478| $t6@0) (seq.unit 0)) (|$value#$1_TestMutRef_T| (|v#$Mutation_18478| $t6@0))))) (=> (and (and (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@1| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_root$0$$t4@1)) (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@1| |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@1|)) (and (= inline$$1_TestMutRef_return_ref_different_root$0$$t3@1 inline$$1_TestMutRef_return_ref_different_root$0$$t4@1) (= (ControlFlow 0 42071) 42043))) inline$$1_TestMutRef_return_ref_different_root$0$L3_correct))))
(let ((inline$$1_TestMutRef_return_ref_different_root$0$anon0_correct  (=> (and (and (and (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_root$0$$t3@0)) 0) (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_root$0$$t4@0)) 0)) (and (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_root$0$$t5@0)) 0) (= _$t0 _$t0))) (and (and (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_T'@1| (|v#$Mutation_18478| $t6@0)) (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_T'@1| |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_T'@1|)) (and (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_R'@1| (|v#$Mutation_28102| $t7@0)) (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_R'@1| |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_R'@1|)))) (and (=> (= (ControlFlow 0 41973) 42071) inline$$1_TestMutRef_return_ref_different_root$0$anon3_Then_correct) (=> (= (ControlFlow 0 41973) 42003) inline$$1_TestMutRef_return_ref_different_root$0$anon3_Else_correct)))))
(let ((anon0$1_correct  (=> (= _$t0 _$t0) (=> (and (|$IsValid'u64'| 1) (= $t2@0 ($1_TestMutRef_T 1))) (and (=> (= (ControlFlow 0 42081) (- 0 50690)) (> (|$value#$1_TestMutRef_T| $t2@0) 0)) (=> (> (|$value#$1_TestMutRef_T| $t2@0) 0) (=> (= $t2@0 $t2@0) (=> (and (|$IsValid'u64'| 10) (= $t3@0 ($1_TestMutRef_R 10))) (=> (and (and (= $t3@0 $t3@0) (= $t6@0 ($Mutation_18478 ($Local 2) (as seq.empty (Seq Int)) $t2@0))) (and (= $t7@0 ($Mutation_28102 ($Local 3) (as seq.empty (Seq Int)) $t3@0)) (= (ControlFlow 0 42081) 41973))) inline$$1_TestMutRef_return_ref_different_root$0$anon0_correct)))))))))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_4535| $t1)) 0) (=> (and (and (= (seq.len (|p#$Mutation_18478| $t6)) 0) (= (seq.len (|p#$Mutation_28102| $t7)) 0)) (and (= (seq.len (|p#$Mutation_4535| $t8)) 0) (= (ControlFlow 0 41573) 42081))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 50517) 41573) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
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
(declare-datatypes ((T@$1_TestMutRef_R 0)) ((($1_TestMutRef_R (|$value#$1_TestMutRef_R| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_T 0)) ((($1_TestMutRef_T (|$value#$1_TestMutRef_T| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_V 0)) ((($1_TestMutRef_V (|$is#$1_TestMutRef_V| (Seq Int)) (|$ts#$1_TestMutRef_V| (Seq T@$1_TestMutRef_T)) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_N 0)) ((($1_TestMutRef_N (|$value#$1_TestMutRef_N| Int) (|$t#$1_TestMutRef_N| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_28102 0)) ((($Mutation_28102 (|l#$Mutation_28102| T@$Location) (|p#$Mutation_28102| (Seq Int)) (|v#$Mutation_28102| T@$1_TestMutRef_R) ) ) ))
(declare-datatypes ((T@$Mutation_23973 0)) ((($Mutation_23973 (|l#$Mutation_23973| T@$Location) (|p#$Mutation_23973| (Seq Int)) (|v#$Mutation_23973| T@$1_TestMutRef_V) ) ) ))
(declare-datatypes ((T@$Mutation_22996 0)) ((($Mutation_22996 (|l#$Mutation_22996| T@$Location) (|p#$Mutation_22996| (Seq Int)) (|v#$Mutation_22996| T@$1_TestMutRef_N) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_19785 0)) ((($Mutation_19785 (|l#$Mutation_19785| T@$Location) (|p#$Mutation_19785| (Seq Int)) (|v#$Mutation_19785| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_18478 0)) ((($Mutation_18478 (|l#$Mutation_18478| T@$Location) (|p#$Mutation_18478| (Seq Int)) (|v#$Mutation_18478| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Mutation_17766 0)) ((($Mutation_17766 (|l#$Mutation_17766| T@$Location) (|p#$Mutation_17766| (Seq Int)) (|v#$Mutation_17766| (Seq T@$1_TestMutRef_T)) ) ) ))
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
 :qid |mutrefz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_TestMutRef_T)) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_TestMutRef_T'| (seq.nth v@@4 i@@0)))
 :qid |mutrefz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefz3bpl.588:41|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_TestMutRef_T)) (e T@$1_TestMutRef_T) ) (! (let ((i@@1 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |mutrefz3bpl.770:13|
 :skolemid |20|
))))
 :qid |mutrefz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |mutrefz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |mutrefz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |mutrefz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |mutrefz3bpl.950:13|
 :skolemid |25|
))))
 :qid |mutrefz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |mutrefz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |mutrefz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |mutrefz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefz3bpl.1264:36|
 :skolemid |34|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefz3bpl.1278:36|
 :skolemid |35|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefz3bpl.1291:36|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefz3bpl.1307:36|
 :skolemid |37|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |mutrefz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |mutrefz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_TestMutRef_T)) ) (! (let ((r@@1 (ReverseVec_13833 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |mutrefz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |mutrefz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13833 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |mutrefz3bpl.245:54|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $1_TestMutRef_identity$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 51243) true)
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
(declare-datatypes ((T@$1_TestMutRef_R 0)) ((($1_TestMutRef_R (|$value#$1_TestMutRef_R| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_T 0)) ((($1_TestMutRef_T (|$value#$1_TestMutRef_T| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_V 0)) ((($1_TestMutRef_V (|$is#$1_TestMutRef_V| (Seq Int)) (|$ts#$1_TestMutRef_V| (Seq T@$1_TestMutRef_T)) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_N 0)) ((($1_TestMutRef_N (|$value#$1_TestMutRef_N| Int) (|$t#$1_TestMutRef_N| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_28102 0)) ((($Mutation_28102 (|l#$Mutation_28102| T@$Location) (|p#$Mutation_28102| (Seq Int)) (|v#$Mutation_28102| T@$1_TestMutRef_R) ) ) ))
(declare-datatypes ((T@$Mutation_23973 0)) ((($Mutation_23973 (|l#$Mutation_23973| T@$Location) (|p#$Mutation_23973| (Seq Int)) (|v#$Mutation_23973| T@$1_TestMutRef_V) ) ) ))
(declare-datatypes ((T@$Mutation_22996 0)) ((($Mutation_22996 (|l#$Mutation_22996| T@$Location) (|p#$Mutation_22996| (Seq Int)) (|v#$Mutation_22996| T@$1_TestMutRef_N) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_19785 0)) ((($Mutation_19785 (|l#$Mutation_19785| T@$Location) (|p#$Mutation_19785| (Seq Int)) (|v#$Mutation_19785| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_18478 0)) ((($Mutation_18478 (|l#$Mutation_18478| T@$Location) (|p#$Mutation_18478| (Seq Int)) (|v#$Mutation_18478| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Mutation_17766 0)) ((($Mutation_17766 (|l#$Mutation_17766| T@$Location) (|p#$Mutation_17766| (Seq Int)) (|v#$Mutation_17766| (Seq T@$1_TestMutRef_T)) ) ) ))
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
 :qid |mutrefz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_TestMutRef_T)) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_TestMutRef_T'| (seq.nth v@@4 i@@0)))
 :qid |mutrefz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefz3bpl.588:41|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_TestMutRef_T)) (e T@$1_TestMutRef_T) ) (! (let ((i@@1 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |mutrefz3bpl.770:13|
 :skolemid |20|
))))
 :qid |mutrefz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |mutrefz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |mutrefz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |mutrefz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |mutrefz3bpl.950:13|
 :skolemid |25|
))))
 :qid |mutrefz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |mutrefz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |mutrefz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |mutrefz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefz3bpl.1264:36|
 :skolemid |34|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefz3bpl.1278:36|
 :skolemid |35|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefz3bpl.1291:36|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefz3bpl.1307:36|
 :skolemid |37|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |mutrefz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |mutrefz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_TestMutRef_T)) ) (! (let ((r@@1 (ReverseVec_13833 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |mutrefz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |mutrefz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13833 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |mutrefz3bpl.245:54|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $1_TestMutRef_return_ref_different_path$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 51347) true)
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
(declare-datatypes ((T@$1_TestMutRef_R 0)) ((($1_TestMutRef_R (|$value#$1_TestMutRef_R| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_T 0)) ((($1_TestMutRef_T (|$value#$1_TestMutRef_T| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_V 0)) ((($1_TestMutRef_V (|$is#$1_TestMutRef_V| (Seq Int)) (|$ts#$1_TestMutRef_V| (Seq T@$1_TestMutRef_T)) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_N 0)) ((($1_TestMutRef_N (|$value#$1_TestMutRef_N| Int) (|$t#$1_TestMutRef_N| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_28102 0)) ((($Mutation_28102 (|l#$Mutation_28102| T@$Location) (|p#$Mutation_28102| (Seq Int)) (|v#$Mutation_28102| T@$1_TestMutRef_R) ) ) ))
(declare-datatypes ((T@$Mutation_23973 0)) ((($Mutation_23973 (|l#$Mutation_23973| T@$Location) (|p#$Mutation_23973| (Seq Int)) (|v#$Mutation_23973| T@$1_TestMutRef_V) ) ) ))
(declare-datatypes ((T@$Mutation_22996 0)) ((($Mutation_22996 (|l#$Mutation_22996| T@$Location) (|p#$Mutation_22996| (Seq Int)) (|v#$Mutation_22996| T@$1_TestMutRef_N) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_19785 0)) ((($Mutation_19785 (|l#$Mutation_19785| T@$Location) (|p#$Mutation_19785| (Seq Int)) (|v#$Mutation_19785| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_18478 0)) ((($Mutation_18478 (|l#$Mutation_18478| T@$Location) (|p#$Mutation_18478| (Seq Int)) (|v#$Mutation_18478| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Mutation_17766 0)) ((($Mutation_17766 (|l#$Mutation_17766| T@$Location) (|p#$Mutation_17766| (Seq Int)) (|v#$Mutation_17766| (Seq T@$1_TestMutRef_T)) ) ) ))
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
 :qid |mutrefz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_TestMutRef_T)) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_TestMutRef_T'| (seq.nth v@@4 i@@0)))
 :qid |mutrefz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefz3bpl.588:41|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_TestMutRef_T)) (e T@$1_TestMutRef_T) ) (! (let ((i@@1 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |mutrefz3bpl.770:13|
 :skolemid |20|
))))
 :qid |mutrefz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |mutrefz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |mutrefz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |mutrefz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |mutrefz3bpl.950:13|
 :skolemid |25|
))))
 :qid |mutrefz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |mutrefz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |mutrefz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |mutrefz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefz3bpl.1264:36|
 :skolemid |34|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefz3bpl.1278:36|
 :skolemid |35|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefz3bpl.1291:36|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefz3bpl.1307:36|
 :skolemid |37|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |mutrefz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |mutrefz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_TestMutRef_T)) ) (! (let ((r@@1 (ReverseVec_13833 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |mutrefz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |mutrefz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13833 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |mutrefz3bpl.245:54|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $1_TestMutRef_return_ref_different_path_vec$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 51618) true)
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
(declare-datatypes ((T@$1_TestMutRef_R 0)) ((($1_TestMutRef_R (|$value#$1_TestMutRef_R| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_T 0)) ((($1_TestMutRef_T (|$value#$1_TestMutRef_T| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_V 0)) ((($1_TestMutRef_V (|$is#$1_TestMutRef_V| (Seq Int)) (|$ts#$1_TestMutRef_V| (Seq T@$1_TestMutRef_T)) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_N 0)) ((($1_TestMutRef_N (|$value#$1_TestMutRef_N| Int) (|$t#$1_TestMutRef_N| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_28102 0)) ((($Mutation_28102 (|l#$Mutation_28102| T@$Location) (|p#$Mutation_28102| (Seq Int)) (|v#$Mutation_28102| T@$1_TestMutRef_R) ) ) ))
(declare-datatypes ((T@$Mutation_23973 0)) ((($Mutation_23973 (|l#$Mutation_23973| T@$Location) (|p#$Mutation_23973| (Seq Int)) (|v#$Mutation_23973| T@$1_TestMutRef_V) ) ) ))
(declare-datatypes ((T@$Mutation_22996 0)) ((($Mutation_22996 (|l#$Mutation_22996| T@$Location) (|p#$Mutation_22996| (Seq Int)) (|v#$Mutation_22996| T@$1_TestMutRef_N) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_19785 0)) ((($Mutation_19785 (|l#$Mutation_19785| T@$Location) (|p#$Mutation_19785| (Seq Int)) (|v#$Mutation_19785| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_18478 0)) ((($Mutation_18478 (|l#$Mutation_18478| T@$Location) (|p#$Mutation_18478| (Seq Int)) (|v#$Mutation_18478| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Mutation_17766 0)) ((($Mutation_17766 (|l#$Mutation_17766| T@$Location) (|p#$Mutation_17766| (Seq Int)) (|v#$Mutation_17766| (Seq T@$1_TestMutRef_T)) ) ) ))
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
 :qid |mutrefz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_TestMutRef_T)) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_TestMutRef_T'| (seq.nth v@@4 i@@0)))
 :qid |mutrefz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefz3bpl.588:41|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_TestMutRef_T)) (e T@$1_TestMutRef_T) ) (! (let ((i@@1 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |mutrefz3bpl.770:13|
 :skolemid |20|
))))
 :qid |mutrefz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |mutrefz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |mutrefz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |mutrefz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |mutrefz3bpl.950:13|
 :skolemid |25|
))))
 :qid |mutrefz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |mutrefz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |mutrefz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |mutrefz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefz3bpl.1264:36|
 :skolemid |34|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefz3bpl.1278:36|
 :skolemid |35|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefz3bpl.1291:36|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefz3bpl.1307:36|
 :skolemid |37|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |mutrefz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |mutrefz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_TestMutRef_T)) ) (! (let ((r@@1 (ReverseVec_13833 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |mutrefz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |mutrefz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13833 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |mutrefz3bpl.245:54|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $1_TestMutRef_return_ref_different_path_vec2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 52212) true)
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
(declare-datatypes ((T@$1_TestMutRef_R 0)) ((($1_TestMutRef_R (|$value#$1_TestMutRef_R| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_T 0)) ((($1_TestMutRef_T (|$value#$1_TestMutRef_T| Int) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_V 0)) ((($1_TestMutRef_V (|$is#$1_TestMutRef_V| (Seq Int)) (|$ts#$1_TestMutRef_V| (Seq T@$1_TestMutRef_T)) ) ) ))
(declare-datatypes ((T@$1_TestMutRef_N 0)) ((($1_TestMutRef_N (|$value#$1_TestMutRef_N| Int) (|$t#$1_TestMutRef_N| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Location 0)) ((($Global (|a#$Global| Int) ) ($Local (|i#$Local| Int) ) ($Param (|i#$Param| Int) ) ) ))
(declare-datatypes ((T@$Mutation_28102 0)) ((($Mutation_28102 (|l#$Mutation_28102| T@$Location) (|p#$Mutation_28102| (Seq Int)) (|v#$Mutation_28102| T@$1_TestMutRef_R) ) ) ))
(declare-datatypes ((T@$Mutation_23973 0)) ((($Mutation_23973 (|l#$Mutation_23973| T@$Location) (|p#$Mutation_23973| (Seq Int)) (|v#$Mutation_23973| T@$1_TestMutRef_V) ) ) ))
(declare-datatypes ((T@$Mutation_22996 0)) ((($Mutation_22996 (|l#$Mutation_22996| T@$Location) (|p#$Mutation_22996| (Seq Int)) (|v#$Mutation_22996| T@$1_TestMutRef_N) ) ) ))
(declare-datatypes ((T@$Mutation_4535 0)) ((($Mutation_4535 (|l#$Mutation_4535| T@$Location) (|p#$Mutation_4535| (Seq Int)) (|v#$Mutation_4535| Int) ) ) ))
(declare-datatypes ((T@$Mutation_19785 0)) ((($Mutation_19785 (|l#$Mutation_19785| T@$Location) (|p#$Mutation_19785| (Seq Int)) (|v#$Mutation_19785| (Seq Int)) ) ) ))
(declare-datatypes ((T@$Mutation_18478 0)) ((($Mutation_18478 (|l#$Mutation_18478| T@$Location) (|p#$Mutation_18478| (Seq Int)) (|v#$Mutation_18478| T@$1_TestMutRef_T) ) ) ))
(declare-datatypes ((T@$Mutation_17766 0)) ((($Mutation_17766 (|l#$Mutation_17766| T@$Location) (|p#$Mutation_17766| (Seq Int)) (|v#$Mutation_17766| (Seq T@$1_TestMutRef_T)) ) ) ))
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
 :qid |mutrefz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_TestMutRef_T)) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_TestMutRef_T'| (seq.nth v@@4 i@@0)))
 :qid |mutrefz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefz3bpl.588:41|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_TestMutRef_T)) (e T@$1_TestMutRef_T) ) (! (let ((i@@1 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |mutrefz3bpl.770:13|
 :skolemid |20|
))))
 :qid |mutrefz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |mutrefz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |mutrefz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |mutrefz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |mutrefz3bpl.950:13|
 :skolemid |25|
))))
 :qid |mutrefz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |mutrefz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |mutrefz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |mutrefz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefz3bpl.1264:36|
 :skolemid |34|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefz3bpl.1278:36|
 :skolemid |35|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefz3bpl.1291:36|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefz3bpl.1307:36|
 :skolemid |37|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |mutrefz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |mutrefz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_TestMutRef_T)) ) (! (let ((r@@1 (ReverseVec_13833 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |mutrefz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |mutrefz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13833 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |mutrefz3bpl.245:54|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(push 1)
(set-info :boogie-vc-id $1_TestMutRef_return_ref_different_root$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 52828) true)
))
(check-sat)
(pop 1)
; Valid
