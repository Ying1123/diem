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
 :qid |mutrefSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_TestMutRef_T)) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_TestMutRef_T'| (seq.nth v@@4 i@@0)))
 :qid |mutrefSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefSmtSeqz3bpl.588:41|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_TestMutRef_T)) (e T@$1_TestMutRef_T) ) (! (let ((i@@1 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |mutrefSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |mutrefSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |mutrefSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |mutrefSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |mutrefSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |mutrefSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |mutrefSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |mutrefSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |mutrefSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |mutrefSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefSmtSeqz3bpl.1264:36|
 :skolemid |34|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefSmtSeqz3bpl.1278:36|
 :skolemid |35|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefSmtSeqz3bpl.1291:36|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefSmtSeqz3bpl.1307:36|
 :skolemid |37|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |mutrefSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |mutrefSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_TestMutRef_T)) ) (! (let ((r@@1 (ReverseVec_13833 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |mutrefSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |mutrefSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13833 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |mutrefSmtSeqz3bpl.245:54|
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
 :qid |mutrefSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_TestMutRef_T)) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_TestMutRef_T'| (seq.nth v@@4 i@@0)))
 :qid |mutrefSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefSmtSeqz3bpl.588:41|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_TestMutRef_T)) (e T@$1_TestMutRef_T) ) (! (let ((i@@1 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |mutrefSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |mutrefSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |mutrefSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |mutrefSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |mutrefSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |mutrefSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |mutrefSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |mutrefSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |mutrefSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |mutrefSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefSmtSeqz3bpl.1264:36|
 :skolemid |34|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefSmtSeqz3bpl.1278:36|
 :skolemid |35|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefSmtSeqz3bpl.1291:36|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefSmtSeqz3bpl.1307:36|
 :skolemid |37|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |mutrefSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |mutrefSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_TestMutRef_T)) ) (! (let ((r@@1 (ReverseVec_13833 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |mutrefSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |mutrefSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13833 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |mutrefSmtSeqz3bpl.245:54|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
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
(declare-fun |$temp_0'u64'@0| () Int)
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
(set-option :timeout 40000)
(set-option :rlimit 0)
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
 :qid |mutrefSmtSeqz3bpl.286:14|
 :skolemid |11|
))) (forall ((i@@13 Int) ) (!  (=> (and (>= i@@13 0) (< i@@13 el)) (or (= (seq.nth (seq.++ (seq.unit 1) (seq.unit 0)) i@@13) (- 0 1)) (= (seq.nth (seq.++ (seq.unit 1) (seq.unit 0)) i@@13) (seq.nth cp (+ pl i@@13)))))
 :qid |mutrefSmtSeqz3bpl.287:14|
 :skolemid |12|
)))))))))) (and (=> (= (ControlFlow 0 35585) 35695) anon11_Then_correct) (=> (= (ControlFlow 0 35585) 35591) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (not $t10@0) (=> (and (= $t6@2 $t6@0) (= (ControlFlow 0 35571) 35585)) L2_correct))))
(let ((anon10_Then_correct  (=> (and (and $t10@0 (= $t6@1 ($Mutation_23208 (|l#$Mutation_23208| $t6@0) (|p#$Mutation_23208| $t6@0) ($1_TestMutRef_N (|v#$Mutation_4535| $t7@0) (|$t#$1_TestMutRef_N| (|v#$Mutation_23208| $t6@0)))))) (and (= $t6@2 $t6@1) (= (ControlFlow 0 35713) 35585))) L2_correct)))
(let ((anon9_Else_correct  (=> (and (not false) (= |$temp_0'u64'@0| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path$0$$t2@1))) (=> (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (|$IsValid'u64'| 5)) (and (= $t7@0 ($Mutation_4535 (|l#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path$0$$t2@1) (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path$0$$t2@1) 5)) (= $t10@0  (and (= (|l#$Mutation_23208| $t6@0) (|l#$Mutation_4535| $t7@0)) (let ((pp@@0 (|p#$Mutation_23208| $t6@0)))
(let ((cp@@0 (|p#$Mutation_4535| $t7@0)))
(let ((pl@@0 (seq.len pp@@0)))
(let ((cl@@0 (seq.len cp@@0)))
 (and (and (= cl@@0 (+ pl@@0 1)) (forall ((i@@14 Int) ) (!  (=> (and (>= i@@14 0) (< i@@14 pl@@0)) (= (seq.nth pp@@0 i@@14) (seq.nth cp@@0 i@@14)))
 :qid |mutrefSmtSeqz3bpl.272:14|
 :skolemid |10|
))) (or (= 0 (- 0 1)) (= 0 (seq.nth cp@@0 pl@@0)))))))))))) (and (=> (= (ControlFlow 0 35565) 35713) anon10_Then_correct) (=> (= (ControlFlow 0 35565) 35571) anon10_Else_correct))))))
(let ((anon9_Then_correct true))
(let ((inline$$1_TestMutRef_return_ref_different_path$0$L3_correct  (=> (and (and (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@3| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path$0$$t2@1)) (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@3| |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@3|)) (and (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@2| (|v#$Mutation_23208| $t6@0)) (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@2| |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@2|))) (and (=> (= (ControlFlow 0 35489) 35731) anon9_Then_correct) (=> (= (ControlFlow 0 35489) 35565) anon9_Else_correct)))))
(let ((inline$$1_TestMutRef_return_ref_different_path$0$anon3_Else_correct  (=> (not _$t0) (=> (and (= inline$$1_TestMutRef_return_ref_different_path$0$$t4@1 ($Mutation_18526 (|l#$Mutation_23208| $t6@0) (seq.++ (|p#$Mutation_23208| $t6@0) (seq.unit 1)) (|$t#$1_TestMutRef_N| (|v#$Mutation_23208| $t6@0)))) (= inline$$1_TestMutRef_return_ref_different_path$0$$t5@1 ($Mutation_4535 (|l#$Mutation_18526| inline$$1_TestMutRef_return_ref_different_path$0$$t4@1) (seq.++ (|p#$Mutation_18526| inline$$1_TestMutRef_return_ref_different_path$0$$t4@1) (seq.unit 0)) (|$value#$1_TestMutRef_T| (|v#$Mutation_18526| inline$$1_TestMutRef_return_ref_different_path$0$$t4@1))))) (=> (and (and (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@2| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path$0$$t5@1)) (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@2| |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@2|)) (and (= inline$$1_TestMutRef_return_ref_different_path$0$$t2@1 inline$$1_TestMutRef_return_ref_different_path$0$$t5@1) (= (ControlFlow 0 35461) 35489))) inline$$1_TestMutRef_return_ref_different_path$0$L3_correct)))))
(let ((inline$$1_TestMutRef_return_ref_different_path$0$anon3_Then_correct  (=> (and _$t0 (= inline$$1_TestMutRef_return_ref_different_path$0$$t3@1 ($Mutation_4535 (|l#$Mutation_23208| $t6@0) (seq.++ (|p#$Mutation_23208| $t6@0) (seq.unit 0)) (|$value#$1_TestMutRef_N| (|v#$Mutation_23208| $t6@0))))) (=> (and (and (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@1| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path$0$$t3@1)) (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@1| |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'u64'@1|)) (and (= inline$$1_TestMutRef_return_ref_different_path$0$$t2@1 inline$$1_TestMutRef_return_ref_different_path$0$$t3@1) (= (ControlFlow 0 35517) 35489))) inline$$1_TestMutRef_return_ref_different_path$0$L3_correct))))
(let ((inline$$1_TestMutRef_return_ref_different_path$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path$0$$t2@0)) 0) (=> (and (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path$0$$t3@0)) 0) (= (seq.len (|p#$Mutation_18526| inline$$1_TestMutRef_return_ref_different_path$0$$t4@0)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path$0$$t5@0)) 0) (= _$t0 _$t0)) (and (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@1| (|v#$Mutation_23208| $t6@0)) (= |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@1| |inline$$1_TestMutRef_return_ref_different_path$0$$temp_0'$1_TestMutRef_N'@1|))) (and (=> (= (ControlFlow 0 35419) 35517) inline$$1_TestMutRef_return_ref_different_path$0$anon3_Then_correct) (=> (= (ControlFlow 0 35419) 35461) inline$$1_TestMutRef_return_ref_different_path$0$anon3_Else_correct)))))))
(let ((anon0$1_correct  (=> (and (and (= _$t0 _$t0) (|$IsValid'u64'| 1)) (and (|$IsValid'u64'| 2) (= $t5@0 ($1_TestMutRef_T 2)))) (and (=> (= (ControlFlow 0 35525) (- 0 46268)) (> (|$value#$1_TestMutRef_T| $t5@0) 0)) (=> (> (|$value#$1_TestMutRef_T| $t5@0) 0) (=> (and (and (= $t2@0 ($1_TestMutRef_N 1 $t5@0)) (= $t2@0 $t2@0)) (and (= $t6@0 ($Mutation_23208 ($Local 2) (as seq.empty (Seq Int)) $t2@0)) (= (ControlFlow 0 35525) 35419))) inline$$1_TestMutRef_return_ref_different_path$0$anon0_correct))))))
(let ((anon0_correct  (=> (and (and (= (seq.len (|p#$Mutation_4535| $t1)) 0) (= (seq.len (|p#$Mutation_23208| $t6)) 0)) (and (= (seq.len (|p#$Mutation_4535| $t7)) 0) (= (ControlFlow 0 35068) 35525))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 46113) 35068) anon0_correct)))
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
 :qid |mutrefSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_TestMutRef_T)) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_TestMutRef_T'| (seq.nth v@@4 i@@0)))
 :qid |mutrefSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefSmtSeqz3bpl.588:41|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_TestMutRef_T)) (e T@$1_TestMutRef_T) ) (! (let ((i@@1 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |mutrefSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |mutrefSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |mutrefSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |mutrefSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |mutrefSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |mutrefSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |mutrefSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |mutrefSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |mutrefSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |mutrefSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefSmtSeqz3bpl.1264:36|
 :skolemid |34|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefSmtSeqz3bpl.1278:36|
 :skolemid |35|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefSmtSeqz3bpl.1291:36|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefSmtSeqz3bpl.1307:36|
 :skolemid |37|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |mutrefSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |mutrefSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_TestMutRef_T)) ) (! (let ((r@@1 (ReverseVec_13833 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |mutrefSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |mutrefSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13833 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |mutrefSmtSeqz3bpl.245:54|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $abort_flag@3 () Bool)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret0@1 () T@$Mutation_4535)
(declare-fun $t13@0 () T@$Mutation_4535)
(declare-fun $t12@1 () T@$Mutation_24230)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1 () T@$Mutation_24230)
(declare-fun $t4@1 () T@$1_TestMutRef_V)
(declare-fun _$t0 () Bool)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret0@0 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@0 () T@$Mutation_24230)
(declare-fun $abort_code@4 () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$t6@1 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@3| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$t2@1 () T@$Mutation_4535)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'$1_TestMutRef_V'@2| () T@$1_TestMutRef_V)
(declare-fun $t12@0 () T@$Mutation_24230)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@2| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$dst@2| () T@$Mutation_4535)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$dst@0| () T@$Mutation_4535)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_borrow_mut'u64'$1$dst@1| () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$t3@1 () T@$Mutation_19890)
(declare-fun $abort_code@0 () Int)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@1| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@2| () T@$Mutation_4535)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@0| () T@$Mutation_4535)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@1| () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$t7@1 () T@$Mutation_19890)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$t2@0 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$t3@0 () T@$Mutation_19890)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$t5@0 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$t7@0 () T@$Mutation_19890)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec$0$$t9@0 () T@$Mutation_4535)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'$1_TestMutRef_V'@1| () T@$1_TestMutRef_V)
(declare-fun $t1@1 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_19890)
(declare-fun $t4@0 () T@$1_TestMutRef_V)
(declare-fun |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1| () (Seq T@$1_TestMutRef_T))
(declare-fun $t9@0 () T@$Mutation_19890)
(declare-fun $t1@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_19890)
(declare-fun $t7@0 () T@$Mutation_19890)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t2 () T@$Mutation_4535)
(declare-fun $t7 () T@$Mutation_19890)
(declare-fun $t9 () T@$Mutation_19890)
(declare-fun $t12 () T@$Mutation_24230)
(declare-fun $t13 () T@$Mutation_4535)
(push 1)
(set-info :boogie-vc-id $1_TestMutRef_call_return_ref_different_path_vec$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 46764) (let ((anon16_Else_correct  (=> (and (not $abort_flag@3) (= |$temp_0'u64'@0| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret0@1))) (=> (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (|$IsValid'u64'| 5)) (and (= $t13@0 ($Mutation_4535 (|l#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret0@1) (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret0@1) 5)) (= $t12@1 ($Mutation_24230 (|l#$Mutation_24230| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1) (|p#$Mutation_24230| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1) (let (($$sel0 (|$is#$1_TestMutRef_V| (|v#$Mutation_24230| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1))))
($1_TestMutRef_V (seq.++ (seq.extract $$sel0 0 (- (seq.nth (|p#$Mutation_4535| $t13@0) (+ (seq.len (|p#$Mutation_24230| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1)) 1)) 0)) (seq.unit (|v#$Mutation_4535| $t13@0)) (seq.extract $$sel0 (+ (seq.nth (|p#$Mutation_4535| $t13@0) (+ (seq.len (|p#$Mutation_24230| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1)) 1)) 1) (- (seq.len $$sel0) (+ (seq.nth (|p#$Mutation_4535| $t13@0) (+ (seq.len (|p#$Mutation_24230| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1)) 1)) 1)))) (|$ts#$1_TestMutRef_V| (|v#$Mutation_24230| inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1)))))))) (and (=> (= (ControlFlow 0 37346) (- 0 47876)) (let (($range_0 (|$ts#$1_TestMutRef_V| (|v#$Mutation_24230| $t12@1))))
(forall (($i_1 Int) ) (!  (=> (and (>= $i_1 0) (< $i_1 (seq.len $range_0))) (let (($elem (seq.nth $range_0 $i_1)))
(> (|$value#$1_TestMutRef_T| $elem) 0)))
 :qid |mutrefSmtSeqz3bpl.1733:73|
 :skolemid |38|
)))) (=> (let (($range_0 (|$ts#$1_TestMutRef_V| (|v#$Mutation_24230| $t12@1))))
(forall (($i_1@@0 Int) ) (!  (=> (and (>= $i_1@@0 0) (< $i_1@@0 (seq.len $range_0))) (let (($elem (seq.nth $range_0 $i_1@@0)))
(> (|$value#$1_TestMutRef_T| $elem) 0)))
 :qid |mutrefSmtSeqz3bpl.1733:73|
 :skolemid |38|
))) (=> (and (= $t4@1 (|v#$Mutation_24230| $t12@1)) (= $t4@1 $t4@1)) (and (=> (= (ControlFlow 0 37346) (- 0 47938)) (=> _$t0 (= $t4@1 ($1_TestMutRef_V (seq.++ (seq.unit 1) (seq.unit 5)) (as seq.empty (Seq T@$1_TestMutRef_T)))))) (=> (=> _$t0 (= $t4@1 ($1_TestMutRef_V (seq.++ (seq.unit 1) (seq.unit 5)) (as seq.empty (Seq T@$1_TestMutRef_T))))) (=> (= (ControlFlow 0 37346) (- 0 47961)) (=> (not _$t0) (= $t4@1 ($1_TestMutRef_V (seq.++ (seq.unit 5) (seq.unit 2)) (as seq.empty (Seq T@$1_TestMutRef_T)))))))))))))))
(let ((anon16_Then_correct true))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec$0$L13_correct  (=> (and (and (= $abort_flag@3 true) (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret0@1 inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret0@0)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1 inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@0) (= $abort_code@4 inline$$1_TestMutRef_return_ref_different_path_vec$0$$t6@1))) (and (=> (= (ControlFlow 0 36911) 37360) anon16_Then_correct) (=> (= (ControlFlow 0 36911) 37346) anon16_Else_correct)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec$0$anon8_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$t6@1 $abort_code@2) (= (ControlFlow 0 37157) 36911))) inline$$1_TestMutRef_return_ref_different_path_vec$0$L13_correct)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec$0$anon9_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$t6@1 $abort_code@1) (= (ControlFlow 0 36905) 36911))) inline$$1_TestMutRef_return_ref_different_path_vec$0$L13_correct)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec$0$L3_correct  (=> (and (and (and (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@3| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t2@1)) (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@3| |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@3|)) (and (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'$1_TestMutRef_V'@2| (|v#$Mutation_24230| $t12@0)) (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'$1_TestMutRef_V'@2| |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'$1_TestMutRef_V'@2|))) (and (and (= $abort_flag@3 $abort_flag@2) (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret0@1 inline$$1_TestMutRef_return_ref_different_path_vec$0$$t2@1)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$ret1@1 $t12@0) (= $abort_code@4 $abort_code@3)))) (and (=> (= (ControlFlow 0 36891) 37360) anon16_Then_correct) (=> (= (ControlFlow 0 36891) 37346) anon16_Else_correct)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec$0$anon8_Else_correct  (=> (not $abort_flag@1) (=> (and (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@2| (|v#$Mutation_4535| |inline$$1_Vector_borrow_mut'u64'$1$dst@2|)) (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@2| |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@2|)) (=> (and (and (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$t2@1 |inline$$1_Vector_borrow_mut'u64'$1$dst@2|) (= $abort_code@3 $abort_code@2)) (and (= $abort_flag@2 $abort_flag@1) (= (ControlFlow 0 37143) 36891))) inline$$1_TestMutRef_return_ref_different_path_vec$0$L3_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$1$anon3_Then$1_correct|  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow_mut'u64'$1$dst@2| |inline$$1_Vector_borrow_mut'u64'$1$dst@0|)) (and (=> (= (ControlFlow 0 37115) 37157) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon8_Then_correct) (=> (= (ControlFlow 0 37115) 37143) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon8_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$1$anon3_Then_correct|  (=> (and (not (and (>= 1 0) (< 1 (seq.len |inline$$1_Vector_borrow_mut'u64'$1$v@1|)))) (= (ControlFlow 0 37113) 37115)) |inline$$1_Vector_borrow_mut'u64'$1$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$1$anon3_Else_correct|  (=> (and (>= 1 0) (< 1 (seq.len |inline$$1_Vector_borrow_mut'u64'$1$v@1|))) (=> (and (and (= |inline$$1_Vector_borrow_mut'u64'$1$dst@1| ($Mutation_4535 (|l#$Mutation_19890| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t3@1) (seq.++ (|p#$Mutation_19890| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t3@1) (seq.unit 1)) (seq.nth |inline$$1_Vector_borrow_mut'u64'$1$v@1| 1))) (= $abort_flag@1 false)) (and (= $abort_code@2 $abort_code@0) (= |inline$$1_Vector_borrow_mut'u64'$1$dst@2| |inline$$1_Vector_borrow_mut'u64'$1$dst@1|))) (and (=> (= (ControlFlow 0 37063) 37157) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon8_Then_correct) (=> (= (ControlFlow 0 37063) 37143) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon8_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$1$v@1| (|v#$Mutation_19890| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t3@1)) (and (=> (= (ControlFlow 0 37033) 37113) |inline$$1_Vector_borrow_mut'u64'$1$anon3_Then_correct|) (=> (= (ControlFlow 0 37033) 37063) |inline$$1_Vector_borrow_mut'u64'$1$anon3_Else_correct|)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec$0$anon7_Then_correct  (=> (and (and _$t0 (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$t3@1 ($Mutation_19890 (|l#$Mutation_24230| $t12@0) (seq.++ (|p#$Mutation_24230| $t12@0) (seq.unit 0)) (|$is#$1_TestMutRef_V| (|v#$Mutation_24230| $t12@0))))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 37123) 37033))) |inline$$1_Vector_borrow_mut'u64'$1$anon0_correct|)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec$0$anon9_Else_correct  (=> (not $abort_flag@0) (=> (and (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@1| (|v#$Mutation_4535| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|)) (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@1| |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'u64'@1|)) (=> (and (and (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$t2@1 |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) (= $abort_code@3 $abort_code@1)) (and (= $abort_flag@2 $abort_flag@0) (= (ControlFlow 0 36863) 36891))) inline$$1_TestMutRef_return_ref_different_path_vec$0$L3_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@0|)) (and (=> (= (ControlFlow 0 36835) 36905) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon9_Then_correct) (=> (= (ControlFlow 0 36835) 36863) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon9_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|  (=> (and (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_borrow_mut'u64'$0$v@1|)))) (= (ControlFlow 0 36833) 36835)) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|  (=> (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_borrow_mut'u64'$0$v@1|))) (=> (and (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@1| ($Mutation_4535 (|l#$Mutation_19890| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t7@1) (seq.++ (|p#$Mutation_19890| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t7@1) (seq.unit 0)) (seq.nth |inline$$1_Vector_borrow_mut'u64'$0$v@1| 0))) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@1|))) (and (=> (= (ControlFlow 0 36783) 36905) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon9_Then_correct) (=> (= (ControlFlow 0 36783) 36863) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon9_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$0$v@1| (|v#$Mutation_19890| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t7@1)) (and (=> (= (ControlFlow 0 36753) 36833) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 36753) 36783) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec$0$anon7_Else_correct  (=> (and (and (not _$t0) (= inline$$1_TestMutRef_return_ref_different_path_vec$0$$t7@1 ($Mutation_19890 (|l#$Mutation_24230| $t12@0) (seq.++ (|p#$Mutation_24230| $t12@0) (seq.unit 0)) (|$is#$1_TestMutRef_V| (|v#$Mutation_24230| $t12@0))))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 36843) 36753))) |inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec$0$anon0_correct  (=> (and (and (and (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t2@0)) 0) (= (seq.len (|p#$Mutation_19890| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t3@0)) 0)) (and (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t5@0)) 0) (= (seq.len (|p#$Mutation_19890| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t7@0)) 0))) (and (and (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec$0$$t9@0)) 0) (= _$t0 _$t0)) (and (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'$1_TestMutRef_V'@1| (|v#$Mutation_24230| $t12@0)) (= |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'$1_TestMutRef_V'@1| |inline$$1_TestMutRef_return_ref_different_path_vec$0$$temp_0'$1_TestMutRef_V'@1|)))) (and (=> (= (ControlFlow 0 36629) 37123) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon7_Then_correct) (=> (= (ControlFlow 0 36629) 36843) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon7_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (not false) (= $t1@1 (|v#$Mutation_19890| |inline$$1_Vector_push_back'u64'$1$m'@1|))) (=> (and (and (= $t4@0 ($1_TestMutRef_V $t1@1 |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1|)) (= $t4@0 $t4@0)) (and (= $t12@0 ($Mutation_24230 ($Local 4) (as seq.empty (Seq Int)) $t4@0)) (= (ControlFlow 0 37165) 36629))) inline$$1_TestMutRef_return_ref_different_path_vec$0$anon0_correct))))
(let ((anon15_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_19890 (|l#$Mutation_19890| $t9@0) (|p#$Mutation_19890| $t9@0) (seq.++ (|v#$Mutation_19890| $t9@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 36179) 37380) anon15_Then_correct) (=> (= (ControlFlow 0 36179) 37165) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_19890| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t9@0 ($Mutation_19890 ($Local 1) (as seq.empty (Seq Int)) $t1@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 36185) 36179))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon14_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_19890 (|l#$Mutation_19890| $t7@0) (|p#$Mutation_19890| $t7@0) (seq.++ (|v#$Mutation_19890| $t7@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 36092) 37394) anon14_Then_correct) (=> (= (ControlFlow 0 36092) 36185) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1| |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1|) (= $t7@0 ($Mutation_19890 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 36098) 36092))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon13_Then_correct true))
(let ((|inline$$1_Vector_empty'$1_TestMutRef_T'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1| (as seq.empty (Seq T@$1_TestMutRef_T))) (and (=> (= (ControlFlow 0 36003) 37408) anon13_Then_correct) (=> (= (ControlFlow 0 36003) 36098) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 36009) 36003)) |inline$$1_Vector_empty'$1_TestMutRef_T'$0$anon0_correct|))))
(let ((anon12_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 35961) 37422) anon12_Then_correct) (=> (= (ControlFlow 0 35961) 36009) anon12_Else_correct)))))
(let ((anon0$1_correct  (=> (and (= _$t0 _$t0) (= (ControlFlow 0 35967) 35961)) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (= (seq.len (|p#$Mutation_4535| $t2)) 0) (= (seq.len (|p#$Mutation_19890| $t7)) 0)) (=> (and (and (= (seq.len (|p#$Mutation_19890| $t9)) 0) (= (seq.len (|p#$Mutation_24230| $t12)) 0)) (and (= (seq.len (|p#$Mutation_4535| $t13)) 0) (= (ControlFlow 0 35923) 35967))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 46764) 35923) anon0_correct)))
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
 :qid |mutrefSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_TestMutRef_T)) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_TestMutRef_T'| (seq.nth v@@4 i@@0)))
 :qid |mutrefSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefSmtSeqz3bpl.588:41|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_TestMutRef_T)) (e T@$1_TestMutRef_T) ) (! (let ((i@@1 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |mutrefSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |mutrefSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |mutrefSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |mutrefSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |mutrefSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |mutrefSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |mutrefSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |mutrefSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |mutrefSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |mutrefSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefSmtSeqz3bpl.1264:36|
 :skolemid |34|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefSmtSeqz3bpl.1278:36|
 :skolemid |35|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefSmtSeqz3bpl.1291:36|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefSmtSeqz3bpl.1307:36|
 :skolemid |37|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |mutrefSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |mutrefSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_TestMutRef_T)) ) (! (let ((r@@1 (ReverseVec_13833 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |mutrefSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |mutrefSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13833 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |mutrefSmtSeqz3bpl.245:54|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t18@4 () T@$Mutation_24230)
(declare-fun $t4@1 () T@$1_TestMutRef_V)
(declare-fun _$t0 () Bool)
(declare-fun $t22@0 () Bool)
(declare-fun $t18@2 () T@$Mutation_24230)
(declare-fun $t18@3 () T@$Mutation_24230)
(declare-fun $t19@0 () T@$Mutation_4535)
(declare-fun $t21@0 () Bool)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1 () T@$Mutation_24230)
(declare-fun $t18@1 () T@$Mutation_24230)
(declare-fun $abort_flag@3 () Bool)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@0 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@0 () T@$Mutation_24230)
(declare-fun $abort_code@4 () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t6@1 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@3| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1 () T@$Mutation_4535)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@2| () T@$1_TestMutRef_V)
(declare-fun $t18@0 () T@$Mutation_24230)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@2| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@2| () T@$Mutation_4535)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@0| () T@$Mutation_4535)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@1| () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1 () T@$Mutation_19890)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@1 () T@$Mutation_4535)
(declare-fun |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2| () T@$Mutation_18526)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@1| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@0| () T@$Mutation_18526)
(declare-fun |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1| () (Seq T@$1_TestMutRef_T))
(declare-fun |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@1| () T@$Mutation_18526)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1 () T@$Mutation_17780)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@0 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@0 () T@$Mutation_19890)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t5@0 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@0 () T@$Mutation_17780)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t9@0 () T@$Mutation_18526)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@0 () T@$Mutation_4535)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@1| () T@$1_TestMutRef_V)
(declare-fun |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1| () T@$Mutation_17780)
(declare-fun $t3@1 () (Seq T@$1_TestMutRef_T))
(declare-fun $t4@0 () T@$1_TestMutRef_V)
(declare-fun $t1@1 () (Seq Int))
(declare-fun $t13@0 () T@$Mutation_17780)
(declare-fun $t15@0 () T@$1_TestMutRef_T)
(declare-fun |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1| () T@$Mutation_17780)
(declare-fun $t3@0 () (Seq T@$1_TestMutRef_T))
(declare-fun $t10@0 () T@$Mutation_17780)
(declare-fun $t12@0 () T@$1_TestMutRef_T)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_19890)
(declare-fun |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1| () (Seq T@$1_TestMutRef_T))
(declare-fun $t8@0 () T@$Mutation_19890)
(declare-fun $t1@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_19890)
(declare-fun $t6@0 () T@$Mutation_19890)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t2 () T@$Mutation_4535)
(declare-fun $t6 () T@$Mutation_19890)
(declare-fun $t8 () T@$Mutation_19890)
(declare-fun $t10 () T@$Mutation_17780)
(declare-fun $t13 () T@$Mutation_17780)
(declare-fun $t18 () T@$Mutation_24230)
(declare-fun $t19 () T@$Mutation_4535)
(push 1)
(set-info :boogie-vc-id $1_TestMutRef_call_return_ref_different_path_vec2$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 48004) (let ((L4_correct  (and (=> (= (ControlFlow 0 39507) (- 0 49592)) (let (($range_0 (|$ts#$1_TestMutRef_V| (|v#$Mutation_24230| $t18@4))))
(forall (($i_1 Int) ) (!  (=> (and (>= $i_1 0) (< $i_1 (seq.len $range_0))) (let (($elem (seq.nth $range_0 $i_1)))
(> (|$value#$1_TestMutRef_T| $elem) 0)))
 :qid |mutrefSmtSeqz3bpl.2044:73|
 :skolemid |41|
)))) (=> (let (($range_0 (|$ts#$1_TestMutRef_V| (|v#$Mutation_24230| $t18@4))))
(forall (($i_1@@0 Int) ) (!  (=> (and (>= $i_1@@0 0) (< $i_1@@0 (seq.len $range_0))) (let (($elem (seq.nth $range_0 $i_1@@0)))
(> (|$value#$1_TestMutRef_T| $elem) 0)))
 :qid |mutrefSmtSeqz3bpl.2044:73|
 :skolemid |41|
))) (=> (and (= $t4@1 (|v#$Mutation_24230| $t18@4)) (= $t4@1 $t4@1)) (and (=> (= (ControlFlow 0 39507) (- 0 49654)) (=> _$t0 (= $t4@1 ($1_TestMutRef_V (seq.++ (seq.unit 1) (seq.unit 5)) (seq.++ (seq.unit ($1_TestMutRef_T 3)) (seq.unit ($1_TestMutRef_T 4))))))) (=> (=> _$t0 (= $t4@1 ($1_TestMutRef_V (seq.++ (seq.unit 1) (seq.unit 5)) (seq.++ (seq.unit ($1_TestMutRef_T 3)) (seq.unit ($1_TestMutRef_T 4)))))) (=> (= (ControlFlow 0 39507) (- 0 49689)) (=> (not _$t0) (= $t4@1 ($1_TestMutRef_V (seq.++ (seq.unit 1) (seq.unit 2)) (seq.++ (seq.unit ($1_TestMutRef_T 5)) (seq.unit ($1_TestMutRef_T 4))))))))))))))
(let ((anon29_Else_correct  (=> (not $t22@0) (=> (and (= $t18@4 $t18@2) (= (ControlFlow 0 39374) 39507)) L4_correct))))
(let ((anon29_Then_correct  (=> (and (and $t22@0 (= $t18@3 ($Mutation_24230 (|l#$Mutation_24230| $t18@2) (|p#$Mutation_24230| $t18@2) (let (($$sel0 (|$ts#$1_TestMutRef_V| (|v#$Mutation_24230| $t18@2))))
($1_TestMutRef_V (|$is#$1_TestMutRef_V| (|v#$Mutation_24230| $t18@2)) (seq.++ (seq.extract $$sel0 0 (- (seq.nth (|p#$Mutation_4535| $t19@0) (+ (seq.len (|p#$Mutation_24230| $t18@2)) 1)) 0)) (seq.unit ($1_TestMutRef_T (|v#$Mutation_4535| $t19@0))) (seq.extract $$sel0 (+ (seq.nth (|p#$Mutation_4535| $t19@0) (+ (seq.len (|p#$Mutation_24230| $t18@2)) 1)) 1) (- (seq.len $$sel0) (+ (seq.nth (|p#$Mutation_4535| $t19@0) (+ (seq.len (|p#$Mutation_24230| $t18@2)) 1)) 1))))))))) (and (= $t18@4 $t18@3) (= (ControlFlow 0 39579) 39507))) L4_correct)))
(let ((L2_correct  (=> (= $t22@0  (and (= (|l#$Mutation_24230| $t18@2) (|l#$Mutation_4535| $t19@0)) (let ((pp (|p#$Mutation_24230| $t18@2)))
(let ((cp (|p#$Mutation_4535| $t19@0)))
(let ((pl (seq.len pp)))
(let ((cl (seq.len cp)))
(let ((el (seq.len (seq.++ (seq.++ (seq.unit 1) (seq.unit (- 0 1))) (seq.unit 0)))))
 (and (and (= cl (+ pl el)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 pl)) (= (seq.nth pp i@@12) (seq.nth cp i@@12)))
 :qid |mutrefSmtSeqz3bpl.286:14|
 :skolemid |11|
))) (forall ((i@@13 Int) ) (!  (=> (and (>= i@@13 0) (< i@@13 el)) (or (= (seq.nth (seq.++ (seq.++ (seq.unit 1) (seq.unit (- 0 1))) (seq.unit 0)) i@@13) (- 0 1)) (= (seq.nth (seq.++ (seq.++ (seq.unit 1) (seq.unit (- 0 1))) (seq.unit 0)) i@@13) (seq.nth cp (+ pl i@@13)))))
 :qid |mutrefSmtSeqz3bpl.287:14|
 :skolemid |12|
)))))))))) (and (=> (= (ControlFlow 0 39368) 39579) anon29_Then_correct) (=> (= (ControlFlow 0 39368) 39374) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (not $t21@0) (=> (and (= $t18@2 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1) (= (ControlFlow 0 39350) 39368)) L2_correct))))
(let ((anon28_Then_correct  (=> (and (and $t21@0 (= $t18@1 ($Mutation_24230 (|l#$Mutation_24230| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1) (|p#$Mutation_24230| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1) (let (($$sel0@@0 (|$is#$1_TestMutRef_V| (|v#$Mutation_24230| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1))))
($1_TestMutRef_V (seq.++ (seq.extract $$sel0@@0 0 (- (seq.nth (|p#$Mutation_4535| $t19@0) (+ (seq.len (|p#$Mutation_24230| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1)) 1)) 0)) (seq.unit (|v#$Mutation_4535| $t19@0)) (seq.extract $$sel0@@0 (+ (seq.nth (|p#$Mutation_4535| $t19@0) (+ (seq.len (|p#$Mutation_24230| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1)) 1)) 1) (- (seq.len $$sel0@@0) (+ (seq.nth (|p#$Mutation_4535| $t19@0) (+ (seq.len (|p#$Mutation_24230| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1)) 1)) 1)))) (|$ts#$1_TestMutRef_V| (|v#$Mutation_24230| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1))))))) (and (= $t18@2 $t18@1) (= (ControlFlow 0 39625) 39368))) L2_correct)))
(let ((anon27_Else_correct  (=> (and (not $abort_flag@3) (= |$temp_0'u64'@0| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1))) (=> (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (|$IsValid'u64'| 5)) (and (= $t19@0 ($Mutation_4535 (|l#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1) (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1) 5)) (= $t21@0  (and (= (|l#$Mutation_24230| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1) (|l#$Mutation_4535| $t19@0)) (let ((pp@@0 (|p#$Mutation_24230| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1)))
(let ((cp@@0 (|p#$Mutation_4535| $t19@0)))
(let ((pl@@0 (seq.len pp@@0)))
(let ((cl@@0 (seq.len cp@@0)))
(let ((el@@0 (seq.len (seq.++ (seq.unit 0) (seq.unit (- 0 1))))))
 (and (and (= cl@@0 (+ pl@@0 el@@0)) (forall ((i@@14 Int) ) (!  (=> (and (>= i@@14 0) (< i@@14 pl@@0)) (= (seq.nth pp@@0 i@@14) (seq.nth cp@@0 i@@14)))
 :qid |mutrefSmtSeqz3bpl.286:14|
 :skolemid |11|
))) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 el@@0)) (or (= (seq.nth (seq.++ (seq.unit 0) (seq.unit (- 0 1))) i@@15) (- 0 1)) (= (seq.nth (seq.++ (seq.unit 0) (seq.unit (- 0 1))) i@@15) (seq.nth cp@@0 (+ pl@@0 i@@15)))))
 :qid |mutrefSmtSeqz3bpl.287:14|
 :skolemid |12|
)))))))))))) (and (=> (= (ControlFlow 0 39344) 39625) anon28_Then_correct) (=> (= (ControlFlow 0 39344) 39350) anon28_Else_correct))))))
(let ((anon27_Then_correct true))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$L15_correct  (=> (and (and (= $abort_flag@3 true) (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@0)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@0) (= $abort_code@4 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t6@1))) (and (=> (= (ControlFlow 0 39044) 39639) anon27_Then_correct) (=> (= (ControlFlow 0 39044) 39344) anon27_Else_correct)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t6@1 $abort_code@2) (= (ControlFlow 0 39290) 39044))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$L15_correct)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t6@1 $abort_code@1) (= (ControlFlow 0 39038) 39044))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$L15_correct)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$L3_correct  (=> (and (and (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@3| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@3| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@3|)) (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@2| (|v#$Mutation_24230| $t18@0)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@2| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@2|))) (and (and (= $abort_flag@3 $abort_flag@2) (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1 $t18@0) (= $abort_code@4 $abort_code@3)))) (and (=> (= (ControlFlow 0 39024) 39639) anon27_Then_correct) (=> (= (ControlFlow 0 39024) 39344) anon27_Else_correct)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Else_correct  (=> (not $abort_flag@1) (=> (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@2| (|v#$Mutation_4535| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@2| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@2|)) (=> (and (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1 |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) (= $abort_code@3 $abort_code@2)) (and (= $abort_flag@2 $abort_flag@1) (= (ControlFlow 0 39276) 39024))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$L3_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@0|)) (and (=> (= (ControlFlow 0 39248) 39290) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Then_correct) (=> (= (ControlFlow 0 39248) 39276) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|  (=> (and (not (and (>= 1 0) (< 1 (seq.len |inline$$1_Vector_borrow_mut'u64'$0$v@1|)))) (= (ControlFlow 0 39246) 39248)) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|  (=> (and (>= 1 0) (< 1 (seq.len |inline$$1_Vector_borrow_mut'u64'$0$v@1|))) (=> (and (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@1| ($Mutation_4535 (|l#$Mutation_19890| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1) (seq.++ (|p#$Mutation_19890| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1) (seq.unit 1)) (seq.nth |inline$$1_Vector_borrow_mut'u64'$0$v@1| 1))) (= $abort_flag@1 false)) (and (= $abort_code@2 $abort_code@0) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@1|))) (and (=> (= (ControlFlow 0 39196) 39290) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Then_correct) (=> (= (ControlFlow 0 39196) 39276) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$0$v@1| (|v#$Mutation_19890| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1)) (and (=> (= (ControlFlow 0 39166) 39246) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 39166) 39196) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon7_Then_correct  (=> (and (and _$t0 (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1 ($Mutation_19890 (|l#$Mutation_24230| $t18@0) (seq.++ (|p#$Mutation_24230| $t18@0) (seq.unit 0)) (|$is#$1_TestMutRef_V| (|v#$Mutation_24230| $t18@0))))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 39256) 39166))) |inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Else_correct  (=> (and (and (and (not $abort_flag@0) (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@1 ($Mutation_4535 (|l#$Mutation_18526| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2|) (seq.++ (|p#$Mutation_18526| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2|) (seq.unit 0)) (|$value#$1_TestMutRef_T| (|v#$Mutation_18526| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2|))))) (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@1| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@1)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@1| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@1|))) (and (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@1) (= $abort_code@3 $abort_code@1)) (and (= $abort_flag@2 $abort_flag@0) (= (ControlFlow 0 38996) 39024)))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$L3_correct)))
(let ((|inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@0|)) (and (=> (= (ControlFlow 0 38956) 39038) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Then_correct) (=> (= (ControlFlow 0 38956) 38996) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Then_correct|  (=> (and (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1|)))) (= (ControlFlow 0 38954) 38956)) |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Else_correct|  (=> (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1|))) (=> (and (and (= |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@1| ($Mutation_18526 (|l#$Mutation_17780| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1) (seq.++ (|p#$Mutation_17780| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1) (seq.unit 0)) (seq.nth |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1| 0))) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@1|))) (and (=> (= (ControlFlow 0 38904) 39038) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Then_correct) (=> (= (ControlFlow 0 38904) 38996) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1| (|v#$Mutation_17780| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1)) (and (=> (= (ControlFlow 0 38874) 38954) |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 38874) 38904) |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Else_correct|)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon7_Else_correct  (=> (and (and (not _$t0) (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1 ($Mutation_17780 (|l#$Mutation_24230| $t18@0) (seq.++ (|p#$Mutation_24230| $t18@0) (seq.unit 1)) (|$ts#$1_TestMutRef_V| (|v#$Mutation_24230| $t18@0))))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 38964) 38874))) |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon0_correct|)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@0)) 0) (=> (and (and (and (= (seq.len (|p#$Mutation_19890| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@0)) 0) (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t5@0)) 0)) (and (= (seq.len (|p#$Mutation_17780| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@0)) 0) (= (seq.len (|p#$Mutation_18526| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t9@0)) 0))) (and (and (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@0)) 0) (= _$t0 _$t0)) (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@1| (|v#$Mutation_24230| $t18@0)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@1| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@1|)))) (and (=> (= (ControlFlow 0 38750) 39256) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon7_Then_correct) (=> (= (ControlFlow 0 38750) 38964) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon7_Else_correct))))))
(let ((anon26_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 39298) (- 0 48732)) (let (($range_0@@0 (|v#$Mutation_17780| |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1|)))
(forall (($i_1@@1 Int) ) (!  (=> (and (>= $i_1@@1 0) (< $i_1@@1 (seq.len $range_0@@0))) (let (($elem@@0 (seq.nth $range_0@@0 $i_1@@1)))
(> (|$value#$1_TestMutRef_T| $elem@@0) 0)))
 :qid |mutrefSmtSeqz3bpl.1965:52|
 :skolemid |40|
)))) (=> (let (($range_0@@0 (|v#$Mutation_17780| |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1|)))
(forall (($i_1@@2 Int) ) (!  (=> (and (>= $i_1@@2 0) (< $i_1@@2 (seq.len $range_0@@0))) (let (($elem@@0 (seq.nth $range_0@@0 $i_1@@2)))
(> (|$value#$1_TestMutRef_T| $elem@@0) 0)))
 :qid |mutrefSmtSeqz3bpl.1965:52|
 :skolemid |40|
))) (=> (= $t3@1 (|v#$Mutation_17780| |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1|)) (=> (and (and (= $t4@0 ($1_TestMutRef_V $t1@1 $t3@1)) (= $t4@0 $t4@0)) (and (= $t18@0 ($Mutation_24230 ($Local 4) (as seq.empty (Seq Int)) $t4@0)) (= (ControlFlow 0 39298) 38750))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon0_correct)))))))
(let ((anon26_Then_correct true))
(let ((|inline$$1_Vector_push_back'$1_TestMutRef_T'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1| ($Mutation_17780 (|l#$Mutation_17780| $t13@0) (|p#$Mutation_17780| $t13@0) (seq.++ (|v#$Mutation_17780| $t13@0) (seq.unit $t15@0)))) (and (=> (= (ControlFlow 0 38234) 39659) anon26_Then_correct) (=> (= (ControlFlow 0 38234) 39298) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 38240) (- 0 48601)) (let (($range_0@@1 (|v#$Mutation_17780| |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1|)))
(forall (($i_1@@3 Int) ) (!  (=> (and (>= $i_1@@3 0) (< $i_1@@3 (seq.len $range_0@@1))) (let (($elem@@1 (seq.nth $range_0@@1 $i_1@@3)))
(> (|$value#$1_TestMutRef_T| $elem@@1) 0)))
 :qid |mutrefSmtSeqz3bpl.1927:52|
 :skolemid |39|
)))) (=> (let (($range_0@@1 (|v#$Mutation_17780| |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1|)))
(forall (($i_1@@4 Int) ) (!  (=> (and (>= $i_1@@4 0) (< $i_1@@4 (seq.len $range_0@@1))) (let (($elem@@1 (seq.nth $range_0@@1 $i_1@@4)))
(> (|$value#$1_TestMutRef_T| $elem@@1) 0)))
 :qid |mutrefSmtSeqz3bpl.1927:52|
 :skolemid |39|
))) (=> (and (and (= $t3@0 (|v#$Mutation_17780| |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1|)) (= $t13@0 ($Mutation_17780 ($Local 3) (as seq.empty (Seq Int)) $t3@0))) (and (|$IsValid'u64'| 4) (= $t15@0 ($1_TestMutRef_T 4)))) (and (=> (= (ControlFlow 0 38240) (- 0 48681)) (> (|$value#$1_TestMutRef_T| $t15@0) 0)) (=> (> (|$value#$1_TestMutRef_T| $t15@0) 0) (=> (= (ControlFlow 0 38240) 38234) |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$anon0_correct|)))))))))
(let ((anon25_Then_correct true))
(let ((|inline$$1_Vector_push_back'$1_TestMutRef_T'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1| ($Mutation_17780 (|l#$Mutation_17780| $t10@0) (|p#$Mutation_17780| $t10@0) (seq.++ (|v#$Mutation_17780| $t10@0) (seq.unit $t12@0)))) (and (=> (= (ControlFlow 0 38094) 39673) anon25_Then_correct) (=> (= (ControlFlow 0 38094) 38240) anon25_Else_correct)))))
(let ((anon24_Else_correct  (=> (not false) (=> (and (and (= $t1@1 (|v#$Mutation_19890| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t10@0 ($Mutation_17780 ($Local 3) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1|))) (and (|$IsValid'u64'| 3) (= $t12@0 ($1_TestMutRef_T 3)))) (and (=> (= (ControlFlow 0 38100) (- 0 48550)) (> (|$value#$1_TestMutRef_T| $t12@0) 0)) (=> (> (|$value#$1_TestMutRef_T| $t12@0) 0) (=> (= (ControlFlow 0 38100) 38094) |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$anon0_correct|)))))))
(let ((anon24_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_19890 (|l#$Mutation_19890| $t8@0) (|p#$Mutation_19890| $t8@0) (seq.++ (|v#$Mutation_19890| $t8@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 37991) 39687) anon24_Then_correct) (=> (= (ControlFlow 0 37991) 38100) anon24_Else_correct)))))
(let ((anon23_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_19890| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t8@0 ($Mutation_19890 ($Local 1) (as seq.empty (Seq Int)) $t1@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 37997) 37991))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon23_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_19890 (|l#$Mutation_19890| $t6@0) (|p#$Mutation_19890| $t6@0) (seq.++ (|v#$Mutation_19890| $t6@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 37904) 39701) anon23_Then_correct) (=> (= (ControlFlow 0 37904) 37997) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1| |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1|) (= $t6@0 ($Mutation_19890 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 37910) 37904))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_empty'$1_TestMutRef_T'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1| (as seq.empty (Seq T@$1_TestMutRef_T))) (and (=> (= (ControlFlow 0 37815) 39715) anon22_Then_correct) (=> (= (ControlFlow 0 37815) 37910) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 37821) 37815)) |inline$$1_Vector_empty'$1_TestMutRef_T'$0$anon0_correct|))))
(let ((anon21_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 37773) 39729) anon21_Then_correct) (=> (= (ControlFlow 0 37773) 37821) anon21_Else_correct)))))
(let ((anon0$1_correct  (=> (and (= _$t0 _$t0) (= (ControlFlow 0 37779) 37773)) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (and (and (= (seq.len (|p#$Mutation_4535| $t2)) 0) (= (seq.len (|p#$Mutation_19890| $t6)) 0)) (and (= (seq.len (|p#$Mutation_19890| $t8)) 0) (= (seq.len (|p#$Mutation_17780| $t10)) 0))) (and (and (= (seq.len (|p#$Mutation_17780| $t13)) 0) (= (seq.len (|p#$Mutation_24230| $t18)) 0)) (and (= (seq.len (|p#$Mutation_4535| $t19)) 0) (= (ControlFlow 0 37735) 37779)))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 48004) 37735) anon0_correct)))
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
 :qid |mutrefSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_TestMutRef_T)) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_TestMutRef_T'| (seq.nth v@@4 i@@0)))
 :qid |mutrefSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefSmtSeqz3bpl.588:41|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_TestMutRef_T)) (e T@$1_TestMutRef_T) ) (! (let ((i@@1 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |mutrefSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |mutrefSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |mutrefSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |mutrefSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |mutrefSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |mutrefSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |mutrefSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |mutrefSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |mutrefSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |mutrefSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefSmtSeqz3bpl.1264:36|
 :skolemid |34|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefSmtSeqz3bpl.1278:36|
 :skolemid |35|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefSmtSeqz3bpl.1291:36|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefSmtSeqz3bpl.1307:36|
 :skolemid |37|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |mutrefSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |mutrefSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_TestMutRef_T)) ) (! (let ((r@@1 (ReverseVec_13833 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |mutrefSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |mutrefSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13833 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |mutrefSmtSeqz3bpl.245:54|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Valid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t18@4 () T@$Mutation_24230)
(declare-fun $t4@1 () T@$1_TestMutRef_V)
(declare-fun _$t0 () Bool)
(declare-fun $t22@0 () Bool)
(declare-fun $t18@2 () T@$Mutation_24230)
(declare-fun $t18@3 () T@$Mutation_24230)
(declare-fun $t19@0 () T@$Mutation_4535)
(declare-fun $t21@0 () Bool)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1 () T@$Mutation_24230)
(declare-fun $t18@1 () T@$Mutation_24230)
(declare-fun $abort_flag@3 () Bool)
(declare-fun |$temp_0'u64'@0| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@0 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@0 () T@$Mutation_24230)
(declare-fun $abort_code@4 () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t6@1 () Int)
(declare-fun $abort_flag@1 () Bool)
(declare-fun $abort_code@2 () Int)
(declare-fun $abort_flag@0 () Bool)
(declare-fun $abort_code@1 () Int)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@3| () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1 () T@$Mutation_4535)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@2| () T@$1_TestMutRef_V)
(declare-fun $t18@0 () T@$Mutation_24230)
(declare-fun $abort_flag@2 () Bool)
(declare-fun $abort_code@3 () Int)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@2| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@2| () T@$Mutation_4535)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@0| () T@$Mutation_4535)
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$v@1| () (Seq Int))
(declare-fun |inline$$1_Vector_borrow_mut'u64'$0$dst@1| () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1 () T@$Mutation_19890)
(declare-fun $abort_code@0 () Int)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@1 () T@$Mutation_4535)
(declare-fun |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2| () T@$Mutation_18526)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@1| () Int)
(declare-fun |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@0| () T@$Mutation_18526)
(declare-fun |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1| () (Seq T@$1_TestMutRef_T))
(declare-fun |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@1| () T@$Mutation_18526)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1 () T@$Mutation_17780)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@0 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@0 () T@$Mutation_19890)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t5@0 () T@$Mutation_4535)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@0 () T@$Mutation_17780)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t9@0 () T@$Mutation_18526)
(declare-fun inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@0 () T@$Mutation_4535)
(declare-fun |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@1| () T@$1_TestMutRef_V)
(declare-fun |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1| () T@$Mutation_17780)
(declare-fun $t3@1 () (Seq T@$1_TestMutRef_T))
(declare-fun $t4@0 () T@$1_TestMutRef_V)
(declare-fun $t1@1 () (Seq Int))
(declare-fun $t13@0 () T@$Mutation_17780)
(declare-fun $t15@0 () T@$1_TestMutRef_T)
(declare-fun |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1| () T@$Mutation_17780)
(declare-fun $t3@0 () (Seq T@$1_TestMutRef_T))
(declare-fun $t10@0 () T@$Mutation_17780)
(declare-fun $t12@0 () T@$1_TestMutRef_T)
(declare-fun |inline$$1_Vector_push_back'u64'$1$m'@1| () T@$Mutation_19890)
(declare-fun |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1| () (Seq T@$1_TestMutRef_T))
(declare-fun $t8@0 () T@$Mutation_19890)
(declare-fun $t1@0 () (Seq Int))
(declare-fun |inline$$1_Vector_push_back'u64'$0$m'@1| () T@$Mutation_19890)
(declare-fun $t6@0 () T@$Mutation_19890)
(declare-fun |inline$$1_Vector_empty'u64'$0$v@1| () (Seq Int))
(declare-fun $t2 () T@$Mutation_4535)
(declare-fun $t6 () T@$Mutation_19890)
(declare-fun $t8 () T@$Mutation_19890)
(declare-fun $t10 () T@$Mutation_17780)
(declare-fun $t13 () T@$Mutation_17780)
(declare-fun $t18 () T@$Mutation_24230)
(declare-fun $t19 () T@$Mutation_4535)
(push 1)
(set-info :boogie-vc-id $1_TestMutRef_call_return_ref_different_path_vec2_incorrect$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 49746) (let ((L4_correct  (and (=> (= (ControlFlow 0 41921) (- 0 51334)) (let (($range_0 (|$ts#$1_TestMutRef_V| (|v#$Mutation_24230| $t18@4))))
(forall (($i_1 Int) ) (!  (=> (and (>= $i_1 0) (< $i_1 (seq.len $range_0))) (let (($elem (seq.nth $range_0 $i_1)))
(> (|$value#$1_TestMutRef_T| $elem) 0)))
 :qid |mutrefSmtSeqz3bpl.2364:73|
 :skolemid |44|
)))) (=> (let (($range_0 (|$ts#$1_TestMutRef_V| (|v#$Mutation_24230| $t18@4))))
(forall (($i_1@@0 Int) ) (!  (=> (and (>= $i_1@@0 0) (< $i_1@@0 (seq.len $range_0))) (let (($elem (seq.nth $range_0 $i_1@@0)))
(> (|$value#$1_TestMutRef_T| $elem) 0)))
 :qid |mutrefSmtSeqz3bpl.2364:73|
 :skolemid |44|
))) (=> (and (= $t4@1 (|v#$Mutation_24230| $t18@4)) (= $t4@1 $t4@1)) (and (=> (= (ControlFlow 0 41921) (- 0 51396)) (=> _$t0 (= $t4@1 ($1_TestMutRef_V (seq.++ (seq.unit 1) (seq.unit 0)) (seq.++ (seq.unit ($1_TestMutRef_T 3)) (seq.unit ($1_TestMutRef_T 4))))))) (=> (=> _$t0 (= $t4@1 ($1_TestMutRef_V (seq.++ (seq.unit 1) (seq.unit 0)) (seq.++ (seq.unit ($1_TestMutRef_T 3)) (seq.unit ($1_TestMutRef_T 4)))))) (=> (= (ControlFlow 0 41921) (- 0 51431)) (=> (not _$t0) (= $t4@1 ($1_TestMutRef_V (seq.++ (seq.unit 1) (seq.unit 2)) (seq.++ (seq.unit ($1_TestMutRef_T 0)) (seq.unit ($1_TestMutRef_T 4))))))))))))))
(let ((anon29_Else_correct  (=> (not $t22@0) (=> (and (= $t18@4 $t18@2) (= (ControlFlow 0 41788) 41921)) L4_correct))))
(let ((anon29_Then_correct  (=> (and (and $t22@0 (= $t18@3 ($Mutation_24230 (|l#$Mutation_24230| $t18@2) (|p#$Mutation_24230| $t18@2) (let (($$sel0 (|$ts#$1_TestMutRef_V| (|v#$Mutation_24230| $t18@2))))
($1_TestMutRef_V (|$is#$1_TestMutRef_V| (|v#$Mutation_24230| $t18@2)) (seq.++ (seq.extract $$sel0 0 (- (seq.nth (|p#$Mutation_4535| $t19@0) (+ (seq.len (|p#$Mutation_24230| $t18@2)) 1)) 0)) (seq.unit ($1_TestMutRef_T (|v#$Mutation_4535| $t19@0))) (seq.extract $$sel0 (+ (seq.nth (|p#$Mutation_4535| $t19@0) (+ (seq.len (|p#$Mutation_24230| $t18@2)) 1)) 1) (- (seq.len $$sel0) (+ (seq.nth (|p#$Mutation_4535| $t19@0) (+ (seq.len (|p#$Mutation_24230| $t18@2)) 1)) 1))))))))) (and (= $t18@4 $t18@3) (= (ControlFlow 0 41993) 41921))) L4_correct)))
(let ((L2_correct  (=> (= $t22@0  (and (= (|l#$Mutation_24230| $t18@2) (|l#$Mutation_4535| $t19@0)) (let ((pp (|p#$Mutation_24230| $t18@2)))
(let ((cp (|p#$Mutation_4535| $t19@0)))
(let ((pl (seq.len pp)))
(let ((cl (seq.len cp)))
(let ((el (seq.len (seq.++ (seq.++ (seq.unit 1) (seq.unit (- 0 1))) (seq.unit 0)))))
 (and (and (= cl (+ pl el)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 pl)) (= (seq.nth pp i@@12) (seq.nth cp i@@12)))
 :qid |mutrefSmtSeqz3bpl.286:14|
 :skolemid |11|
))) (forall ((i@@13 Int) ) (!  (=> (and (>= i@@13 0) (< i@@13 el)) (or (= (seq.nth (seq.++ (seq.++ (seq.unit 1) (seq.unit (- 0 1))) (seq.unit 0)) i@@13) (- 0 1)) (= (seq.nth (seq.++ (seq.++ (seq.unit 1) (seq.unit (- 0 1))) (seq.unit 0)) i@@13) (seq.nth cp (+ pl i@@13)))))
 :qid |mutrefSmtSeqz3bpl.287:14|
 :skolemid |12|
)))))))))) (and (=> (= (ControlFlow 0 41782) 41993) anon29_Then_correct) (=> (= (ControlFlow 0 41782) 41788) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (not $t21@0) (=> (and (= $t18@2 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1) (= (ControlFlow 0 41764) 41782)) L2_correct))))
(let ((anon28_Then_correct  (=> (and (and $t21@0 (= $t18@1 ($Mutation_24230 (|l#$Mutation_24230| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1) (|p#$Mutation_24230| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1) (let (($$sel0@@0 (|$is#$1_TestMutRef_V| (|v#$Mutation_24230| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1))))
($1_TestMutRef_V (seq.++ (seq.extract $$sel0@@0 0 (- (seq.nth (|p#$Mutation_4535| $t19@0) (+ (seq.len (|p#$Mutation_24230| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1)) 1)) 0)) (seq.unit (|v#$Mutation_4535| $t19@0)) (seq.extract $$sel0@@0 (+ (seq.nth (|p#$Mutation_4535| $t19@0) (+ (seq.len (|p#$Mutation_24230| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1)) 1)) 1) (- (seq.len $$sel0@@0) (+ (seq.nth (|p#$Mutation_4535| $t19@0) (+ (seq.len (|p#$Mutation_24230| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1)) 1)) 1)))) (|$ts#$1_TestMutRef_V| (|v#$Mutation_24230| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1))))))) (and (= $t18@2 $t18@1) (= (ControlFlow 0 42039) 41782))) L2_correct)))
(let ((anon27_Else_correct  (=> (and (not $abort_flag@3) (= |$temp_0'u64'@0| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1))) (=> (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (|$IsValid'u64'| 0)) (and (= $t19@0 ($Mutation_4535 (|l#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1) (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1) 0)) (= $t21@0  (and (= (|l#$Mutation_24230| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1) (|l#$Mutation_4535| $t19@0)) (let ((pp@@0 (|p#$Mutation_24230| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1)))
(let ((cp@@0 (|p#$Mutation_4535| $t19@0)))
(let ((pl@@0 (seq.len pp@@0)))
(let ((cl@@0 (seq.len cp@@0)))
(let ((el@@0 (seq.len (seq.++ (seq.unit 0) (seq.unit (- 0 1))))))
 (and (and (= cl@@0 (+ pl@@0 el@@0)) (forall ((i@@14 Int) ) (!  (=> (and (>= i@@14 0) (< i@@14 pl@@0)) (= (seq.nth pp@@0 i@@14) (seq.nth cp@@0 i@@14)))
 :qid |mutrefSmtSeqz3bpl.286:14|
 :skolemid |11|
))) (forall ((i@@15 Int) ) (!  (=> (and (>= i@@15 0) (< i@@15 el@@0)) (or (= (seq.nth (seq.++ (seq.unit 0) (seq.unit (- 0 1))) i@@15) (- 0 1)) (= (seq.nth (seq.++ (seq.unit 0) (seq.unit (- 0 1))) i@@15) (seq.nth cp@@0 (+ pl@@0 i@@15)))))
 :qid |mutrefSmtSeqz3bpl.287:14|
 :skolemid |12|
)))))))))))) (and (=> (= (ControlFlow 0 41758) 42039) anon28_Then_correct) (=> (= (ControlFlow 0 41758) 41764) anon28_Else_correct))))))
(let ((anon27_Then_correct true))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$L15_correct  (=> (and (and (= $abort_flag@3 true) (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@0)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@0) (= $abort_code@4 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t6@1))) (and (=> (= (ControlFlow 0 41458) 42053) anon27_Then_correct) (=> (= (ControlFlow 0 41458) 41758) anon27_Else_correct)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Then_correct  (=> (and (and $abort_flag@1 (= $abort_code@2 $abort_code@2)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t6@1 $abort_code@2) (= (ControlFlow 0 41704) 41458))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$L15_correct)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Then_correct  (=> (and (and $abort_flag@0 (= $abort_code@1 $abort_code@1)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t6@1 $abort_code@1) (= (ControlFlow 0 41452) 41458))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$L15_correct)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$L3_correct  (=> (and (and (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@3| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@3| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@3|)) (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@2| (|v#$Mutation_24230| $t18@0)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@2| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@2|))) (and (and (= $abort_flag@3 $abort_flag@2) (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret0@1 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1)) (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$ret1@1 $t18@0) (= $abort_code@4 $abort_code@3)))) (and (=> (= (ControlFlow 0 41438) 42053) anon27_Then_correct) (=> (= (ControlFlow 0 41438) 41758) anon27_Else_correct)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Else_correct  (=> (not $abort_flag@1) (=> (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@2| (|v#$Mutation_4535| |inline$$1_Vector_borrow_mut'u64'$0$dst@2|)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@2| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@2|)) (=> (and (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1 |inline$$1_Vector_borrow_mut'u64'$0$dst@2|) (= $abort_code@3 $abort_code@2)) (and (= $abort_flag@2 $abort_flag@1) (= (ControlFlow 0 41690) 41438))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$L3_correct)))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|  (=> (= $abort_flag@1 true) (=> (and (= $abort_code@2 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@0|)) (and (=> (= (ControlFlow 0 41662) 41704) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Then_correct) (=> (= (ControlFlow 0 41662) 41690) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|  (=> (and (not (and (>= 1 0) (< 1 (seq.len |inline$$1_Vector_borrow_mut'u64'$0$v@1|)))) (= (ControlFlow 0 41660) 41662)) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|  (=> (and (>= 1 0) (< 1 (seq.len |inline$$1_Vector_borrow_mut'u64'$0$v@1|))) (=> (and (and (= |inline$$1_Vector_borrow_mut'u64'$0$dst@1| ($Mutation_4535 (|l#$Mutation_19890| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1) (seq.++ (|p#$Mutation_19890| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1) (seq.unit 1)) (seq.nth |inline$$1_Vector_borrow_mut'u64'$0$v@1| 1))) (= $abort_flag@1 false)) (and (= $abort_code@2 $abort_code@0) (= |inline$$1_Vector_borrow_mut'u64'$0$dst@2| |inline$$1_Vector_borrow_mut'u64'$0$dst@1|))) (and (=> (= (ControlFlow 0 41610) 41704) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Then_correct) (=> (= (ControlFlow 0 41610) 41690) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon8_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'u64'$0$v@1| (|v#$Mutation_19890| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1)) (and (=> (= (ControlFlow 0 41580) 41660) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 41580) 41610) |inline$$1_Vector_borrow_mut'u64'$0$anon3_Else_correct|)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon7_Then_correct  (=> (and (and _$t0 (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@1 ($Mutation_19890 (|l#$Mutation_24230| $t18@0) (seq.++ (|p#$Mutation_24230| $t18@0) (seq.unit 0)) (|$is#$1_TestMutRef_V| (|v#$Mutation_24230| $t18@0))))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 41670) 41580))) |inline$$1_Vector_borrow_mut'u64'$0$anon0_correct|)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Else_correct  (=> (and (and (and (not $abort_flag@0) (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@1 ($Mutation_4535 (|l#$Mutation_18526| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2|) (seq.++ (|p#$Mutation_18526| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2|) (seq.unit 0)) (|$value#$1_TestMutRef_T| (|v#$Mutation_18526| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2|))))) (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@1| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@1)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@1| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'u64'@1|))) (and (and (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@1 inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@1) (= $abort_code@3 $abort_code@1)) (and (= $abort_flag@2 $abort_flag@0) (= (ControlFlow 0 41410) 41438)))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$L3_correct)))
(let ((|inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Then$1_correct|  (=> (= $abort_flag@0 true) (=> (and (= $abort_code@1 $EXEC_FAILURE_CODE) (= |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@0|)) (and (=> (= (ControlFlow 0 41370) 41452) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Then_correct) (=> (= (ControlFlow 0 41370) 41410) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Then_correct|  (=> (and (not (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1|)))) (= (ControlFlow 0 41368) 41370)) |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Then$1_correct|)))
(let ((|inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Else_correct|  (=> (and (>= 0 0) (< 0 (seq.len |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1|))) (=> (and (and (= |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@1| ($Mutation_18526 (|l#$Mutation_17780| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1) (seq.++ (|p#$Mutation_17780| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1) (seq.unit 0)) (seq.nth |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1| 0))) (= $abort_flag@0 false)) (and (= $abort_code@1 $abort_code@0) (= |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@2| |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$dst@1|))) (and (=> (= (ControlFlow 0 41318) 41452) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Then_correct) (=> (= (ControlFlow 0 41318) 41410) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon9_Else_correct))))))
(let ((|inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon0_correct|  (=> (= |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$v@1| (|v#$Mutation_17780| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1)) (and (=> (= (ControlFlow 0 41288) 41368) |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Then_correct|) (=> (= (ControlFlow 0 41288) 41318) |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon3_Else_correct|)))))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon7_Else_correct  (=> (and (and (not _$t0) (= inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@1 ($Mutation_17780 (|l#$Mutation_24230| $t18@0) (seq.++ (|p#$Mutation_24230| $t18@0) (seq.unit 1)) (|$ts#$1_TestMutRef_V| (|v#$Mutation_24230| $t18@0))))) (and (|$IsValid'u64'| 0) (= (ControlFlow 0 41378) 41288))) |inline$$1_Vector_borrow_mut'$1_TestMutRef_T'$0$anon0_correct|)))
(let ((inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon0_correct  (=> (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t2@0)) 0) (=> (and (and (and (= (seq.len (|p#$Mutation_19890| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t3@0)) 0) (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t5@0)) 0)) (and (= (seq.len (|p#$Mutation_17780| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t7@0)) 0) (= (seq.len (|p#$Mutation_18526| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t9@0)) 0))) (and (and (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_path_vec2$0$$t10@0)) 0) (= _$t0 _$t0)) (and (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@1| (|v#$Mutation_24230| $t18@0)) (= |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@1| |inline$$1_TestMutRef_return_ref_different_path_vec2$0$$temp_0'$1_TestMutRef_V'@1|)))) (and (=> (= (ControlFlow 0 41164) 41670) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon7_Then_correct) (=> (= (ControlFlow 0 41164) 41378) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon7_Else_correct))))))
(let ((anon26_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 41712) (- 0 50474)) (let (($range_0@@0 (|v#$Mutation_17780| |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1|)))
(forall (($i_1@@1 Int) ) (!  (=> (and (>= $i_1@@1 0) (< $i_1@@1 (seq.len $range_0@@0))) (let (($elem@@0 (seq.nth $range_0@@0 $i_1@@1)))
(> (|$value#$1_TestMutRef_T| $elem@@0) 0)))
 :qid |mutrefSmtSeqz3bpl.2285:52|
 :skolemid |43|
)))) (=> (let (($range_0@@0 (|v#$Mutation_17780| |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1|)))
(forall (($i_1@@2 Int) ) (!  (=> (and (>= $i_1@@2 0) (< $i_1@@2 (seq.len $range_0@@0))) (let (($elem@@0 (seq.nth $range_0@@0 $i_1@@2)))
(> (|$value#$1_TestMutRef_T| $elem@@0) 0)))
 :qid |mutrefSmtSeqz3bpl.2285:52|
 :skolemid |43|
))) (=> (= $t3@1 (|v#$Mutation_17780| |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1|)) (=> (and (and (= $t4@0 ($1_TestMutRef_V $t1@1 $t3@1)) (= $t4@0 $t4@0)) (and (= $t18@0 ($Mutation_24230 ($Local 4) (as seq.empty (Seq Int)) $t4@0)) (= (ControlFlow 0 41712) 41164))) inline$$1_TestMutRef_return_ref_different_path_vec2$0$anon0_correct)))))))
(let ((anon26_Then_correct true))
(let ((|inline$$1_Vector_push_back'$1_TestMutRef_T'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$m'@1| ($Mutation_17780 (|l#$Mutation_17780| $t13@0) (|p#$Mutation_17780| $t13@0) (seq.++ (|v#$Mutation_17780| $t13@0) (seq.unit $t15@0)))) (and (=> (= (ControlFlow 0 40648) 42073) anon26_Then_correct) (=> (= (ControlFlow 0 40648) 41712) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (not false) (and (=> (= (ControlFlow 0 40654) (- 0 50343)) (let (($range_0@@1 (|v#$Mutation_17780| |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1|)))
(forall (($i_1@@3 Int) ) (!  (=> (and (>= $i_1@@3 0) (< $i_1@@3 (seq.len $range_0@@1))) (let (($elem@@1 (seq.nth $range_0@@1 $i_1@@3)))
(> (|$value#$1_TestMutRef_T| $elem@@1) 0)))
 :qid |mutrefSmtSeqz3bpl.2247:52|
 :skolemid |42|
)))) (=> (let (($range_0@@1 (|v#$Mutation_17780| |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1|)))
(forall (($i_1@@4 Int) ) (!  (=> (and (>= $i_1@@4 0) (< $i_1@@4 (seq.len $range_0@@1))) (let (($elem@@1 (seq.nth $range_0@@1 $i_1@@4)))
(> (|$value#$1_TestMutRef_T| $elem@@1) 0)))
 :qid |mutrefSmtSeqz3bpl.2247:52|
 :skolemid |42|
))) (=> (and (and (= $t3@0 (|v#$Mutation_17780| |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1|)) (= $t13@0 ($Mutation_17780 ($Local 3) (as seq.empty (Seq Int)) $t3@0))) (and (|$IsValid'u64'| 4) (= $t15@0 ($1_TestMutRef_T 4)))) (and (=> (= (ControlFlow 0 40654) (- 0 50423)) (> (|$value#$1_TestMutRef_T| $t15@0) 0)) (=> (> (|$value#$1_TestMutRef_T| $t15@0) 0) (=> (= (ControlFlow 0 40654) 40648) |inline$$1_Vector_push_back'$1_TestMutRef_T'$1$anon0_correct|)))))))))
(let ((anon25_Then_correct true))
(let ((|inline$$1_Vector_push_back'$1_TestMutRef_T'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$m'@1| ($Mutation_17780 (|l#$Mutation_17780| $t10@0) (|p#$Mutation_17780| $t10@0) (seq.++ (|v#$Mutation_17780| $t10@0) (seq.unit $t12@0)))) (and (=> (= (ControlFlow 0 40508) 42087) anon25_Then_correct) (=> (= (ControlFlow 0 40508) 40654) anon25_Else_correct)))))
(let ((anon24_Else_correct  (=> (not false) (=> (and (and (= $t1@1 (|v#$Mutation_19890| |inline$$1_Vector_push_back'u64'$1$m'@1|)) (= $t10@0 ($Mutation_17780 ($Local 3) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1|))) (and (|$IsValid'u64'| 3) (= $t12@0 ($1_TestMutRef_T 3)))) (and (=> (= (ControlFlow 0 40514) (- 0 50292)) (> (|$value#$1_TestMutRef_T| $t12@0) 0)) (=> (> (|$value#$1_TestMutRef_T| $t12@0) 0) (=> (= (ControlFlow 0 40514) 40508) |inline$$1_Vector_push_back'$1_TestMutRef_T'$0$anon0_correct|)))))))
(let ((anon24_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$1$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$1$m'@1| ($Mutation_19890 (|l#$Mutation_19890| $t8@0) (|p#$Mutation_19890| $t8@0) (seq.++ (|v#$Mutation_19890| $t8@0) (seq.unit 2)))) (and (=> (= (ControlFlow 0 40405) 42101) anon24_Then_correct) (=> (= (ControlFlow 0 40405) 40514) anon24_Else_correct)))))
(let ((anon23_Else_correct  (=> (not false) (=> (and (and (= $t1@0 (|v#$Mutation_19890| |inline$$1_Vector_push_back'u64'$0$m'@1|)) (= $t8@0 ($Mutation_19890 ($Local 1) (as seq.empty (Seq Int)) $t1@0))) (and (|$IsValid'u64'| 2) (= (ControlFlow 0 40411) 40405))) |inline$$1_Vector_push_back'u64'$1$anon0_correct|))))
(let ((anon23_Then_correct true))
(let ((|inline$$1_Vector_push_back'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_push_back'u64'$0$m'@1| ($Mutation_19890 (|l#$Mutation_19890| $t6@0) (|p#$Mutation_19890| $t6@0) (seq.++ (|v#$Mutation_19890| $t6@0) (seq.unit 1)))) (and (=> (= (ControlFlow 0 40318) 42115) anon23_Then_correct) (=> (= (ControlFlow 0 40318) 40411) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (not false) (=> (and (and (= |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1| |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1|) (= $t6@0 ($Mutation_19890 ($Local 1) (as seq.empty (Seq Int)) |inline$$1_Vector_empty'u64'$0$v@1|))) (and (|$IsValid'u64'| 1) (= (ControlFlow 0 40324) 40318))) |inline$$1_Vector_push_back'u64'$0$anon0_correct|))))
(let ((anon22_Then_correct true))
(let ((|inline$$1_Vector_empty'$1_TestMutRef_T'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'$1_TestMutRef_T'$0$v@1| (as seq.empty (Seq T@$1_TestMutRef_T))) (and (=> (= (ControlFlow 0 40229) 42129) anon22_Then_correct) (=> (= (ControlFlow 0 40229) 40324) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (not false) (=> (and (= |inline$$1_Vector_empty'u64'$0$v@1| |inline$$1_Vector_empty'u64'$0$v@1|) (= (ControlFlow 0 40235) 40229)) |inline$$1_Vector_empty'$1_TestMutRef_T'$0$anon0_correct|))))
(let ((anon21_Then_correct true))
(let ((|inline$$1_Vector_empty'u64'$0$anon0_correct|  (=> (= |inline$$1_Vector_empty'u64'$0$v@1| (as seq.empty (Seq Int))) (and (=> (= (ControlFlow 0 40187) 42143) anon21_Then_correct) (=> (= (ControlFlow 0 40187) 40235) anon21_Else_correct)))))
(let ((anon0$1_correct  (=> (and (= _$t0 _$t0) (= (ControlFlow 0 40193) 40187)) |inline$$1_Vector_empty'u64'$0$anon0_correct|)))
(let ((anon0_correct  (=> (and (and (and (= (seq.len (|p#$Mutation_4535| $t2)) 0) (= (seq.len (|p#$Mutation_19890| $t6)) 0)) (and (= (seq.len (|p#$Mutation_19890| $t8)) 0) (= (seq.len (|p#$Mutation_17780| $t10)) 0))) (and (and (= (seq.len (|p#$Mutation_17780| $t13)) 0) (= (seq.len (|p#$Mutation_24230| $t18)) 0)) (and (= (seq.len (|p#$Mutation_4535| $t19)) 0) (= (ControlFlow 0 40149) 40193)))) anon0$1_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 49746) 40149) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-value ((ControlFlow 0 0)))
(get-value ((ControlFlow 0 49746)))
(get-value ((ControlFlow 0 40149)))
(get-value ((ControlFlow 0 40193)))
(get-value ((ControlFlow 0 40187)))
(get-value ((ControlFlow 0 40235)))
(get-value ((ControlFlow 0 40229)))
(get-value ((ControlFlow 0 40324)))
(get-value ((ControlFlow 0 40318)))
(get-value ((ControlFlow 0 40411)))
(get-value ((ControlFlow 0 40405)))
(get-value ((ControlFlow 0 40514)))
(get-value ((ControlFlow 0 40508)))
(get-value ((ControlFlow 0 40654)))
(get-value ((ControlFlow 0 40648)))
(get-value ((ControlFlow 0 41712)))
(get-value ((ControlFlow 0 41164)))
(get-value ((ControlFlow 0 41378)))
(get-value ((ControlFlow 0 41288)))
(get-value ((ControlFlow 0 41318)))
(get-value ((ControlFlow 0 41410)))
(get-value ((ControlFlow 0 41438)))
(get-value ((ControlFlow 0 41758)))
(get-value ((ControlFlow 0 41764)))
(get-value ((ControlFlow 0 41782)))
(get-value ((ControlFlow 0 41993)))
(get-value ((ControlFlow 0 41921)))
(assert (not (= (ControlFlow 0 41921) (- 51334))))
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
 :qid |mutrefSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_TestMutRef_T)) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_TestMutRef_T'| (seq.nth v@@4 i@@0)))
 :qid |mutrefSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefSmtSeqz3bpl.588:41|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_TestMutRef_T)) (e T@$1_TestMutRef_T) ) (! (let ((i@@1 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |mutrefSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |mutrefSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |mutrefSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |mutrefSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |mutrefSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |mutrefSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |mutrefSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |mutrefSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |mutrefSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |mutrefSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefSmtSeqz3bpl.1264:36|
 :skolemid |34|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefSmtSeqz3bpl.1278:36|
 :skolemid |35|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefSmtSeqz3bpl.1291:36|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefSmtSeqz3bpl.1307:36|
 :skolemid |37|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |mutrefSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |mutrefSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_TestMutRef_T)) ) (! (let ((r@@1 (ReverseVec_13833 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |mutrefSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |mutrefSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13833 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |mutrefSmtSeqz3bpl.245:54|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11))
)))
; Invalid

(declare-fun ControlFlow (Int Int) Int)
(declare-fun $t6@2 () T@$Mutation_18526)
(declare-fun $t2@1 () T@$1_TestMutRef_T)
(declare-fun $t3@1 () T@$1_TestMutRef_R)
(declare-fun $t7@2 () T@$Mutation_28709)
(declare-fun _$t0 () Bool)
(declare-fun $t12@0 () Bool)
(declare-fun $t7@0 () T@$Mutation_28709)
(declare-fun $t7@1 () T@$Mutation_28709)
(declare-fun $t8@0 () T@$Mutation_4535)
(declare-fun $t11@0 () Bool)
(declare-fun $t6@0 () T@$Mutation_18526)
(declare-fun $t6@1 () T@$Mutation_18526)
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
(declare-fun $t6 () T@$Mutation_18526)
(declare-fun $t7 () T@$Mutation_28709)
(declare-fun $t8 () T@$Mutation_4535)
(push 1)
(set-info :boogie-vc-id $1_TestMutRef_call_return_ref_different_root$verify)
(set-option :timeout 40000)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 51489) (let ((L4_correct  (and (=> (= (ControlFlow 0 43213) (- 0 52108)) (> (|$value#$1_TestMutRef_T| (|v#$Mutation_18526| $t6@2)) 0)) (=> (> (|$value#$1_TestMutRef_T| (|v#$Mutation_18526| $t6@2)) 0) (=> (and (and (= $t2@1 (|v#$Mutation_18526| $t6@2)) (= $t3@1 (|v#$Mutation_28709| $t7@2))) (and (= $t2@1 $t2@1) (= $t3@1 $t3@1))) (and (=> (= (ControlFlow 0 43213) (- 0 52161)) (=> _$t0 (and (= $t2@1 ($1_TestMutRef_T 5)) (= $t3@1 ($1_TestMutRef_R 10))))) (=> (=> _$t0 (and (= $t2@1 ($1_TestMutRef_T 5)) (= $t3@1 ($1_TestMutRef_R 10)))) (=> (= (ControlFlow 0 43213) (- 0 52183)) (=> (not _$t0) (and (= $t2@1 ($1_TestMutRef_T 1)) (= $t3@1 ($1_TestMutRef_R 5))))))))))))
(let ((anon11_Else_correct  (=> (not $t12@0) (=> (and (= $t7@2 $t7@0) (= (ControlFlow 0 43115) 43213)) L4_correct))))
(let ((anon11_Then_correct  (=> (and (and $t12@0 (= $t7@1 ($Mutation_28709 (|l#$Mutation_28709| $t7@0) (|p#$Mutation_28709| $t7@0) ($1_TestMutRef_R (|v#$Mutation_4535| $t8@0))))) (and (= $t7@2 $t7@1) (= (ControlFlow 0 43231) 43213))) L4_correct)))
(let ((L2_correct  (=> (= $t12@0  (and (= (|l#$Mutation_28709| $t7@0) (|l#$Mutation_4535| $t8@0)) (let ((pp (|p#$Mutation_28709| $t7@0)))
(let ((cp (|p#$Mutation_4535| $t8@0)))
(let ((pl (seq.len pp)))
(let ((cl (seq.len cp)))
 (and (and (= cl (+ pl 1)) (forall ((i@@12 Int) ) (!  (=> (and (>= i@@12 0) (< i@@12 pl)) (= (seq.nth pp i@@12) (seq.nth cp i@@12)))
 :qid |mutrefSmtSeqz3bpl.272:14|
 :skolemid |10|
))) (or (= 0 (- 0 1)) (= 0 (seq.nth cp pl)))))))))) (and (=> (= (ControlFlow 0 43109) 43231) anon11_Then_correct) (=> (= (ControlFlow 0 43109) 43115) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (not $t11@0) (=> (and (= $t6@2 $t6@0) (= (ControlFlow 0 43099) 43109)) L2_correct))))
(let ((anon10_Then_correct  (=> (and (and $t11@0 (= $t6@1 ($Mutation_18526 (|l#$Mutation_18526| $t6@0) (|p#$Mutation_18526| $t6@0) ($1_TestMutRef_T (|v#$Mutation_4535| $t8@0))))) (and (= $t6@2 $t6@1) (= (ControlFlow 0 43249) 43109))) L2_correct)))
(let ((anon9_Else_correct  (=> (and (not false) (= |$temp_0'u64'@0| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_root$0$$t3@1))) (=> (and (and (= |$temp_0'u64'@0| |$temp_0'u64'@0|) (|$IsValid'u64'| 5)) (and (= $t8@0 ($Mutation_4535 (|l#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_root$0$$t3@1) (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_root$0$$t3@1) 5)) (= $t11@0  (and (= (|l#$Mutation_18526| $t6@0) (|l#$Mutation_4535| $t8@0)) (let ((pp@@0 (|p#$Mutation_18526| $t6@0)))
(let ((cp@@0 (|p#$Mutation_4535| $t8@0)))
(let ((pl@@0 (seq.len pp@@0)))
(let ((cl@@0 (seq.len cp@@0)))
 (and (and (= cl@@0 (+ pl@@0 1)) (forall ((i@@13 Int) ) (!  (=> (and (>= i@@13 0) (< i@@13 pl@@0)) (= (seq.nth pp@@0 i@@13) (seq.nth cp@@0 i@@13)))
 :qid |mutrefSmtSeqz3bpl.272:14|
 :skolemid |10|
))) (or (= 0 (- 0 1)) (= 0 (seq.nth cp@@0 pl@@0)))))))))))) (and (=> (= (ControlFlow 0 43093) 43249) anon10_Then_correct) (=> (= (ControlFlow 0 43093) 43099) anon10_Else_correct))))))
(let ((anon9_Then_correct true))
(let ((inline$$1_TestMutRef_return_ref_different_root$0$L3_correct  (=> (and (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@3| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_root$0$$t3@1)) (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@3| |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@3|)) (=> (and (and (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_T'@2| (|v#$Mutation_18526| $t6@0)) (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_T'@2| |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_T'@2|)) (and (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_R'@2| (|v#$Mutation_28709| $t7@0)) (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_R'@2| |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_R'@2|))) (and (=> (= (ControlFlow 0 43015) 43267) anon9_Then_correct) (=> (= (ControlFlow 0 43015) 43093) anon9_Else_correct))))))
(let ((inline$$1_TestMutRef_return_ref_different_root$0$anon3_Else_correct  (=> (and (not _$t0) (= inline$$1_TestMutRef_return_ref_different_root$0$$t5@1 ($Mutation_4535 (|l#$Mutation_28709| $t7@0) (seq.++ (|p#$Mutation_28709| $t7@0) (seq.unit 0)) (|$value#$1_TestMutRef_R| (|v#$Mutation_28709| $t7@0))))) (=> (and (and (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@2| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_root$0$$t5@1)) (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@2| |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@2|)) (and (= inline$$1_TestMutRef_return_ref_different_root$0$$t3@1 inline$$1_TestMutRef_return_ref_different_root$0$$t5@1) (= (ControlFlow 0 42975) 43015))) inline$$1_TestMutRef_return_ref_different_root$0$L3_correct))))
(let ((inline$$1_TestMutRef_return_ref_different_root$0$anon3_Then_correct  (=> (and _$t0 (= inline$$1_TestMutRef_return_ref_different_root$0$$t4@1 ($Mutation_4535 (|l#$Mutation_18526| $t6@0) (seq.++ (|p#$Mutation_18526| $t6@0) (seq.unit 0)) (|$value#$1_TestMutRef_T| (|v#$Mutation_18526| $t6@0))))) (=> (and (and (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@1| (|v#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_root$0$$t4@1)) (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@1| |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'u64'@1|)) (and (= inline$$1_TestMutRef_return_ref_different_root$0$$t3@1 inline$$1_TestMutRef_return_ref_different_root$0$$t4@1) (= (ControlFlow 0 43043) 43015))) inline$$1_TestMutRef_return_ref_different_root$0$L3_correct))))
(let ((inline$$1_TestMutRef_return_ref_different_root$0$anon0_correct  (=> (and (and (and (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_root$0$$t3@0)) 0) (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_root$0$$t4@0)) 0)) (and (= (seq.len (|p#$Mutation_4535| inline$$1_TestMutRef_return_ref_different_root$0$$t5@0)) 0) (= _$t0 _$t0))) (and (and (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_T'@1| (|v#$Mutation_18526| $t6@0)) (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_T'@1| |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_T'@1|)) (and (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_R'@1| (|v#$Mutation_28709| $t7@0)) (= |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_R'@1| |inline$$1_TestMutRef_return_ref_different_root$0$$temp_0'$1_TestMutRef_R'@1|)))) (and (=> (= (ControlFlow 0 42945) 43043) inline$$1_TestMutRef_return_ref_different_root$0$anon3_Then_correct) (=> (= (ControlFlow 0 42945) 42975) inline$$1_TestMutRef_return_ref_different_root$0$anon3_Else_correct)))))
(let ((anon0$1_correct  (=> (= _$t0 _$t0) (=> (and (|$IsValid'u64'| 1) (= $t2@0 ($1_TestMutRef_T 1))) (and (=> (= (ControlFlow 0 43053) (- 0 51662)) (> (|$value#$1_TestMutRef_T| $t2@0) 0)) (=> (> (|$value#$1_TestMutRef_T| $t2@0) 0) (=> (= $t2@0 $t2@0) (=> (and (|$IsValid'u64'| 10) (= $t3@0 ($1_TestMutRef_R 10))) (=> (and (and (= $t3@0 $t3@0) (= $t6@0 ($Mutation_18526 ($Local 2) (as seq.empty (Seq Int)) $t2@0))) (and (= $t7@0 ($Mutation_28709 ($Local 3) (as seq.empty (Seq Int)) $t3@0)) (= (ControlFlow 0 43053) 42945))) inline$$1_TestMutRef_return_ref_different_root$0$anon0_correct)))))))))
(let ((anon0_correct  (=> (= (seq.len (|p#$Mutation_4535| $t1)) 0) (=> (and (and (= (seq.len (|p#$Mutation_18526| $t6)) 0) (= (seq.len (|p#$Mutation_28709| $t7)) 0)) (and (= (seq.len (|p#$Mutation_4535| $t8)) 0) (= (ControlFlow 0 42545) 43053))) anon0$1_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 51489) 42545) anon0_correct)))
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
 :qid |mutrefSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_TestMutRef_T)) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_TestMutRef_T'| (seq.nth v@@4 i@@0)))
 :qid |mutrefSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefSmtSeqz3bpl.588:41|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_TestMutRef_T)) (e T@$1_TestMutRef_T) ) (! (let ((i@@1 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |mutrefSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |mutrefSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |mutrefSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |mutrefSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |mutrefSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |mutrefSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |mutrefSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |mutrefSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |mutrefSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |mutrefSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefSmtSeqz3bpl.1264:36|
 :skolemid |34|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefSmtSeqz3bpl.1278:36|
 :skolemid |35|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefSmtSeqz3bpl.1291:36|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefSmtSeqz3bpl.1307:36|
 :skolemid |37|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |mutrefSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |mutrefSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_TestMutRef_T)) ) (! (let ((r@@1 (ReverseVec_13833 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |mutrefSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |mutrefSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13833 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |mutrefSmtSeqz3bpl.245:54|
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
 (=> (= (ControlFlow 0 0) 52215) true)
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
 :qid |mutrefSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_TestMutRef_T)) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_TestMutRef_T'| (seq.nth v@@4 i@@0)))
 :qid |mutrefSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefSmtSeqz3bpl.588:41|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_TestMutRef_T)) (e T@$1_TestMutRef_T) ) (! (let ((i@@1 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |mutrefSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |mutrefSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |mutrefSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |mutrefSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |mutrefSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |mutrefSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |mutrefSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |mutrefSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |mutrefSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |mutrefSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefSmtSeqz3bpl.1264:36|
 :skolemid |34|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefSmtSeqz3bpl.1278:36|
 :skolemid |35|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefSmtSeqz3bpl.1291:36|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefSmtSeqz3bpl.1307:36|
 :skolemid |37|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |mutrefSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |mutrefSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_TestMutRef_T)) ) (! (let ((r@@1 (ReverseVec_13833 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |mutrefSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |mutrefSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13833 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |mutrefSmtSeqz3bpl.245:54|
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
 (=> (= (ControlFlow 0 0) 52319) true)
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
 :qid |mutrefSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_TestMutRef_T)) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_TestMutRef_T'| (seq.nth v@@4 i@@0)))
 :qid |mutrefSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefSmtSeqz3bpl.588:41|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_TestMutRef_T)) (e T@$1_TestMutRef_T) ) (! (let ((i@@1 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |mutrefSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |mutrefSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |mutrefSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |mutrefSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |mutrefSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |mutrefSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |mutrefSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |mutrefSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |mutrefSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |mutrefSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefSmtSeqz3bpl.1264:36|
 :skolemid |34|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefSmtSeqz3bpl.1278:36|
 :skolemid |35|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefSmtSeqz3bpl.1291:36|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefSmtSeqz3bpl.1307:36|
 :skolemid |37|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |mutrefSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |mutrefSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_TestMutRef_T)) ) (! (let ((r@@1 (ReverseVec_13833 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |mutrefSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |mutrefSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13833 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |mutrefSmtSeqz3bpl.245:54|
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
 (=> (= (ControlFlow 0 0) 52590) true)
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
 :qid |mutrefSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_TestMutRef_T)) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_TestMutRef_T'| (seq.nth v@@4 i@@0)))
 :qid |mutrefSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefSmtSeqz3bpl.588:41|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_TestMutRef_T)) (e T@$1_TestMutRef_T) ) (! (let ((i@@1 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |mutrefSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |mutrefSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |mutrefSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |mutrefSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |mutrefSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |mutrefSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |mutrefSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |mutrefSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |mutrefSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |mutrefSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefSmtSeqz3bpl.1264:36|
 :skolemid |34|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefSmtSeqz3bpl.1278:36|
 :skolemid |35|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefSmtSeqz3bpl.1291:36|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefSmtSeqz3bpl.1307:36|
 :skolemid |37|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |mutrefSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |mutrefSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_TestMutRef_T)) ) (! (let ((r@@1 (ReverseVec_13833 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |mutrefSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |mutrefSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13833 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |mutrefSmtSeqz3bpl.245:54|
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
 (=> (= (ControlFlow 0 0) 53184) true)
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
 :qid |mutrefSmtSeqz3bpl.160:23|
 :skolemid |4|
 :pattern ( (|$IsValid'u8'| v))
)))
(assert (forall ((v@@0 Int) ) (! (= (|$IsValid'u64'| v@@0)  (and (>= v@@0 0) (<= v@@0 $MAX_U64)))
 :qid |mutrefSmtSeqz3bpl.164:24|
 :skolemid |5|
 :pattern ( (|$IsValid'u64'| v@@0))
)))
(assert (forall ((v@@1 Int) ) (! (= (|$IsValid'u128'| v@@1)  (and (>= v@@1 0) (<= v@@1 $MAX_U128)))
 :qid |mutrefSmtSeqz3bpl.168:25|
 :skolemid |6|
 :pattern ( (|$IsValid'u128'| v@@1))
)))
(assert (forall ((v@@2 Int) ) (! (= (|$IsValid'num'| v@@2) true)
 :qid |mutrefSmtSeqz3bpl.172:24|
 :skolemid |7|
 :pattern ( (|$IsValid'num'| v@@2))
)))
(assert (forall ((v@@3 Int) ) (! (= (|$IsValid'address'| v@@3) (>= v@@3 0))
 :qid |mutrefSmtSeqz3bpl.176:28|
 :skolemid |8|
 :pattern ( (|$IsValid'address'| v@@3))
)))
(assert (forall ((r T@$Range) (i Int) ) (! (= ($InRange r i)  (and (<= (|lb#$Range| r) i) (< i (|ub#$Range| r))))
 :qid |mutrefSmtSeqz3bpl.186:19|
 :skolemid |9|
 :pattern ( ($InRange r i))
)))
(assert (= ($ConstMemoryDomain false) (|lambda#0| false)))
(assert (= ($ConstMemoryDomain true) (|lambda#0| true)))
(assert (= $EXEC_FAILURE_CODE (- 0 1)))
(assert (forall ((src1 Int) (p Int) ) (! (= ($shl src1 p) (ite (= p 8) (* src1 256) (ite (= p 16) (* src1 65536) (ite (= p 32) (* src1 4294967296) (ite (= p 64) (* src1 18446744073709551616) (- 0 1))))))
 :qid |mutrefSmtSeqz3bpl.452:15|
 :skolemid |13|
 :pattern ( ($shl src1 p))
)))
(assert (forall ((src1@@0 Int) (p@@0 Int) ) (! (= ($shr src1@@0 p@@0) (ite (= p@@0 8) (div src1@@0 256) (ite (= p@@0 16) (div src1@@0 65536) (ite (= p@@0 32) (div src1@@0 4294967296) (ite (= p@@0 64) (div src1@@0 18446744073709551616) (- 0 1))))))
 :qid |mutrefSmtSeqz3bpl.461:15|
 :skolemid |14|
 :pattern ( ($shr src1@@0 p@@0))
)))
(assert (forall ((v@@4 (Seq T@$1_TestMutRef_T)) ) (! (= (|$IsValid'vec'$1_TestMutRef_T''| v@@4)  (and (|$IsValid'u64'| (seq.len v@@4)) (forall ((i@@0 Int) ) (!  (=> (and (>= i@@0 0) (< i@@0 (seq.len v@@4))) (|$IsValid'$1_TestMutRef_T'| (seq.nth v@@4 i@@0)))
 :qid |mutrefSmtSeqz3bpl.590:13|
 :skolemid |15|
))))
 :qid |mutrefSmtSeqz3bpl.588:41|
 :skolemid |16|
 :pattern ( (|$IsValid'vec'$1_TestMutRef_T''| v@@4))
)))
(assert (forall ((v@@5 (Seq T@$1_TestMutRef_T)) (e T@$1_TestMutRef_T) ) (! (let ((i@@1 (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e)))
(ite  (not (exists ((i@@2 Int) ) (!  (and (and (|$IsValid'u64'| i@@2) (and (>= i@@2 0) (< i@@2 (seq.len v@@5)))) (= (seq.nth v@@5 i@@2) e))
 :qid |mutrefSmtSeqz3bpl.595:13|
 :skolemid |17|
))) (= i@@1 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@1) (and (>= i@@1 0) (< i@@1 (seq.len v@@5)))) (= (seq.nth v@@5 i@@1) e)) (forall ((j Int) ) (!  (=> (and (and (|$IsValid'u64'| j) (>= j 0)) (< j i@@1)) (not (= (seq.nth v@@5 j) e)))
 :qid |mutrefSmtSeqz3bpl.603:17|
 :skolemid |18|
)))))
 :qid |mutrefSmtSeqz3bpl.599:15|
 :skolemid |19|
 :pattern ( (|$IndexOfVec'$1_TestMutRef_T'| v@@5 e))
)))
(assert (forall ((v@@6 (Seq Int)) ) (! (= (|$IsValid'vec'u64''| v@@6)  (and (|$IsValid'u64'| (seq.len v@@6)) (forall ((i@@3 Int) ) (!  (=> (and (>= i@@3 0) (< i@@3 (seq.len v@@6))) (|$IsValid'u64'| (seq.nth v@@6 i@@3)))
 :qid |mutrefSmtSeqz3bpl.770:13|
 :skolemid |20|
))))
 :qid |mutrefSmtSeqz3bpl.768:29|
 :skolemid |21|
 :pattern ( (|$IsValid'vec'u64''| v@@6))
)))
(assert (forall ((v@@7 (Seq Int)) (e@@0 Int) ) (! (let ((i@@4 (|$IndexOfVec'u64'| v@@7 e@@0)))
(ite  (not (exists ((i@@5 Int) ) (!  (and (and (|$IsValid'u64'| i@@5) (and (>= i@@5 0) (< i@@5 (seq.len v@@7)))) (= (seq.nth v@@7 i@@5) e@@0))
 :qid |mutrefSmtSeqz3bpl.775:13|
 :skolemid |22|
))) (= i@@4 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@4) (and (>= i@@4 0) (< i@@4 (seq.len v@@7)))) (= (seq.nth v@@7 i@@4) e@@0)) (forall ((j@@0 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@0) (>= j@@0 0)) (< j@@0 i@@4)) (not (= (seq.nth v@@7 j@@0) e@@0)))
 :qid |mutrefSmtSeqz3bpl.783:17|
 :skolemid |23|
)))))
 :qid |mutrefSmtSeqz3bpl.779:15|
 :skolemid |24|
 :pattern ( (|$IndexOfVec'u64'| v@@7 e@@0))
)))
(assert (forall ((v@@8 (Seq Int)) ) (! (= (|$IsValid'vec'u8''| v@@8)  (and (|$IsValid'u64'| (seq.len v@@8)) (forall ((i@@6 Int) ) (!  (=> (and (>= i@@6 0) (< i@@6 (seq.len v@@8))) (|$IsValid'u8'| (seq.nth v@@8 i@@6)))
 :qid |mutrefSmtSeqz3bpl.950:13|
 :skolemid |25|
))))
 :qid |mutrefSmtSeqz3bpl.948:28|
 :skolemid |26|
 :pattern ( (|$IsValid'vec'u8''| v@@8))
)))
(assert (forall ((v@@9 (Seq Int)) (e@@1 Int) ) (! (let ((i@@7 (|$IndexOfVec'u8'| v@@9 e@@1)))
(ite  (not (exists ((i@@8 Int) ) (!  (and (and (|$IsValid'u64'| i@@8) (and (>= i@@8 0) (< i@@8 (seq.len v@@9)))) (= (seq.nth v@@9 i@@8) e@@1))
 :qid |mutrefSmtSeqz3bpl.955:13|
 :skolemid |27|
))) (= i@@7 (- 0 1))  (and (and (and (|$IsValid'u64'| i@@7) (and (>= i@@7 0) (< i@@7 (seq.len v@@9)))) (= (seq.nth v@@9 i@@7) e@@1)) (forall ((j@@1 Int) ) (!  (=> (and (and (|$IsValid'u64'| j@@1) (>= j@@1 0)) (< j@@1 i@@7)) (not (= (seq.nth v@@9 j@@1) e@@1)))
 :qid |mutrefSmtSeqz3bpl.963:17|
 :skolemid |28|
)))))
 :qid |mutrefSmtSeqz3bpl.959:15|
 :skolemid |29|
 :pattern ( (|$IndexOfVec'u8'| v@@9 e@@1))
)))
(assert (forall ((v1 (Seq Int)) (v2 (Seq Int)) ) (! (= (= v1 v2) (= ($1_Hash_sha2 v1) ($1_Hash_sha2 v2)))
 :qid |mutrefSmtSeqz3bpl.1136:15|
 :skolemid |30|
 :pattern ( ($1_Hash_sha2 v1) ($1_Hash_sha2 v2))
)))
(assert (forall ((v1@@0 (Seq Int)) (v2@@0 (Seq Int)) ) (! (= (= v1@@0 v2@@0) (= ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0)))
 :qid |mutrefSmtSeqz3bpl.1152:15|
 :skolemid |31|
 :pattern ( ($1_Hash_sha3 v1@@0) ($1_Hash_sha3 v2@@0))
)))
(assert (forall ((k1 (Seq Int)) (k2 (Seq Int)) ) (!  (=> (= k1 k2) (= ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2)))
 :qid |mutrefSmtSeqz3bpl.1199:15|
 :skolemid |32|
 :pattern ( ($1_Signature_$ed25519_validate_pubkey k1) ($1_Signature_$ed25519_validate_pubkey k2))
)))
(assert (forall ((s1 (Seq Int)) (s2 (Seq Int)) (k1@@0 (Seq Int)) (k2@@0 (Seq Int)) (m1 (Seq Int)) (m2 (Seq Int)) ) (!  (=> (and (and (= s1 s2) (= k1@@0 k2@@0)) (= m1 m2)) (= ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2)))
 :qid |mutrefSmtSeqz3bpl.1202:15|
 :skolemid |33|
 :pattern ( ($1_Signature_$ed25519_verify s1 k1@@0 m1) ($1_Signature_$ed25519_verify s2 k2@@0 m2))
)))
(assert (forall ((s T@$1_TestMutRef_N) ) (! (= (|$IsValid'$1_TestMutRef_N'| s)  (and (|$IsValid'u64'| (|$value#$1_TestMutRef_N| s)) (|$IsValid'$1_TestMutRef_T'| (|$t#$1_TestMutRef_N| s))))
 :qid |mutrefSmtSeqz3bpl.1264:36|
 :skolemid |34|
 :pattern ( (|$IsValid'$1_TestMutRef_N'| s))
)))
(assert (forall ((s@@0 T@$1_TestMutRef_R) ) (! (= (|$IsValid'$1_TestMutRef_R'| s@@0) (|$IsValid'u64'| (|$value#$1_TestMutRef_R| s@@0)))
 :qid |mutrefSmtSeqz3bpl.1278:36|
 :skolemid |35|
 :pattern ( (|$IsValid'$1_TestMutRef_R'| s@@0))
)))
(assert (forall ((s@@1 T@$1_TestMutRef_T) ) (! (= (|$IsValid'$1_TestMutRef_T'| s@@1) (|$IsValid'u64'| (|$value#$1_TestMutRef_T| s@@1)))
 :qid |mutrefSmtSeqz3bpl.1291:36|
 :skolemid |36|
 :pattern ( (|$IsValid'$1_TestMutRef_T'| s@@1))
)))
(assert (forall ((s@@2 T@$1_TestMutRef_V) ) (! (= (|$IsValid'$1_TestMutRef_V'| s@@2)  (and (|$IsValid'vec'u64''| (|$is#$1_TestMutRef_V| s@@2)) (|$IsValid'vec'$1_TestMutRef_T''| (|$ts#$1_TestMutRef_V| s@@2))))
 :qid |mutrefSmtSeqz3bpl.1307:36|
 :skolemid |37|
 :pattern ( (|$IsValid'$1_TestMutRef_V'| s@@2))
)))
(assert (forall ((v@@10 (Seq Int)) ) (! (let ((r@@0 (ReverseVec_4388 v@@10)))
 (and (= (seq.len r@@0) (seq.len v@@10)) (forall ((i@@9 Int) ) (!  (=> (and (>= i@@9 0) (< i@@9 (seq.len r@@0))) (= (seq.nth r@@0 i@@9) (seq.nth v@@10 (- (- (seq.len v@@10) i@@9) 1))))
 :qid |mutrefSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@0 i@@9))
))))
 :qid |mutrefSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_4388 v@@10))
)))
(assert (forall ((v@@11 (Seq T@$1_TestMutRef_T)) ) (! (let ((r@@1 (ReverseVec_13833 v@@11)))
 (and (= (seq.len r@@1) (seq.len v@@11)) (forall ((i@@10 Int) ) (!  (=> (and (>= i@@10 0) (< i@@10 (seq.len r@@1))) (= (seq.nth r@@1 i@@10) (seq.nth v@@11 (- (- (seq.len v@@11) i@@10) 1))))
 :qid |mutrefSmtSeqz3bpl.67:18|
 :skolemid |0|
 :pattern ( (seq.nth r@@1 i@@10))
))))
 :qid |mutrefSmtSeqz3bpl.64:32|
 :skolemid |1|
 :pattern ( (ReverseVec_13833 v@@11))
)))
(assert (forall ((|l#0| Bool) (i@@11 Int) ) (! (= (|Select__T@[Int]Bool_| (|lambda#0| |l#0|) i@@11) |l#0|)
 :qid |mutrefSmtSeqz3bpl.245:54|
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
 (=> (= (ControlFlow 0 0) 53800) true)
))
(check-sat)
(pop 1)
; Valid
